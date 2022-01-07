; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_i915_driver_modeset_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_i915_driver_modeset_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@i915_vga_set_decode = common dso_local global i32* null, align 8
@i915_switcheroo_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @i915_driver_modeset_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_driver_modeset_probe(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %7)
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %4, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %5, align 8
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %14 = call i64 @i915_inject_probe_failure(%struct.drm_i915_private* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %128

19:                                               ; preds = %1
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %21 = call i64 @HAS_DISPLAY(%struct.drm_i915_private* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %25 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %24, i32 0, i32 0
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %27 = call %struct.TYPE_4__* @INTEL_INFO(%struct.drm_i915_private* %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @drm_vblank_init(%struct.TYPE_3__* %25, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %126

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34, %19
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %37 = call i32 @intel_bios_init(%struct.drm_i915_private* %36)
  %38 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %40 = load i32*, i32** @i915_vga_set_decode, align 8
  %41 = call i32 @vga_client_register(%struct.pci_dev* %38, %struct.drm_i915_private* %39, i32* null, i32* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %126

50:                                               ; preds = %44, %35
  %51 = call i32 (...) @intel_register_dsm_handler()
  %52 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %53 = call i32 @vga_switcheroo_register_client(%struct.pci_dev* %52, i32* @i915_switcheroo_ops, i32 0)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %123

57:                                               ; preds = %50
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %59 = call i32 @intel_update_rawclk(%struct.drm_i915_private* %58)
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %61 = call i32 @intel_power_domains_init_hw(%struct.drm_i915_private* %60, i32 0)
  %62 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %63 = call i32 @intel_csr_ucode_init(%struct.drm_i915_private* %62)
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %65 = call i32 @intel_irq_install(%struct.drm_i915_private* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  br label %116

69:                                               ; preds = %57
  %70 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %71 = call i32 @intel_gmbus_setup(%struct.drm_i915_private* %70)
  %72 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %73 = call i32 @intel_modeset_init(%struct.drm_device* %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %111

77:                                               ; preds = %69
  %78 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %79 = call i32 @i915_gem_init(%struct.drm_i915_private* %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %108

83:                                               ; preds = %77
  %84 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %85 = call i32 @intel_overlay_setup(%struct.drm_i915_private* %84)
  %86 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %87 = call i64 @HAS_DISPLAY(%struct.drm_i915_private* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %83
  store i32 0, i32* %2, align 4
  br label %128

90:                                               ; preds = %83
  %91 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %92 = call i32 @intel_fbdev_init(%struct.drm_device* %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %101

96:                                               ; preds = %90
  %97 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %98 = call i32 @intel_hpd_init(%struct.drm_i915_private* %97)
  %99 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %100 = call i32 @intel_init_ipc(%struct.drm_i915_private* %99)
  store i32 0, i32* %2, align 4
  br label %128

101:                                              ; preds = %95
  %102 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %103 = call i32 @i915_gem_suspend(%struct.drm_i915_private* %102)
  %104 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %105 = call i32 @i915_gem_driver_remove(%struct.drm_i915_private* %104)
  %106 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %107 = call i32 @i915_gem_driver_release(%struct.drm_i915_private* %106)
  br label %108

108:                                              ; preds = %101, %82
  %109 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %110 = call i32 @intel_modeset_driver_remove(%struct.drm_device* %109)
  br label %111

111:                                              ; preds = %108, %76
  %112 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %113 = call i32 @intel_irq_uninstall(%struct.drm_i915_private* %112)
  %114 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %115 = call i32 @intel_gmbus_teardown(%struct.drm_i915_private* %114)
  br label %116

116:                                              ; preds = %111, %68
  %117 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %118 = call i32 @intel_csr_ucode_fini(%struct.drm_i915_private* %117)
  %119 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %120 = call i32 @intel_power_domains_driver_remove(%struct.drm_i915_private* %119)
  %121 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %122 = call i32 @vga_switcheroo_unregister_client(%struct.pci_dev* %121)
  br label %123

123:                                              ; preds = %116, %56
  %124 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %125 = call i32 @vga_client_register(%struct.pci_dev* %124, %struct.drm_i915_private* null, i32* null, i32* null)
  br label %126

126:                                              ; preds = %123, %49, %33
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %126, %96, %89, %16
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i64 @i915_inject_probe_failure(%struct.drm_i915_private*) #1

declare dso_local i64 @HAS_DISPLAY(%struct.drm_i915_private*) #1

declare dso_local i32 @drm_vblank_init(%struct.TYPE_3__*, i32) #1

declare dso_local %struct.TYPE_4__* @INTEL_INFO(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_bios_init(%struct.drm_i915_private*) #1

declare dso_local i32 @vga_client_register(%struct.pci_dev*, %struct.drm_i915_private*, i32*, i32*) #1

declare dso_local i32 @intel_register_dsm_handler(...) #1

declare dso_local i32 @vga_switcheroo_register_client(%struct.pci_dev*, i32*, i32) #1

declare dso_local i32 @intel_update_rawclk(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_power_domains_init_hw(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_csr_ucode_init(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_irq_install(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_gmbus_setup(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_modeset_init(%struct.drm_device*) #1

declare dso_local i32 @i915_gem_init(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_overlay_setup(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_fbdev_init(%struct.drm_device*) #1

declare dso_local i32 @intel_hpd_init(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_init_ipc(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_gem_suspend(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_gem_driver_remove(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_gem_driver_release(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_modeset_driver_remove(%struct.drm_device*) #1

declare dso_local i32 @intel_irq_uninstall(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_gmbus_teardown(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_csr_ucode_fini(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_power_domains_driver_remove(%struct.drm_i915_private*) #1

declare dso_local i32 @vga_switcheroo_unregister_client(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
