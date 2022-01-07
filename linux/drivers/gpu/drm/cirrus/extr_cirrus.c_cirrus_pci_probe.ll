; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/cirrus/extr_cirrus.c_cirrus_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/cirrus/extr_cirrus.c_cirrus_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.drm_device = type { %struct.TYPE_2__, %struct.pci_dev*, %struct.cirrus_device* }
%struct.TYPE_2__ = type { i32 }
%struct.cirrus_device = type { i32*, i32*, %struct.drm_device }

@.str = private unnamed_addr constant [12 x i8] c"cirrusdrmfb\00", align 1
@DRIVER_NAME = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@cirrus_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @cirrus_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cirrus_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.cirrus_device*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call i32 @drm_fb_helper_remove_conflicting_pci_framebuffers(%struct.pci_dev* %9, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %3, align 4
  br label %138

15:                                               ; preds = %2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = call i32 @pci_enable_device(%struct.pci_dev* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %138

22:                                               ; preds = %15
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = load i32, i32* @DRIVER_NAME, align 4
  %25 = call i32 @pci_request_regions(%struct.pci_dev* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %138

30:                                               ; preds = %22
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.cirrus_device* @kzalloc(i32 40, i32 %33)
  store %struct.cirrus_device* %34, %struct.cirrus_device** %7, align 8
  %35 = load %struct.cirrus_device*, %struct.cirrus_device** %7, align 8
  %36 = icmp eq %struct.cirrus_device* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %134

38:                                               ; preds = %30
  %39 = load %struct.cirrus_device*, %struct.cirrus_device** %7, align 8
  %40 = getelementptr inbounds %struct.cirrus_device, %struct.cirrus_device* %39, i32 0, i32 2
  store %struct.drm_device* %40, %struct.drm_device** %6, align 8
  %41 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 0
  %44 = call i32 @drm_dev_init(%struct.drm_device* %41, i32* @cirrus_driver, i32* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %131

48:                                               ; preds = %38
  %49 = load %struct.cirrus_device*, %struct.cirrus_device** %7, align 8
  %50 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %51 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %50, i32 0, i32 2
  store %struct.cirrus_device* %49, %struct.cirrus_device** %51, align 8
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %8, align 4
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = call i32 @pci_resource_start(%struct.pci_dev* %54, i32 0)
  %56 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %57 = call i32 @pci_resource_len(%struct.pci_dev* %56, i32 0)
  %58 = call i8* @ioremap(i32 %55, i32 %57)
  %59 = bitcast i8* %58 to i32*
  %60 = load %struct.cirrus_device*, %struct.cirrus_device** %7, align 8
  %61 = getelementptr inbounds %struct.cirrus_device, %struct.cirrus_device* %60, i32 0, i32 0
  store i32* %59, i32** %61, align 8
  %62 = load %struct.cirrus_device*, %struct.cirrus_device** %7, align 8
  %63 = getelementptr inbounds %struct.cirrus_device, %struct.cirrus_device* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %48
  br label %128

67:                                               ; preds = %48
  %68 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %69 = call i32 @pci_resource_start(%struct.pci_dev* %68, i32 1)
  %70 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %71 = call i32 @pci_resource_len(%struct.pci_dev* %70, i32 1)
  %72 = call i8* @ioremap(i32 %69, i32 %71)
  %73 = bitcast i8* %72 to i32*
  %74 = load %struct.cirrus_device*, %struct.cirrus_device** %7, align 8
  %75 = getelementptr inbounds %struct.cirrus_device, %struct.cirrus_device* %74, i32 0, i32 1
  store i32* %73, i32** %75, align 8
  %76 = load %struct.cirrus_device*, %struct.cirrus_device** %7, align 8
  %77 = getelementptr inbounds %struct.cirrus_device, %struct.cirrus_device* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %67
  br label %123

81:                                               ; preds = %67
  %82 = load %struct.cirrus_device*, %struct.cirrus_device** %7, align 8
  %83 = call i32 @cirrus_mode_config_init(%struct.cirrus_device* %82)
  %84 = load %struct.cirrus_device*, %struct.cirrus_device** %7, align 8
  %85 = call i32 @cirrus_conn_init(%struct.cirrus_device* %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %116

89:                                               ; preds = %81
  %90 = load %struct.cirrus_device*, %struct.cirrus_device** %7, align 8
  %91 = call i32 @cirrus_pipe_init(%struct.cirrus_device* %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %116

95:                                               ; preds = %89
  %96 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %97 = call i32 @drm_mode_config_reset(%struct.drm_device* %96)
  %98 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %99 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %100 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %99, i32 0, i32 1
  store %struct.pci_dev* %98, %struct.pci_dev** %100, align 8
  %101 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %102 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %103 = call i32 @pci_set_drvdata(%struct.pci_dev* %101, %struct.drm_device* %102)
  %104 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %105 = call i32 @drm_dev_register(%struct.drm_device* %104, i32 0)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %95
  br label %116

109:                                              ; preds = %95
  %110 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %111 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %112 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @drm_fbdev_generic_setup(%struct.drm_device* %110, i32 %114)
  store i32 0, i32* %3, align 4
  br label %138

116:                                              ; preds = %108, %94, %88
  %117 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %118 = call i32 @drm_mode_config_cleanup(%struct.drm_device* %117)
  %119 = load %struct.cirrus_device*, %struct.cirrus_device** %7, align 8
  %120 = getelementptr inbounds %struct.cirrus_device, %struct.cirrus_device* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @iounmap(i32* %121)
  br label %123

123:                                              ; preds = %116, %80
  %124 = load %struct.cirrus_device*, %struct.cirrus_device** %7, align 8
  %125 = getelementptr inbounds %struct.cirrus_device, %struct.cirrus_device* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @iounmap(i32* %126)
  br label %128

128:                                              ; preds = %123, %66
  %129 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %130 = call i32 @drm_dev_put(%struct.drm_device* %129)
  br label %131

131:                                              ; preds = %128, %47
  %132 = load %struct.cirrus_device*, %struct.cirrus_device** %7, align 8
  %133 = call i32 @kfree(%struct.cirrus_device* %132)
  br label %134

134:                                              ; preds = %131, %37
  %135 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %136 = call i32 @pci_release_regions(%struct.pci_dev* %135)
  %137 = load i32, i32* %8, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %134, %109, %28, %20, %13
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @drm_fb_helper_remove_conflicting_pci_framebuffers(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local %struct.cirrus_device* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_dev_init(%struct.drm_device*, i32*, i32*) #1

declare dso_local i8* @ioremap(i32, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @cirrus_mode_config_init(%struct.cirrus_device*) #1

declare dso_local i32 @cirrus_conn_init(%struct.cirrus_device*) #1

declare dso_local i32 @cirrus_pipe_init(%struct.cirrus_device*) #1

declare dso_local i32 @drm_mode_config_reset(%struct.drm_device*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.drm_device*) #1

declare dso_local i32 @drm_dev_register(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_fbdev_generic_setup(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_mode_config_cleanup(%struct.drm_device*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

declare dso_local i32 @kfree(%struct.cirrus_device*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
