; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_memgf100.c_gf100_mem_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_memgf100.c_gf100_mem_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_mmu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (%struct.nvkm_device*, i32)* }
%struct.nvkm_memory = type { i32 }
%struct.nvkm_vma = type { i64, i64 }
%struct.gf100_vmm_map_v0 = type { i32, i32 }
%union.anon = type { %struct.gf100_mem_map_v0 }
%struct.gf100_mem_map_v0 = type { i32, i32 }
%struct.nvkm_vmm = type { i32 }
%struct.gf100_mem_map_vn = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gf100_mem_map(%struct.nvkm_mmu* %0, %struct.nvkm_memory* %1, i8* %2, i32 %3, i64* %4, i64* %5, %struct.nvkm_vma** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_mmu*, align 8
  %10 = alloca %struct.nvkm_memory*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca %struct.nvkm_vma**, align 8
  %16 = alloca %struct.gf100_vmm_map_v0, align 4
  %17 = alloca %union.anon*, align 8
  %18 = alloca %struct.nvkm_device*, align 8
  %19 = alloca %struct.nvkm_vmm*, align 8
  %20 = alloca i32, align 4
  store %struct.nvkm_mmu* %0, %struct.nvkm_mmu** %9, align 8
  store %struct.nvkm_memory* %1, %struct.nvkm_memory** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store %struct.nvkm_vma** %6, %struct.nvkm_vma*** %15, align 8
  %21 = bitcast %struct.gf100_vmm_map_v0* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 8, i1 false)
  %22 = load i8*, i8** %11, align 8
  %23 = bitcast i8* %22 to %union.anon*
  store %union.anon* %23, %union.anon** %17, align 8
  %24 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %9, align 8
  %25 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %26, align 8
  store %struct.nvkm_device* %27, %struct.nvkm_device** %18, align 8
  %28 = load %struct.nvkm_device*, %struct.nvkm_device** %18, align 8
  %29 = call %struct.nvkm_vmm* @nvkm_bar_bar1_vmm(%struct.nvkm_device* %28)
  store %struct.nvkm_vmm* %29, %struct.nvkm_vmm** %19, align 8
  %30 = load i32, i32* @ENOSYS, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %20, align 4
  %32 = load i32, i32* %20, align 4
  %33 = load %union.anon*, %union.anon** %17, align 8
  %34 = bitcast %union.anon* %33 to %struct.gf100_mem_map_v0*
  %35 = bitcast %struct.gf100_mem_map_v0* %34 to i64*
  %36 = load i64, i64* %35, align 4
  %37 = call i32 @nvif_unpack(i32 %32, i8** %11, i32* %12, i64 %36, i32 0, i32 0, i32 0)
  store i32 %37, i32* %20, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %7
  %40 = load %union.anon*, %union.anon** %17, align 8
  %41 = bitcast %union.anon* %40 to %struct.gf100_mem_map_v0*
  %42 = getelementptr inbounds %struct.gf100_mem_map_v0, %struct.gf100_mem_map_v0* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.gf100_vmm_map_v0, %struct.gf100_vmm_map_v0* %16, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = load %union.anon*, %union.anon** %17, align 8
  %46 = bitcast %union.anon* %45 to %struct.gf100_mem_map_v0*
  %47 = getelementptr inbounds %struct.gf100_mem_map_v0, %struct.gf100_mem_map_v0* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.gf100_vmm_map_v0, %struct.gf100_vmm_map_v0* %16, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  br label %62

50:                                               ; preds = %7
  %51 = load i32, i32* %20, align 4
  %52 = load %union.anon*, %union.anon** %17, align 8
  %53 = bitcast %union.anon* %52 to %struct.gf100_mem_map_vn*
  %54 = getelementptr inbounds %struct.gf100_mem_map_vn, %struct.gf100_mem_map_vn* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @nvif_unvers(i32 %51, i8** %11, i32* %12, i32 %55)
  store i32 %56, i32* %20, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %50
  br label %61

