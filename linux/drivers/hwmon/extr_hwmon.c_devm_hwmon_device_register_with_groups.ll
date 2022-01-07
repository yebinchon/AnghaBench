; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_hwmon.c_devm_hwmon_device_register_with_groups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_hwmon.c_devm_hwmon_device_register_with_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.attribute_group = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@devm_hwmon_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %0, i8* %1, i8* %2, %struct.attribute_group** %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.attribute_group**, align 8
  %10 = alloca %struct.device**, align 8
  %11 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.attribute_group** %3, %struct.attribute_group*** %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = icmp ne %struct.device* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.device* @ERR_PTR(i32 %16)
  store %struct.device* %17, %struct.device** %5, align 8
  br label %49

18:                                               ; preds = %4
  %19 = load i32, i32* @devm_hwmon_release, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.device** @devres_alloc(i32 %19, i32 8, i32 %20)
  store %struct.device** %21, %struct.device*** %10, align 8
  %22 = load %struct.device**, %struct.device*** %10, align 8
  %23 = icmp ne %struct.device** %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.device* @ERR_PTR(i32 %26)
  store %struct.device* %27, %struct.device** %5, align 8
  br label %49

28:                                               ; preds = %18
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load %struct.attribute_group**, %struct.attribute_group*** %9, align 8
  %33 = call %struct.device* @hwmon_device_register_with_groups(%struct.device* %29, i8* %30, i8* %31, %struct.attribute_group** %32)
  store %struct.device* %33, %struct.device** %11, align 8
  %34 = load %struct.device*, %struct.device** %11, align 8
  %35 = call i64 @IS_ERR(%struct.device* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %45

38:                                               ; preds = %28
  %39 = load %struct.device*, %struct.device** %11, align 8
  %40 = load %struct.device**, %struct.device*** %10, align 8
  store %struct.device* %39, %struct.device** %40, align 8
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = load %struct.device**, %struct.device*** %10, align 8
  %43 = call i32 @devres_add(%struct.device* %41, %struct.device** %42)
  %44 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %44, %struct.device** %5, align 8
  br label %49

45:                                               ; preds = %37
  %46 = load %struct.device**, %struct.device*** %10, align 8
  %47 = call i32 @devres_free(%struct.device** %46)
  %48 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %48, %struct.device** %5, align 8
  br label %49

49:                                               ; preds = %45, %38, %24, %14
  %50 = load %struct.device*, %struct.device** %5, align 8
  ret %struct.device* %50
}

declare dso_local %struct.device* @ERR_PTR(i32) #1

declare dso_local %struct.device** @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.device* @hwmon_device_register_with_groups(%struct.device*, i8*, i8*, %struct.attribute_group**) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.device**) #1

declare dso_local i32 @devres_free(%struct.device**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
