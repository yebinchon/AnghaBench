; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_serio.c_bind_mode_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_serio.c_bind_mode_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_driver = type { i32 }
%struct.serio_driver = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"manual\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_driver*, i8*, i64)* @bind_mode_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bind_mode_store(%struct.device_driver* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.device_driver*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.serio_driver*, align 8
  %8 = alloca i32, align 4
  store %struct.device_driver* %0, %struct.device_driver** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.device_driver*, %struct.device_driver** %4, align 8
  %10 = call %struct.serio_driver* @to_serio_driver(%struct.device_driver* %9)
  store %struct.serio_driver* %10, %struct.serio_driver** %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %8, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @strncmp(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load %struct.serio_driver*, %struct.serio_driver** %7, align 8
  %19 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  br label %32

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @strncmp(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load %struct.serio_driver*, %struct.serio_driver** %7, align 8
  %27 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  br label %31

28:                                               ; preds = %20
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %28, %25
  br label %32

32:                                               ; preds = %31, %17
  %33 = load i32, i32* %8, align 4
  ret i32 %33
}

declare dso_local %struct.serio_driver* @to_serio_driver(%struct.device_driver*) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
