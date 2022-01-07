; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_gm200.c_gm200_mmu_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_gm200.c_gm200_mmu_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.nvkm_mmu = type { i32 }

@gm200_mmu_fixed = common dso_local global i32 0, align 4
@gm200_mmu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gm200_mmu_new(%struct.nvkm_device* %0, i32 %1, %struct.nvkm_mmu** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_mmu**, align 8
  store %struct.nvkm_device* %0, %struct.nvkm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_mmu** %2, %struct.nvkm_mmu*** %7, align 8
  %8 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %9 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.nvkm_mmu**, %struct.nvkm_mmu*** %7, align 8
  %18 = call i32 @nvkm_mmu_new_(i32* @gm200_mmu_fixed, %struct.nvkm_device* %15, i32 %16, %struct.nvkm_mmu** %17)
  store i32 %18, i32* %4, align 4
  br label %24

19:                                               ; preds = %3
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.nvkm_mmu**, %struct.nvkm_mmu*** %7, align 8
  %23 = call i32 @nvkm_mmu_new_(i32* @gm200_mmu, %struct.nvkm_device* %20, i32 %21, %struct.nvkm_mmu** %22)
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %19, %14
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @nvkm_mmu_new_(i32*, %struct.nvkm_device*, i32, %struct.nvkm_mmu**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
