; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_max77693-haptic.c_max77693_haptic_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_max77693-haptic.c_max77693_haptic_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.max77693_haptic = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"failed to enable regulator: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*)* @max77693_haptic_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77693_haptic_open(%struct.input_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.max77693_haptic*, align 8
  %5 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  %6 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %7 = call %struct.max77693_haptic* @input_get_drvdata(%struct.input_dev* %6)
  store %struct.max77693_haptic* %7, %struct.max77693_haptic** %4, align 8
  %8 = load %struct.max77693_haptic*, %struct.max77693_haptic** %4, align 8
  %9 = call i32 @max77843_haptic_bias(%struct.max77693_haptic* %8, i32 1)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %29

14:                                               ; preds = %1
  %15 = load %struct.max77693_haptic*, %struct.max77693_haptic** %4, align 8
  %16 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @regulator_enable(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = load %struct.max77693_haptic*, %struct.max77693_haptic** %4, align 8
  %23 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %29

28:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %21, %12
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.max77693_haptic* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @max77843_haptic_bias(%struct.max77693_haptic*, i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
