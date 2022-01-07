; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_max8997_haptic.c_max8997_haptic_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_max8997_haptic.c_max8997_haptic_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.max8997_haptic = type { i64, i32, i32, i32 }

@MAX8997_EXTERNAL_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max8997_haptic_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8997_haptic_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.max8997_haptic*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.max8997_haptic* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.max8997_haptic* %5, %struct.max8997_haptic** %3, align 8
  %6 = load %struct.max8997_haptic*, %struct.max8997_haptic** %3, align 8
  %7 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @input_unregister_device(i32 %8)
  %10 = load %struct.max8997_haptic*, %struct.max8997_haptic** %3, align 8
  %11 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @regulator_put(i32 %12)
  %14 = load %struct.max8997_haptic*, %struct.max8997_haptic** %3, align 8
  %15 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MAX8997_EXTERNAL_MODE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.max8997_haptic*, %struct.max8997_haptic** %3, align 8
  %21 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @pwm_free(i32 %22)
  br label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.max8997_haptic*, %struct.max8997_haptic** %3, align 8
  %26 = call i32 @kfree(%struct.max8997_haptic* %25)
  ret i32 0
}

declare dso_local %struct.max8997_haptic* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @regulator_put(i32) #1

declare dso_local i32 @pwm_free(i32) #1

declare dso_local i32 @kfree(%struct.max8997_haptic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
