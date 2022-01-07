; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/kirin/extr_kirin_drm_drv.c_kirin_drm_kms_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/kirin/extr_kirin_drm_drv.c_kirin_drm_kms_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i64 }
%struct.kirin_drm_data = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"failed to bind all component.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to initialize vblank.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.kirin_drm_data*)* @kirin_drm_kms_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kirin_drm_kms_init(%struct.drm_device* %0, %struct.kirin_drm_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.kirin_drm_data*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.kirin_drm_data* %1, %struct.kirin_drm_data** %5, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %8 = call i32 @drm_mode_config_init(%struct.drm_device* %7)
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 5
  store i64 0, i64* %11, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 4
  store i64 0, i64* %14, align 8
  %15 = load %struct.kirin_drm_data*, %struct.kirin_drm_data** %5, align 8
  %16 = getelementptr inbounds %struct.kirin_drm_data, %struct.kirin_drm_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  store i32 %17, i32* %20, align 4
  %21 = load %struct.kirin_drm_data*, %struct.kirin_drm_data** %5, align 8
  %22 = getelementptr inbounds %struct.kirin_drm_data, %struct.kirin_drm_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  store i32 %23, i32* %26, align 8
  %27 = load %struct.kirin_drm_data*, %struct.kirin_drm_data** %5, align 8
  %28 = getelementptr inbounds %struct.kirin_drm_data, %struct.kirin_drm_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %31 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %34 = load %struct.kirin_drm_data*, %struct.kirin_drm_data** %5, align 8
  %35 = call i32 @kirin_drm_private_init(%struct.drm_device* %33, %struct.kirin_drm_data* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %2
  br label %76

39:                                               ; preds = %2
  %40 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %41 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %44 = call i32 @component_bind_all(i32 %42, %struct.drm_device* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %73

49:                                               ; preds = %39
  %50 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %51 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %52 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @drm_vblank_init(%struct.drm_device* %50, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %67

60:                                               ; preds = %49
  %61 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %62 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %64 = call i32 @drm_mode_config_reset(%struct.drm_device* %63)
  %65 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %66 = call i32 @drm_kms_helper_poll_init(%struct.drm_device* %65)
  store i32 0, i32* %3, align 4
  br label %80

67:                                               ; preds = %58
  %68 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %69 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %72 = call i32 @component_unbind_all(i32 %70, %struct.drm_device* %71)
  br label %73

73:                                               ; preds = %67, %47
  %74 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %75 = call i32 @kirin_drm_private_cleanup(%struct.drm_device* %74)
  br label %76

76:                                               ; preds = %73, %38
  %77 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %78 = call i32 @drm_mode_config_cleanup(%struct.drm_device* %77)
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %76, %60
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @drm_mode_config_init(%struct.drm_device*) #1

declare dso_local i32 @kirin_drm_private_init(%struct.drm_device*, %struct.kirin_drm_data*) #1

declare dso_local i32 @component_bind_all(i32, %struct.drm_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_vblank_init(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_mode_config_reset(%struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_poll_init(%struct.drm_device*) #1

declare dso_local i32 @component_unbind_all(i32, %struct.drm_device*) #1

declare dso_local i32 @kirin_drm_private_cleanup(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_config_cleanup(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
