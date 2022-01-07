; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_gf100.c_gf100_mmu_kind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_gf100.c_gf100_mmu_kind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_mmu = type { i32 }

@gf100_mmu_kind.kind = internal constant [256 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 255, i32 1, i32 1, i32 1, i32 1, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 17, i32 255, i32 255, i32 255, i32 255, i32 255, i32 17, i32 17, i32 17, i32 17, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 38, i32 39, i32 40, i32 41, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 38, i32 39, i32 40, i32 41, i32 38, i32 39, i32 40, i32 41, i32 255, i32 255, i32 255, i32 255, i32 70, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 70, i32 70, i32 70, i32 70, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 123, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 123, i32 123, i32 123, i32 123, i32 255, i32 139, i32 140, i32 141, i32 142, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 139, i32 140, i32 141, i32 142, i32 167, i32 168, i32 169, i32 170, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 167, i32 168, i32 169, i32 170, i32 195, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 254, i32 195, i32 195, i32 195, i32 195, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255, i32 255, i32 254, i32 255, i32 254, i32 255, i32 254, i32 254, i32 255, i32 254, i32 254, i32 254, i32 254, i32 254, i32 255, i32 255, i32 254, i32 255, i32 254, i32 255, i32 254, i32 254, i32 255, i32 254, i32 254, i32 254, i32 254, i32 254, i32 254, i32 254, i32 254, i32 254, i32 254, i32 254, i32 254, i32 255, i32 253, i32 254, i32 255], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @gf100_mmu_kind(%struct.nvkm_mmu* %0, i32* %1) #0 {
  %3 = alloca %struct.nvkm_mmu*, align 8
  %4 = alloca i32*, align 8
  store %struct.nvkm_mmu* %0, %struct.nvkm_mmu** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([256 x i32], [256 x i32]* @gf100_mmu_kind.kind, i64 0, i64 0))
  %6 = load i32*, i32** %4, align 8
  store i32 %5, i32* %6, align 4
  ret i32* getelementptr inbounds ([256 x i32], [256 x i32]* @gf100_mmu_kind.kind, i64 0, i64 0)
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
