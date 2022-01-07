; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mipi_dbi.c_mipi_dbi_dev_init_with_formats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mipi_dbi.c_mipi_dbi_dev_init_with_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dbi_dev = type { i32, %struct.TYPE_8__, %struct.TYPE_9__, i32, i32, %struct.TYPE_6__, %struct.drm_device }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.drm_device = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32* }
%struct.drm_simple_display_pipe_funcs = type { i32 }
%struct.drm_display_mode = type { i32 }

@mipi_dbi_dev_init_with_formats.modifiers = internal constant [2 x i32] [i32 128, i32 129], align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Illegal rotation value %u\0A\00", align 1
@mipi_dbi_connector_hfuncs = common dso_local global i32 0, align 4
@mipi_dbi_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_SPI = common dso_local global i32 0, align 4
@mipi_dbi_mode_config_funcs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"rotation = %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mipi_dbi_dev_init_with_formats(%struct.mipi_dbi_dev* %0, %struct.drm_simple_display_pipe_funcs* %1, i32* %2, i32 %3, %struct.drm_display_mode* %4, i32 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mipi_dbi_dev*, align 8
  %10 = alloca %struct.drm_simple_display_pipe_funcs*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.drm_display_mode*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.drm_device*, align 8
  %17 = alloca i32, align 4
  store %struct.mipi_dbi_dev* %0, %struct.mipi_dbi_dev** %9, align 8
  store %struct.drm_simple_display_pipe_funcs* %1, %struct.drm_simple_display_pipe_funcs** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.drm_display_mode* %4, %struct.drm_display_mode** %13, align 8
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  %18 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %9, align 8
  %19 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %18, i32 0, i32 6
  store %struct.drm_device* %19, %struct.drm_device** %16, align 8
  %20 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %9, align 8
  %21 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %7
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %128

28:                                               ; preds = %7
  %29 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  %30 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i64, i64* %15, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i32 @devm_kmalloc(i32 %31, i64 %32, i32 %33)
  %35 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %9, align 8
  %36 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %9, align 8
  %38 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %28
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %128

44:                                               ; preds = %28
  %45 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %9, align 8
  %46 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %45, i32 0, i32 1
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %13, align 8
  %48 = call i32 @drm_mode_copy(%struct.TYPE_8__* %46, %struct.drm_display_mode* %47)
  %49 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %9, align 8
  %50 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %49, i32 0, i32 1
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @mipi_dbi_rotate_mode(%struct.TYPE_8__* %50, i32 %51)
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %17, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %44
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %8, align 4
  br label %128

60:                                               ; preds = %44
  %61 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %9, align 8
  %62 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %61, i32 0, i32 3
  %63 = call i32 @drm_connector_helper_add(i32* %62, i32* @mipi_dbi_connector_hfuncs)
  %64 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  %65 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %9, align 8
  %66 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %65, i32 0, i32 3
  %67 = load i32, i32* @DRM_MODE_CONNECTOR_SPI, align 4
  %68 = call i32 @drm_connector_init(%struct.drm_device* %64, i32* %66, i32* @mipi_dbi_connector_funcs, i32 %67)
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %17, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = load i32, i32* %17, align 4
  store i32 %72, i32* %8, align 4
  br label %128

73:                                               ; preds = %60
  %74 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  %75 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %9, align 8
  %76 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %75, i32 0, i32 2
  %77 = load %struct.drm_simple_display_pipe_funcs*, %struct.drm_simple_display_pipe_funcs** %10, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* %12, align 4
  %80 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %9, align 8
  %81 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %80, i32 0, i32 3
  %82 = call i32 @drm_simple_display_pipe_init(%struct.drm_device* %74, %struct.TYPE_9__* %76, %struct.drm_simple_display_pipe_funcs* %77, i32* %78, i32 %79, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @mipi_dbi_dev_init_with_formats.modifiers, i64 0, i64 0), i32* %81)
  store i32 %82, i32* %17, align 4
  %83 = load i32, i32* %17, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %73
  %86 = load i32, i32* %17, align 4
  store i32 %86, i32* %8, align 4
  br label %128

87:                                               ; preds = %73
  %88 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %9, align 8
  %89 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = call i32 @drm_plane_enable_fb_damage_clips(i32* %90)
  %92 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  %93 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 4
  store i32* @mipi_dbi_mode_config_funcs, i32** %94, align 8
  %95 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %9, align 8
  %96 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  %100 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 3
  store i32 %98, i32* %101, align 4
  %102 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %9, align 8
  %103 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  %107 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  store i32 %105, i32* %108, align 8
  %109 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %9, align 8
  %110 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  %114 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  store i32 %112, i32* %115, align 4
  %116 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %9, align 8
  %117 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  %121 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 8
  %123 = load i32, i32* %14, align 4
  %124 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %9, align 8
  %125 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* %14, align 4
  %127 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  store i32 0, i32* %8, align 4
  br label %128

128:                                              ; preds = %87, %85, %71, %55, %41, %25
  %129 = load i32, i32* %8, align 4
  ret i32 %129
}

declare dso_local i32 @devm_kmalloc(i32, i64, i32) #1

declare dso_local i32 @drm_mode_copy(%struct.TYPE_8__*, %struct.drm_display_mode*) #1

declare dso_local i32 @mipi_dbi_rotate_mode(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @drm_connector_helper_add(i32*, i32*) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, i32*, i32*, i32) #1

declare dso_local i32 @drm_simple_display_pipe_init(%struct.drm_device*, %struct.TYPE_9__*, %struct.drm_simple_display_pipe_funcs*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @drm_plane_enable_fb_damage_clips(i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
