; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_memnv50.c_nv50_mem_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_memnv50.c_nv50_mem_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_mmu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (%struct.nvkm_device*, i32)* }
%struct.nvkm_memory = type { i32 }
%struct.nvkm_vma = type { i64, i64 }
%struct.nv50_vmm_map_v0 = type { i32, i32, i32 }
%union.anon = type { %struct.nv50_mem_map_v0 }
%struct.nv50_mem_map_v0 = type { i32, i32, i32 }
%struct.nvkm_vmm = type { i32 }
%struct.nv50_mem_map_vn = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_mem_map(%struct.nvkm_mmu* %0, %struct.nvkm_memory* %1, i8* %2, i32 %3, i64* %4, i64* %5, %struct.nvkm_vma** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_mmu*, align 8
  %10 = alloca %struct.nvkm_memory*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca %struct.nvkm_vma**, align 8
  %16 = alloca %struct.nv50_vmm_map_v0, align 4
  %17 = alloca %union.anon*, align 8
  %18 = alloca %struct.nvkm_device*, align 8
  %19 = alloca %struct.nvkm_vmm*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca { i64, i32 }, align 4
  store %struct.nvkm_mmu* %0, %struct.nvkm_mmu** %9, align 8
  store %struct.nvkm_memory* %1, %struct.nvkm_memory** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store %struct.nvkm_vma** %6, %struct.nvkm_vma*** %15, align 8
  %23 = bitcast %struct.nv50_vmm_map_v0* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 12, i1 false)
  %24 = load i8*, i8** %11, align 8
  %25 = bitcast i8* %24 to %union.anon*
  store %union.anon* %25, %union.anon** %17, align 8
  %26 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %9, align 8
  %27 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.nvkm_device*, %struct.nvkm_device** %28, align 8
  store %struct.nvkm_device* %29, %struct.nvkm_device** %18, align 8
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %18, align 8
  %31 = call %struct.nvkm_vmm* @nvkm_bar_bar1_vmm(%struct.nvkm_device* %30)
  store %struct.nvkm_vmm* %31, %struct.nvkm_vmm** %19, align 8
  %32 = load %struct.nvkm_memory*, %struct.nvkm_memory** %10, align 8
  %33 = call i64 @nvkm_memory_size(%struct.nvkm_memory* %32)
  store i64 %33, i64* %20, align 8
  %34 = load i32, i32* @ENOSYS, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %21, align 4
  %36 = load i32, i32* %21, align 4
  %37 = load %union.anon*, %union.anon** %17, align 8
  %38 = bitcast %union.anon* %37 to %struct.nv50_mem_map_v0*
  %39 = bitcast { i64, i32 }* %22 to i8*
  %40 = bitcast %struct.nv50_mem_map_v0* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 12, i1 false)
  %41 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 0
  %42 = load i64, i64* %41, align 4
  %43 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @nvif_unpack(i32 %36, i8** %11, i32* %12, i64 %42, i32 %44, i32 0, i32 0, i32 0)
  store i32 %45, i32* %21, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %63, label %47

47:                                               ; preds = %7
  %48 = load %union.anon*, %union.anon** %17, align 8
  %49 = bitcast %union.anon* %48 to %struct.nv50_mem_map_v0*
  %50 = getelementptr inbounds %struct.nv50_mem_map_v0, %struct.nv50_mem_map_v0* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.nv50_vmm_map_v0, %struct.nv50_vmm_map_v0* %16, i32 0, i32 2
  store i32 %51, i32* %52, align 4
  %53 = load %union.anon*, %union.anon** %17, align 8
  %54 = bitcast %union.anon* %53 to %struct.nv50_mem_map_v0*
  %55 = getelementptr inbounds %struct.nv50_mem_map_v0, %struct.nv50_mem_map_v0* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.nv50_vmm_map_v0, %struct.nv50_vmm_map_v0* %16, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  %58 = load %union.anon*, %union.anon** %17, align 8
  %59 = bitcast %union.anon* %58 to %struct.nv50_mem_map_v0*
  %60 = getelementptr inbounds %struct.nv50_mem_map_v0, %struct.nv50_mem_map_v0* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.nv50_vmm_map_v0, %struct.nv50_vmm_map_v0* %16, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  br label %75

63:                                               ; preds = %7
  %64 = load i32, i32* %21, align 4
  %65 = load %union.anon*, %union.anon** %17, align 8
  %66 = bitcast %union.anon* %65 to %struct.nv50_mem_map_vn*
  %67 = getelementptr inbounds %struct.nv50_mem_map_vn, %struct.nv50_mem_map_vn* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @nvif_unvers(i32 %64, i8** %11, i32* %12, i32 %68)
  store i32 %69, i32* %21, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %63
  br label %74

72:                                               ; preds = %63
  %73 = load i32, i32* %21, align 4
  store i32 %73, i32* %8, align 4
  br label %108

74:                                               ; preds = %71
  br label %75

75:                                               ; preds = %74, %47
  %76 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %19, align 8
  %77 = load i64, i64* %20, align 8
  %78 = load %struct.nvkm_vma**, %struct.nvkm_vma*** %15, align 8
  %79 = call i32 @nvkm_vmm_get(%struct.nvkm_vmm* %76, i32 12, i64 %77, %struct.nvkm_vma** %78)
  store i32 %79, i32* %21, align 4
  %80 = load i32, i32* %21, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32, i32* %21, align 4
  store i32 %83, i32* %8, align 4
  br label %108

84:                                               ; preds = %75
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
  %103 = load %struct.nvkm_memory*, %struct.nvkm_memory** %10, align 8
  %104 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %19, align 8
  %105 = load %struct.nvkm_vma**, %struct.nvkm_vma*** %15, align 8
  %106 = load %struct.nvkm_vma*, %struct.nvkm_vma** %105, align 8
  %107 = call i32 @nvkm_memory_map(%struct.nvkm_memory* %103, i32 0, %struct.nvkm_vmm* %104, %struct.nvkm_vma* %106, %struct.nv50_vmm_map_v0* %16, i32 12)
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %84, %82, %72
  %109 = load i32, i32* %8, align 4
  ret i32 %109
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.nvkm_vmm* @nvkm_bar_bar1_vmm(%struct.nvkm_device*) #2

declare dso_local i64 @nvkm_memory_size(%struct.nvkm_memory*) #2

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, i64, i32, i32, i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @nvif_unvers(i32, i8**, i32*, i32) #2

declare dso_local i32 @nvkm_vmm_get(%struct.nvkm_vmm*, i32, i64, %struct.nvkm_vma**) #2

declare dso_local i32 @nvkm_memory_map(%struct.nvkm_memory*, i32, %struct.nvkm_vmm*, %struct.nvkm_vma*, %struct.nv50_vmm_map_v0*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
