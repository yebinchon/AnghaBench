; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/iccsense/extr_base.c_nvkm_iccsense_ina219_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/iccsense/extr_base.c_nvkm_iccsense_ina219_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_iccsense = type { i32 }
%struct.nvkm_iccsense_rail = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_iccsense*, %struct.nvkm_iccsense_rail*)* @nvkm_iccsense_ina219_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_iccsense_ina219_read(%struct.nvkm_iccsense* %0, %struct.nvkm_iccsense_rail* %1) #0 {
  %3 = alloca %struct.nvkm_iccsense*, align 8
  %4 = alloca %struct.nvkm_iccsense_rail*, align 8
  store %struct.nvkm_iccsense* %0, %struct.nvkm_iccsense** %3, align 8
  store %struct.nvkm_iccsense_rail* %1, %struct.nvkm_iccsense_rail** %4, align 8
  %5 = load %struct.nvkm_iccsense*, %struct.nvkm_iccsense** %3, align 8
  %6 = load %struct.nvkm_iccsense_rail*, %struct.nvkm_iccsense_rail** %4, align 8
  %7 = call i32 @nvkm_iccsense_ina2x9_read(%struct.nvkm_iccsense* %5, %struct.nvkm_iccsense_rail* %6, i32 1, i32 2)
  ret i32 %7
}

declare dso_local i32 @nvkm_iccsense_ina2x9_read(%struct.nvkm_iccsense*, %struct.nvkm_iccsense_rail*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
