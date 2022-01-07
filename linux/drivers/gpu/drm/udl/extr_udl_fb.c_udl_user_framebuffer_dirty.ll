; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_fb.c_udl_user_framebuffer_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_fb.c_udl_user_framebuffer_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_clip_rect = type { i64, i64, i64, i64 }
%struct.udl_framebuffer = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_framebuffer*, %struct.drm_file*, i32, i32, %struct.drm_clip_rect*, i32)* @udl_user_framebuffer_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udl_user_framebuffer_dirty(%struct.drm_framebuffer* %0, %struct.drm_file* %1, i32 %2, i32 %3, %struct.drm_clip_rect* %4, i32 %5) #0 {
  %7 = alloca %struct.drm_framebuffer*, align 8
  %8 = alloca %struct.drm_file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_clip_rect*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.udl_framebuffer*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drm_framebuffer* %0, %struct.drm_framebuffer** %7, align 8
  store %struct.drm_file* %1, %struct.drm_file** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.drm_clip_rect* %4, %struct.drm_clip_rect** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %17 = call %struct.udl_framebuffer* @to_udl_fb(%struct.drm_framebuffer* %16)
  store %struct.udl_framebuffer* %17, %struct.udl_framebuffer** %13, align 8
  store i32 0, i32* %15, align 4
  %18 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %19 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @drm_modeset_lock_all(i32 %20)
  %22 = load %struct.udl_framebuffer*, %struct.udl_framebuffer** %13, align 8
  %23 = getelementptr inbounds %struct.udl_framebuffer, %struct.udl_framebuffer* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %6
  br label %123

27:                                               ; preds = %6
  %28 = load %struct.udl_framebuffer*, %struct.udl_framebuffer** %13, align 8
  %29 = getelementptr inbounds %struct.udl_framebuffer, %struct.udl_framebuffer* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = icmp ne %struct.TYPE_4__* %33, null
  br i1 %34, label %35, label %50

35:                                               ; preds = %27
  %36 = load %struct.udl_framebuffer*, %struct.udl_framebuffer** %13, align 8
  %37 = getelementptr inbounds %struct.udl_framebuffer, %struct.udl_framebuffer* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %45 = call i32 @dma_buf_begin_cpu_access(i32 %43, i32 %44)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  br label %123

49:                                               ; preds = %35
  br label %50

50:                                               ; preds = %49, %27
  store i32 0, i32* %14, align 4
  br label %51

51:                                               ; preds = %100, %50
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %103

55:                                               ; preds = %51
  %56 = load %struct.udl_framebuffer*, %struct.udl_framebuffer** %13, align 8
  %57 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %11, align 8
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %57, i64 %59
  %61 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %11, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %63, i64 %65
  %67 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %11, align 8
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %69, i64 %71
  %73 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %11, align 8
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %75, i64 %77
  %79 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %74, %80
  %82 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %11, align 8
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %82, i64 %84
  %86 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %11, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %88, i64 %90
  %92 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 %87, %93
  %95 = call i32 @udl_handle_damage(%struct.udl_framebuffer* %56, i64 %62, i64 %68, i64 %81, i64 %94)
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %15, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %55
  br label %103

99:                                               ; preds = %55
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %14, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %14, align 4
  br label %51

103:                                              ; preds = %98, %51
  %104 = load %struct.udl_framebuffer*, %struct.udl_framebuffer** %13, align 8
  %105 = getelementptr inbounds %struct.udl_framebuffer, %struct.udl_framebuffer* %104, i32 0, i32 0
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = icmp ne %struct.TYPE_4__* %109, null
  br i1 %110, label %111, label %122

111:                                              ; preds = %103
  %112 = load %struct.udl_framebuffer*, %struct.udl_framebuffer** %13, align 8
  %113 = getelementptr inbounds %struct.udl_framebuffer, %struct.udl_framebuffer* %112, i32 0, i32 0
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %121 = call i32 @dma_buf_end_cpu_access(i32 %119, i32 %120)
  store i32 %121, i32* %15, align 4
  br label %122

122:                                              ; preds = %111, %103
  br label %123

123:                                              ; preds = %122, %48, %26
  %124 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %125 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @drm_modeset_unlock_all(i32 %126)
  %128 = load i32, i32* %15, align 4
  ret i32 %128
}

declare dso_local %struct.udl_framebuffer* @to_udl_fb(%struct.drm_framebuffer*) #1

declare dso_local i32 @drm_modeset_lock_all(i32) #1

declare dso_local i32 @dma_buf_begin_cpu_access(i32, i32) #1

declare dso_local i32 @udl_handle_damage(%struct.udl_framebuffer*, i64, i64, i64, i64) #1

declare dso_local i32 @dma_buf_end_cpu_access(i32, i32) #1

declare dso_local i32 @drm_modeset_unlock_all(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
