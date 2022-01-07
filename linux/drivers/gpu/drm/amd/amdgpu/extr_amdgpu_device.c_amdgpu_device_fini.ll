; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_device.c_amdgpu_device_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_device.c_amdgpu_device_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i32, i32, i64, i32, i32*, i32*, i32, i32*, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [27 x i8] c"amdgpu: finishing device.\0A\00", align 1
@amdgpu_emu_mode = common dso_local global i32 0, align 4
@AMD_IS_PX = common dso_local global i32 0, align 4
@dev_attr_pcie_replay_count = common dso_local global i32 0, align 4
@CONFIG_PERF_EVENTS = common dso_local global i32 0, align 4
@amdgpu_discovery = common dso_local global i64 0, align 8
@CHIP_NAVI10 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_device_fini(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %4 = call i32 @DRM_INFO(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %6 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %5, i32 0, i32 0
  store i32 1, i32* %6, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %8 = call i32 @amdgpu_irq_disable_all(%struct.amdgpu_device* %7)
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 12
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %1
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %16 = call i32 @amdgpu_device_has_dc_support(%struct.amdgpu_device* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 11
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @drm_helper_force_disable_all(i32 %21)
  br label %28

23:                                               ; preds = %14
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %25 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %24, i32 0, i32 11
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @drm_atomic_helper_shutdown(i32 %26)
  br label %28

28:                                               ; preds = %23, %18
  br label %29

29:                                               ; preds = %28, %1
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %31 = call i32 @amdgpu_fence_driver_fini(%struct.amdgpu_device* %30)
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %33 = call i32 @amdgpu_pm_sysfs_fini(%struct.amdgpu_device* %32)
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %35 = call i32 @amdgpu_fbdev_fini(%struct.amdgpu_device* %34)
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %37 = call i32 @amdgpu_device_ip_fini(%struct.amdgpu_device* %36)
  store i32 %37, i32* %3, align 4
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %39 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %38, i32 0, i32 10
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %29
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %45 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %44, i32 0, i32 10
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @release_firmware(i32* %47)
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %50 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %49, i32 0, i32 10
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %43, %29
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %56 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %55, i32 0, i32 9
  %57 = call i32 @cancel_delayed_work_sync(i32* %56)
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %59 = call i32 @amdgpu_device_has_dc_support(%struct.amdgpu_device* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %52
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %63 = call i32 @amdgpu_i2c_fini(%struct.amdgpu_device* %62)
  br label %64

64:                                               ; preds = %61, %52
  %65 = load i32, i32* @amdgpu_emu_mode, align 4
  %66 = icmp ne i32 %65, 1
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %69 = call i32 @amdgpu_atombios_fini(%struct.amdgpu_device* %68)
  br label %70

70:                                               ; preds = %67, %64
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %72 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %71, i32 0, i32 8
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @kfree(i32* %73)
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %76 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %75, i32 0, i32 8
  store i32* null, i32** %76, align 8
  %77 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %78 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @pci_is_thunderbolt_attached(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %70
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %84 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @vga_switcheroo_unregister_client(i32 %85)
  br label %87

87:                                               ; preds = %82, %70
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %89 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @AMD_IS_PX, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %87
  %95 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %96 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @vga_switcheroo_fini_domain_pm_ops(i32 %97)
  br label %99

99:                                               ; preds = %94, %87
  %100 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %101 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %100, i32 0, i32 7
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @vga_client_register(i32 %102, i32* null, i32* null, i32* null)
  %104 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %105 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %104, i32 0, i32 6
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %116

108:                                              ; preds = %99
  %109 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %110 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %113 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %112, i32 0, i32 6
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @pci_iounmap(i32 %111, i32* %114)
  br label %116

116:                                              ; preds = %108, %99
  %117 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %118 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %117, i32 0, i32 6
  store i32* null, i32** %118, align 8
  %119 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %120 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %119, i32 0, i32 5
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @iounmap(i32* %121)
  %123 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %124 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %123, i32 0, i32 5
  store i32* null, i32** %124, align 8
  %125 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %126 = call i32 @amdgpu_device_doorbell_fini(%struct.amdgpu_device* %125)
  %127 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %128 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %116
  %131 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %132 = call i64 @amdgim_is_hwperf(%struct.amdgpu_device* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %136 = call i32 @amdgpu_pm_virt_sysfs_fini(%struct.amdgpu_device* %135)
  br label %137

137:                                              ; preds = %134, %130, %116
  %138 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %139 = call i32 @amdgpu_debugfs_regs_cleanup(%struct.amdgpu_device* %138)
  %140 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %141 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @device_remove_file(i32 %142, i32* @dev_attr_pcie_replay_count)
  %144 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %145 = call i32 @amdgpu_ucode_sysfs_fini(%struct.amdgpu_device* %144)
  %146 = load i32, i32* @CONFIG_PERF_EVENTS, align 4
  %147 = call i64 @IS_ENABLED(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %137
  %150 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %151 = call i32 @amdgpu_pmu_fini(%struct.amdgpu_device* %150)
  br label %152

152:                                              ; preds = %149, %137
  %153 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %154 = call i32 @amdgpu_debugfs_preempt_cleanup(%struct.amdgpu_device* %153)
  %155 = load i64, i64* @amdgpu_discovery, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %152
  %158 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %159 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @CHIP_NAVI10, align 8
  %162 = icmp sge i64 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %157
  %164 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %165 = call i32 @amdgpu_discovery_fini(%struct.amdgpu_device* %164)
  br label %166

166:                                              ; preds = %163, %157, %152
  ret void
}

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @amdgpu_irq_disable_all(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_device_has_dc_support(%struct.amdgpu_device*) #1

declare dso_local i32 @drm_helper_force_disable_all(i32) #1

declare dso_local i32 @drm_atomic_helper_shutdown(i32) #1

declare dso_local i32 @amdgpu_fence_driver_fini(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_pm_sysfs_fini(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_fbdev_fini(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_device_ip_fini(%struct.amdgpu_device*) #1

declare dso_local i32 @release_firmware(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @amdgpu_i2c_fini(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_atombios_fini(%struct.amdgpu_device*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @pci_is_thunderbolt_attached(i32) #1

declare dso_local i32 @vga_switcheroo_unregister_client(i32) #1

declare dso_local i32 @vga_switcheroo_fini_domain_pm_ops(i32) #1

declare dso_local i32 @vga_client_register(i32, i32*, i32*, i32*) #1

declare dso_local i32 @pci_iounmap(i32, i32*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @amdgpu_device_doorbell_fini(%struct.amdgpu_device*) #1

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i64 @amdgim_is_hwperf(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_pm_virt_sysfs_fini(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_debugfs_regs_cleanup(%struct.amdgpu_device*) #1

declare dso_local i32 @device_remove_file(i32, i32*) #1

declare dso_local i32 @amdgpu_ucode_sysfs_fini(%struct.amdgpu_device*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @amdgpu_pmu_fini(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_debugfs_preempt_cleanup(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_discovery_fini(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
