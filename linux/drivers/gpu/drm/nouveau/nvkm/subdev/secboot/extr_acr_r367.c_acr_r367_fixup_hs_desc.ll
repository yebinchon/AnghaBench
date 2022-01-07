; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_acr_r367.c_acr_r367_fixup_hs_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_acr_r367.c_acr_r367_fixup_hs_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acr_r352 = type { %struct.TYPE_4__*, %struct.nvkm_gpuobj* }
%struct.TYPE_4__ = type { i64 }
%struct.nvkm_gpuobj = type { i32, i32 }
%struct.nvkm_secboot = type { i64 }
%struct.acr_r367_hsflcn_desc = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acr_r367_fixup_hs_desc(%struct.acr_r352* %0, %struct.nvkm_secboot* %1, i8* %2) #0 {
  %4 = alloca %struct.acr_r352*, align 8
  %5 = alloca %struct.nvkm_secboot*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.acr_r367_hsflcn_desc*, align 8
  %8 = alloca %struct.nvkm_gpuobj*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.acr_r352* %0, %struct.acr_r352** %4, align 8
  store %struct.nvkm_secboot* %1, %struct.nvkm_secboot** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.acr_r367_hsflcn_desc*
  store %struct.acr_r367_hsflcn_desc* %12, %struct.acr_r367_hsflcn_desc** %7, align 8
  %13 = load %struct.acr_r352*, %struct.acr_r352** %4, align 8
  %14 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %13, i32 0, i32 1
  %15 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %14, align 8
  store %struct.nvkm_gpuobj* %15, %struct.nvkm_gpuobj** %8, align 8
  %16 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %5, align 8
  %17 = getelementptr inbounds %struct.nvkm_secboot, %struct.nvkm_secboot* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %115

20:                                               ; preds = %3
  %21 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %8, align 8
  %22 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %8, align 8
  %25 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %8, align 8
  %28 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %26, %29
  store i32 %30, i32* %10, align 4
  %31 = load %struct.acr_r352*, %struct.acr_r352** %4, align 8
  %32 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %20
  %38 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %8, align 8
  %39 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %40, 2
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %37, %20
  %45 = load %struct.acr_r367_hsflcn_desc*, %struct.acr_r367_hsflcn_desc** %7, align 8
  %46 = getelementptr inbounds %struct.acr_r367_hsflcn_desc, %struct.acr_r367_hsflcn_desc* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %struct.acr_r367_hsflcn_desc*, %struct.acr_r367_hsflcn_desc** %7, align 8
  %48 = getelementptr inbounds %struct.acr_r367_hsflcn_desc, %struct.acr_r367_hsflcn_desc* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 2, i32* %49, align 8
  %50 = load i32, i32* %9, align 4
  %51 = ashr i32 %50, 8
  %52 = load %struct.acr_r367_hsflcn_desc*, %struct.acr_r367_hsflcn_desc** %7, align 8
  %53 = getelementptr inbounds %struct.acr_r367_hsflcn_desc, %struct.acr_r367_hsflcn_desc* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i32 %51, i32* %57, align 4
  %58 = load i32, i32* %10, align 4
  %59 = ashr i32 %58, 8
  %60 = load %struct.acr_r367_hsflcn_desc*, %struct.acr_r367_hsflcn_desc** %7, align 8
  %61 = getelementptr inbounds %struct.acr_r367_hsflcn_desc, %struct.acr_r367_hsflcn_desc* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i32 %59, i32* %65, align 4
  %66 = load %struct.acr_r367_hsflcn_desc*, %struct.acr_r367_hsflcn_desc** %7, align 8
  %67 = getelementptr inbounds %struct.acr_r367_hsflcn_desc, %struct.acr_r367_hsflcn_desc* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  store i32 1, i32* %71, align 4
  %72 = load %struct.acr_r367_hsflcn_desc*, %struct.acr_r367_hsflcn_desc** %7, align 8
  %73 = getelementptr inbounds %struct.acr_r367_hsflcn_desc, %struct.acr_r367_hsflcn_desc* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 3
  store i32 15, i32* %77, align 4
  %78 = load %struct.acr_r367_hsflcn_desc*, %struct.acr_r367_hsflcn_desc** %7, align 8
  %79 = getelementptr inbounds %struct.acr_r367_hsflcn_desc, %struct.acr_r367_hsflcn_desc* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 4
  store i32 12, i32* %83, align 4
  %84 = load %struct.acr_r367_hsflcn_desc*, %struct.acr_r367_hsflcn_desc** %7, align 8
  %85 = getelementptr inbounds %struct.acr_r367_hsflcn_desc, %struct.acr_r367_hsflcn_desc* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 5
  store i32 2, i32* %89, align 4
  %90 = load %struct.acr_r352*, %struct.acr_r352** %4, align 8
  %91 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %44
  %97 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %8, align 8
  %98 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = ashr i32 %99, 8
  %101 = load %struct.acr_r367_hsflcn_desc*, %struct.acr_r367_hsflcn_desc** %7, align 8
  %102 = getelementptr inbounds %struct.acr_r367_hsflcn_desc, %struct.acr_r367_hsflcn_desc* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 6
  store i32 %100, i32* %106, align 4
  br label %114

107:                                              ; preds = %44
  %108 = load %struct.acr_r367_hsflcn_desc*, %struct.acr_r367_hsflcn_desc** %7, align 8
  %109 = getelementptr inbounds %struct.acr_r367_hsflcn_desc, %struct.acr_r367_hsflcn_desc* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 6
  store i32 0, i32* %113, align 4
  br label %114

114:                                              ; preds = %107, %96
  br label %126

115:                                              ; preds = %3
  %116 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %8, align 8
  %117 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.acr_r367_hsflcn_desc*, %struct.acr_r367_hsflcn_desc** %7, align 8
  %120 = getelementptr inbounds %struct.acr_r367_hsflcn_desc, %struct.acr_r367_hsflcn_desc* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %8, align 8
  %122 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.acr_r367_hsflcn_desc*, %struct.acr_r367_hsflcn_desc** %7, align 8
  %125 = getelementptr inbounds %struct.acr_r367_hsflcn_desc, %struct.acr_r367_hsflcn_desc* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %115, %114
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
