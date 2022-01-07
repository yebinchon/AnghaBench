; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_mpr121_touchkey.c_mpr121_vdd_supply_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_mpr121_touchkey.c_mpr121_vdd_supply_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to get vdd regulator: %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to enable vdd regulator: %d\0A\00", align 1
@mpr121_vdd_supply_disable = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"failed to add disable regulator action: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.regulator* (%struct.device*)* @mpr121_vdd_supply_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.regulator* @mpr121_vdd_supply_init(%struct.device* %0) #0 {
  %2 = alloca %struct.regulator*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.regulator*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.regulator* @devm_regulator_get(%struct.device* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.regulator* %7, %struct.regulator** %4, align 8
  %8 = load %struct.regulator*, %struct.regulator** %4, align 8
  %9 = call i64 @IS_ERR(%struct.regulator* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = load %struct.regulator*, %struct.regulator** %4, align 8
  %14 = call i32 @PTR_ERR(%struct.regulator* %13)
  %15 = call i32 @dev_err(%struct.device* %12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load %struct.regulator*, %struct.regulator** %4, align 8
  store %struct.regulator* %16, %struct.regulator** %2, align 8
  br label %45

17:                                               ; preds = %1
  %18 = load %struct.regulator*, %struct.regulator** %4, align 8
  %19 = call i32 @regulator_enable(%struct.regulator* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @dev_err(%struct.device* %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = call %struct.regulator* @ERR_PTR(i32 %26)
  store %struct.regulator* %27, %struct.regulator** %2, align 8
  br label %45

28:                                               ; preds = %17
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = load i32, i32* @mpr121_vdd_supply_disable, align 4
  %31 = load %struct.regulator*, %struct.regulator** %4, align 8
  %32 = call i32 @devm_add_action(%struct.device* %29, i32 %30, %struct.regulator* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load %struct.regulator*, %struct.regulator** %4, align 8
  %37 = call i32 @regulator_disable(%struct.regulator* %36)
  %38 = load %struct.device*, %struct.device** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = call %struct.regulator* @ERR_PTR(i32 %41)
  store %struct.regulator* %42, %struct.regulator** %2, align 8
  br label %45

43:                                               ; preds = %28
  %44 = load %struct.regulator*, %struct.regulator** %4, align 8
  store %struct.regulator* %44, %struct.regulator** %2, align 8
  br label %45

45:                                               ; preds = %43, %35, %22, %11
  %46 = load %struct.regulator*, %struct.regulator** %2, align 8
  ret %struct.regulator* %46
}

declare dso_local %struct.regulator* @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.regulator*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.regulator*) #1

declare dso_local i32 @regulator_enable(%struct.regulator*) #1

declare dso_local %struct.regulator* @ERR_PTR(i32) #1

declare dso_local i32 @devm_add_action(%struct.device*, i32, %struct.regulator*) #1

declare dso_local i32 @regulator_disable(%struct.regulator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
