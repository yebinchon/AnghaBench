; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_ummu.c_nvkm_ummu_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_ummu.c_nvkm_ummu_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ummu = type { %struct.nvkm_mmu* }
%struct.nvkm_mmu = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%union.anon = type { %struct.nvif_mmu_type_v0 }
%struct.nvif_mmu_type_v0 = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NVKM_MEM_VRAM = common dso_local global i64 0, align 8
@NVKM_MEM_HOST = common dso_local global i64 0, align 8
@NVKM_MEM_COMP = common dso_local global i64 0, align 8
@NVKM_MEM_DISP = common dso_local global i64 0, align 8
@NVKM_MEM_KIND = common dso_local global i64 0, align 8
@NVKM_MEM_MAPPABLE = common dso_local global i64 0, align 8
@NVKM_MEM_COHERENT = common dso_local global i64 0, align 8
@NVKM_MEM_UNCACHED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_ummu*, i8*, i32)* @nvkm_ummu_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_ummu_type(%struct.nvkm_ummu* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_ummu*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_mmu*, align 8
  %9 = alloca %union.anon*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.nvkm_ummu* %0, %struct.nvkm_ummu** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.nvkm_ummu*, %struct.nvkm_ummu** %5, align 8
  %14 = getelementptr inbounds %struct.nvkm_ummu, %struct.nvkm_ummu* %13, i32 0, i32 0
  %15 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %14, align 8
  store %struct.nvkm_mmu* %15, %struct.nvkm_mmu** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %union.anon*
  store %union.anon* %17, %union.anon** %9, align 8
  %18 = load i32, i32* @ENOSYS, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load %union.anon*, %union.anon** %9, align 8
  %22 = bitcast %union.anon* %21 to %struct.nvif_mmu_type_v0*
  %23 = call i32 @nvif_unpack(i32 %20, i8** %6, i32* %7, %struct.nvif_mmu_type_v0* byval(%struct.nvif_mmu_type_v0) align 8 %22, i32 0, i32 0, i32 0)
  store i32 %23, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %135, label %25

25:                                               ; preds = %3
  %26 = load %union.anon*, %union.anon** %9, align 8
  %27 = bitcast %union.anon* %26 to %struct.nvif_mmu_type_v0*
  %28 = getelementptr inbounds %struct.nvif_mmu_type_v0, %struct.nvif_mmu_type_v0* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %12, align 8
  %30 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %8, align 8
  %31 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp uge i64 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %138

37:                                               ; preds = %25
  %38 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %8, align 8
  %39 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %11, align 8
  %45 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %8, align 8
  %46 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i64, i64* %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %union.anon*, %union.anon** %9, align 8
  %53 = bitcast %union.anon* %52 to %struct.nvif_mmu_type_v0*
  %54 = getelementptr inbounds %struct.nvif_mmu_type_v0, %struct.nvif_mmu_type_v0* %53, i32 0, i32 9
  store i32 %51, i32* %54, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* @NVKM_MEM_VRAM, align 8
  %57 = and i64 %55, %56
  %58 = icmp ne i64 %57, 0
  %59 = xor i1 %58, true
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = load %union.anon*, %union.anon** %9, align 8
  %63 = bitcast %union.anon* %62 to %struct.nvif_mmu_type_v0*
  %64 = getelementptr inbounds %struct.nvif_mmu_type_v0, %struct.nvif_mmu_type_v0* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* @NVKM_MEM_HOST, align 8
  %67 = and i64 %65, %66
  %68 = icmp ne i64 %67, 0
  %69 = xor i1 %68, true
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = load %union.anon*, %union.anon** %9, align 8
  %73 = bitcast %union.anon* %72 to %struct.nvif_mmu_type_v0*
  %74 = getelementptr inbounds %struct.nvif_mmu_type_v0, %struct.nvif_mmu_type_v0* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 4
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* @NVKM_MEM_COMP, align 8
  %77 = and i64 %75, %76
  %78 = icmp ne i64 %77, 0
  %79 = xor i1 %78, true
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = load %union.anon*, %union.anon** %9, align 8
  %83 = bitcast %union.anon* %82 to %struct.nvif_mmu_type_v0*
  %84 = getelementptr inbounds %struct.nvif_mmu_type_v0, %struct.nvif_mmu_type_v0* %83, i32 0, i32 3
  store i32 %81, i32* %84, align 8
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* @NVKM_MEM_DISP, align 8
  %87 = and i64 %85, %86
  %88 = icmp ne i64 %87, 0
  %89 = xor i1 %88, true
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = load %union.anon*, %union.anon** %9, align 8
  %93 = bitcast %union.anon* %92 to %struct.nvif_mmu_type_v0*
  %94 = getelementptr inbounds %struct.nvif_mmu_type_v0, %struct.nvif_mmu_type_v0* %93, i32 0, i32 4
  store i32 %91, i32* %94, align 4
  %95 = load i64, i64* %11, align 8
  %96 = load i64, i64* @NVKM_MEM_KIND, align 8
  %97 = and i64 %95, %96
  %98 = icmp ne i64 %97, 0
  %99 = xor i1 %98, true
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = load %union.anon*, %union.anon** %9, align 8
  %103 = bitcast %union.anon* %102 to %struct.nvif_mmu_type_v0*
  %104 = getelementptr inbounds %struct.nvif_mmu_type_v0, %struct.nvif_mmu_type_v0* %103, i32 0, i32 5
  store i32 %101, i32* %104, align 8
  %105 = load i64, i64* %11, align 8
  %106 = load i64, i64* @NVKM_MEM_MAPPABLE, align 8
  %107 = and i64 %105, %106
  %108 = icmp ne i64 %107, 0
  %109 = xor i1 %108, true
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = load %union.anon*, %union.anon** %9, align 8
  %113 = bitcast %union.anon* %112 to %struct.nvif_mmu_type_v0*
  %114 = getelementptr inbounds %struct.nvif_mmu_type_v0, %struct.nvif_mmu_type_v0* %113, i32 0, i32 6
  store i32 %111, i32* %114, align 4
  %115 = load i64, i64* %11, align 8
  %116 = load i64, i64* @NVKM_MEM_COHERENT, align 8
  %117 = and i64 %115, %116
  %118 = icmp ne i64 %117, 0
  %119 = xor i1 %118, true
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  %122 = load %union.anon*, %union.anon** %9, align 8
  %123 = bitcast %union.anon* %122 to %struct.nvif_mmu_type_v0*
  %124 = getelementptr inbounds %struct.nvif_mmu_type_v0, %struct.nvif_mmu_type_v0* %123, i32 0, i32 7
  store i32 %121, i32* %124, align 8
  %125 = load i64, i64* %11, align 8
  %126 = load i64, i64* @NVKM_MEM_UNCACHED, align 8
  %127 = and i64 %125, %126
  %128 = icmp ne i64 %127, 0
  %129 = xor i1 %128, true
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = load %union.anon*, %union.anon** %9, align 8
  %133 = bitcast %union.anon* %132 to %struct.nvif_mmu_type_v0*
  %134 = getelementptr inbounds %struct.nvif_mmu_type_v0, %struct.nvif_mmu_type_v0* %133, i32 0, i32 8
  store i32 %131, i32* %134, align 4
  br label %137

135:                                              ; preds = %3
  %136 = load i32, i32* %10, align 4
  store i32 %136, i32* %4, align 4
  br label %138

137:                                              ; preds = %37
  store i32 0, i32* %4, align 4
  br label %138

138:                                              ; preds = %137, %135, %34
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, %struct.nvif_mmu_type_v0* byval(%struct.nvif_mmu_type_v0) align 8, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
