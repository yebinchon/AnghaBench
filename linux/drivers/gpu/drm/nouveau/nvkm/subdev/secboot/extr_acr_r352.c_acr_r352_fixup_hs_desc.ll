; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_acr_r352.c_acr_r352_fixup_hs_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_acr_r352.c_acr_r352_fixup_hs_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acr_r352 = type { %struct.nvkm_gpuobj* }
%struct.nvkm_gpuobj = type { i32, i32 }
%struct.nvkm_secboot = type { i64 }
%struct.hsflcn_acr_desc = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acr_r352_fixup_hs_desc(%struct.acr_r352* %0, %struct.nvkm_secboot* %1, i8* %2) #0 {
  %4 = alloca %struct.acr_r352*, align 8
  %5 = alloca %struct.nvkm_secboot*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hsflcn_acr_desc*, align 8
  %8 = alloca %struct.nvkm_gpuobj*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.acr_r352* %0, %struct.acr_r352** %4, align 8
  store %struct.nvkm_secboot* %1, %struct.nvkm_secboot** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.hsflcn_acr_desc*
  store %struct.hsflcn_acr_desc* %12, %struct.hsflcn_acr_desc** %7, align 8
  %13 = load %struct.acr_r352*, %struct.acr_r352** %4, align 8
  %14 = getelementptr inbounds %struct.acr_r352, %struct.acr_r352* %13, i32 0, i32 0
  %15 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %14, align 8
  store %struct.nvkm_gpuobj* %15, %struct.nvkm_gpuobj** %8, align 8
  %16 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %5, align 8
  %17 = getelementptr inbounds %struct.nvkm_secboot, %struct.nvkm_secboot* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %74

20:                                               ; preds = %3
  %21 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %8, align 8
  %22 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %8, align 8
  %26 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %24, %27
  store i32 %28, i32* %10, align 4
  %29 = load %struct.hsflcn_acr_desc*, %struct.hsflcn_acr_desc** %7, align 8
  %30 = getelementptr inbounds %struct.hsflcn_acr_desc, %struct.hsflcn_acr_desc* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.hsflcn_acr_desc*, %struct.hsflcn_acr_desc** %7, align 8
  %32 = getelementptr inbounds %struct.hsflcn_acr_desc, %struct.hsflcn_acr_desc* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 2, i32* %33, align 8
  %34 = load i32, i32* %9, align 4
  %35 = ashr i32 %34, 8
  %36 = load %struct.hsflcn_acr_desc*, %struct.hsflcn_acr_desc** %7, align 8
  %37 = getelementptr inbounds %struct.hsflcn_acr_desc, %struct.hsflcn_acr_desc* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %35, i32* %41, align 4
  %42 = load i32, i32* %10, align 4
  %43 = ashr i32 %42, 8
  %44 = load %struct.hsflcn_acr_desc*, %struct.hsflcn_acr_desc** %7, align 8
  %45 = getelementptr inbounds %struct.hsflcn_acr_desc, %struct.hsflcn_acr_desc* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i32 %43, i32* %49, align 4
  %50 = load %struct.hsflcn_acr_desc*, %struct.hsflcn_acr_desc** %7, align 8
  %51 = getelementptr inbounds %struct.hsflcn_acr_desc, %struct.hsflcn_acr_desc* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  store i32 1, i32* %55, align 4
  %56 = load %struct.hsflcn_acr_desc*, %struct.hsflcn_acr_desc** %7, align 8
  %57 = getelementptr inbounds %struct.hsflcn_acr_desc, %struct.hsflcn_acr_desc* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  store i32 15, i32* %61, align 4
  %62 = load %struct.hsflcn_acr_desc*, %struct.hsflcn_acr_desc** %7, align 8
  %63 = getelementptr inbounds %struct.hsflcn_acr_desc, %struct.hsflcn_acr_desc* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 4
  store i32 12, i32* %67, align 4
  %68 = load %struct.hsflcn_acr_desc*, %struct.hsflcn_acr_desc** %7, align 8
  %69 = getelementptr inbounds %struct.hsflcn_acr_desc, %struct.hsflcn_acr_desc* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 5
  store i32 2, i32* %73, align 4
  br label %85

74:                                               ; preds = %3
  %75 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %8, align 8
  %76 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.hsflcn_acr_desc*, %struct.hsflcn_acr_desc** %7, align 8
  %79 = getelementptr inbounds %struct.hsflcn_acr_desc, %struct.hsflcn_acr_desc* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %8, align 8
  %81 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.hsflcn_acr_desc*, %struct.hsflcn_acr_desc** %7, align 8
  %84 = getelementptr inbounds %struct.hsflcn_acr_desc, %struct.hsflcn_acr_desc* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %74, %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
