; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/kirin/extr_kirin_drm_drv.c_kirin_drm_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/kirin/extr_kirin_drm_drv.c_kirin_drm_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.kirin_drm_data = type { i64, i32 }
%struct.drm_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @kirin_drm_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kirin_drm_bind(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.kirin_drm_data*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call i64 @of_device_get_match_data(%struct.device* %7)
  %9 = inttoptr i64 %8 to %struct.kirin_drm_data*
  store %struct.kirin_drm_data* %9, %struct.kirin_drm_data** %4, align 8
  %10 = load %struct.kirin_drm_data*, %struct.kirin_drm_data** %4, align 8
  %11 = icmp ne %struct.kirin_drm_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %68

15:                                               ; preds = %1
  %16 = load %struct.kirin_drm_data*, %struct.kirin_drm_data** %4, align 8
  %17 = getelementptr inbounds %struct.kirin_drm_data, %struct.kirin_drm_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = call %struct.drm_device* @drm_dev_alloc(i32 %18, %struct.device* %19)
  store %struct.drm_device* %20, %struct.drm_device** %5, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %22 = call i64 @IS_ERR(%struct.drm_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %26 = call i32 @PTR_ERR(%struct.drm_device* %25)
  store i32 %26, i32* %2, align 4
  br label %68

27:                                               ; preds = %15
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %30 = call i32 @dev_set_drvdata(%struct.device* %28, %struct.drm_device* %29)
  %31 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %32 = load %struct.kirin_drm_data*, %struct.kirin_drm_data** %4, align 8
  %33 = call i32 @kirin_drm_kms_init(%struct.drm_device* %31, %struct.kirin_drm_data* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %64

37:                                               ; preds = %27
  %38 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %39 = call i32 @drm_dev_register(%struct.drm_device* %38, i32 0)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %61

43:                                               ; preds = %37
  %44 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %45 = call i32 @drm_fbdev_generic_setup(%struct.drm_device* %44, i32 32)
  %46 = load %struct.kirin_drm_data*, %struct.kirin_drm_data** %4, align 8
  %47 = getelementptr inbounds %struct.kirin_drm_data, %struct.kirin_drm_data* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %52 = call i32 @kirin_drm_connectors_register(%struct.drm_device* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %58

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %43
  store i32 0, i32* %2, align 4
  br label %68

58:                                               ; preds = %55
  %59 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %60 = call i32 @drm_dev_unregister(%struct.drm_device* %59)
  br label %61

61:                                               ; preds = %58, %42
  %62 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %63 = call i32 @kirin_drm_kms_cleanup(%struct.drm_device* %62)
  br label %64

64:                                               ; preds = %61, %36
  %65 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %66 = call i32 @drm_dev_put(%struct.drm_device* %65)
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %64, %57, %24, %12
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i64 @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.drm_device* @drm_dev_alloc(i32, %struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.drm_device*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.drm_device*) #1

declare dso_local i32 @kirin_drm_kms_init(%struct.drm_device*, %struct.kirin_drm_data*) #1

declare dso_local i32 @drm_dev_register(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_fbdev_generic_setup(%struct.drm_device*, i32) #1

declare dso_local i32 @kirin_drm_connectors_register(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_unregister(%struct.drm_device*) #1

declare dso_local i32 @kirin_drm_kms_cleanup(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
