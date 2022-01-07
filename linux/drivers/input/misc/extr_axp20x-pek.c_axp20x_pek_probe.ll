; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_axp20x-pek.c_axp20x_pek_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_axp20x-pek.c_axp20x_pek_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.axp20x_pek = type { %struct.axp20x_info*, i32 }
%struct.axp20x_info = type { i32 }
%struct.platform_device_id = type { i64 }

@.str = private unnamed_addr constant [34 x i8] c"Failed to get platform_device_id\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @axp20x_pek_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp20x_pek_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.axp20x_pek*, align 8
  %5 = alloca %struct.platform_device_id*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call %struct.platform_device_id* @platform_get_device_id(%struct.platform_device* %7)
  store %struct.platform_device_id* %8, %struct.platform_device_id** %5, align 8
  %9 = load %struct.platform_device_id*, %struct.platform_device_id** %5, align 8
  %10 = icmp ne %struct.platform_device_id* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call i32 @dev_err(%struct.TYPE_3__* %13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %58

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.axp20x_pek* @devm_kzalloc(%struct.TYPE_3__* %19, i32 16, i32 %20)
  store %struct.axp20x_pek* %21, %struct.axp20x_pek** %4, align 8
  %22 = load %struct.axp20x_pek*, %struct.axp20x_pek** %4, align 8
  %23 = icmp ne %struct.axp20x_pek* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %58

27:                                               ; preds = %17
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_get_drvdata(i32 %31)
  %33 = load %struct.axp20x_pek*, %struct.axp20x_pek** %4, align 8
  %34 = getelementptr inbounds %struct.axp20x_pek, %struct.axp20x_pek* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.axp20x_pek*, %struct.axp20x_pek** %4, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = call i64 @axp20x_pek_should_register_input(%struct.axp20x_pek* %35, %struct.platform_device* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %27
  %40 = load %struct.axp20x_pek*, %struct.axp20x_pek** %4, align 8
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = call i32 @axp20x_pek_probe_input_device(%struct.axp20x_pek* %40, %struct.platform_device* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %58

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %27
  %49 = load %struct.platform_device_id*, %struct.platform_device_id** %5, align 8
  %50 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.axp20x_info*
  %53 = load %struct.axp20x_pek*, %struct.axp20x_pek** %4, align 8
  %54 = getelementptr inbounds %struct.axp20x_pek, %struct.axp20x_pek* %53, i32 0, i32 0
  store %struct.axp20x_info* %52, %struct.axp20x_info** %54, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = load %struct.axp20x_pek*, %struct.axp20x_pek** %4, align 8
  %57 = call i32 @platform_set_drvdata(%struct.platform_device* %55, %struct.axp20x_pek* %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %48, %45, %24, %11
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.platform_device_id* @platform_get_device_id(%struct.platform_device*) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*) #1

declare dso_local %struct.axp20x_pek* @devm_kzalloc(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @dev_get_drvdata(i32) #1

declare dso_local i64 @axp20x_pek_should_register_input(%struct.axp20x_pek*, %struct.platform_device*) #1

declare dso_local i32 @axp20x_pek_probe_input_device(%struct.axp20x_pek*, %struct.platform_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.axp20x_pek*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
