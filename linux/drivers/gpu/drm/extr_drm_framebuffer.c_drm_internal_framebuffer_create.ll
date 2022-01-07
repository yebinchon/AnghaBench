; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_framebuffer.c_drm_internal_framebuffer_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_framebuffer.c_drm_internal_framebuffer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32 }
%struct.drm_device = type { %struct.drm_mode_config }
%struct.drm_mode_config = type { i64, i64, i64, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.drm_framebuffer* (%struct.drm_device*, %struct.drm_file*, %struct.drm_mode_fb_cmd2*)* }
%struct.drm_mode_fb_cmd2 = type { i32, i64, i64 }
%struct.drm_file = type { i32 }

@DRM_MODE_FB_INTERLACED = common dso_local global i32 0, align 4
@DRM_MODE_FB_MODIFIERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"bad framebuffer flags 0x%08x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"bad framebuffer width %d, should be >= %d && <= %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"bad framebuffer height %d, should be >= %d && <= %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"driver does not support fb modifiers\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"could not create framebuffer\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_framebuffer* @drm_internal_framebuffer_create(%struct.drm_device* %0, %struct.drm_mode_fb_cmd2* %1, %struct.drm_file* %2) #0 {
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_mode_config*, align 8
  %9 = alloca %struct.drm_framebuffer*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_mode_fb_cmd2* %1, %struct.drm_mode_fb_cmd2** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  store %struct.drm_mode_config* %12, %struct.drm_mode_config** %8, align 8
  %13 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %14 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @DRM_MODE_FB_INTERLACED, align 4
  %17 = load i32, i32* @DRM_MODE_FB_MODIFIERS, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = and i32 %15, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %3
  %23 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %24 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.drm_framebuffer* @ERR_PTR(i32 %28)
  store %struct.drm_framebuffer* %29, %struct.drm_framebuffer** %4, align 8
  br label %136

30:                                               ; preds = %3
  %31 = load %struct.drm_mode_config*, %struct.drm_mode_config** %8, align 8
  %32 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %35 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %33, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %30
  %39 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %40 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.drm_mode_config*, %struct.drm_mode_config** %8, align 8
  %43 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %41, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %38, %30
  %47 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %48 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.drm_mode_config*, %struct.drm_mode_config** %8, align 8
  %51 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.drm_mode_config*, %struct.drm_mode_config** %8, align 8
  %54 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %49, i64 %52, i64 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  %59 = call %struct.drm_framebuffer* @ERR_PTR(i32 %58)
  store %struct.drm_framebuffer* %59, %struct.drm_framebuffer** %4, align 8
  br label %136

60:                                               ; preds = %38
  %61 = load %struct.drm_mode_config*, %struct.drm_mode_config** %8, align 8
  %62 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %65 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %63, %66
  br i1 %67, label %76, label %68

68:                                               ; preds = %60
  %69 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %70 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.drm_mode_config*, %struct.drm_mode_config** %8, align 8
  %73 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %71, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %68, %60
  %77 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %78 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.drm_mode_config*, %struct.drm_mode_config** %8, align 8
  %81 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.drm_mode_config*, %struct.drm_mode_config** %8, align 8
  %84 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 %79, i64 %82, i64 %85)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  %89 = call %struct.drm_framebuffer* @ERR_PTR(i32 %88)
  store %struct.drm_framebuffer* %89, %struct.drm_framebuffer** %4, align 8
  br label %136

90:                                               ; preds = %68
  %91 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %92 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @DRM_MODE_FB_MODIFIERS, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %90
  %98 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %99 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %97
  %104 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  %107 = call %struct.drm_framebuffer* @ERR_PTR(i32 %106)
  store %struct.drm_framebuffer* %107, %struct.drm_framebuffer** %4, align 8
  br label %136

108:                                              ; preds = %97, %90
  %109 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %110 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %111 = call i32 @framebuffer_check(%struct.drm_device* %109, %struct.drm_mode_fb_cmd2* %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load i32, i32* %10, align 4
  %116 = call %struct.drm_framebuffer* @ERR_PTR(i32 %115)
  store %struct.drm_framebuffer* %116, %struct.drm_framebuffer** %4, align 8
  br label %136

117:                                              ; preds = %108
  %118 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %119 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %119, i32 0, i32 4
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load %struct.drm_framebuffer* (%struct.drm_device*, %struct.drm_file*, %struct.drm_mode_fb_cmd2*)*, %struct.drm_framebuffer* (%struct.drm_device*, %struct.drm_file*, %struct.drm_mode_fb_cmd2*)** %122, align 8
  %124 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %125 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %126 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %127 = call %struct.drm_framebuffer* %123(%struct.drm_device* %124, %struct.drm_file* %125, %struct.drm_mode_fb_cmd2* %126)
  store %struct.drm_framebuffer* %127, %struct.drm_framebuffer** %9, align 8
  %128 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %129 = call i64 @IS_ERR(%struct.drm_framebuffer* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %117
  %132 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %133 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  store %struct.drm_framebuffer* %133, %struct.drm_framebuffer** %4, align 8
  br label %136

134:                                              ; preds = %117
  %135 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  store %struct.drm_framebuffer* %135, %struct.drm_framebuffer** %4, align 8
  br label %136

136:                                              ; preds = %134, %131, %114, %103, %76, %46, %22
  %137 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  ret %struct.drm_framebuffer* %137
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local %struct.drm_framebuffer* @ERR_PTR(i32) #1

declare dso_local i32 @framebuffer_check(%struct.drm_device*, %struct.drm_mode_fb_cmd2*) #1

declare dso_local i64 @IS_ERR(%struct.drm_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
