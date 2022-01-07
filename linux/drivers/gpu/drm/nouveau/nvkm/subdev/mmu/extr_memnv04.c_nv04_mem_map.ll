; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_memnv04.c_nv04_mem_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_memnv04.c_nv04_mem_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_mmu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.nvkm_device*, i32)* }
%struct.nvkm_memory = type { i32 }
%struct.nvkm_vma = type { i32 }
%union.anon = type { %struct.nv04_mem_map_vn }
%struct.nv04_mem_map_vn = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv04_mem_map(%struct.nvkm_mmu* %0, %struct.nvkm_memory* %1, i8* %2, i32 %3, i64* %4, i64* %5, %struct.nvkm_vma** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_mmu*, align 8
  %10 = alloca %struct.nvkm_memory*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca %struct.nvkm_vma**, align 8
  %16 = alloca %union.anon*, align 8
  %17 = alloca %struct.nvkm_device*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.nvkm_mmu* %0, %struct.nvkm_mmu** %9, align 8
  store %struct.nvkm_memory* %1, %struct.nvkm_memory** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store %struct.nvkm_vma** %6, %struct.nvkm_vma*** %15, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = bitcast i8* %20 to %union.anon*
  store %union.anon* %21, %union.anon** %16, align 8
  %22 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %9, align 8
  %23 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %24, align 8
  store %struct.nvkm_device* %25, %struct.nvkm_device** %17, align 8
  %26 = load %struct.nvkm_memory*, %struct.nvkm_memory** %10, align 8
  %27 = call i64 @nvkm_memory_addr(%struct.nvkm_memory* %26)
  store i64 %27, i64* %18, align 8
  %28 = load i32, i32* @ENOSYS, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %19, align 4
  %30 = load i32, i32* %19, align 4
  %31 = load %union.anon*, %union.anon** %16, align 8
  %32 = bitcast %union.anon* %31 to %struct.nv04_mem_map_vn*
  %33 = getelementptr inbounds %struct.nv04_mem_map_vn, %struct.nv04_mem_map_vn* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @nvif_unvers(i32 %30, i8** %11, i32* %12, i32 %34)
  store i32 %35, i32* %19, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %7
  %38 = load i32, i32* %19, align 4
  store i32 %38, i32* %8, align 4
  br label %57

39:                                               ; preds = %7
  %40 = load %struct.nvkm_device*, %struct.nvkm_device** %17, align 8
  %41 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64 (%struct.nvkm_device*, i32)*, i64 (%struct.nvkm_device*, i32)** %43, align 8
  %45 = load %struct.nvkm_device*, %struct.nvkm_device** %17, align 8
  %46 = call i64 %44(%struct.nvkm_device* %45, i32 1)
  %47 = load i64, i64* %18, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i64*, i64** %13, align 8
  store i64 %48, i64* %49, align 8
  %50 = load %struct.nvkm_memory*, %struct.nvkm_memory** %10, align 8
  %51 = call i64 @nvkm_memory_size(%struct.nvkm_memory* %50)
  %52 = load i64*, i64** %14, align 8
  store i64 %51, i64* %52, align 8
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  %55 = call %struct.nvkm_vma* @ERR_PTR(i32 %54)
  %56 = load %struct.nvkm_vma**, %struct.nvkm_vma*** %15, align 8
  store %struct.nvkm_vma* %55, %struct.nvkm_vma** %56, align 8
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %39, %37
  %58 = load i32, i32* %8, align 4
  ret i32 %58
}

declare dso_local i64 @nvkm_memory_addr(%struct.nvkm_memory*) #1

declare dso_local i32 @nvif_unvers(i32, i8**, i32*, i32) #1

declare dso_local i64 @nvkm_memory_size(%struct.nvkm_memory*) #1

declare dso_local %struct.nvkm_vma* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
