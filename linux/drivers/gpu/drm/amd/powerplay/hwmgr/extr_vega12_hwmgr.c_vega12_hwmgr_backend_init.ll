; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega12_hwmgr.c_vega12_hwmgr_backend_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega12_hwmgr.c_vega12_hwmgr_backend_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, %struct.TYPE_16__, %struct.TYPE_10__, %struct.vega12_hwmgr*, %struct.amdgpu_device* }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.vega12_hwmgr = type { i32, i32, i32, i32, i32, %struct.TYPE_13__, i32, i64, i8*, i8*, i8* }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.amdgpu_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VEGA12_VOLTAGE_CONTROL_NONE = common dso_local global i8* null, align 8
@VEGA12_MAX_HARDWARE_POWERLEVELS = common dso_local global i32 0, align 4
@PP_GFXOFF_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega12_hwmgr_backend_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega12_hwmgr_backend_init(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vega12_hwmgr*, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %8 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %7, i32 0, i32 4
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  store %struct.amdgpu_device* %9, %struct.amdgpu_device** %6, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.vega12_hwmgr* @kzalloc(i32 72, i32 %10)
  store %struct.vega12_hwmgr* %11, %struct.vega12_hwmgr** %5, align 8
  %12 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %5, align 8
  %13 = icmp eq %struct.vega12_hwmgr* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %129

17:                                               ; preds = %1
  %18 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %5, align 8
  %19 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %20 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %19, i32 0, i32 3
  store %struct.vega12_hwmgr* %18, %struct.vega12_hwmgr** %20, align 8
  %21 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %22 = call i32 @vega12_set_default_registry_data(%struct.pp_hwmgr* %21)
  %23 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %5, align 8
  %24 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %23, i32 0, i32 0
  store i32 255, i32* %24, align 8
  %25 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %5, align 8
  %26 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %25, i32 0, i32 1
  store i32 255, i32* %26, align 4
  %27 = load i8*, i8** @VEGA12_VOLTAGE_CONTROL_NONE, align 8
  %28 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %5, align 8
  %29 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %28, i32 0, i32 10
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** @VEGA12_VOLTAGE_CONTROL_NONE, align 8
  %31 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %5, align 8
  %32 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %31, i32 0, i32 9
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** @VEGA12_VOLTAGE_CONTROL_NONE, align 8
  %34 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %5, align 8
  %35 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %34, i32 0, i32 8
  store i8* %33, i8** %35, align 8
  %36 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %5, align 8
  %37 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %36, i32 0, i32 7
  store i64 0, i64* %37, align 8
  %38 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %5, align 8
  %39 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %38, i32 0, i32 2
  store i32 0, i32* %39, align 8
  %40 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %41 = call i32 @vega12_set_features_platform_caps(%struct.pp_hwmgr* %40)
  %42 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %43 = call i32 @vega12_init_dpm_defaults(%struct.pp_hwmgr* %42)
  %44 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %45 = call i32 @vega12_set_private_data_based_on_pptable(%struct.pp_hwmgr* %44)
  %46 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %5, align 8
  %47 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %46, i32 0, i32 3
  store i32 0, i32* %47, align 4
  %48 = load i32, i32* @VEGA12_MAX_HARDWARE_POWERLEVELS, align 4
  %49 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %50 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 4
  store i32 %48, i32* %51, align 4
  %52 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %53 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  store i32 2, i32* %54, align 8
  %55 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %56 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  store i32 50, i32* %57, align 4
  %58 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %59 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  store i32 536871936, i32* %60, align 8
  %61 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %62 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store i32 500, i32* %64, align 4
  %65 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %66 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  store i32 500, i32* %68, align 4
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %70 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %5, align 8
  %75 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 4
  %76 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %77 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %5, align 8
  %82 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 3
  store i32 %80, i32* %83, align 4
  %84 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %85 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %5, align 8
  %90 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 2
  store i32 %88, i32* %91, align 4
  %92 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %93 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %5, align 8
  %98 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  store i32 %96, i32* %99, align 4
  %100 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %101 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %106 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %104, %109
  %111 = sdiv i32 %110, 100
  %112 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %5, align 8
  %113 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 4
  %115 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %116 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @PP_GFXOFF_MASK, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %17
  %122 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %5, align 8
  %123 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %122, i32 0, i32 4
  store i32 1, i32* %123, align 8
  br label %127

124:                                              ; preds = %17
  %125 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %5, align 8
  %126 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %125, i32 0, i32 4
  store i32 0, i32* %126, align 8
  br label %127

127:                                              ; preds = %124, %121
  %128 = load i32, i32* %4, align 4
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %127, %14
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local %struct.vega12_hwmgr* @kzalloc(i32, i32) #1

declare dso_local i32 @vega12_set_default_registry_data(%struct.pp_hwmgr*) #1

declare dso_local i32 @vega12_set_features_platform_caps(%struct.pp_hwmgr*) #1

declare dso_local i32 @vega12_init_dpm_defaults(%struct.pp_hwmgr*) #1

declare dso_local i32 @vega12_set_private_data_based_on_pptable(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
