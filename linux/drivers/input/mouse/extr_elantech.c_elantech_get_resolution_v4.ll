; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_get_resolution_v4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_get_resolution_v4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32 }

@ETP_RESOLUTION_QUERY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i32*, i32*, i32*)* @elantech_get_resolution_v4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elantech_get_resolution_v4(%struct.psmouse* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.psmouse*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [3 x i8], align 1
  store %struct.psmouse* %0, %struct.psmouse** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %12 = load i32, i32* @ETP_RESOLUTION_QUERY, align 4
  %13 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %14 = call i64 @elantech_send_cmd(%struct.psmouse* %11, i32 %12, i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %37

17:                                               ; preds = %4
  %18 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = and i32 %20, 15
  %22 = trunc i32 %21 to i8
  %23 = call i32 @elantech_convert_res(i8 zeroext %22)
  %24 = load i32*, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 240
  %29 = ashr i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = call i32 @elantech_convert_res(i8 zeroext %30)
  %32 = load i32*, i32** %8, align 8
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 2
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = load i32*, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %17, %16
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i64 @elantech_send_cmd(%struct.psmouse*, i32, i8*) #1

declare dso_local i32 @elantech_convert_res(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
