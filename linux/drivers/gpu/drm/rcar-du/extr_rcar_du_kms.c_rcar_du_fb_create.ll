; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_kms.c_rcar_du_fb_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_kms.c_rcar_du_fb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32 }
%struct.drm_device = type { i32, %struct.rcar_du_device* }
%struct.rcar_du_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32*, i32 }
%struct.rcar_du_format_info = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"unsupported pixel format %08x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RCAR_DU_QUIRK_ALIGN_128B = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"invalid pitch value %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"luma and chroma pitches do not match\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_framebuffer* (%struct.drm_device*, %struct.drm_file*, %struct.drm_mode_fb_cmd2*)* @rcar_du_fb_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_framebuffer* @rcar_du_fb_create(%struct.drm_device* %0, %struct.drm_file* %1, %struct.drm_mode_fb_cmd2* %2) #0 {
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %8 = alloca %struct.rcar_du_device*, align 8
  %9 = alloca %struct.rcar_du_format_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_file* %1, %struct.drm_file** %6, align 8
  store %struct.drm_mode_fb_cmd2* %2, %struct.drm_mode_fb_cmd2** %7, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 1
  %16 = load %struct.rcar_du_device*, %struct.rcar_du_device** %15, align 8
  store %struct.rcar_du_device* %16, %struct.rcar_du_device** %8, align 8
  %17 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %18 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.rcar_du_format_info* @rcar_du_format_info(i32 %19)
  store %struct.rcar_du_format_info* %20, %struct.rcar_du_format_info** %9, align 8
  %21 = load %struct.rcar_du_format_info*, %struct.rcar_du_format_info** %9, align 8
  %22 = icmp eq %struct.rcar_du_format_info* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %3
  %24 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %28 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i32, i8*, ...) @dev_dbg(i32 %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.drm_framebuffer* @ERR_PTR(i32 %32)
  store %struct.drm_framebuffer* %33, %struct.drm_framebuffer** %4, align 8
  br label %135

34:                                               ; preds = %3
  %35 = load %struct.rcar_du_device*, %struct.rcar_du_device** %8, align 8
  %36 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 3
  br i1 %40, label %41, label %65

41:                                               ; preds = %34
  %42 = load %struct.rcar_du_format_info*, %struct.rcar_du_format_info** %9, align 8
  %43 = getelementptr inbounds %struct.rcar_du_format_info, %struct.rcar_du_format_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.rcar_du_format_info*, %struct.rcar_du_format_info** %9, align 8
  %48 = getelementptr inbounds %struct.rcar_du_format_info, %struct.rcar_du_format_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 %49, 8
  br label %52

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51, %46
  %53 = phi i32 [ %50, %46 ], [ 1, %51 ]
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = mul i32 4095, %54
  store i32 %55, i32* %10, align 4
  %56 = load %struct.rcar_du_device*, %struct.rcar_du_device** %8, align 8
  %57 = load i32, i32* @RCAR_DU_QUIRK_ALIGN_128B, align 4
  %58 = call i64 @rcar_du_needs(%struct.rcar_du_device* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store i32 128, i32* %11, align 4
  br label %64

61:                                               ; preds = %52
  %62 = load i32, i32* %13, align 4
  %63 = mul i32 16, %62
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %61, %60
  br label %66

65:                                               ; preds = %34
  store i32 65535, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %66

66:                                               ; preds = %65, %64
  %67 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %68 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %11, align 4
  %73 = sub i32 %72, 1
  %74 = and i32 %71, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %66
  %77 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %78 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp ugt i32 %81, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %76, %66
  %85 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %86 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %89 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i32, i8*, ...) @dev_dbg(i32 %87, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  %96 = call %struct.drm_framebuffer* @ERR_PTR(i32 %95)
  store %struct.drm_framebuffer* %96, %struct.drm_framebuffer** %4, align 8
  br label %135

97:                                               ; preds = %76
  store i32 1, i32* %12, align 4
  br label %98

98:                                               ; preds = %127, %97
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.rcar_du_format_info*, %struct.rcar_du_format_info** %9, align 8
  %101 = getelementptr inbounds %struct.rcar_du_format_info, %struct.rcar_du_format_info* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ult i32 %99, %102
  br i1 %103, label %104, label %130

104:                                              ; preds = %98
  %105 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %106 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %12, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %113 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %111, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %104
  %119 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %120 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 (i32, i8*, ...) @dev_dbg(i32 %121, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  %125 = call %struct.drm_framebuffer* @ERR_PTR(i32 %124)
  store %struct.drm_framebuffer* %125, %struct.drm_framebuffer** %4, align 8
  br label %135

126:                                              ; preds = %104
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %12, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %12, align 4
  br label %98

130:                                              ; preds = %98
  %131 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %132 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %133 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %134 = call %struct.drm_framebuffer* @drm_gem_fb_create(%struct.drm_device* %131, %struct.drm_file* %132, %struct.drm_mode_fb_cmd2* %133)
  store %struct.drm_framebuffer* %134, %struct.drm_framebuffer** %4, align 8
  br label %135

135:                                              ; preds = %130, %118, %84, %23
  %136 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  ret %struct.drm_framebuffer* %136
}

declare dso_local %struct.rcar_du_format_info* @rcar_du_format_info(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local %struct.drm_framebuffer* @ERR_PTR(i32) #1

declare dso_local i64 @rcar_du_needs(%struct.rcar_du_device*, i32) #1

declare dso_local %struct.drm_framebuffer* @drm_gem_fb_create(%struct.drm_device*, %struct.drm_file*, %struct.drm_mode_fb_cmd2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
