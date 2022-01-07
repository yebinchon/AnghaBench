; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_ummu.c_nvkm_ummu_heap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_ummu.c_nvkm_ummu_heap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ummu = type { %struct.nvkm_mmu* }
%struct.nvkm_mmu = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%union.anon = type { %struct.nvif_mmu_heap_v0 }
%struct.nvif_mmu_heap_v0 = type { i64, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_ummu*, i8*, i32)* @nvkm_ummu_heap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_ummu_heap(%struct.nvkm_ummu* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_ummu*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_mmu*, align 8
  %9 = alloca %union.anon*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.nvkm_ummu* %0, %struct.nvkm_ummu** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.nvkm_ummu*, %struct.nvkm_ummu** %5, align 8
  %13 = getelementptr inbounds %struct.nvkm_ummu, %struct.nvkm_ummu* %12, i32 0, i32 0
  %14 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %13, align 8
  store %struct.nvkm_mmu* %14, %struct.nvkm_mmu** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %union.anon*
  store %union.anon* %16, %union.anon** %9, align 8
  %17 = load i32, i32* @ENOSYS, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load %union.anon*, %union.anon** %9, align 8
  %21 = bitcast %union.anon* %20 to %struct.nvif_mmu_heap_v0*
  %22 = bitcast %struct.nvif_mmu_heap_v0* %21 to { i64, i32 }*
  %23 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @nvif_unpack(i32 %19, i8** %6, i32* %7, i64 %24, i32 %26, i32 0, i32 0, i32 0)
  store i32 %27, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %52, label %29

29:                                               ; preds = %3
  %30 = load %union.anon*, %union.anon** %9, align 8
  %31 = bitcast %union.anon* %30 to %struct.nvif_mmu_heap_v0*
  %32 = getelementptr inbounds %struct.nvif_mmu_heap_v0, %struct.nvif_mmu_heap_v0* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %11, align 8
  %34 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %8, align 8
  %35 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp uge i64 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %55

41:                                               ; preds = %29
  %42 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %8, align 8
  %43 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i64, i64* %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %union.anon*, %union.anon** %9, align 8
  %50 = bitcast %union.anon* %49 to %struct.nvif_mmu_heap_v0*
  %51 = getelementptr inbounds %struct.nvif_mmu_heap_v0, %struct.nvif_mmu_heap_v0* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 8
  br label %54

52:                                               ; preds = %3
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %4, align 4
  br label %55

54:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %52, %38
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
