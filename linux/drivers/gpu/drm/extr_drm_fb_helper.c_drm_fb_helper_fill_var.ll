; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_fill_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_fill_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i8*, i8*, i32, i64, i64, i32, i32, i32 }
%struct.drm_fb_helper = type { i32, %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32*, i32 }

@FB_ACCELF_TEXT = common dso_local global i32 0, align 4
@FB_ACTIVATE_NOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.drm_fb_helper*, i8*, i8*)* @drm_fb_helper_fill_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_fb_helper_fill_var(%struct.fb_info* %0, %struct.drm_fb_helper* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.drm_fb_helper*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.drm_framebuffer*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %5, align 8
  store %struct.drm_fb_helper* %1, %struct.drm_fb_helper** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  %11 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %10, i32 0, i32 1
  %12 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  store %struct.drm_framebuffer* %12, %struct.drm_framebuffer** %9, align 8
  %13 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %14 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = call i32 @drm_format_info_block_width(%struct.TYPE_4__* %15, i32 0)
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %24, label %18

18:                                               ; preds = %4
  %19 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %20 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = call i32 @drm_format_info_block_height(%struct.TYPE_4__* %21, i32 0)
  %23 = icmp sgt i32 %22, 1
  br label %24

24:                                               ; preds = %18, %4
  %25 = phi i1 [ true, %4 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @WARN_ON(i32 %26)
  %28 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  %29 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %34 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %37 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 8
  store i32 %35, i32* %38, align 8
  %39 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %40 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %43 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 7
  store i32 %41, i32* %44, align 4
  %45 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %46 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %51, 8
  %53 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %54 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load i32, i32* @FB_ACCELF_TEXT, align 4
  %57 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %58 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 6
  store i32 %56, i32* %59, align 8
  %60 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %61 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 5
  store i64 0, i64* %62, align 8
  %63 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %64 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 4
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* @FB_ACTIVATE_NOW, align 4
  %67 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %68 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 3
  store i32 %66, i32* %69, align 8
  %70 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %71 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %70, i32 0, i32 0
  %72 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %73 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @drm_fb_helper_fill_pixel_fmt(%struct.TYPE_5__* %71, i32 %76)
  %78 = load i8*, i8** %7, align 8
  %79 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %80 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  store i8* %78, i8** %81, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %84 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  store i8* %82, i8** %85, align 8
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @drm_format_info_block_width(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @drm_format_info_block_height(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @drm_fb_helper_fill_pixel_fmt(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
