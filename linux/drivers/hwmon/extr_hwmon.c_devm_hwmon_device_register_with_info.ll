; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_hwmon.c_devm_hwmon_device_register_with_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_hwmon.c_devm_hwmon_device_register_with_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hwmon_chip_info = type { i32 }
%struct.attribute_group = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@devm_hwmon_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device* @devm_hwmon_device_register_with_info(%struct.device* %0, i8* %1, i8* %2, %struct.hwmon_chip_info* %3, %struct.attribute_group** %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hwmon_chip_info*, align 8
  %11 = alloca %struct.attribute_group**, align 8
  %12 = alloca %struct.device**, align 8
  %13 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.hwmon_chip_info* %3, %struct.hwmon_chip_info** %10, align 8
  store %struct.attribute_group** %4, %struct.attribute_group*** %11, align 8
  %14 = load %struct.device*, %struct.device** %7, align 8
  %15 = icmp ne %struct.device* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.device* @ERR_PTR(i32 %18)
  store %struct.device* %19, %struct.device** %6, align 8
  br label %52

20:                                               ; preds = %5
  %21 = load i32, i32* @devm_hwmon_release, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.device** @devres_alloc(i32 %21, i32 8, i32 %22)
  store %struct.device** %23, %struct.device*** %12, align 8
  %24 = load %struct.device**, %struct.device*** %12, align 8
  %25 = icmp ne %struct.device** %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.device* @ERR_PTR(i32 %28)
  store %struct.device* %29, %struct.device** %6, align 8
  br label %52

30:                                               ; preds = %20
  %31 = load %struct.device*, %struct.device** %7, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load %struct.hwmon_chip_info*, %struct.hwmon_chip_info** %10, align 8
  %35 = load %struct.attribute_group**, %struct.attribute_group*** %11, align 8
  %36 = call %struct.device* @hwmon_device_register_with_info(%struct.device* %31, i8* %32, i8* %33, %struct.hwmon_chip_info* %34, %struct.attribute_group** %35)
  store %struct.device* %36, %struct.device** %13, align 8
  %37 = load %struct.device*, %struct.device** %13, align 8
  %38 = call i64 @IS_ERR(%struct.device* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %48

41:                                               ; preds = %30
  %42 = load %struct.device*, %struct.device** %13, align 8
  %43 = load %struct.device**, %struct.device*** %12, align 8
  store %struct.device* %42, %struct.device** %43, align 8
  %44 = load %struct.device*, %struct.device** %7, align 8
  %45 = load %struct.device**, %struct.device*** %12, align 8
  %46 = call i32 @devres_add(%struct.device* %44, %struct.device** %45)
  %47 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %47, %struct.device** %6, align 8
  br label %52

48:                                               ; preds = %40
  %49 = load %struct.device**, %struct.device*** %12, align 8
  %50 = call i32 @devres_free(%struct.device** %49)
  %51 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %51, %struct.device** %6, align 8
  br label %52

52:                                               ; preds = %48, %41, %26, %16
  %53 = load %struct.device*, %struct.device** %6, align 8
  ret %struct.device* %53
}

declare dso_local %struct.device* @ERR_PTR(i32) #1

declare dso_local %struct.device** @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.device* @hwmon_device_register_with_info(%struct.device*, i8*, i8*, %struct.hwmon_chip_info*, %struct.attribute_group**) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.device**) #1

declare dso_local i32 @devres_free(%struct.device**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
