; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv20.c_nv20_gr_chan_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv20.c_nv20_gr_chan_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_object = type { i32 }
%struct.nv20_gr_chan = type { i32, i32, %struct.nv20_gr* }
%struct.nv20_gr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv20_gr_chan_init(%struct.nvkm_object* %0) #0 {
  %2 = alloca %struct.nvkm_object*, align 8
  %3 = alloca %struct.nv20_gr_chan*, align 8
  %4 = alloca %struct.nv20_gr*, align 8
  %5 = alloca i32, align 4
  store %struct.nvkm_object* %0, %struct.nvkm_object** %2, align 8
  %6 = load %struct.nvkm_object*, %struct.nvkm_object** %2, align 8
  %7 = call %struct.nv20_gr_chan* @nv20_gr_chan(%struct.nvkm_object* %6)
  store %struct.nv20_gr_chan* %7, %struct.nv20_gr_chan** %3, align 8
  %8 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %3, align 8
  %9 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %8, i32 0, i32 2
  %10 = load %struct.nv20_gr*, %struct.nv20_gr** %9, align 8
  store %struct.nv20_gr* %10, %struct.nv20_gr** %4, align 8
  %11 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %3, align 8
  %12 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @nvkm_memory_addr(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.nv20_gr*, %struct.nv20_gr** %4, align 8
  %16 = getelementptr inbounds %struct.nv20_gr, %struct.nv20_gr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @nvkm_kmap(i32 %17)
  %19 = load %struct.nv20_gr*, %struct.nv20_gr** %4, align 8
  %20 = getelementptr inbounds %struct.nv20_gr, %struct.nv20_gr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %3, align 8
  %23 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = mul nsw i32 %24, 4
  %26 = load i32, i32* %5, align 4
  %27 = ashr i32 %26, 4
  %28 = call i32 @nvkm_wo32(i32 %21, i32 %25, i32 %27)
  %29 = load %struct.nv20_gr*, %struct.nv20_gr** %4, align 8
  %30 = getelementptr inbounds %struct.nv20_gr, %struct.nv20_gr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @nvkm_done(i32 %31)
  ret i32 0
}

declare dso_local %struct.nv20_gr_chan* @nv20_gr_chan(%struct.nvkm_object*) #1

declare dso_local i32 @nvkm_memory_addr(i32) #1

declare dso_local i32 @nvkm_kmap(i32) #1

declare dso_local i32 @nvkm_wo32(i32, i32, i32) #1

declare dso_local i32 @nvkm_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
