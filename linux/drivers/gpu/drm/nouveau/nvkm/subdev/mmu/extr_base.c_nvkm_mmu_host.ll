; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_base.c_nvkm_mmu_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_base.c_nvkm_mmu_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_mmu = type { %struct.TYPE_5__*, %struct.TYPE_8__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@NVKM_MEM_KIND = common dso_local global i32 0, align 4
@NVKM_MEM_HOST = common dso_local global i32 0, align 4
@NVKM_MEM_MAPPABLE = common dso_local global i32 0, align 4
@NVKM_MEM_COHERENT = common dso_local global i32 0, align 4
@NVKM_MEM_UNCACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_mmu*)* @nvkm_mmu_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvkm_mmu_host(%struct.nvkm_mmu* %0) #0 {
  %2 = alloca %struct.nvkm_mmu*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nvkm_mmu* %0, %struct.nvkm_mmu** %2, align 8
  %6 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %2, align 8
  %7 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  store %struct.nvkm_device* %9, %struct.nvkm_device** %3, align 8
  %10 = load i32, i32* @NVKM_MEM_KIND, align 4
  %11 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %2, align 8
  %12 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = mul nsw i32 %10, %19
  store i32 %20, i32* %4, align 4
  %21 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %2, align 8
  %22 = load i32, i32* @NVKM_MEM_HOST, align 4
  %23 = call i32 @nvkm_mmu_heap(%struct.nvkm_mmu* %21, i32 %22, i64 -1)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %2, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @nvkm_mmu_type(%struct.nvkm_mmu* %24, i32 %25, i32 %26)
  %28 = load i32, i32* @NVKM_MEM_MAPPABLE, align 4
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %32 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %1
  %36 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %37 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %35, %1
  %43 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %2, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @NVKM_MEM_KIND, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  %49 = call i32 @nvkm_mmu_type(%struct.nvkm_mmu* %43, i32 %44, i32 %48)
  br label %55

50:                                               ; preds = %35
  %51 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %2, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @nvkm_mmu_type(%struct.nvkm_mmu* %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %42
  %56 = load i32, i32* @NVKM_MEM_COHERENT, align 4
  %57 = load i32, i32* %4, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %4, align 4
  %59 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %60 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %55
  %66 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %2, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @NVKM_MEM_KIND, align 4
  %70 = xor i32 %69, -1
  %71 = and i32 %68, %70
  %72 = call i32 @nvkm_mmu_type(%struct.nvkm_mmu* %66, i32 %67, i32 %71)
  br label %73

73:                                               ; preds = %65, %55
  %74 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %2, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @NVKM_MEM_UNCACHED, align 4
  %77 = load i32, i32* %4, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %4, align 4
  %79 = call i32 @nvkm_mmu_type(%struct.nvkm_mmu* %74, i32 %75, i32 %78)
  ret void
}

declare dso_local i32 @nvkm_mmu_heap(%struct.nvkm_mmu*, i32, i64) #1

declare dso_local i32 @nvkm_mmu_type(%struct.nvkm_mmu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
