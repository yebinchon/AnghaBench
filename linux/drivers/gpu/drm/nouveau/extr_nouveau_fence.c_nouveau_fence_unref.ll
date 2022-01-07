; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fence.c_nouveau_fence_unref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fence.c_nouveau_fence_unref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_fence = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_fence_unref(%struct.nouveau_fence** %0) #0 {
  %2 = alloca %struct.nouveau_fence**, align 8
  store %struct.nouveau_fence** %0, %struct.nouveau_fence*** %2, align 8
  %3 = load %struct.nouveau_fence**, %struct.nouveau_fence*** %2, align 8
  %4 = load %struct.nouveau_fence*, %struct.nouveau_fence** %3, align 8
  %5 = icmp ne %struct.nouveau_fence* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.nouveau_fence**, %struct.nouveau_fence*** %2, align 8
  %8 = load %struct.nouveau_fence*, %struct.nouveau_fence** %7, align 8
  %9 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %8, i32 0, i32 0
  %10 = call i32 @dma_fence_put(i32* %9)
  br label %11

11:                                               ; preds = %6, %1
  %12 = load %struct.nouveau_fence**, %struct.nouveau_fence*** %2, align 8
  store %struct.nouveau_fence* null, %struct.nouveau_fence** %12, align 8
  ret void
}

declare dso_local i32 @dma_fence_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