59:                                               ; preds = %50
  %60 = load i32, i32* %20, align 4
  store i32 %60, i32* %8, align 4
  br label %103

61:                                               ; preds = %58
  br label %62

62:                                               ; preds = %61, %39
  %63 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %19, align 8
  %64 = load %struct.nvkm_memory*, %struct.nvkm_memory** %10, align 8
  %65 = call i32 @nvkm_memory_page(%struct.nvkm_memory* %64)
  %66 = load %struct.nvkm_memory*, %struct.nvkm_memory** %10, align 8
  %67 = call i32 @nvkm_memory_size(%struct.nvkm_memory* %66)
  %68 = load %struct.nvkm_vma**, %struct.nvkm_vma*** %15, align 8
  %69 = call i32 @nvkm_vmm_get(%struct.nvkm_vmm* %63, i32 %65, i32 %67, %struct.nvkm_vma** %68)
  store i32 %69, i32* %20, align 4
  %70 = load i32, i32* %20, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %62
  %73 = load i32, i32* %20, align 4
  store i32 %73, i32* %8, align 4
  br label %103

74:                                               ; preds = %62
  %75 = load %struct.nvkm_memory*, %struct.nvkm_memory** %10, align 8
  %76 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %19, align 8
  %77 = load %struct.nvkm_vma**, %struct.nvkm_vma*** %15, align 8
  %78 = load %struct.nvkm_vma*, %struct.nvkm_vma** %77, align 8
  %79 = call i32 @nvkm_memory_map(%struct.nvkm_memory* %75, i32 0, %struct.nvkm_vmm* %76, %struct.nvkm_vma* %78, %struct.gf100_vmm_map_v0* %16, i32 8)
  store i32 %79, i32* %20, align 4
  %80 = load i32, i32* %20, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i32, i32* %20, align 4
  store i32 %83, i32* %8, align 4
  br label %103

84:                                               ; preds = %74
  %85 = load %struct.nvkm_device*, %struct.nvkm_device** %18, align 8
  %86 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64 (%struct.nvkm_device*, i32)*, i64 (%struct.nvkm_device*, i32)** %88, align 8
  %90 = load %struct.nvkm_device*, %struct.nvkm_device** %18, align 8
  %91 = call i64 %89(%struct.nvkm_device* %90, i32 1)
  %92 = load %struct.nvkm_vma**, %struct.nvkm_vma*** %15, align 8
  %93 = load %struct.nvkm_vma*, %struct.nvkm_vma** %92, align 8
  %94 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %91, %95
  %97 = load i64*, i64** %13, align 8
  store i64 %96, i64* %97, align 8
  %98 = load %struct.nvkm_vma**, %struct.nvkm_vma*** %15, align 8
  %99 = load %struct.nvkm_vma*, %struct.nvkm_vma** %98, align 8
  %100 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64*, i64** %14, align 8
  store i64 %101, i64* %102, align 8
  store i32 0, i32* %8, align 4
  br label %103

103:                                              ; preds = %84, %82, %72, %59
  %104 = load i32, i32* %8, align 4
  ret i32 %104
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.nvkm_vmm* @nvkm_bar_bar1_vmm(%struct.nvkm_device*) #2

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, i64, i32, i32, i32) #2

declare dso_local i32 @nvif_unvers(i32, i8**, i32*, i32) #2

declare dso_local i32 @nvkm_vmm_get(%struct.nvkm_vmm*, i32, i32, %struct.nvkm_vma**) #2

declare dso_local i32 @nvkm_memory_page(%struct.nvkm_memory*) #2

declare dso_local i32 @nvkm_memory_size(%struct.nvkm_memory*) #2

declare dso_local i32 @nvkm_memory_map(%struct.nvkm_memory*, i32, %struct.nvkm_vmm*, %struct.nvkm_vma*, %struct.gf100_vmm_map_v0*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
