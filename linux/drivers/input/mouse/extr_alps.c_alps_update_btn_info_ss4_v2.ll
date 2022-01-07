; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_update_btn_info_ss4_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_update_btn_info_ss4_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alps_data = type { i32, i32 }

@ALPS_BUTTONPAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ([4 x i8]*, %struct.alps_data*)* @alps_update_btn_info_ss4_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_update_btn_info_ss4_v2([4 x i8]* %0, %struct.alps_data* %1) #0 {
  %3 = alloca [4 x i8]*, align 8
  %4 = alloca %struct.alps_data*, align 8
  %5 = alloca i8, align 1
  store [4 x i8]* %0, [4 x i8]** %3, align 8
  store %struct.alps_data* %1, %struct.alps_data** %4, align 8
  %6 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %7 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @IS_SS4PLUS_DEV(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load [4 x i8]*, [4 x i8]** %3, align 8
  %13 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 1
  %14 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = ashr i32 %16, 1
  %18 = and i32 %17, 1
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %5, align 1
  br label %29

20:                                               ; preds = %2
  %21 = load [4 x i8]*, [4 x i8]** %3, align 8
  %22 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i64 1
  %23 = getelementptr inbounds [4 x i8], [4 x i8]* %22, i64 0, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = ashr i32 %25, 3
  %27 = and i32 %26, 1
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %5, align 1
  br label %29

29:                                               ; preds = %20, %11
  %30 = load i8, i8* %5, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* @ALPS_BUTTONPAD, align 4
  %34 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %35 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %32, %29
  ret i32 0
}

declare dso_local i64 @IS_SS4PLUS_DEV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
