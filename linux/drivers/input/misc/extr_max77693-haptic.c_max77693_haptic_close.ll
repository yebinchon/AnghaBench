; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_max77693-haptic.c_max77693_haptic_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_max77693-haptic.c_max77693_haptic_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.max77693_haptic = type { i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"failed to disable regulator: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*)* @max77693_haptic_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max77693_haptic_close(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.max77693_haptic*, align 8
  %4 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %5 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %6 = call %struct.max77693_haptic* @input_get_drvdata(%struct.input_dev* %5)
  store %struct.max77693_haptic* %6, %struct.max77693_haptic** %3, align 8
  %7 = load %struct.max77693_haptic*, %struct.max77693_haptic** %3, align 8
  %8 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %7, i32 0, i32 2
  %9 = call i32 @cancel_work_sync(i32* %8)
  %10 = load %struct.max77693_haptic*, %struct.max77693_haptic** %3, align 8
  %11 = call i32 @max77693_haptic_disable(%struct.max77693_haptic* %10)
  %12 = load %struct.max77693_haptic*, %struct.max77693_haptic** %3, align 8
  %13 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @regulator_disable(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.max77693_haptic*, %struct.max77693_haptic** %3, align 8
  %20 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %18, %1
  %25 = load %struct.max77693_haptic*, %struct.max77693_haptic** %3, align 8
  %26 = call i32 @max77843_haptic_bias(%struct.max77693_haptic* %25, i32 0)
  ret void
}

declare dso_local %struct.max77693_haptic* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @max77693_haptic_disable(%struct.max77693_haptic*) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @max77843_haptic_bias(%struct.max77693_haptic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
