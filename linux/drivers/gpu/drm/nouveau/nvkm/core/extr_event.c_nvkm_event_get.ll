; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_event.c_nvkm_event_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_event.c_nvkm_event_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_event = type { i32*, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.nvkm_event*, i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_event_get(%struct.nvkm_event* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nvkm_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvkm_event* %0, %struct.nvkm_event** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.nvkm_event*, %struct.nvkm_event** %4, align 8
  %9 = getelementptr inbounds %struct.nvkm_event, %struct.nvkm_event* %8, i32 0, i32 3
  %10 = call i32 @assert_spin_locked(i32* %9)
  br label %11

11:                                               ; preds = %56, %3
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %57

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @__ffs(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = shl i32 1, %17
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load %struct.nvkm_event*, %struct.nvkm_event** %4, align 8
  %23 = getelementptr inbounds %struct.nvkm_event, %struct.nvkm_event* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.nvkm_event*, %struct.nvkm_event** %4, align 8
  %27 = getelementptr inbounds %struct.nvkm_event, %struct.nvkm_event* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = mul nsw i32 %25, %28
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %24, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %56

37:                                               ; preds = %14
  %38 = load %struct.nvkm_event*, %struct.nvkm_event** %4, align 8
  %39 = getelementptr inbounds %struct.nvkm_event, %struct.nvkm_event* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.nvkm_event*, i32, i32)*, i32 (%struct.nvkm_event*, i32, i32)** %41, align 8
  %43 = icmp ne i32 (%struct.nvkm_event*, i32, i32)* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %37
  %45 = load %struct.nvkm_event*, %struct.nvkm_event** %4, align 8
  %46 = getelementptr inbounds %struct.nvkm_event, %struct.nvkm_event* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32 (%struct.nvkm_event*, i32, i32)*, i32 (%struct.nvkm_event*, i32, i32)** %48, align 8
  %50 = load %struct.nvkm_event*, %struct.nvkm_event** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = shl i32 1, %51
  %53 = load i32, i32* %6, align 4
  %54 = call i32 %49(%struct.nvkm_event* %50, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %44, %37
  br label %56

56:                                               ; preds = %55, %14
  br label %11

57:                                               ; preds = %11
  ret void
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @__ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
