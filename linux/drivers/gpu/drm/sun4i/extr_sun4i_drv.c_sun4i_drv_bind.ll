; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_drv.c_sun4i_drv_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_drv.c_sun4i_drv_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.drm_device = type { i32, %struct.TYPE_2__, i32, %struct.sun4i_drv* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sun4i_drv = type { i32, i32, i32 }

@sun4i_drv_driver = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Couldn't claim our memory region\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Couldn't bind all pipelines components\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"sun4i-drm-fb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @sun4i_drv_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_drv_bind(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.sun4i_drv*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.drm_device* @drm_dev_alloc(i32* @sun4i_drv_driver, %struct.device* %7)
  store %struct.drm_device* %8, %struct.drm_device** %4, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = call i64 @IS_ERR(%struct.drm_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = call i32 @PTR_ERR(%struct.drm_device* %13)
  store i32 %14, i32* %2, align 4
  br label %110

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.sun4i_drv* @devm_kzalloc(%struct.device* %16, i32 12, i32 %17)
  store %struct.sun4i_drv* %18, %struct.sun4i_drv** %5, align 8
  %19 = load %struct.sun4i_drv*, %struct.sun4i_drv** %5, align 8
  %20 = icmp ne %struct.sun4i_drv* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %106

24:                                               ; preds = %15
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %27 = call i32 @dev_set_drvdata(%struct.device* %25, %struct.drm_device* %26)
  %28 = load %struct.sun4i_drv*, %struct.sun4i_drv** %5, align 8
  %29 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %30 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %29, i32 0, i32 3
  store %struct.sun4i_drv* %28, %struct.sun4i_drv** %30, align 8
  %31 = load %struct.sun4i_drv*, %struct.sun4i_drv** %5, align 8
  %32 = getelementptr inbounds %struct.sun4i_drv, %struct.sun4i_drv* %31, i32 0, i32 2
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.sun4i_drv*, %struct.sun4i_drv** %5, align 8
  %35 = getelementptr inbounds %struct.sun4i_drv, %struct.sun4i_drv* %34, i32 0, i32 1
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.sun4i_drv*, %struct.sun4i_drv** %5, align 8
  %38 = getelementptr inbounds %struct.sun4i_drv, %struct.sun4i_drv* %37, i32 0, i32 0
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.device*, %struct.device** %3, align 8
  %41 = call i32 @of_reserved_mem_device_init(%struct.device* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %24
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %51 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %106

54:                                               ; preds = %44, %24
  %55 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %56 = call i32 @drm_mode_config_init(%struct.drm_device* %55)
  %57 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %58 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 4
  %60 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %61 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %64 = call i32 @component_bind_all(i32 %62, %struct.drm_device* %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %54
  %68 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %69 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %101

72:                                               ; preds = %54
  %73 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %74 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %75 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @drm_vblank_init(%struct.drm_device* %73, i32 %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %101

82:                                               ; preds = %72
  %83 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %84 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = call i32 @drm_fb_helper_remove_conflicting_framebuffers(i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %86 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %87 = call i32 @sun4i_framebuffer_init(%struct.drm_device* %86)
  %88 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %89 = call i32 @drm_kms_helper_poll_init(%struct.drm_device* %88)
  %90 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %91 = call i32 @drm_dev_register(%struct.drm_device* %90, i32 0)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %82
  br label %98

95:                                               ; preds = %82
  %96 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %97 = call i32 @drm_fbdev_generic_setup(%struct.drm_device* %96, i32 32)
  store i32 0, i32* %2, align 4
  br label %110

98:                                               ; preds = %94
  %99 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %100 = call i32 @drm_kms_helper_poll_fini(%struct.drm_device* %99)
  br label %101

101:                                              ; preds = %98, %81, %67
  %102 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %103 = call i32 @drm_mode_config_cleanup(%struct.drm_device* %102)
  %104 = load %struct.device*, %struct.device** %3, align 8
  %105 = call i32 @of_reserved_mem_device_release(%struct.device* %104)
  br label %106

106:                                              ; preds = %101, %49, %21
  %107 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %108 = call i32 @drm_dev_put(%struct.drm_device* %107)
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %106, %95, %12
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local %struct.drm_device* @drm_dev_alloc(i32*, %struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.drm_device*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_device*) #1

declare dso_local %struct.sun4i_drv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.drm_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @of_reserved_mem_device_init(%struct.device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @drm_mode_config_init(%struct.drm_device*) #1

declare dso_local i32 @component_bind_all(i32, %struct.drm_device*) #1

declare dso_local i32 @drm_vblank_init(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_fb_helper_remove_conflicting_framebuffers(i32*, i8*, i32) #1

declare dso_local i32 @sun4i_framebuffer_init(%struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_poll_init(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_register(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_fbdev_generic_setup(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_kms_helper_poll_fini(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_config_cleanup(%struct.drm_device*) #1

declare dso_local i32 @of_reserved_mem_device_release(%struct.device*) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
