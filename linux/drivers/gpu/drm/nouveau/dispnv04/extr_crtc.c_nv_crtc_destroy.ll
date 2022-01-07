; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_crtc.c_nv_crtc_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_crtc.c_nv_crtc_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.nv04_display = type { i64* }
%struct.nouveau_crtc = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @nv_crtc_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_crtc_destroy(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.nv04_display*, align 8
  %4 = alloca %struct.nouveau_crtc*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %5 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %6 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.nv04_display* @nv04_display(i32 %7)
  store %struct.nv04_display* %8, %struct.nv04_display** %3, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %10 = call %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc* %9)
  store %struct.nouveau_crtc* %10, %struct.nouveau_crtc** %4, align 8
  %11 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %4, align 8
  %12 = icmp ne %struct.nouveau_crtc* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %61

14:                                               ; preds = %1
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %16 = call i32 @drm_crtc_cleanup(%struct.drm_crtc* %15)
  %17 = load %struct.nv04_display*, %struct.nv04_display** %3, align 8
  %18 = getelementptr inbounds %struct.nv04_display, %struct.nv04_display* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %4, align 8
  %21 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i64, i64* %19, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %14
  %27 = load %struct.nv04_display*, %struct.nv04_display** %3, align 8
  %28 = getelementptr inbounds %struct.nv04_display, %struct.nv04_display* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %4, align 8
  %31 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i64, i64* %29, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @nouveau_bo_unpin(i64 %34)
  br label %36

36:                                               ; preds = %26, %14
  %37 = load %struct.nv04_display*, %struct.nv04_display** %3, align 8
  %38 = getelementptr inbounds %struct.nv04_display, %struct.nv04_display* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %4, align 8
  %41 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i64, i64* %39, i64 %42
  %44 = call i32 @nouveau_bo_ref(i32* null, i64* %43)
  %45 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %4, align 8
  %46 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @nouveau_bo_unmap(i64 %48)
  %50 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %4, align 8
  %51 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @nouveau_bo_unpin(i64 %53)
  %55 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %4, align 8
  %56 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @nouveau_bo_ref(i32* null, i64* %57)
  %59 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %4, align 8
  %60 = call i32 @kfree(%struct.nouveau_crtc* %59)
  br label %61

61:                                               ; preds = %36, %13
  ret void
}

declare dso_local %struct.nv04_display* @nv04_display(i32) #1

declare dso_local %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @drm_crtc_cleanup(%struct.drm_crtc*) #1

declare dso_local i32 @nouveau_bo_unpin(i64) #1

declare dso_local i32 @nouveau_bo_ref(i32*, i64*) #1

declare dso_local i32 @nouveau_bo_unmap(i64) #1

declare dso_local i32 @kfree(%struct.nouveau_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
