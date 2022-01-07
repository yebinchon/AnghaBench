; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv04.c_nv04_gr_context_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv04.c_nv04_gr_context_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv04_gr = type { %struct.nv04_gr_chan**, %struct.TYPE_6__ }
%struct.nv04_gr_chan = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@NV04_PGRAPH_TRAPPED_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv04_gr*)* @nv04_gr_context_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv04_gr_context_switch(%struct.nv04_gr* %0) #0 {
  %2 = alloca %struct.nv04_gr*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca %struct.nv04_gr_chan*, align 8
  %5 = alloca %struct.nv04_gr_chan*, align 8
  %6 = alloca i32, align 4
  store %struct.nv04_gr* %0, %struct.nv04_gr** %2, align 8
  %7 = load %struct.nv04_gr*, %struct.nv04_gr** %2, align 8
  %8 = getelementptr inbounds %struct.nv04_gr, %struct.nv04_gr* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  store %struct.nvkm_device* %12, %struct.nvkm_device** %3, align 8
  store %struct.nv04_gr_chan* null, %struct.nv04_gr_chan** %4, align 8
  store %struct.nv04_gr_chan* null, %struct.nv04_gr_chan** %5, align 8
  %13 = load %struct.nv04_gr*, %struct.nv04_gr** %2, align 8
  %14 = getelementptr inbounds %struct.nv04_gr, %struct.nv04_gr* %13, i32 0, i32 1
  %15 = call i32 @nv04_gr_idle(%struct.TYPE_6__* %14)
  %16 = load %struct.nv04_gr*, %struct.nv04_gr** %2, align 8
  %17 = call %struct.nv04_gr_chan* @nv04_gr_channel(%struct.nv04_gr* %16)
  store %struct.nv04_gr_chan* %17, %struct.nv04_gr_chan** %4, align 8
  %18 = load %struct.nv04_gr_chan*, %struct.nv04_gr_chan** %4, align 8
  %19 = icmp ne %struct.nv04_gr_chan* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.nv04_gr_chan*, %struct.nv04_gr_chan** %4, align 8
  %22 = call i32 @nv04_gr_unload_context(%struct.nv04_gr_chan* %21)
  br label %23

23:                                               ; preds = %20, %1
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %25 = load i32, i32* @NV04_PGRAPH_TRAPPED_ADDR, align 4
  %26 = call i32 @nvkm_rd32(%struct.nvkm_device* %24, i32 %25)
  %27 = ashr i32 %26, 24
  %28 = and i32 %27, 15
  store i32 %28, i32* %6, align 4
  %29 = load %struct.nv04_gr*, %struct.nv04_gr** %2, align 8
  %30 = getelementptr inbounds %struct.nv04_gr, %struct.nv04_gr* %29, i32 0, i32 0
  %31 = load %struct.nv04_gr_chan**, %struct.nv04_gr_chan*** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.nv04_gr_chan*, %struct.nv04_gr_chan** %31, i64 %33
  %35 = load %struct.nv04_gr_chan*, %struct.nv04_gr_chan** %34, align 8
  store %struct.nv04_gr_chan* %35, %struct.nv04_gr_chan** %5, align 8
  %36 = load %struct.nv04_gr_chan*, %struct.nv04_gr_chan** %5, align 8
  %37 = icmp ne %struct.nv04_gr_chan* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %23
  %39 = load %struct.nv04_gr_chan*, %struct.nv04_gr_chan** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @nv04_gr_load_context(%struct.nv04_gr_chan* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %23
  ret void
}

declare dso_local i32 @nv04_gr_idle(%struct.TYPE_6__*) #1

declare dso_local %struct.nv04_gr_chan* @nv04_gr_channel(%struct.nv04_gr*) #1

declare dso_local i32 @nv04_gr_unload_context(%struct.nv04_gr_chan*) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nv04_gr_load_context(%struct.nv04_gr_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
