; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_drv.c_shmob_drm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_drv.c_shmob_drm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.shmob_drm_platform_data* }
%struct.shmob_drm_platform_data = type { i32 }
%struct.shmob_drm_device = type { %struct.drm_device*, %struct.drm_device*, i32, %struct.shmob_drm_platform_data*, %struct.TYPE_5__* }
%struct.drm_device = type { %struct.shmob_drm_device* }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"no platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@shmob_drm_driver = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to initialize mode setting\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to create plane %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to initialize vblank\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to install IRQ handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @shmob_drm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shmob_drm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.shmob_drm_platform_data*, align 8
  %5 = alloca %struct.shmob_drm_device*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.shmob_drm_platform_data*, %struct.shmob_drm_platform_data** %12, align 8
  store %struct.shmob_drm_platform_data* %13, %struct.shmob_drm_platform_data** %4, align 8
  %14 = load %struct.shmob_drm_platform_data*, %struct.shmob_drm_platform_data** %4, align 8
  %15 = icmp eq %struct.shmob_drm_platform_data* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %165

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.shmob_drm_device* @devm_kzalloc(%struct.TYPE_5__* %24, i32 40, i32 %25)
  store %struct.shmob_drm_device* %26, %struct.shmob_drm_device** %5, align 8
  %27 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %5, align 8
  %28 = icmp eq %struct.shmob_drm_device* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %165

