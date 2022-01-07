; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_i915_driver_hw_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_i915_driver_hw_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"incompatible vGPU found, support for isolated ppGTT required\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"old vGPU host found, support for HWSP emulation required\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"failed to remove conflicting framebuffer drivers\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"failed to remove conflicting VGA console\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"failed to enable GGTT\0A\00", align 1
@UINT_MAX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"failed to set DMA mask\0A\00", align 1
@PM_QOS_CPU_DMA_LATENCY = common dso_local global i32 0, align 4
@PM_QOS_DEFAULT_VALUE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"can't enable MSI\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*)* @i915_driver_hw_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_driver_hw_probe(%struct.drm_i915_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %7 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %11 = call i64 @i915_inject_probe_failure(%struct.drm_i915_private* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %185

16:                                               ; preds = %1
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %18 = call i32 @intel_device_info_runtime_init(%struct.drm_i915_private* %17)
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %20 = call i64 @HAS_PPGTT(%struct.drm_i915_private* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %24 = call i64 @intel_vgpu_active(%struct.drm_i915_private* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %28 = call i32 @intel_vgpu_has_full_ppgtt(%struct.drm_i915_private* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %32 = call i32 @i915_report_error(%struct.drm_i915_private* %31, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENXIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %185

35:                                               ; preds = %26, %22
  br label %36

36:                                               ; preds = %35, %16
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %38 = call i64 @HAS_EXECLISTS(%struct.drm_i915_private* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %42 = call i64 @intel_vgpu_active(%struct.drm_i915_private* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %46 = call i32 @intel_vgpu_has_hwsp_emulation(%struct.drm_i915_private* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %50 = call i32 @i915_report_error(%struct.drm_i915_private* %49, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @ENXIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %185

53:                                               ; preds = %44, %40
  br label %54

54:                                               ; preds = %53, %36
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %56 = call i32 @intel_sanitize_options(%struct.drm_i915_private* %55)
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %58 = call i32 @edram_detect(%struct.drm_i915_private* %57)
  %59 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %60 = call i32 @i915_perf_init(%struct.drm_i915_private* %59)
  %61 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %62 = call i32 @i915_ggtt_probe_hw(%struct.drm_i915_private* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  br label %181

66:                                               ; preds = %54
  %67 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %68 = call i32 @i915_kick_out_firmware_fb(%struct.drm_i915_private* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %178

73:                                               ; preds = %66
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = call i32 @vga_remove_vgacon(%struct.pci_dev* %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %178

80:                                               ; preds = %73
  %81 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %82 = call i32 @i915_ggtt_init_hw(%struct.drm_i915_private* %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %178

86:                                               ; preds = %80
  %87 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %88 = call i32 @intel_gt_init_hw(%struct.drm_i915_private* %87)
  %89 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %90 = call i32 @i915_ggtt_enable_hw(%struct.drm_i915_private* %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %178

95:                                               ; preds = %86
  %96 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %97 = call i32 @pci_set_master(%struct.pci_dev* %96)
  %98 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %99 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %98, i32 0, i32 1
  %100 = load i32, i32* @UINT_MAX, align 4
  %101 = call i32 @dma_set_max_seg_size(i32* %99, i32 %100)
  %102 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %103 = call i64 @IS_GEN(%struct.drm_i915_private* %102, i32 2)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %95
  %106 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %107 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %106, i32 0, i32 1
  %108 = call i32 @DMA_BIT_MASK(i32 30)
  %109 = call i32 @dma_set_coherent_mask(i32* %107, i32 %108)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %105
  %113 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %178

114:                                              ; preds = %105
  br label %115

115:                                              ; preds = %114, %95
  %116 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %117 = call i64 @IS_I965G(%struct.drm_i915_private* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %121 = call i64 @IS_I965GM(%struct.drm_i915_private* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %119, %115
  %124 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %125 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %124, i32 0, i32 1
  %126 = call i32 @DMA_BIT_MASK(i32 32)
  %127 = call i32 @dma_set_coherent_mask(i32* %125, i32 %126)
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* %5, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %123
  %131 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %178

132:                                              ; preds = %123
  br label %133

133:                                              ; preds = %132, %119
  %134 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %135 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %134, i32 0, i32 0
  %136 = load i32, i32* @PM_QOS_CPU_DMA_LATENCY, align 4
  %137 = load i32, i32* @PM_QOS_DEFAULT_VALUE, align 4
  %138 = call i32 @pm_qos_add_request(i32* %135, i32 %136, i32 %137)
  %139 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %140 = call i32 @intel_sanitize_gt_powersave(%struct.drm_i915_private* %139)
  %141 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %142 = call i32 @intel_gt_init_workarounds(%struct.drm_i915_private* %141)
  %143 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %144 = call i32 @INTEL_GEN(%struct.drm_i915_private* %143)
  %145 = icmp sge i32 %144, 5
  br i1 %145, label %146, label %153

146:                                              ; preds = %133
  %147 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %148 = call i64 @pci_enable_msi(%struct.pci_dev* %147)
  %149 = icmp slt i64 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %146
  %151 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %152

152:                                              ; preds = %150, %146
  br label %153

153:                                              ; preds = %152, %133
  %154 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %155 = call i32 @intel_gvt_init(%struct.drm_i915_private* %154)
  store i32 %155, i32* %5, align 4
  %156 = load i32, i32* %5, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  br label %166

159:                                              ; preds = %153
  %160 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %161 = call i32 @intel_opregion_setup(%struct.drm_i915_private* %160)
  %162 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %163 = call i32 @intel_get_dram_info(%struct.drm_i915_private* %162)
  %164 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %165 = call i32 @intel_bw_init_hw(%struct.drm_i915_private* %164)
  store i32 0, i32* %2, align 4
  br label %185

166:                                              ; preds = %158
  %167 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %168 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %173 = call i32 @pci_disable_msi(%struct.pci_dev* %172)
  br label %174

174:                                              ; preds = %171, %166
  %175 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %176 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %175, i32 0, i32 0
  %177 = call i32 @pm_qos_remove_request(i32* %176)
  br label %178

178:                                              ; preds = %174, %130, %112, %93, %85, %78, %71
  %179 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %180 = call i32 @i915_ggtt_driver_release(%struct.drm_i915_private* %179)
  br label %181

181:                                              ; preds = %178, %65
  %182 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %183 = call i32 @i915_perf_fini(%struct.drm_i915_private* %182)
  %184 = load i32, i32* %5, align 4
  store i32 %184, i32* %2, align 4
  br label %185

185:                                              ; preds = %181, %159, %48, %30, %13
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local i64 @i915_inject_probe_failure(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_device_info_runtime_init(%struct.drm_i915_private*) #1

declare dso_local i64 @HAS_PPGTT(%struct.drm_i915_private*) #1

declare dso_local i64 @intel_vgpu_active(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_vgpu_has_full_ppgtt(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_report_error(%struct.drm_i915_private*, i8*) #1

declare dso_local i64 @HAS_EXECLISTS(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_vgpu_has_hwsp_emulation(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_sanitize_options(%struct.drm_i915_private*) #1

declare dso_local i32 @edram_detect(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_perf_init(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_ggtt_probe_hw(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_kick_out_firmware_fb(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @vga_remove_vgacon(%struct.pci_dev*) #1

declare dso_local i32 @i915_ggtt_init_hw(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_gt_init_hw(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_ggtt_enable_hw(%struct.drm_i915_private*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @dma_set_max_seg_size(i32*, i32) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @dma_set_coherent_mask(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i64 @IS_I965G(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_I965GM(%struct.drm_i915_private*) #1

declare dso_local i32 @pm_qos_add_request(i32*, i32, i32) #1

declare dso_local i32 @intel_sanitize_gt_powersave(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_gt_init_workarounds(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @pci_enable_msi(%struct.pci_dev*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @intel_gvt_init(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_opregion_setup(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_get_dram_info(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_bw_init_hw(%struct.drm_i915_private*) #1

declare dso_local i32 @pci_disable_msi(%struct.pci_dev*) #1

declare dso_local i32 @pm_qos_remove_request(i32*) #1

declare dso_local i32 @i915_ggtt_driver_release(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_perf_fini(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
