; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_gm200.c_gm200_secboot_run_blob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_gm200.c_gm200_secboot_run_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_secboot = type { %struct.TYPE_8__, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_10__*, %struct.nvkm_falcon*, %struct.nvkm_gpuobj*, i32)* }
%struct.nvkm_gpuobj = type { i32 }
%struct.nvkm_falcon = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.gm200_secboot = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { i32 }
%struct.nvkm_vma = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gm200_secboot_run_blob(%struct.nvkm_secboot* %0, %struct.nvkm_gpuobj* %1, %struct.nvkm_falcon* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_secboot*, align 8
  %6 = alloca %struct.nvkm_gpuobj*, align 8
  %7 = alloca %struct.nvkm_falcon*, align 8
  %8 = alloca %struct.gm200_secboot*, align 8
  %9 = alloca %struct.nvkm_subdev*, align 8
  %10 = alloca %struct.nvkm_vma*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nvkm_secboot* %0, %struct.nvkm_secboot** %5, align 8
  store %struct.nvkm_gpuobj* %1, %struct.nvkm_gpuobj** %6, align 8
  store %struct.nvkm_falcon* %2, %struct.nvkm_falcon** %7, align 8
  %13 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %5, align 8
  %14 = call %struct.gm200_secboot* @gm200_secboot(%struct.nvkm_secboot* %13)
  store %struct.gm200_secboot* %14, %struct.gm200_secboot** %8, align 8
  %15 = load %struct.gm200_secboot*, %struct.gm200_secboot** %8, align 8
  %16 = getelementptr inbounds %struct.gm200_secboot, %struct.gm200_secboot* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store %struct.nvkm_subdev* %17, %struct.nvkm_subdev** %9, align 8
  store %struct.nvkm_vma* null, %struct.nvkm_vma** %10, align 8
  %18 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %7, align 8
  %19 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %9, align 8
  %20 = call i32 @nvkm_falcon_get(%struct.nvkm_falcon* %18, %struct.nvkm_subdev* %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %4, align 4
  br label %127

25:                                               ; preds = %3
  %26 = load %struct.gm200_secboot*, %struct.gm200_secboot** %8, align 8
  %27 = getelementptr inbounds %struct.gm200_secboot, %struct.gm200_secboot* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %6, align 8
  %30 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @nvkm_vmm_get(i32 %28, i32 12, i32 %31, %struct.nvkm_vma** %10)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %25
  %36 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %7, align 8
  %37 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %9, align 8
  %38 = call i32 @nvkm_falcon_put(%struct.nvkm_falcon* %36, %struct.nvkm_subdev* %37)
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %4, align 4
  br label %127

40:                                               ; preds = %25
  %41 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %6, align 8
  %42 = load %struct.gm200_secboot*, %struct.gm200_secboot** %8, align 8
  %43 = getelementptr inbounds %struct.gm200_secboot, %struct.gm200_secboot* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nvkm_vma*, %struct.nvkm_vma** %10, align 8
  %46 = call i32 @nvkm_memory_map(%struct.nvkm_gpuobj* %41, i32 0, i32 %44, %struct.nvkm_vma* %45, i32* null, i32 0)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %108

50:                                               ; preds = %40
  %51 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %7, align 8
  %52 = call i32 @nvkm_falcon_reset(%struct.nvkm_falcon* %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %108

56:                                               ; preds = %50
  %57 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %7, align 8
  %58 = load %struct.gm200_secboot*, %struct.gm200_secboot** %8, align 8
  %59 = getelementptr inbounds %struct.gm200_secboot, %struct.gm200_secboot* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @nvkm_falcon_bind_context(%struct.nvkm_falcon* %57, i32 %60)
  %62 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %5, align 8
  %63 = getelementptr inbounds %struct.nvkm_secboot, %struct.nvkm_secboot* %62, i32 0, i32 1
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32 (%struct.TYPE_10__*, %struct.nvkm_falcon*, %struct.nvkm_gpuobj*, i32)*, i32 (%struct.TYPE_10__*, %struct.nvkm_falcon*, %struct.nvkm_gpuobj*, i32)** %67, align 8
  %69 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %5, align 8
  %70 = getelementptr inbounds %struct.nvkm_secboot, %struct.nvkm_secboot* %69, i32 0, i32 1
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %7, align 8
  %73 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %6, align 8
  %74 = load %struct.nvkm_vma*, %struct.nvkm_vma** %10, align 8
  %75 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 %68(%struct.TYPE_10__* %71, %struct.nvkm_falcon* %72, %struct.nvkm_gpuobj* %73, i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %56
  br label %108

81:                                               ; preds = %56
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %11, align 4
  %83 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %5, align 8
  %84 = getelementptr inbounds %struct.nvkm_secboot, %struct.nvkm_secboot* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %7, align 8
  %88 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %87, i32 0, i32 0
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @nvkm_mc_intr_mask(i32 %86, i32 %91, i32 0)
  %93 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %7, align 8
  %94 = call i32 @nvkm_falcon_wr32(%struct.nvkm_falcon* %93, i32 64, i32 -559045211)
  %95 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %7, align 8
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @nvkm_falcon_set_start_addr(%struct.nvkm_falcon* %95, i32 %96)
  %98 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %7, align 8
  %99 = call i32 @nvkm_falcon_start(%struct.nvkm_falcon* %98)
  %100 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %7, align 8
  %101 = call i32 @nvkm_falcon_wait_for_halt(%struct.nvkm_falcon* %100, i32 100)
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %81
  br label %108

105:                                              ; preds = %81
  %106 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %7, align 8
  %107 = call i32 @nvkm_falcon_rd32(%struct.nvkm_falcon* %106, i32 64)
  store i32 %107, i32* %12, align 4
  br label %108

108:                                              ; preds = %105, %104, %80, %55, %49
  %109 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %5, align 8
  %110 = getelementptr inbounds %struct.nvkm_secboot, %struct.nvkm_secboot* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %7, align 8
  %114 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %113, i32 0, i32 0
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @nvkm_mc_intr_mask(i32 %112, i32 %117, i32 1)
  %119 = load %struct.gm200_secboot*, %struct.gm200_secboot** %8, align 8
  %120 = getelementptr inbounds %struct.gm200_secboot, %struct.gm200_secboot* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @nvkm_vmm_put(i32 %121, %struct.nvkm_vma** %10)
  %123 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %7, align 8
  %124 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %9, align 8
  %125 = call i32 @nvkm_falcon_put(%struct.nvkm_falcon* %123, %struct.nvkm_subdev* %124)
  %126 = load i32, i32* %12, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %108, %35, %23
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local %struct.gm200_secboot* @gm200_secboot(%struct.nvkm_secboot*) #1

declare dso_local i32 @nvkm_falcon_get(%struct.nvkm_falcon*, %struct.nvkm_subdev*) #1

declare dso_local i32 @nvkm_vmm_get(i32, i32, i32, %struct.nvkm_vma**) #1

declare dso_local i32 @nvkm_falcon_put(%struct.nvkm_falcon*, %struct.nvkm_subdev*) #1

declare dso_local i32 @nvkm_memory_map(%struct.nvkm_gpuobj*, i32, i32, %struct.nvkm_vma*, i32*, i32) #1

declare dso_local i32 @nvkm_falcon_reset(%struct.nvkm_falcon*) #1

declare dso_local i32 @nvkm_falcon_bind_context(%struct.nvkm_falcon*, i32) #1

declare dso_local i32 @nvkm_mc_intr_mask(i32, i32, i32) #1

declare dso_local i32 @nvkm_falcon_wr32(%struct.nvkm_falcon*, i32, i32) #1

declare dso_local i32 @nvkm_falcon_set_start_addr(%struct.nvkm_falcon*, i32) #1

declare dso_local i32 @nvkm_falcon_start(%struct.nvkm_falcon*) #1

declare dso_local i32 @nvkm_falcon_wait_for_halt(%struct.nvkm_falcon*, i32) #1

declare dso_local i32 @nvkm_falcon_rd32(%struct.nvkm_falcon*, i32) #1

declare dso_local i32 @nvkm_vmm_put(i32, %struct.nvkm_vma**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
