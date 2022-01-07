; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mc/extr_base.c_nvkm_mc_intr_rearm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mc/extr_base.c_nvkm_mc_intr_rearm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { %struct.nvkm_mc* }
%struct.nvkm_mc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nvkm_mc*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_mc_intr_rearm(%struct.nvkm_device* %0) #0 {
  %2 = alloca %struct.nvkm_device*, align 8
  %3 = alloca %struct.nvkm_mc*, align 8
  store %struct.nvkm_device* %0, %struct.nvkm_device** %2, align 8
  %4 = load %struct.nvkm_device*, %struct.nvkm_device** %2, align 8
  %5 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %4, i32 0, i32 0
  %6 = load %struct.nvkm_mc*, %struct.nvkm_mc** %5, align 8
  store %struct.nvkm_mc* %6, %struct.nvkm_mc** %3, align 8
  %7 = load %struct.nvkm_mc*, %struct.nvkm_mc** %3, align 8
  %8 = call i64 @likely(%struct.nvkm_mc* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.nvkm_mc*, %struct.nvkm_mc** %3, align 8
  %12 = getelementptr inbounds %struct.nvkm_mc, %struct.nvkm_mc* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.nvkm_mc*)*, i32 (%struct.nvkm_mc*)** %14, align 8
  %16 = load %struct.nvkm_mc*, %struct.nvkm_mc** %3, align 8
  %17 = call i32 %15(%struct.nvkm_mc* %16)
  br label %18

18:                                               ; preds = %10, %1
  ret void
}

declare dso_local i64 @likely(%struct.nvkm_mc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
