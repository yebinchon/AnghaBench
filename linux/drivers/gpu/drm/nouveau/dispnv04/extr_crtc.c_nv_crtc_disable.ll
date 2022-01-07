; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_crtc.c_nv_crtc_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_crtc.c_nv_crtc_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.nv04_display = type { i64* }
%struct.nouveau_crtc = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @nv_crtc_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_crtc_disable(%struct.drm_crtc* %0) #0 {
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
  %11 = load %struct.nv04_display*, %struct.nv04_display** %3, align 8
  %12 = getelementptr inbounds %struct.nv04_display, %struct.nv04_display* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %4, align 8
  %15 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i64, i64* %13, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %1
  %21 = load %struct.nv04_display*, %struct.nv04_display** %3, align 8
  %22 = getelementptr inbounds %struct.nv04_display, %struct.nv04_display* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %4, align 8
  %25 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i64, i64* %23, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @nouveau_bo_unpin(i64 %28)
  br label %30

30:                                               ; preds = %20, %1
  %31 = load %struct.nv04_display*, %struct.nv04_display** %3, align 8
  %32 = getelementptr inbounds %struct.nv04_display, %struct.nv04_display* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %4, align 8
  %35 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i64, i64* %33, i64 %36
  %38 = call i32 @nouveau_bo_ref(i32* null, i64* %37)
  ret void
}

declare dso_local %struct.nv04_display* @nv04_display(i32) #1

declare dso_local %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @nouveau_bo_unpin(i64) #1

declare dso_local i32 @nouveau_bo_ref(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
