; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_hdmi.c_oaktrail_hdmi_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_hdmi.c_oaktrail_hdmi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.drm_psb_private* }
%struct.drm_psb_private = type { %struct.oaktrail_hdmi_dev* }
%struct.oaktrail_hdmi_dev = type { %struct.pci_dev*, i32, i32, i32 }
%struct.pci_dev = type { i32 }

@PCI_VENDOR_ID_INTEL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to allocate memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to enable hdmi controller\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to map hdmi mmio\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"HDMI I2C initialization failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"HDMI hardware present.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oaktrail_hdmi_setup(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_psb_private*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.oaktrail_hdmi_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 1
  %9 = load %struct.drm_psb_private*, %struct.drm_psb_private** %8, align 8
  store %struct.drm_psb_private* %9, %struct.drm_psb_private** %3, align 8
  %10 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %11 = call %struct.pci_dev* @pci_get_device(i32 %10, i32 2061, i32* null)
  store %struct.pci_dev* %11, %struct.pci_dev** %4, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = icmp ne %struct.pci_dev* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %94

15:                                               ; preds = %1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.oaktrail_hdmi_dev* @kzalloc(i32 24, i32 %16)
  store %struct.oaktrail_hdmi_dev* %17, %struct.oaktrail_hdmi_dev** %5, align 8
  %18 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %5, align 8
  %19 = icmp ne %struct.oaktrail_hdmi_dev* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %93

25:                                               ; preds = %15
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = call i32 @pci_enable_device(%struct.pci_dev* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %32 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %90

35:                                               ; preds = %25
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = call i32 @pci_resource_start(%struct.pci_dev* %36, i32 0)
  %38 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %5, align 8
  %39 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = call i32 @pci_resource_len(%struct.pci_dev* %40, i32 0)
  %42 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %5, align 8
  %43 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %5, align 8
  %45 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %5, align 8
  %48 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ioremap(i32 %46, i32 %49)
  %51 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %5, align 8
  %52 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %5, align 8
  %54 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %35
  %58 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %59 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %90

62:                                               ; preds = %35
  %63 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %64 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %5, align 8
  %65 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %64, i32 0, i32 0
  store %struct.pci_dev* %63, %struct.pci_dev** %65, align 8
  %66 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %67 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %5, align 8
  %68 = call i32 @pci_set_drvdata(%struct.pci_dev* %66, %struct.oaktrail_hdmi_dev* %67)
  %69 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %5, align 8
  %70 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %69, i32 0, i32 0
  %71 = load %struct.pci_dev*, %struct.pci_dev** %70, align 8
  %72 = call i32 @oaktrail_hdmi_i2c_init(%struct.pci_dev* %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %62
  %76 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %77 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @dev_err(i32 %78, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %80

80:                                               ; preds = %75, %62
  %81 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %5, align 8
  %82 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %83 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %82, i32 0, i32 0
  store %struct.oaktrail_hdmi_dev* %81, %struct.oaktrail_hdmi_dev** %83, align 8
  %84 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %85 = call i32 @oaktrail_hdmi_audio_disable(%struct.drm_device* %84)
  %86 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %87 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @dev_info(i32 %88, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %94

90:                                               ; preds = %57, %30
  %91 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %5, align 8
  %92 = call i32 @kfree(%struct.oaktrail_hdmi_dev* %91)
  br label %93

93:                                               ; preds = %90, %20
  br label %94

94:                                               ; preds = %93, %80, %14
  ret void
}

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, i32*) #1

declare dso_local %struct.oaktrail_hdmi_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.oaktrail_hdmi_dev*) #1

declare dso_local i32 @oaktrail_hdmi_i2c_init(%struct.pci_dev*) #1

declare dso_local i32 @oaktrail_hdmi_audio_disable(%struct.drm_device*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @kfree(%struct.oaktrail_hdmi_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
