; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_kms.c_shmob_drm_fb_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_kms.c_shmob_drm_fb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32*, i32 }
%struct.shmob_drm_format_info = type { i32, i64 }

@.str = private unnamed_addr constant [31 x i8] c"unsupported pixel format %08x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"invalid pitch value %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"luma and chroma pitches do not match\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_framebuffer* (%struct.drm_device*, %struct.drm_file*, %struct.drm_mode_fb_cmd2*)* @shmob_drm_fb_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_framebuffer* @shmob_drm_fb_create(%struct.drm_device* %0, %struct.drm_file* %1, %struct.drm_mode_fb_cmd2* %2) #0 {
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %8 = alloca %struct.shmob_drm_format_info*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_file* %1, %struct.drm_file** %6, align 8
  store %struct.drm_mode_fb_cmd2* %2, %struct.drm_mode_fb_cmd2** %7, align 8
  %10 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %11 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.shmob_drm_format_info* @shmob_drm_format_info(i32 %12)
  store %struct.shmob_drm_format_info* %13, %struct.shmob_drm_format_info** %8, align 8
  %14 = load %struct.shmob_drm_format_info*, %struct.shmob_drm_format_info** %8, align 8
  %15 = icmp eq %struct.shmob_drm_format_info* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %21 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i32, i8*, ...) @dev_dbg(i32 %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.drm_framebuffer* @ERR_PTR(i32 %25)
  store %struct.drm_framebuffer* %26, %struct.drm_framebuffer** %4, align 8
  br label %94

27:                                               ; preds = %3
  %28 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %29 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 7
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %27
  %36 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %37 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sge i32 %40, 65536
  br i1 %41, label %42, label %55

42:                                               ; preds = %35, %27
  %43 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %44 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %47 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, ...) @dev_dbg(i32 %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  %54 = call %struct.drm_framebuffer* @ERR_PTR(i32 %53)
  store %struct.drm_framebuffer* %54, %struct.drm_framebuffer** %4, align 8
  br label %94

55:                                               ; preds = %35
  %56 = load %struct.shmob_drm_format_info*, %struct.shmob_drm_format_info** %8, align 8
  %57 = getelementptr inbounds %struct.shmob_drm_format_info, %struct.shmob_drm_format_info* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %89

60:                                               ; preds = %55
  %61 = load %struct.shmob_drm_format_info*, %struct.shmob_drm_format_info** %8, align 8
  %62 = getelementptr inbounds %struct.shmob_drm_format_info, %struct.shmob_drm_format_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 24
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 2, i32 1
  store i32 %66, i32* %9, align 4
  %67 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %68 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %73 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %9, align 4
  %78 = mul i32 %76, %77
  %79 = icmp ne i32 %71, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %60
  %81 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %82 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i32, i8*, ...) @dev_dbg(i32 %83, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  %87 = call %struct.drm_framebuffer* @ERR_PTR(i32 %86)
  store %struct.drm_framebuffer* %87, %struct.drm_framebuffer** %4, align 8
  br label %94

88:                                               ; preds = %60
  br label %89

89:                                               ; preds = %88, %55
  %90 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %91 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %92 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %93 = call %struct.drm_framebuffer* @drm_gem_fb_create(%struct.drm_device* %90, %struct.drm_file* %91, %struct.drm_mode_fb_cmd2* %92)
  store %struct.drm_framebuffer* %93, %struct.drm_framebuffer** %4, align 8
  br label %94

94:                                               ; preds = %89, %80, %42, %16
  %95 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  ret %struct.drm_framebuffer* %95
}

declare dso_local %struct.shmob_drm_format_info* @shmob_drm_format_info(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local %struct.drm_framebuffer* @ERR_PTR(i32) #1

declare dso_local %struct.drm_framebuffer* @drm_gem_fb_create(%struct.drm_device*, %struct.drm_file*, %struct.drm_mode_fb_cmd2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
