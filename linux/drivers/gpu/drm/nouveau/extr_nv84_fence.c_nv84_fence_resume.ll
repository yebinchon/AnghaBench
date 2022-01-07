; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nv84_fence.c_nv84_fence_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nv84_fence.c_nv84_fence_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_drm = type { %struct.TYPE_2__, %struct.nv84_fence_priv* }
%struct.TYPE_2__ = type { i32 }
%struct.nv84_fence_priv = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_drm*)* @nv84_fence_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv84_fence_resume(%struct.nouveau_drm* %0) #0 {
  %2 = alloca %struct.nouveau_drm*, align 8
  %3 = alloca %struct.nv84_fence_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.nouveau_drm* %0, %struct.nouveau_drm** %2, align 8
  %5 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %6 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %5, i32 0, i32 1
  %7 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %6, align 8
  store %struct.nv84_fence_priv* %7, %struct.nv84_fence_priv** %3, align 8
  %8 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %3, align 8
  %9 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %44

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %34, %12
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %16 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %13
  %21 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %3, align 8
  %22 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = mul nsw i32 %24, 4
  %26 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %3, align 8
  %27 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @nouveau_bo_wr32(i32 %23, i32 %25, i32 %32)
  br label %34

34:                                               ; preds = %20
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %13

37:                                               ; preds = %13
  %38 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %3, align 8
  %39 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @vfree(i32* %40)
  %42 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %3, align 8
  %43 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %37, %1
  ret void
}

declare dso_local i32 @nouveau_bo_wr32(i32, i32, i32) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