32:                                               ; preds = %22
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %5, align 8
  %36 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %35, i32 0, i32 4
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %36, align 8
  %37 = load %struct.shmob_drm_platform_data*, %struct.shmob_drm_platform_data** %4, align 8
  %38 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %5, align 8
  %39 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %38, i32 0, i32 3
  store %struct.shmob_drm_platform_data* %37, %struct.shmob_drm_platform_data** %39, align 8
  %40 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %5, align 8
  %41 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %40, i32 0, i32 2
  %42 = call i32 @spin_lock_init(i32* %41)
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %5, align 8
  %45 = call i32 @platform_set_drvdata(%struct.platform_device* %43, %struct.shmob_drm_device* %44)
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = load i32, i32* @IORESOURCE_MEM, align 4
  %48 = call %struct.resource* @platform_get_resource(%struct.platform_device* %46, i32 %47, i32 0)
  store %struct.resource* %48, %struct.resource** %7, align 8
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = load %struct.resource*, %struct.resource** %7, align 8
  %52 = call %struct.drm_device* @devm_ioremap_resource(%struct.TYPE_5__* %50, %struct.resource* %51)
  %53 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %5, align 8
  %54 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %53, i32 0, i32 1
  store %struct.drm_device* %52, %struct.drm_device** %54, align 8
  %55 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %5, align 8
  %56 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %55, i32 0, i32 1
  %57 = load %struct.drm_device*, %struct.drm_device** %56, align 8
  %58 = call i64 @IS_ERR(%struct.drm_device* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %32
  %61 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %5, align 8
  %62 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %61, i32 0, i32 1
  %63 = load %struct.drm_device*, %struct.drm_device** %62, align 8
  %64 = call i32 @PTR_ERR(%struct.drm_device* %63)
  store i32 %64, i32* %2, align 4
  br label %165

65:                                               ; preds = %32
  %66 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %5, align 8
  %67 = load %struct.shmob_drm_platform_data*, %struct.shmob_drm_platform_data** %4, align 8
  %68 = getelementptr inbounds %struct.shmob_drm_platform_data, %struct.shmob_drm_platform_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @shmob_drm_setup_clocks(%struct.shmob_drm_device* %66, i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %2, align 4
  br label %165

75:                                               ; preds = %65
  %76 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %5, align 8
  %77 = call i32 @shmob_drm_init_interface(%struct.shmob_drm_device* %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %2, align 4
  br label %165

82:                                               ; preds = %75
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = call %struct.drm_device* @drm_dev_alloc(i32* @shmob_drm_driver, %struct.TYPE_5__* %84)
  store %struct.drm_device* %85, %struct.drm_device** %6, align 8
  %86 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %87 = call i64 @IS_ERR(%struct.drm_device* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %91 = call i32 @PTR_ERR(%struct.drm_device* %90)
  store i32 %91, i32* %2, align 4
  br label %165

92:                                               ; preds = %82
  %93 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %94 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %5, align 8
  %95 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %94, i32 0, i32 0
  store %struct.drm_device* %93, %struct.drm_device** %95, align 8
  %96 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %5, align 8
  %97 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %98 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %97, i32 0, i32 0
  store %struct.shmob_drm_device* %96, %struct.shmob_drm_device** %98, align 8
  %99 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %5, align 8
  %100 = call i32 @shmob_drm_modeset_init(%struct.shmob_drm_device* %99)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %92
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %105, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %161

107:                                              ; preds = %92
  store i32 0, i32* %8, align 4
  br label %108

108:                                              ; preds = %123, %107
  %109 = load i32, i32* %8, align 4
  %110 = icmp ult i32 %109, 4
  br i1 %110, label %111, label %126

111:                                              ; preds = %108
  %112 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %5, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @shmob_drm_plane_create(%struct.shmob_drm_device* %112, i32 %113)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %111
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = load i32, i32* %8, align 4
  %121 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %119, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %120)
  br label %156

122:                                              ; preds = %111
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %8, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %8, align 4
  br label %108

126:                                              ; preds = %108
  %127 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %128 = call i32 @drm_vblank_init(%struct.drm_device* %127, i32 1)
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 0
  %134 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %133, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %156

135:                                              ; preds = %126
  %136 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %137 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %138 = call i32 @platform_get_irq(%struct.platform_device* %137, i32 0)
  %139 = call i32 @drm_irq_install(%struct.drm_device* %136, i32 %138)
  store i32 %139, i32* %9, align 4
  %140 = load i32, i32* %9, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %135
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %143, i32 0, i32 0
  %145 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %144, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %156

146:                                              ; preds = %135
  %147 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %148 = call i32 @drm_dev_register(%struct.drm_device* %147, i32 0)
  store i32 %148, i32* %9, align 4
  %149 = load i32, i32* %9, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  br label %153

152:                                              ; preds = %146
  store i32 0, i32* %2, align 4
  br label %165

153:                                              ; preds = %151
  %154 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %155 = call i32 @drm_irq_uninstall(%struct.drm_device* %154)
  br label %156

156:                                              ; preds = %153, %142, %131, %117
  %157 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %158 = call i32 @drm_kms_helper_poll_fini(%struct.drm_device* %157)
  %159 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %160 = call i32 @drm_mode_config_cleanup(%struct.drm_device* %159)
  br label %161

161:                                              ; preds = %156, %103
  %162 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %163 = call i32 @drm_dev_put(%struct.drm_device* %162)
  %164 = load i32, i32* %9, align 4
  store i32 %164, i32* %2, align 4
  br label %165

165:                                              ; preds = %161, %152, %89, %80, %73, %60, %29, %16
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local %struct.shmob_drm_device* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.shmob_drm_device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.drm_device* @devm_ioremap_resource(%struct.TYPE_5__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.drm_device*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_device*) #1

declare dso_local i32 @shmob_drm_setup_clocks(%struct.shmob_drm_device*, i32) #1

declare dso_local i32 @shmob_drm_init_interface(%struct.shmob_drm_device*) #1

declare dso_local %struct.drm_device* @drm_dev_alloc(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @shmob_drm_modeset_init(%struct.shmob_drm_device*) #1

declare dso_local i32 @shmob_drm_plane_create(%struct.shmob_drm_device*, i32) #1

declare dso_local i32 @drm_vblank_init(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_irq_install(%struct.drm_device*, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @drm_dev_register(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_irq_uninstall(%struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_poll_fini(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_config_cleanup(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
