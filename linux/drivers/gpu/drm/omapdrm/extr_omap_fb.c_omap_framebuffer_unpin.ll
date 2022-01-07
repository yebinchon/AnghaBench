; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_fb.c_omap_framebuffer_unpin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_fb.c_omap_framebuffer_unpin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.omap_framebuffer = type { i64, i32, %struct.plane* }
%struct.plane = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_framebuffer_unpin(%struct.drm_framebuffer* %0) #0 {
  %2 = alloca %struct.drm_framebuffer*, align 8
  %3 = alloca %struct.omap_framebuffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.plane*, align 8
  store %struct.drm_framebuffer* %0, %struct.drm_framebuffer** %2, align 8
  %7 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %2, align 8
  %8 = call %struct.omap_framebuffer* @to_omap_framebuffer(%struct.drm_framebuffer* %7)
  store %struct.omap_framebuffer* %8, %struct.omap_framebuffer** %3, align 8
  %9 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %2, align 8
  %10 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.omap_framebuffer*, %struct.omap_framebuffer** %3, align 8
  %15 = getelementptr inbounds %struct.omap_framebuffer, %struct.omap_framebuffer* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.omap_framebuffer*, %struct.omap_framebuffer** %3, align 8
  %18 = getelementptr inbounds %struct.omap_framebuffer, %struct.omap_framebuffer* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, i64* %18, align 8
  %21 = load %struct.omap_framebuffer*, %struct.omap_framebuffer** %3, align 8
  %22 = getelementptr inbounds %struct.omap_framebuffer, %struct.omap_framebuffer* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load %struct.omap_framebuffer*, %struct.omap_framebuffer** %3, align 8
  %27 = getelementptr inbounds %struct.omap_framebuffer, %struct.omap_framebuffer* %26, i32 0, i32 1
  %28 = call i32 @mutex_unlock(i32* %27)
  br label %58

29:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %51, %29
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %30
  %35 = load %struct.omap_framebuffer*, %struct.omap_framebuffer** %3, align 8
  %36 = getelementptr inbounds %struct.omap_framebuffer, %struct.omap_framebuffer* %35, i32 0, i32 2
  %37 = load %struct.plane*, %struct.plane** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.plane, %struct.plane* %37, i64 %39
  store %struct.plane* %40, %struct.plane** %6, align 8
  %41 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %2, align 8
  %42 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @omap_gem_unpin(i32 %47)
  %49 = load %struct.plane*, %struct.plane** %6, align 8
  %50 = getelementptr inbounds %struct.plane, %struct.plane* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %34
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %30

54:                                               ; preds = %30
  %55 = load %struct.omap_framebuffer*, %struct.omap_framebuffer** %3, align 8
  %56 = getelementptr inbounds %struct.omap_framebuffer, %struct.omap_framebuffer* %55, i32 0, i32 1
  %57 = call i32 @mutex_unlock(i32* %56)
  br label %58

58:                                               ; preds = %54, %25
  ret void
}

declare dso_local %struct.omap_framebuffer* @to_omap_framebuffer(%struct.drm_framebuffer*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @omap_gem_unpin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
