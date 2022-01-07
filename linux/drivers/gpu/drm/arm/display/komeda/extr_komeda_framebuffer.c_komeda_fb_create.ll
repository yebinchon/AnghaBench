; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_framebuffer.c_komeda_fb_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_framebuffer.c_komeda_fb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.drm_device = type { %struct.komeda_dev* }
%struct.komeda_dev = type { i64, i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32, i32* }
%struct.komeda_fb = type { i32, %struct.drm_framebuffer, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"FMT %x is not supported.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@komeda_fb_funcs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to initialize fb\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_framebuffer* @komeda_fb_create(%struct.drm_device* %0, %struct.drm_file* %1, %struct.drm_mode_fb_cmd2* %2) #0 {
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %8 = alloca %struct.komeda_dev*, align 8
  %9 = alloca %struct.komeda_fb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_file* %1, %struct.drm_file** %6, align 8
  store %struct.drm_mode_fb_cmd2* %2, %struct.drm_mode_fb_cmd2** %7, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.komeda_dev*, %struct.komeda_dev** %13, align 8
  store %struct.komeda_dev* %14, %struct.komeda_dev** %8, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.komeda_fb* @kzalloc(i32 40, i32 %15)
  store %struct.komeda_fb* %16, %struct.komeda_fb** %9, align 8
  %17 = load %struct.komeda_fb*, %struct.komeda_fb** %9, align 8
  %18 = icmp ne %struct.komeda_fb* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.drm_framebuffer* @ERR_PTR(i32 %21)
  store %struct.drm_framebuffer* %22, %struct.drm_framebuffer** %4, align 8
  br label %125

23:                                               ; preds = %3
  %24 = load %struct.komeda_dev*, %struct.komeda_dev** %8, align 8
  %25 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %24, i32 0, i32 1
  %26 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %27 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %30 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @komeda_get_format_caps(i32* %25, i32 %28, i32 %33)
  %35 = load %struct.komeda_fb*, %struct.komeda_fb** %9, align 8
  %36 = getelementptr inbounds %struct.komeda_fb, %struct.komeda_fb* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.komeda_fb*, %struct.komeda_fb** %9, align 8
  %38 = getelementptr inbounds %struct.komeda_fb, %struct.komeda_fb* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %23
  %42 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %43 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.komeda_fb*, %struct.komeda_fb** %9, align 8
  %47 = call i32 @kfree(%struct.komeda_fb* %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  %50 = call %struct.drm_framebuffer* @ERR_PTR(i32 %49)
  store %struct.drm_framebuffer* %50, %struct.drm_framebuffer** %4, align 8
  br label %125

51:                                               ; preds = %23
  %52 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %53 = load %struct.komeda_fb*, %struct.komeda_fb** %9, align 8
  %54 = getelementptr inbounds %struct.komeda_fb, %struct.komeda_fb* %53, i32 0, i32 1
  %55 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %56 = call i32 @drm_helper_mode_fill_fb_struct(%struct.drm_device* %52, %struct.drm_framebuffer* %54, %struct.drm_mode_fb_cmd2* %55)
  %57 = load %struct.komeda_fb*, %struct.komeda_fb** %9, align 8
  %58 = getelementptr inbounds %struct.komeda_fb, %struct.komeda_fb* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %51
  %63 = load %struct.komeda_fb*, %struct.komeda_fb** %9, align 8
  %64 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %65 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %66 = call i32 @komeda_fb_afbc_size_check(%struct.komeda_fb* %63, %struct.drm_file* %64, %struct.drm_mode_fb_cmd2* %65)
  store i32 %66, i32* %10, align 4
  br label %73

67:                                               ; preds = %51
  %68 = load %struct.komeda_dev*, %struct.komeda_dev** %8, align 8
  %69 = load %struct.komeda_fb*, %struct.komeda_fb** %9, align 8
  %70 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %71 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %72 = call i32 @komeda_fb_none_afbc_size_check(%struct.komeda_dev* %68, %struct.komeda_fb* %69, %struct.drm_file* %70, %struct.drm_mode_fb_cmd2* %71)
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %67, %62
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %97

77:                                               ; preds = %73
  %78 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %79 = load %struct.komeda_fb*, %struct.komeda_fb** %9, align 8
  %80 = getelementptr inbounds %struct.komeda_fb, %struct.komeda_fb* %79, i32 0, i32 1
  %81 = call i32 @drm_framebuffer_init(%struct.drm_device* %78, %struct.drm_framebuffer* %80, i32* @komeda_fb_funcs)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %97

86:                                               ; preds = %77
  %87 = load %struct.komeda_dev*, %struct.komeda_dev** %8, align 8
  %88 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 1, i32 0
  %93 = load %struct.komeda_fb*, %struct.komeda_fb** %9, align 8
  %94 = getelementptr inbounds %struct.komeda_fb, %struct.komeda_fb* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.komeda_fb*, %struct.komeda_fb** %9, align 8
  %96 = getelementptr inbounds %struct.komeda_fb, %struct.komeda_fb* %95, i32 0, i32 1
  store %struct.drm_framebuffer* %96, %struct.drm_framebuffer** %4, align 8
  br label %125

97:                                               ; preds = %84, %76
  store i32 0, i32* %11, align 4
  br label %98

98:                                               ; preds = %117, %97
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.komeda_fb*, %struct.komeda_fb** %9, align 8
  %101 = getelementptr inbounds %struct.komeda_fb, %struct.komeda_fb* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %101, i32 0, i32 1
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %99, %105
  br i1 %106, label %107, label %120

107:                                              ; preds = %98
  %108 = load %struct.komeda_fb*, %struct.komeda_fb** %9, align 8
  %109 = getelementptr inbounds %struct.komeda_fb, %struct.komeda_fb* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @drm_gem_object_put_unlocked(i32 %115)
  br label %117

117:                                              ; preds = %107
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %11, align 4
  br label %98

120:                                              ; preds = %98
  %121 = load %struct.komeda_fb*, %struct.komeda_fb** %9, align 8
  %122 = call i32 @kfree(%struct.komeda_fb* %121)
  %123 = load i32, i32* %10, align 4
  %124 = call %struct.drm_framebuffer* @ERR_PTR(i32 %123)
  store %struct.drm_framebuffer* %124, %struct.drm_framebuffer** %4, align 8
  br label %125

125:                                              ; preds = %120, %86, %41, %19
  %126 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  ret %struct.drm_framebuffer* %126
}

declare dso_local %struct.komeda_fb* @kzalloc(i32, i32) #1

declare dso_local %struct.drm_framebuffer* @ERR_PTR(i32) #1

declare dso_local i32 @komeda_get_format_caps(i32*, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @kfree(%struct.komeda_fb*) #1

declare dso_local i32 @drm_helper_mode_fill_fb_struct(%struct.drm_device*, %struct.drm_framebuffer*, %struct.drm_mode_fb_cmd2*) #1

declare dso_local i32 @komeda_fb_afbc_size_check(%struct.komeda_fb*, %struct.drm_file*, %struct.drm_mode_fb_cmd2*) #1

declare dso_local i32 @komeda_fb_none_afbc_size_check(%struct.komeda_dev*, %struct.komeda_fb*, %struct.drm_file*, %struct.drm_mode_fb_cmd2*) #1

declare dso_local i32 @drm_framebuffer_init(%struct.drm_device*, %struct.drm_framebuffer*, i32*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
