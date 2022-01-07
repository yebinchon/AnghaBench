; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nv84_fence.c_nv84_fence_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nv84_fence.c_nv84_fence_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_drm = type { %struct.TYPE_2__, %struct.nv84_fence_priv* }
%struct.TYPE_2__ = type { i32 }
%struct.nv84_fence_priv = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_drm*)* @nv84_fence_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv84_fence_suspend(%struct.nouveau_drm* %0) #0 {
  %2 = alloca %struct.nouveau_drm*, align 8
  %3 = alloca %struct.nv84_fence_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.nouveau_drm* %0, %struct.nouveau_drm** %2, align 8
  %5 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %6 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %5, i32 0, i32 1
  %7 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %6, align 8
  store %struct.nv84_fence_priv* %7, %struct.nv84_fence_priv** %3, align 8
  %8 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %9 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @array_size(i32 4, i32 %11)
  %13 = call i32* @vmalloc(i32 %12)
  %14 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %3, align 8
  %15 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %14, i32 0, i32 0
  store i32* %13, i32** %15, align 8
  %16 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %3, align 8
  %17 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %45

20:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %41, %20
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %24 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %21
  %29 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %3, align 8
  %30 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = mul nsw i32 %32, 4
  %34 = call i32 @nouveau_bo_rd32(i32 %31, i32 %33)
  %35 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %3, align 8
  %36 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %34, i32* %40, align 4
  br label %41

41:                                               ; preds = %28
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %21

44:                                               ; preds = %21
  br label %45

45:                                               ; preds = %44, %1
  %46 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %3, align 8
  %47 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  %50 = zext i1 %49 to i32
  ret i32 %50
}

declare dso_local i32* @vmalloc(i32) #1

declare dso_local i32 @array_size(i32, i32) #1

declare dso_local i32 @nouveau_bo_rd32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
