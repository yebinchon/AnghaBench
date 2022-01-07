; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_process_fence_dep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_process_fence_dep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_cs_parser = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.amdgpu_fpriv* }
%struct.amdgpu_fpriv = type { i32 }
%struct.amdgpu_cs_chunk = type { i32, i64, i64 }
%struct.drm_amdgpu_cs_chunk_dep = type { i32, i32, i32, i32, i32 }
%struct.amdgpu_ctx = type { i32 }
%struct.drm_sched_entity = type { i32 }
%struct.dma_fence = type { i32 }
%struct.drm_sched_fence = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AMDGPU_CHUNK_ID_SCHEDULED_DEPENDENCIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_cs_parser*, %struct.amdgpu_cs_chunk*)* @amdgpu_cs_process_fence_dep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_cs_process_fence_dep(%struct.amdgpu_cs_parser* %0, %struct.amdgpu_cs_chunk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_cs_parser*, align 8
  %5 = alloca %struct.amdgpu_cs_chunk*, align 8
  %6 = alloca %struct.amdgpu_fpriv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_amdgpu_cs_chunk_dep*, align 8
  %11 = alloca %struct.amdgpu_ctx*, align 8
  %12 = alloca %struct.drm_sched_entity*, align 8
  %13 = alloca %struct.dma_fence*, align 8
  %14 = alloca %struct.drm_sched_fence*, align 8
  %15 = alloca %struct.dma_fence*, align 8
  store %struct.amdgpu_cs_parser* %0, %struct.amdgpu_cs_parser** %4, align 8
  store %struct.amdgpu_cs_chunk* %1, %struct.amdgpu_cs_chunk** %5, align 8
  %16 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %17 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %19, align 8
  store %struct.amdgpu_fpriv* %20, %struct.amdgpu_fpriv** %6, align 8
  %21 = load %struct.amdgpu_cs_chunk*, %struct.amdgpu_cs_chunk** %5, align 8
  %22 = getelementptr inbounds %struct.amdgpu_cs_chunk, %struct.amdgpu_cs_chunk* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.drm_amdgpu_cs_chunk_dep*
  store %struct.drm_amdgpu_cs_chunk_dep* %24, %struct.drm_amdgpu_cs_chunk_dep** %10, align 8
  %25 = load %struct.amdgpu_cs_chunk*, %struct.amdgpu_cs_chunk** %5, align 8
  %26 = getelementptr inbounds %struct.amdgpu_cs_chunk, %struct.amdgpu_cs_chunk* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = mul nsw i32 %27, 4
  %29 = sext i32 %28 to i64
  %30 = udiv i64 %29, 20
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %132, %2
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %135

36:                                               ; preds = %32
  %37 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %6, align 8
  %38 = load %struct.drm_amdgpu_cs_chunk_dep*, %struct.drm_amdgpu_cs_chunk_dep** %10, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_dep, %struct.drm_amdgpu_cs_chunk_dep* %38, i64 %40
  %42 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_dep, %struct.drm_amdgpu_cs_chunk_dep* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.amdgpu_ctx* @amdgpu_ctx_get(%struct.amdgpu_fpriv* %37, i32 %43)
  store %struct.amdgpu_ctx* %44, %struct.amdgpu_ctx** %11, align 8
  %45 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %11, align 8
  %46 = icmp eq %struct.amdgpu_ctx* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %136

50:                                               ; preds = %36
  %51 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %11, align 8
  %52 = load %struct.drm_amdgpu_cs_chunk_dep*, %struct.drm_amdgpu_cs_chunk_dep** %10, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_dep, %struct.drm_amdgpu_cs_chunk_dep* %52, i64 %54
  %56 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_dep, %struct.drm_amdgpu_cs_chunk_dep* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.drm_amdgpu_cs_chunk_dep*, %struct.drm_amdgpu_cs_chunk_dep** %10, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_dep, %struct.drm_amdgpu_cs_chunk_dep* %58, i64 %60
  %62 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_dep, %struct.drm_amdgpu_cs_chunk_dep* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.drm_amdgpu_cs_chunk_dep*, %struct.drm_amdgpu_cs_chunk_dep** %10, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_dep, %struct.drm_amdgpu_cs_chunk_dep* %64, i64 %66
  %68 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_dep, %struct.drm_amdgpu_cs_chunk_dep* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @amdgpu_ctx_get_entity(%struct.amdgpu_ctx* %51, i32 %57, i32 %63, i32 %69, %struct.drm_sched_entity** %12)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %50
  %74 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %11, align 8
  %75 = call i32 @amdgpu_ctx_put(%struct.amdgpu_ctx* %74)
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %3, align 4
  br label %136

77:                                               ; preds = %50
  %78 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %11, align 8
  %79 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %12, align 8
  %80 = load %struct.drm_amdgpu_cs_chunk_dep*, %struct.drm_amdgpu_cs_chunk_dep** %10, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_dep, %struct.drm_amdgpu_cs_chunk_dep* %80, i64 %82
  %84 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_dep, %struct.drm_amdgpu_cs_chunk_dep* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call %struct.dma_fence* @amdgpu_ctx_get_fence(%struct.amdgpu_ctx* %78, %struct.drm_sched_entity* %79, i32 %85)
  store %struct.dma_fence* %86, %struct.dma_fence** %13, align 8
  %87 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %11, align 8
  %88 = call i32 @amdgpu_ctx_put(%struct.amdgpu_ctx* %87)
  %89 = load %struct.dma_fence*, %struct.dma_fence** %13, align 8
  %90 = call i64 @IS_ERR(%struct.dma_fence* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %77
  %93 = load %struct.dma_fence*, %struct.dma_fence** %13, align 8
  %94 = call i32 @PTR_ERR(%struct.dma_fence* %93)
  store i32 %94, i32* %3, align 4
  br label %136

95:                                               ; preds = %77
  %96 = load %struct.dma_fence*, %struct.dma_fence** %13, align 8
  %97 = icmp ne %struct.dma_fence* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %95
  br label %132

99:                                               ; preds = %95
  br label %100

100:                                              ; preds = %99
  %101 = load %struct.amdgpu_cs_chunk*, %struct.amdgpu_cs_chunk** %5, align 8
  %102 = getelementptr inbounds %struct.amdgpu_cs_chunk, %struct.amdgpu_cs_chunk* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @AMDGPU_CHUNK_ID_SCHEDULED_DEPENDENCIES, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %100
  %107 = load %struct.dma_fence*, %struct.dma_fence** %13, align 8
  store %struct.dma_fence* %107, %struct.dma_fence** %15, align 8
  %108 = load %struct.dma_fence*, %struct.dma_fence** %13, align 8
  %109 = call %struct.drm_sched_fence* @to_drm_sched_fence(%struct.dma_fence* %108)
  store %struct.drm_sched_fence* %109, %struct.drm_sched_fence** %14, align 8
  %110 = load %struct.drm_sched_fence*, %struct.drm_sched_fence** %14, align 8
  %111 = getelementptr inbounds %struct.drm_sched_fence, %struct.drm_sched_fence* %110, i32 0, i32 0
  %112 = call %struct.dma_fence* @dma_fence_get(i32* %111)
  store %struct.dma_fence* %112, %struct.dma_fence** %13, align 8
  %113 = load %struct.dma_fence*, %struct.dma_fence** %15, align 8
  %114 = call i32 @dma_fence_put(%struct.dma_fence* %113)
  br label %115

115:                                              ; preds = %106, %100
  %116 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %117 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %120 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %119, i32 0, i32 0
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load %struct.dma_fence*, %struct.dma_fence** %13, align 8
  %124 = call i32 @amdgpu_sync_fence(i32 %118, i32* %122, %struct.dma_fence* %123, i32 1)
  store i32 %124, i32* %9, align 4
  %125 = load %struct.dma_fence*, %struct.dma_fence** %13, align 8
  %126 = call i32 @dma_fence_put(%struct.dma_fence* %125)
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %115
  %130 = load i32, i32* %9, align 4
  store i32 %130, i32* %3, align 4
  br label %136

131:                                              ; preds = %115
  br label %132

132:                                              ; preds = %131, %98
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %8, align 4
  br label %32

135:                                              ; preds = %32
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %135, %129, %92, %73, %47
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local %struct.amdgpu_ctx* @amdgpu_ctx_get(%struct.amdgpu_fpriv*, i32) #1

declare dso_local i32 @amdgpu_ctx_get_entity(%struct.amdgpu_ctx*, i32, i32, i32, %struct.drm_sched_entity**) #1

declare dso_local i32 @amdgpu_ctx_put(%struct.amdgpu_ctx*) #1

declare dso_local %struct.dma_fence* @amdgpu_ctx_get_fence(%struct.amdgpu_ctx*, %struct.drm_sched_entity*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dma_fence*) #1

declare dso_local i32 @PTR_ERR(%struct.dma_fence*) #1

declare dso_local %struct.drm_sched_fence* @to_drm_sched_fence(%struct.dma_fence*) #1

declare dso_local %struct.dma_fence* @dma_fence_get(i32*) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @amdgpu_sync_fence(i32, i32*, %struct.dma_fence*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
