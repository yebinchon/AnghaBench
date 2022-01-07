; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_hwmgr_backend_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_hwmgr_backend_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, %struct.TYPE_6__, %struct.amdgpu_device*, %struct.smu7_hwmgr* }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.smu7_hwmgr = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PHM_PlatformCaps_EVV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Get EVV Voltage Failed.  Abort Driver loading!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PP_TABLE_V1 = common dso_local global i64 0, align 8
@PP_TABLE_V0 = common dso_local global i64 0, align 8
@SMU7_MAX_HARDWARE_POWERLEVELS = common dso_local global i32 0, align 4
@CAIL_PCIE_LINK_SPEED_SUPPORT_GEN3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu7_hwmgr_backend_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_hwmgr_backend_init(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.smu7_hwmgr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.smu7_hwmgr* @kzalloc(i32 16, i32 %7)
  store %struct.smu7_hwmgr* %8, %struct.smu7_hwmgr** %4, align 8
  %9 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %4, align 8
  %10 = icmp eq %struct.smu7_hwmgr* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %125

14:                                               ; preds = %1
  %15 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %4, align 8
  %16 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %17 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %16, i32 0, i32 3
  store %struct.smu7_hwmgr* %15, %struct.smu7_hwmgr** %17, align 8
  %18 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %19 = call i32 @smu7_patch_voltage_workaround(%struct.pp_hwmgr* %18)
  %20 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %21 = call i32 @smu7_init_dpm_defaults(%struct.pp_hwmgr* %20)
  %22 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %23 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @PHM_PlatformCaps_EVV, align 4
  %27 = call i64 @phm_cap_enabled(i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %14
  %30 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %31 = call i32 @smu7_get_evv_voltages(%struct.pp_hwmgr* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = call i32 @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %125

38:                                               ; preds = %29
  br label %42

39:                                               ; preds = %14
  %40 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %41 = call i32 @smu7_get_elb_voltages(%struct.pp_hwmgr* %40)
  br label %42

42:                                               ; preds = %39, %38
  %43 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %44 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PP_TABLE_V1, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %50 = call i32 @smu7_complete_dependency_tables(%struct.pp_hwmgr* %49)
  %51 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %52 = call i32 @smu7_set_private_data_based_on_pptable_v1(%struct.pp_hwmgr* %51)
  br label %65

53:                                               ; preds = %42
  %54 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %55 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PP_TABLE_V0, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %61 = call i32 @smu7_patch_dependency_tables_with_leakage(%struct.pp_hwmgr* %60)
  %62 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %63 = call i32 @smu7_set_private_data_based_on_pptable_v0(%struct.pp_hwmgr* %62)
  br label %64

64:                                               ; preds = %59, %53
  br label %65

65:                                               ; preds = %64, %48
  %66 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %67 = call i32 @phm_initializa_dynamic_state_adjustment_rule_settings(%struct.pp_hwmgr* %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp eq i32 0, %68
  br i1 %69, label %70, label %121

70:                                               ; preds = %65
  %71 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %72 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %71, i32 0, i32 2
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %72, align 8
  store %struct.amdgpu_device* %73, %struct.amdgpu_device** %6, align 8
  %74 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %4, align 8
  %75 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %74, i32 0, i32 0
  store i32 0, i32* %75, align 4
  %76 = load i32, i32* @SMU7_MAX_HARDWARE_POWERLEVELS, align 4
  %77 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %78 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 4
  store i32 %76, i32* %79, align 4
  %80 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %81 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  store i32 2, i32* %82, align 8
  %83 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %84 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  store i32 50, i32* %85, align 4
  %86 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %87 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %4, align 8
  %91 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %4, align 8
  %93 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @CAIL_PCIE_LINK_SPEED_SUPPORT_GEN3, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %70
  %99 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %4, align 8
  %100 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %99, i32 0, i32 2
  store i32 20, i32* %100, align 4
  br label %101

101:                                              ; preds = %98, %70
  %102 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %103 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %4, align 8
  %107 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  %108 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %109 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  store i32 536871936, i32* %110, align 8
  %111 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %112 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  store i32 500, i32* %114, align 4
  %115 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %116 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  store i32 500, i32* %118, align 4
  %119 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %120 = call i32 @smu7_thermal_parameter_init(%struct.pp_hwmgr* %119)
  br label %124

121:                                              ; preds = %65
  %122 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %123 = call i32 @smu7_hwmgr_backend_fini(%struct.pp_hwmgr* %122)
  br label %124

124:                                              ; preds = %121, %101
  store i32 0, i32* %2, align 4
  br label %125

125:                                              ; preds = %124, %34, %11
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.smu7_hwmgr* @kzalloc(i32, i32) #1

declare dso_local i32 @smu7_patch_voltage_workaround(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_init_dpm_defaults(%struct.pp_hwmgr*) #1

declare dso_local i64 @phm_cap_enabled(i32, i32) #1

declare dso_local i32 @smu7_get_evv_voltages(%struct.pp_hwmgr*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @smu7_get_elb_voltages(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_complete_dependency_tables(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_set_private_data_based_on_pptable_v1(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_patch_dependency_tables_with_leakage(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_set_private_data_based_on_pptable_v0(%struct.pp_hwmgr*) #1

declare dso_local i32 @phm_initializa_dynamic_state_adjustment_rule_settings(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_thermal_parameter_init(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_hwmgr_backend_fini(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
