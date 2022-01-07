; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_kms.c_amdgpu_driver_load_kms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_kms.c_amdgpu_driver_load_kms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.TYPE_3__*, i8* }
%struct.TYPE_3__ = type { i32 }
%struct.amdgpu_device = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@amdgpu_runtime_pm = common dso_local global i64 0, align 8
@AMD_IS_APU = common dso_local global i64 0, align 8
@AMD_IS_PX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Fatal error during GPU init\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Error during ACPI methods call\0A\00", align 1
@DPM_FLAG_NEVER_SKIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_driver_load_kms(%struct.drm_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.amdgpu_device* @kzalloc(i32 8, i32 %9)
  store %struct.amdgpu_device* %10, %struct.amdgpu_device** %6, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %12 = icmp eq %struct.amdgpu_device* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %135

16:                                               ; preds = %2
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %18 = bitcast %struct.amdgpu_device* %17 to i8*
  %19 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load i64, i64* @amdgpu_runtime_pm, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %16
  %24 = call i64 (...) @amdgpu_has_atpx()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %23
  %27 = call i64 (...) @amdgpu_is_atpx_hybrid()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = call i64 (...) @amdgpu_has_atpx_dgpu_power_cntl()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %29, %26
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @AMD_IS_APU, align 8
  %35 = and i64 %33, %34
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %39 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = call i32 @pci_is_thunderbolt_attached(%struct.TYPE_3__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = load i64, i64* @AMD_IS_PX, align 8
  %45 = load i64, i64* %5, align 8
  %46 = or i64 %45, %44
  store i64 %46, i64* %5, align 8
  br label %47

47:                                               ; preds = %43, %37, %32, %29, %23, %16
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %49 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %50 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %51 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @amdgpu_device_init(%struct.amdgpu_device* %48, %struct.drm_device* %49, %struct.TYPE_3__* %52, i64 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %47
  %58 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %59 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %113

63:                                               ; preds = %47
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %63
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %68 = call i32 @amdgpu_acpi_init(%struct.amdgpu_device* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %73 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %72, i32 0, i32 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = call i32 @dev_dbg(i32* %75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %77

77:                                               ; preds = %71, %66
  br label %78

78:                                               ; preds = %77, %63
  %79 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %80 = call i64 @amdgpu_device_is_px(%struct.drm_device* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %112

82:                                               ; preds = %78
  %83 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %84 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @DPM_FLAG_NEVER_SKIP, align 4
  %87 = call i32 @dev_pm_set_driver_flags(i32 %85, i32 %86)
  %88 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %89 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @pm_runtime_use_autosuspend(i32 %90)
  %92 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %93 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @pm_runtime_set_autosuspend_delay(i32 %94, i32 5000)
  %96 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %97 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @pm_runtime_set_active(i32 %98)
  %100 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %101 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @pm_runtime_allow(i32 %102)
  %104 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %105 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @pm_runtime_mark_last_busy(i32 %106)
  %108 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %109 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @pm_runtime_put_autosuspend(i32 %110)
  br label %112

112:                                              ; preds = %82, %78
  br label %113

113:                                              ; preds = %112, %57
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %133

116:                                              ; preds = %113
  %117 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %118 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %116
  %122 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %123 = call i64 @amdgpu_device_is_px(%struct.drm_device* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %127 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @pm_runtime_put_noidle(i32 %128)
  br label %130

130:                                              ; preds = %125, %121, %116
  %131 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %132 = call i32 @amdgpu_driver_unload_kms(%struct.drm_device* %131)
  br label %133

133:                                              ; preds = %130, %113
  %134 = load i32, i32* %7, align 4
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %133, %13
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local %struct.amdgpu_device* @kzalloc(i32, i32) #1

declare dso_local i64 @amdgpu_has_atpx(...) #1

declare dso_local i64 @amdgpu_is_atpx_hybrid(...) #1

declare dso_local i64 @amdgpu_has_atpx_dgpu_power_cntl(...) #1

declare dso_local i32 @pci_is_thunderbolt_attached(%struct.TYPE_3__*) #1

declare dso_local i32 @amdgpu_device_init(%struct.amdgpu_device*, %struct.drm_device*, %struct.TYPE_3__*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @amdgpu_acpi_init(%struct.amdgpu_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i64 @amdgpu_device_is_px(%struct.drm_device*) #1

declare dso_local i32 @dev_pm_set_driver_flags(i32, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(i32) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(i32, i32) #1

declare dso_local i32 @pm_runtime_set_active(i32) #1

declare dso_local i32 @pm_runtime_allow(i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @amdgpu_driver_unload_kms(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
