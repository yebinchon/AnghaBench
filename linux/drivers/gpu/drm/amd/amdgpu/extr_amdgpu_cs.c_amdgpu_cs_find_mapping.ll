; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_find_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_find_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_cs_parser = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.amdgpu_fpriv* }
%struct.amdgpu_fpriv = type { %struct.amdgpu_vm }
%struct.amdgpu_vm = type { i32 }
%struct.amdgpu_bo = type { i32, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.amdgpu_bo_va_mapping = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.amdgpu_bo* }
%struct.ttm_operation_ctx = type { i32, i32 }

@AMDGPU_GPU_PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AMDGPU_GEM_CREATE_VRAM_CONTIGUOUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_cs_find_mapping(%struct.amdgpu_cs_parser* %0, i32 %1, %struct.amdgpu_bo** %2, %struct.amdgpu_bo_va_mapping** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_cs_parser*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdgpu_bo**, align 8
  %9 = alloca %struct.amdgpu_bo_va_mapping**, align 8
  %10 = alloca %struct.amdgpu_fpriv*, align 8
  %11 = alloca %struct.ttm_operation_ctx, align 4
  %12 = alloca %struct.amdgpu_vm*, align 8
  %13 = alloca %struct.amdgpu_bo_va_mapping*, align 8
  %14 = alloca i32, align 4
  store %struct.amdgpu_cs_parser* %0, %struct.amdgpu_cs_parser** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.amdgpu_bo** %2, %struct.amdgpu_bo*** %8, align 8
  store %struct.amdgpu_bo_va_mapping** %3, %struct.amdgpu_bo_va_mapping*** %9, align 8
  %15 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %6, align 8
  %16 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %15, i32 0, i32 1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %18, align 8
  store %struct.amdgpu_fpriv* %19, %struct.amdgpu_fpriv** %10, align 8
  %20 = bitcast %struct.ttm_operation_ctx* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 8, i1 false)
  %21 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %10, align 8
  %22 = getelementptr inbounds %struct.amdgpu_fpriv, %struct.amdgpu_fpriv* %21, i32 0, i32 0
  store %struct.amdgpu_vm* %22, %struct.amdgpu_vm** %12, align 8
  %23 = load i32, i32* @AMDGPU_GPU_PAGE_SIZE, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sdiv i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %12, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.amdgpu_bo_va_mapping* @amdgpu_vm_bo_lookup_mapping(%struct.amdgpu_vm* %26, i32 %27)
  store %struct.amdgpu_bo_va_mapping* %28, %struct.amdgpu_bo_va_mapping** %13, align 8
  %29 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %13, align 8
  %30 = icmp ne %struct.amdgpu_bo_va_mapping* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %4
  %32 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %13, align 8
  %33 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, %struct.amdgpu_bo_va_mapping* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = icmp ne %struct.TYPE_9__* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %13, align 8
  %38 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, %struct.amdgpu_bo_va_mapping* %37, i32 0, i32 0
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %41, align 8
  %43 = icmp ne %struct.amdgpu_bo* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %36, %31, %4
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %109

47:                                               ; preds = %36
  %48 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %13, align 8
  %49 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, %struct.amdgpu_bo_va_mapping* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %52, align 8
  %54 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %8, align 8
  store %struct.amdgpu_bo* %53, %struct.amdgpu_bo** %54, align 8
  %55 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %13, align 8
  %56 = load %struct.amdgpu_bo_va_mapping**, %struct.amdgpu_bo_va_mapping*** %9, align 8
  store %struct.amdgpu_bo_va_mapping* %55, %struct.amdgpu_bo_va_mapping** %56, align 8
  %57 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %8, align 8
  %58 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %57, align 8
  %59 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32* @dma_resv_locking_ctx(i32 %62)
  %64 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %6, align 8
  %65 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %64, i32 0, i32 0
  %66 = icmp ne i32* %63, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %47
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %109

70:                                               ; preds = %47
  %71 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %8, align 8
  %72 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %71, align 8
  %73 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @AMDGPU_GEM_CREATE_VRAM_CONTIGUOUS, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %104, label %78

78:                                               ; preds = %70
  %79 = load i32, i32* @AMDGPU_GEM_CREATE_VRAM_CONTIGUOUS, align 4
  %80 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %8, align 8
  %81 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %80, align 8
  %82 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %79
  store i32 %84, i32* %82, align 4
  %85 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %8, align 8
  %86 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %85, align 8
  %87 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %8, align 8
  %88 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %87, align 8
  %89 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @amdgpu_bo_placement_from_domain(%struct.amdgpu_bo* %86, i32 %90)
  %92 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %8, align 8
  %93 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %92, align 8
  %94 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %93, i32 0, i32 1
  %95 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %8, align 8
  %96 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %95, align 8
  %97 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %96, i32 0, i32 2
  %98 = call i32 @ttm_bo_validate(%struct.TYPE_11__* %94, i32* %97, %struct.ttm_operation_ctx* %11)
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %78
  %102 = load i32, i32* %14, align 4
  store i32 %102, i32* %5, align 4
  br label %109

103:                                              ; preds = %78
  br label %104

104:                                              ; preds = %103, %70
  %105 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %8, align 8
  %106 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %105, align 8
  %107 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %106, i32 0, i32 1
  %108 = call i32 @amdgpu_ttm_alloc_gart(%struct.TYPE_11__* %107)
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %104, %101, %67, %44
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.amdgpu_bo_va_mapping* @amdgpu_vm_bo_lookup_mapping(%struct.amdgpu_vm*, i32) #2

declare dso_local i32* @dma_resv_locking_ctx(i32) #2

declare dso_local i32 @amdgpu_bo_placement_from_domain(%struct.amdgpu_bo*, i32) #2

declare dso_local i32 @ttm_bo_validate(%struct.TYPE_11__*, i32*, %struct.ttm_operation_ctx*) #2

declare dso_local i32 @amdgpu_ttm_alloc_gart(%struct.TYPE_11__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
