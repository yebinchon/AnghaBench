; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_gm12u320.c_gm12u320_fb_mark_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_gm12u320.c_gm12u320_fb_mark_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.gm12u320_device* }
%struct.gm12u320_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.drm_rect, %struct.drm_framebuffer* }
%struct.drm_rect = type { i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_framebuffer*, %struct.drm_rect*)* @gm12u320_fb_mark_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gm12u320_fb_mark_dirty(%struct.drm_framebuffer* %0, %struct.drm_rect* %1) #0 {
  %3 = alloca %struct.drm_framebuffer*, align 8
  %4 = alloca %struct.drm_rect*, align 8
  %5 = alloca %struct.gm12u320_device*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_rect*, align 8
  store %struct.drm_framebuffer* %0, %struct.drm_framebuffer** %3, align 8
  store %struct.drm_rect* %1, %struct.drm_rect** %4, align 8
  %9 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %10 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.gm12u320_device*, %struct.gm12u320_device** %12, align 8
  store %struct.gm12u320_device* %13, %struct.gm12u320_device** %5, align 8
  store %struct.drm_framebuffer* null, %struct.drm_framebuffer** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.gm12u320_device*, %struct.gm12u320_device** %5, align 8
  %15 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.gm12u320_device*, %struct.gm12u320_device** %5, align 8
  %19 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  %21 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %20, align 8
  %22 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %23 = icmp ne %struct.drm_framebuffer* %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %2
  %25 = load %struct.gm12u320_device*, %struct.gm12u320_device** %5, align 8
  %26 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %27, align 8
  store %struct.drm_framebuffer* %28, %struct.drm_framebuffer** %6, align 8
  %29 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %30 = call i32 @drm_framebuffer_get(%struct.drm_framebuffer* %29)
  %31 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %32 = load %struct.gm12u320_device*, %struct.gm12u320_device** %5, align 8
  %33 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  store %struct.drm_framebuffer* %31, %struct.drm_framebuffer** %34, align 8
  %35 = load %struct.gm12u320_device*, %struct.gm12u320_device** %5, align 8
  %36 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load %struct.drm_rect*, %struct.drm_rect** %4, align 8
  %39 = bitcast %struct.drm_rect* %37 to i8*
  %40 = bitcast %struct.drm_rect* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 32, i1 false)
  store i32 1, i32* %7, align 4
  br label %81

41:                                               ; preds = %2
  %42 = load %struct.gm12u320_device*, %struct.gm12u320_device** %5, align 8
  %43 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  store %struct.drm_rect* %44, %struct.drm_rect** %8, align 8
  %45 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %46 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %45, i32 0, i32 3
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.drm_rect*, %struct.drm_rect** %4, align 8
  %49 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %48, i32 0, i32 3
  %50 = load i8*, i8** %49, align 8
  %51 = call i8* @min(i8* %47, i8* %50)
  %52 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %53 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %55 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.drm_rect*, %struct.drm_rect** %4, align 8
  %58 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = call i8* @min(i8* %56, i8* %59)
  %61 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %62 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %64 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.drm_rect*, %struct.drm_rect** %4, align 8
  %67 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i8* @max(i8* %65, i8* %68)
  %70 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %71 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %73 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.drm_rect*, %struct.drm_rect** %4, align 8
  %76 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i8* @max(i8* %74, i8* %77)
  %79 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %80 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  br label %81

81:                                               ; preds = %41, %24
  %82 = load %struct.gm12u320_device*, %struct.gm12u320_device** %5, align 8
  %83 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load %struct.gm12u320_device*, %struct.gm12u320_device** %5, align 8
  %90 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = call i32 @wake_up(i32* %91)
  br label %93

93:                                               ; preds = %88, %81
  %94 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %95 = icmp ne %struct.drm_framebuffer* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %98 = call i32 @drm_framebuffer_put(%struct.drm_framebuffer* %97)
  br label %99

99:                                               ; preds = %96, %93
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drm_framebuffer_get(%struct.drm_framebuffer*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @min(i8*, i8*) #1

declare dso_local i8* @max(i8*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @drm_framebuffer_put(%struct.drm_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
