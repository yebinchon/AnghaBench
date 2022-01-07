; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega20_hwmgr.c_vega20_hwmgr_backend_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega20_hwmgr.c_vega20_hwmgr_backend_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i32*, i64, i64, %struct.TYPE_6__, %struct.vega20_hwmgr*, %struct.amdgpu_device* }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.vega20_hwmgr = type { i32, i32, i32, i32, i32, i64, i8*, i8*, i8* }
%struct.amdgpu_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PP_SMC_POWER_PROFILE_BOOTUP_DEFAULT = common dso_local global i64 0, align 8
@VEGA20_VOLTAGE_CONTROL_NONE = common dso_local global i8* null, align 8
@VEGA20_MAX_HARDWARE_POWERLEVELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega20_hwmgr_backend_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega20_hwmgr_backend_init(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.vega20_hwmgr*, align 8
  %5 = alloca %struct.amdgpu_device*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  %6 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %7 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %6, i32 0, i32 6
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.vega20_hwmgr* @kzalloc(i32 56, i32 %9)
  store %struct.vega20_hwmgr* %10, %struct.vega20_hwmgr** %4, align 8
  %11 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %4, align 8
  %12 = icmp eq %struct.vega20_hwmgr* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %90

16:                                               ; preds = %1
  %17 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %4, align 8
  %18 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %19 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %18, i32 0, i32 5
  store %struct.vega20_hwmgr* %17, %struct.vega20_hwmgr** %19, align 8
  %20 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %21 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @PP_SMC_POWER_PROFILE_BOOTUP_DEFAULT, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 1, %25
  %27 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %28 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i64, i64* @PP_SMC_POWER_PROFILE_BOOTUP_DEFAULT, align 8
  %30 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %31 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 8
  %32 = load i64, i64* @PP_SMC_POWER_PROFILE_BOOTUP_DEFAULT, align 8
  %33 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %34 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %33, i32 0, i32 3
  store i64 %32, i64* %34, align 8
  %35 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %36 = call i32 @vega20_set_default_registry_data(%struct.pp_hwmgr* %35)
  %37 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %4, align 8
  %38 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %37, i32 0, i32 0
  store i32 255, i32* %38, align 8
  %39 = load i8*, i8** @VEGA20_VOLTAGE_CONTROL_NONE, align 8
  %40 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %4, align 8
  %41 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %40, i32 0, i32 8
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** @VEGA20_VOLTAGE_CONTROL_NONE, align 8
  %43 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %4, align 8
  %44 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %43, i32 0, i32 7
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** @VEGA20_VOLTAGE_CONTROL_NONE, align 8
  %46 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %4, align 8
  %47 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %46, i32 0, i32 6
  store i8* %45, i8** %47, align 8
  %48 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %4, align 8
  %49 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %48, i32 0, i32 5
  store i64 0, i64* %49, align 8
  %50 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %4, align 8
  %51 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %50, i32 0, i32 1
  store i32 0, i32* %51, align 4
  %52 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %53 = call i32 @vega20_set_features_platform_caps(%struct.pp_hwmgr* %52)
  %54 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %55 = call i32 @vega20_init_dpm_defaults(%struct.pp_hwmgr* %54)
  %56 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %57 = call i32 @vega20_set_private_data_based_on_pptable(%struct.pp_hwmgr* %56)
  %58 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %4, align 8
  %59 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %58, i32 0, i32 2
  store i32 0, i32* %59, align 8
  %60 = load i32, i32* @VEGA20_MAX_HARDWARE_POWERLEVELS, align 4
  %61 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %62 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 4
  store i32 %60, i32* %63, align 4
  %64 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %65 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i32 2, i32* %66, align 8
  %67 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %68 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  store i32 50, i32* %69, align 4
  %70 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %71 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  store i32 536871936, i32* %72, align 8
  %73 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %74 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 500, i32* %76, align 4
  %77 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %78 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  store i32 500, i32* %80, align 4
  %81 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %82 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %4, align 8
  %87 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 8
  %88 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %4, align 8
  %89 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %88, i32 0, i32 3
  store i32 0, i32* %89, align 4
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %16, %13
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.vega20_hwmgr* @kzalloc(i32, i32) #1

declare dso_local i32 @vega20_set_default_registry_data(%struct.pp_hwmgr*) #1

declare dso_local i32 @vega20_set_features_platform_caps(%struct.pp_hwmgr*) #1

declare dso_local i32 @vega20_init_dpm_defaults(%struct.pp_hwmgr*) #1

declare dso_local i32 @vega20_set_private_data_based_on_pptable(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
