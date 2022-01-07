; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_ramht.c_nvkm_ramht_search.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_ramht.c_nvkm_ramht_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_gpuobj = type { i32 }
%struct.nvkm_ramht = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, %struct.nvkm_gpuobj* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nvkm_gpuobj* @nvkm_ramht_search(%struct.nvkm_ramht* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.nvkm_gpuobj*, align 8
  %5 = alloca %struct.nvkm_ramht*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.nvkm_ramht* %0, %struct.nvkm_ramht** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.nvkm_ramht*, %struct.nvkm_ramht** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i64, i64* %7, align 8
  %13 = call i64 @nvkm_ramht_hash(%struct.nvkm_ramht* %10, i32 %11, i64 %12)
  store i64 %13, i64* %9, align 8
  store i64 %13, i64* %8, align 8
  br label %14

14:                                               ; preds = %52, %3
  %15 = load %struct.nvkm_ramht*, %struct.nvkm_ramht** %5, align 8
  %16 = getelementptr inbounds %struct.nvkm_ramht, %struct.nvkm_ramht* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %14
  %25 = load %struct.nvkm_ramht*, %struct.nvkm_ramht** %5, align 8
  %26 = getelementptr inbounds %struct.nvkm_ramht, %struct.nvkm_ramht* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %24
  %35 = load %struct.nvkm_ramht*, %struct.nvkm_ramht** %5, align 8
  %36 = getelementptr inbounds %struct.nvkm_ramht, %struct.nvkm_ramht* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %40, align 8
  store %struct.nvkm_gpuobj* %41, %struct.nvkm_gpuobj** %4, align 8
  br label %57

42:                                               ; preds = %24
  br label %43

43:                                               ; preds = %42, %14
  %44 = load i64, i64* %8, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %8, align 8
  %46 = load %struct.nvkm_ramht*, %struct.nvkm_ramht** %5, align 8
  %47 = getelementptr inbounds %struct.nvkm_ramht, %struct.nvkm_ramht* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp uge i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i64 0, i64* %8, align 8
  br label %51

51:                                               ; preds = %50, %43
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %14, label %56

56:                                               ; preds = %52
  store %struct.nvkm_gpuobj* null, %struct.nvkm_gpuobj** %4, align 8
  br label %57

57:                                               ; preds = %56, %34
  %58 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %4, align 8
  ret %struct.nvkm_gpuobj* %58
}

declare dso_local i64 @nvkm_ramht_hash(%struct.nvkm_ramht*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
