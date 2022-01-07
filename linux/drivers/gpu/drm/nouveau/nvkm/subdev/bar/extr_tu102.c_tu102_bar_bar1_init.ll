; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bar/extr_tu102.c_tu102_bar_bar1_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bar/extr_tu102.c_tu102_bar_bar1_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bar = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.gf100_bar = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_bar*)* @tu102_bar_bar1_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tu102_bar_bar1_init(%struct.nvkm_bar* %0) #0 {
  %2 = alloca %struct.nvkm_bar*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca %struct.gf100_bar*, align 8
  %5 = alloca i32, align 4
  store %struct.nvkm_bar* %0, %struct.nvkm_bar** %2, align 8
  %6 = load %struct.nvkm_bar*, %struct.nvkm_bar** %2, align 8
  %7 = getelementptr inbounds %struct.nvkm_bar, %struct.nvkm_bar* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  store %struct.nvkm_device* %9, %struct.nvkm_device** %3, align 8
  %10 = load %struct.nvkm_bar*, %struct.nvkm_bar** %2, align 8
  %11 = call %struct.gf100_bar* @gf100_bar(%struct.nvkm_bar* %10)
  store %struct.gf100_bar* %11, %struct.gf100_bar** %4, align 8
  %12 = load %struct.gf100_bar*, %struct.gf100_bar** %4, align 8
  %13 = getelementptr inbounds %struct.gf100_bar, %struct.gf100_bar* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @nvkm_memory_addr(i32 %17)
  %19 = ashr i32 %18, 12
  store i32 %19, i32* %5, align 4
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = or i32 -2147483648, %21
  %23 = call i32 @nvkm_wr32(%struct.nvkm_device* %20, i32 12062528, i32 %22)
  ret void
}

declare dso_local %struct.gf100_bar* @gf100_bar(%struct.nvkm_bar*) #1

declare dso_local i32 @nvkm_memory_addr(i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
