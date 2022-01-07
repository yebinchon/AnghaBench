; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bo = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_bo_map(%struct.nouveau_bo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_bo*, align 8
  %4 = alloca i32, align 4
  store %struct.nouveau_bo* %0, %struct.nouveau_bo** %3, align 8
  %5 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %6 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %5, i32 0, i32 0
  %7 = call i32 @ttm_bo_reserve(%struct.TYPE_6__* %6, i32 0, i32 0, i32* null)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %27

12:                                               ; preds = %1
  %13 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %14 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %13, i32 0, i32 0
  %15 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %16 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %21 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %20, i32 0, i32 1
  %22 = call i32 @ttm_bo_kmap(%struct.TYPE_6__* %14, i32 0, i32 %19, i32* %21)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %24 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %23, i32 0, i32 0
  %25 = call i32 @ttm_bo_unreserve(%struct.TYPE_6__* %24)
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %12, %10
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @ttm_bo_reserve(%struct.TYPE_6__*, i32, i32, i32*) #1

declare dso_local i32 @ttm_bo_kmap(%struct.TYPE_6__*, i32, i32, i32*) #1

declare dso_local i32 @ttm_bo_unreserve(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
