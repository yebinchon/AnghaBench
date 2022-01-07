; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_pm_sysfs_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_pm_sysfs_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, i32, i32, i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { %struct.pp_hwmgr* }
%struct.pp_hwmgr = type { i64 }

@dev_attr_power_dpm_state = common dso_local global i32 0, align 4
@dev_attr_power_dpm_force_performance_level = common dso_local global i32 0, align 4
@dev_attr_pp_num_states = common dso_local global i32 0, align 4
@dev_attr_pp_cur_state = common dso_local global i32 0, align 4
@dev_attr_pp_force_state = common dso_local global i32 0, align 4
@dev_attr_pp_table = common dso_local global i32 0, align 4
@dev_attr_pp_dpm_sclk = common dso_local global i32 0, align 4
@dev_attr_pp_dpm_mclk = common dso_local global i32 0, align 4
@CHIP_VEGA10 = common dso_local global i64 0, align 8
@dev_attr_pp_dpm_socclk = common dso_local global i32 0, align 4
@CHIP_ARCTURUS = common dso_local global i64 0, align 8
@dev_attr_pp_dpm_dcefclk = common dso_local global i32 0, align 4
@dev_attr_pp_dpm_pcie = common dso_local global i32 0, align 4
@CHIP_VEGA20 = common dso_local global i64 0, align 8
@dev_attr_pp_dpm_fclk = common dso_local global i32 0, align 4
@dev_attr_pp_sclk_od = common dso_local global i32 0, align 4
@dev_attr_pp_mclk_od = common dso_local global i32 0, align 4
@dev_attr_pp_power_profile_mode = common dso_local global i32 0, align 4
@dev_attr_pp_od_clk_voltage = common dso_local global i32 0, align 4
@dev_attr_gpu_busy_percent = common dso_local global i32 0, align 4
@AMD_IS_APU = common dso_local global i32 0, align 4
@dev_attr_mem_busy_percent = common dso_local global i32 0, align 4
@dev_attr_pcie_bw = common dso_local global i32 0, align 4
@dev_attr_unique_id = common dso_local global i32 0, align 4
@dev_attr_pp_features = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_pm_sysfs_fini(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.pp_hwmgr*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %4 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %5 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %4, i32 0, i32 6
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  store %struct.pp_hwmgr* %7, %struct.pp_hwmgr** %3, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 5
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %200

14:                                               ; preds = %1
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @hwmon_device_unregister(i64 %24)
  br label %26

26:                                               ; preds = %20, %14
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @device_remove_file(i32 %29, i32* @dev_attr_power_dpm_state)
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %32 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @device_remove_file(i32 %33, i32* @dev_attr_power_dpm_force_performance_level)
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @device_remove_file(i32 %37, i32* @dev_attr_pp_num_states)
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %40 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @device_remove_file(i32 %41, i32* @dev_attr_pp_cur_state)
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %44 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @device_remove_file(i32 %45, i32* @dev_attr_pp_force_state)
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %48 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @device_remove_file(i32 %49, i32* @dev_attr_pp_table)
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %52 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @device_remove_file(i32 %53, i32* @dev_attr_pp_dpm_sclk)
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %56 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @device_remove_file(i32 %57, i32* @dev_attr_pp_dpm_mclk)
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %60 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @CHIP_VEGA10, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %26
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %66 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @device_remove_file(i32 %67, i32* @dev_attr_pp_dpm_socclk)
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %70 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @CHIP_ARCTURUS, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %64
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %76 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @device_remove_file(i32 %77, i32* @dev_attr_pp_dpm_dcefclk)
  br label %79

79:                                               ; preds = %74, %64
  br label %80

80:                                               ; preds = %79, %26
  %81 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %82 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @CHIP_ARCTURUS, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %88 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @device_remove_file(i32 %89, i32* @dev_attr_pp_dpm_pcie)
  br label %91

91:                                               ; preds = %86, %80
  %92 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %93 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @CHIP_VEGA20, align 8
  %96 = icmp sge i64 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %91
  %98 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %99 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @device_remove_file(i32 %100, i32* @dev_attr_pp_dpm_fclk)
  br label %102

102:                                              ; preds = %97, %91
  %103 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %104 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @device_remove_file(i32 %105, i32* @dev_attr_pp_sclk_od)
  %107 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %108 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @device_remove_file(i32 %109, i32* @dev_attr_pp_mclk_od)
  %111 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %112 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @device_remove_file(i32 %113, i32* @dev_attr_pp_power_profile_mode)
  %115 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %116 = call i64 @is_support_sw_smu(%struct.amdgpu_device* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %102
  %119 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %120 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %133, label %124

124:                                              ; preds = %118, %102
  %125 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %126 = call i64 @is_support_sw_smu(%struct.amdgpu_device* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %138, label %128

128:                                              ; preds = %124
  %129 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %130 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %128, %118
  %134 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %135 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @device_remove_file(i32 %136, i32* @dev_attr_pp_od_clk_voltage)
  br label %138

138:                                              ; preds = %133, %128, %124
  %139 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %140 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @device_remove_file(i32 %141, i32* @dev_attr_gpu_busy_percent)
  %143 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %144 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @AMD_IS_APU, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %160, label %149

149:                                              ; preds = %138
  %150 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %151 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @CHIP_VEGA10, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %160

155:                                              ; preds = %149
  %156 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %157 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @device_remove_file(i32 %158, i32* @dev_attr_mem_busy_percent)
  br label %160

160:                                              ; preds = %155, %149, %138
  %161 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %162 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @AMD_IS_APU, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %160
  %168 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %169 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @device_remove_file(i32 %170, i32* @dev_attr_pcie_bw)
  br label %172

172:                                              ; preds = %167, %160
  %173 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %174 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %172
  %178 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %179 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @device_remove_file(i32 %180, i32* @dev_attr_unique_id)
  br label %182

182:                                              ; preds = %177, %172
  %183 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %184 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @CHIP_VEGA10, align 8
  %187 = icmp sge i64 %185, %186
  br i1 %187, label %188, label %200

188:                                              ; preds = %182
  %189 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %190 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @AMD_IS_APU, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %200, label %195

195:                                              ; preds = %188
  %196 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %197 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @device_remove_file(i32 %198, i32* @dev_attr_pp_features)
  br label %200

200:                                              ; preds = %13, %195, %188, %182
  ret void
}

declare dso_local i32 @hwmon_device_unregister(i64) #1

declare dso_local i32 @device_remove_file(i32, i32*) #1

declare dso_local i64 @is_support_sw_smu(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
