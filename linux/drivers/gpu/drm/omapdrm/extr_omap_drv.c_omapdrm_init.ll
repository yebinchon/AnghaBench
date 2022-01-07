; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_drv.c_omapdrm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_drv.c_omapdrm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_drm_private = type { i32, i32, i32, %struct.TYPE_3__*, %struct.device*, i32, %struct.TYPE_4__*, i32, i32, i32, i32, %struct.drm_device* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 (i32)* }
%struct.drm_device = type { %struct.omap_drm_private* }
%struct.device = type { i32 }
%struct.soc_device_attribute = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@omap_drm_driver = common dso_local global i32 0, align 4
@omapdrm_soc_devices = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"omapdrm\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"omap_modeset_init failed: ret=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"could not init vblank\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_drm_private*, %struct.device*)* @omapdrm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapdrm_init(%struct.omap_drm_private* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_drm_private*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.soc_device_attribute*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.omap_drm_private* %0, %struct.omap_drm_private** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call i32 @dev_name(%struct.device* %10)
  %12 = call i32 @DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.drm_device* @drm_dev_alloc(i32* @omap_drm_driver, %struct.device* %13)
  store %struct.drm_device* %14, %struct.drm_device** %7, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %16 = call i64 @IS_ERR(%struct.drm_device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %20 = call i32 @PTR_ERR(%struct.drm_device* %19)
  store i32 %20, i32* %3, align 4
  br label %174

21:                                               ; preds = %2
  %22 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %23 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %24 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %23, i32 0, i32 11
  store %struct.drm_device* %22, %struct.drm_device** %24, align 8
  %25 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %26 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 0
  store %struct.omap_drm_private* %25, %struct.omap_drm_private** %27, align 8
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %30 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %29, i32 0, i32 4
  store %struct.device* %28, %struct.device** %30, align 8
  %31 = call i32 (...) @omapdss_get_dss()
  %32 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %33 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %32, i32 0, i32 10
  store i32 %31, i32* %33, align 4
  %34 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %35 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %34, i32 0, i32 10
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dispc_get_dispc(i32 %36)
  %38 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %39 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  %40 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %41 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %40, i32 0, i32 10
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.TYPE_4__* @dispc_get_ops(i32 %42)
  %44 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %45 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %44, i32 0, i32 6
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** %45, align 8
  %46 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %47 = call i32 @omap_crtc_pre_init(%struct.omap_drm_private* %46)
  %48 = load i32, i32* @omapdrm_soc_devices, align 4
  %49 = call %struct.soc_device_attribute* @soc_device_match(i32 %48)
  store %struct.soc_device_attribute* %49, %struct.soc_device_attribute** %6, align 8
  %50 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %6, align 8
  %51 = icmp ne %struct.soc_device_attribute* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %21
  %53 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %6, align 8
  %54 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  br label %58

57:                                               ; preds = %21
  br label %58

58:                                               ; preds = %57, %52
  %59 = phi i32 [ %56, %52 ], [ 0, %57 ]
  %60 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %61 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = call i32 @alloc_ordered_workqueue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %63 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %64 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %66 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %65, i32 0, i32 9
  %67 = call i32 @mutex_init(i32* %66)
  %68 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %69 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %68, i32 0, i32 8
  %70 = call i32 @INIT_LIST_HEAD(i32* %69)
  %71 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %72 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %71, i32 0, i32 6
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32 (i32)*, i32 (i32)** %74, align 8
  %76 = icmp ne i32 (i32)* %75, null
  br i1 %76, label %77, label %89

77:                                               ; preds = %58
  %78 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %79 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %78, i32 0, i32 6
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32 (i32)*, i32 (i32)** %81, align 8
  %83 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %84 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = call i32 %82(i32 %85)
  %87 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %88 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %87, i32 0, i32 7
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %77, %58
  %90 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %91 = call i32 @omap_gem_init(%struct.drm_device* %90)
  %92 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %93 = call i32 @omap_modeset_init(%struct.drm_device* %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %89
  %97 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %98 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %97, i32 0, i32 4
  %99 = load %struct.device*, %struct.device** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %99, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  br label %160

102:                                              ; preds = %89
  %103 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %104 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %105 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @drm_vblank_init(%struct.drm_device* %103, i32 %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %102
  %111 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %112 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %111, i32 0, i32 4
  %113 = load %struct.device*, %struct.device** %112, align 8
  %114 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %113, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %155

115:                                              ; preds = %102
  store i32 0, i32* %8, align 4
  br label %116

116:                                              ; preds = %132, %115
  %117 = load i32, i32* %8, align 4
  %118 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %119 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp ult i32 %117, %120
  br i1 %121, label %122, label %135

122:                                              ; preds = %116
  %123 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %124 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %123, i32 0, i32 3
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @drm_crtc_vblank_off(i32 %130)
  br label %132

132:                                              ; preds = %122
  %133 = load i32, i32* %8, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %8, align 4
  br label %116

135:                                              ; preds = %116
  %136 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %137 = call i32 @omap_fbdev_init(%struct.drm_device* %136)
  %138 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %139 = call i32 @drm_kms_helper_poll_init(%struct.drm_device* %138)
  %140 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %141 = call i32 @omap_modeset_enable_external_hpd(%struct.drm_device* %140)
  %142 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %143 = call i32 @drm_dev_register(%struct.drm_device* %142, i32 0)
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %135
  br label %148

147:                                              ; preds = %135
  store i32 0, i32* %3, align 4
  br label %174

148:                                              ; preds = %146
  %149 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %150 = call i32 @omap_modeset_disable_external_hpd(%struct.drm_device* %149)
  %151 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %152 = call i32 @drm_kms_helper_poll_fini(%struct.drm_device* %151)
  %153 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %154 = call i32 @omap_fbdev_fini(%struct.drm_device* %153)
  br label %155

155:                                              ; preds = %148, %110
  %156 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %157 = call i32 @drm_mode_config_cleanup(%struct.drm_device* %156)
  %158 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %159 = call i32 @omap_drm_irq_uninstall(%struct.drm_device* %158)
  br label %160

160:                                              ; preds = %155, %96
  %161 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %162 = call i32 @omap_gem_deinit(%struct.drm_device* %161)
  %163 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %164 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @destroy_workqueue(i32 %165)
  %167 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %168 = call i32 @omap_disconnect_pipelines(%struct.drm_device* %167)
  %169 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %170 = call i32 @omap_crtc_pre_uninit(%struct.omap_drm_private* %169)
  %171 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %172 = call i32 @drm_dev_put(%struct.drm_device* %171)
  %173 = load i32, i32* %9, align 4
  store i32 %173, i32* %3, align 4
  br label %174

174:                                              ; preds = %160, %147, %18
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local %struct.drm_device* @drm_dev_alloc(i32*, %struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.drm_device*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_device*) #1

declare dso_local i32 @omapdss_get_dss(...) #1

declare dso_local i32 @dispc_get_dispc(i32) #1

declare dso_local %struct.TYPE_4__* @dispc_get_ops(i32) #1

declare dso_local i32 @omap_crtc_pre_init(%struct.omap_drm_private*) #1

declare dso_local %struct.soc_device_attribute* @soc_device_match(i32) #1

declare dso_local i32 @alloc_ordered_workqueue(i8*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @omap_gem_init(%struct.drm_device*) #1

declare dso_local i32 @omap_modeset_init(%struct.drm_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @drm_vblank_init(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_crtc_vblank_off(i32) #1

declare dso_local i32 @omap_fbdev_init(%struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_poll_init(%struct.drm_device*) #1

declare dso_local i32 @omap_modeset_enable_external_hpd(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_register(%struct.drm_device*, i32) #1

declare dso_local i32 @omap_modeset_disable_external_hpd(%struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_poll_fini(%struct.drm_device*) #1

declare dso_local i32 @omap_fbdev_fini(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_config_cleanup(%struct.drm_device*) #1

declare dso_local i32 @omap_drm_irq_uninstall(%struct.drm_device*) #1

declare dso_local i32 @omap_gem_deinit(%struct.drm_device*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @omap_disconnect_pipelines(%struct.drm_device*) #1

declare dso_local i32 @omap_crtc_pre_uninit(%struct.omap_drm_private*) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
