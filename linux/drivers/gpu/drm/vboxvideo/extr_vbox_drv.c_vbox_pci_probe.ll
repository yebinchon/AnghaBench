; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_drv.c_vbox_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_drv.c_vbox_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.vbox_private = type { %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.vbox_private*, %struct.pci_dev* }

@VBE_DISPI_ID_HGSMI = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@driver = common dso_local global i32 0, align 4
@vbox_fb_helper_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @vbox_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vbox_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.vbox_private*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @VBE_DISPI_ID_HGSMI, align 4
  %9 = call i32 @vbox_check_supported(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %121

14:                                               ; preds = %2
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.vbox_private* @kzalloc(i32 32, i32 %15)
  store %struct.vbox_private* %16, %struct.vbox_private** %6, align 8
  %17 = load %struct.vbox_private*, %struct.vbox_private** %6, align 8
  %18 = icmp ne %struct.vbox_private* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %121

22:                                               ; preds = %14
  %23 = load %struct.vbox_private*, %struct.vbox_private** %6, align 8
  %24 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %23, i32 0, i32 0
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 0
  %27 = call i32 @drm_dev_init(%struct.TYPE_5__* %24, i32* @driver, i32* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load %struct.vbox_private*, %struct.vbox_private** %6, align 8
  %32 = call i32 @kfree(%struct.vbox_private* %31)
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %121

34:                                               ; preds = %22
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = load %struct.vbox_private*, %struct.vbox_private** %6, align 8
  %37 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store %struct.pci_dev* %35, %struct.pci_dev** %38, align 8
  %39 = load %struct.vbox_private*, %struct.vbox_private** %6, align 8
  %40 = load %struct.vbox_private*, %struct.vbox_private** %6, align 8
  %41 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store %struct.vbox_private* %39, %struct.vbox_private** %42, align 8
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = load %struct.vbox_private*, %struct.vbox_private** %6, align 8
  %45 = call i32 @pci_set_drvdata(%struct.pci_dev* %43, %struct.vbox_private* %44)
  %46 = load %struct.vbox_private*, %struct.vbox_private** %6, align 8
  %47 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %46, i32 0, i32 3
  %48 = call i32 @mutex_init(i32* %47)
  %49 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %50 = call i32 @pci_enable_device(%struct.pci_dev* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %34
  br label %116

54:                                               ; preds = %34
  %55 = load %struct.vbox_private*, %struct.vbox_private** %6, align 8
  %56 = call i32 @vbox_hw_init(%struct.vbox_private* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %113

60:                                               ; preds = %54
  %61 = load %struct.vbox_private*, %struct.vbox_private** %6, align 8
  %62 = call i32 @vbox_mm_init(%struct.vbox_private* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %110

66:                                               ; preds = %60
  %67 = load %struct.vbox_private*, %struct.vbox_private** %6, align 8
  %68 = call i32 @vbox_mode_init(%struct.vbox_private* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %107

72:                                               ; preds = %66
  %73 = load %struct.vbox_private*, %struct.vbox_private** %6, align 8
  %74 = call i32 @vbox_irq_init(%struct.vbox_private* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %104

78:                                               ; preds = %72
  %79 = load %struct.vbox_private*, %struct.vbox_private** %6, align 8
  %80 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %79, i32 0, i32 0
  %81 = load %struct.vbox_private*, %struct.vbox_private** %6, align 8
  %82 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %81, i32 0, i32 2
  %83 = load %struct.vbox_private*, %struct.vbox_private** %6, align 8
  %84 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @drm_fb_helper_fbdev_setup(%struct.TYPE_5__* %80, i32* %82, i32* @vbox_fb_helper_funcs, i32 32, i32 %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %78
  br label %101

90:                                               ; preds = %78
  %91 = load %struct.vbox_private*, %struct.vbox_private** %6, align 8
  %92 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %91, i32 0, i32 0
  %93 = call i32 @drm_dev_register(%struct.TYPE_5__* %92, i32 0)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %98

97:                                               ; preds = %90
  store i32 0, i32* %3, align 4
  br label %121

98:                                               ; preds = %96
  %99 = load %struct.vbox_private*, %struct.vbox_private** %6, align 8
  %100 = call i32 @vbox_fbdev_fini(%struct.vbox_private* %99)
  br label %101

101:                                              ; preds = %98, %89
  %102 = load %struct.vbox_private*, %struct.vbox_private** %6, align 8
  %103 = call i32 @vbox_irq_fini(%struct.vbox_private* %102)
  br label %104

104:                                              ; preds = %101, %77
  %105 = load %struct.vbox_private*, %struct.vbox_private** %6, align 8
  %106 = call i32 @vbox_mode_fini(%struct.vbox_private* %105)
  br label %107

107:                                              ; preds = %104, %71
  %108 = load %struct.vbox_private*, %struct.vbox_private** %6, align 8
  %109 = call i32 @vbox_mm_fini(%struct.vbox_private* %108)
  br label %110

110:                                              ; preds = %107, %65
  %111 = load %struct.vbox_private*, %struct.vbox_private** %6, align 8
  %112 = call i32 @vbox_hw_fini(%struct.vbox_private* %111)
  br label %113

113:                                              ; preds = %110, %59
  %114 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %115 = call i32 @pci_disable_device(%struct.pci_dev* %114)
  br label %116

116:                                              ; preds = %113, %53
  %117 = load %struct.vbox_private*, %struct.vbox_private** %6, align 8
  %118 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %117, i32 0, i32 0
  %119 = call i32 @drm_dev_put(%struct.TYPE_5__* %118)
  %120 = load i32, i32* %7, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %116, %97, %30, %19, %11
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @vbox_check_supported(i32) #1

declare dso_local %struct.vbox_private* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_dev_init(%struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i32 @kfree(%struct.vbox_private*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.vbox_private*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @vbox_hw_init(%struct.vbox_private*) #1

declare dso_local i32 @vbox_mm_init(%struct.vbox_private*) #1

declare dso_local i32 @vbox_mode_init(%struct.vbox_private*) #1

declare dso_local i32 @vbox_irq_init(%struct.vbox_private*) #1

declare dso_local i32 @drm_fb_helper_fbdev_setup(%struct.TYPE_5__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @drm_dev_register(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @vbox_fbdev_fini(%struct.vbox_private*) #1

declare dso_local i32 @vbox_irq_fini(%struct.vbox_private*) #1

declare dso_local i32 @vbox_mode_fini(%struct.vbox_private*) #1

declare dso_local i32 @vbox_mm_fini(%struct.vbox_private*) #1

declare dso_local i32 @vbox_hw_fini(%struct.vbox_private*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @drm_dev_put(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
