; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv10.c_nv10_gr_save_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv10.c_nv10_gr_save_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv10_gr_chan = type { %struct.pipe_state, %struct.nv10_gr* }
%struct.pipe_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nv10_gr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv10_gr_chan*)* @nv10_gr_save_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv10_gr_save_pipe(%struct.nv10_gr_chan* %0) #0 {
  %2 = alloca %struct.nv10_gr_chan*, align 8
  %3 = alloca %struct.nv10_gr*, align 8
  %4 = alloca %struct.pipe_state*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  store %struct.nv10_gr_chan* %0, %struct.nv10_gr_chan** %2, align 8
  %6 = load %struct.nv10_gr_chan*, %struct.nv10_gr_chan** %2, align 8
  %7 = getelementptr inbounds %struct.nv10_gr_chan, %struct.nv10_gr_chan* %6, i32 0, i32 1
  %8 = load %struct.nv10_gr*, %struct.nv10_gr** %7, align 8
  store %struct.nv10_gr* %8, %struct.nv10_gr** %3, align 8
  %9 = load %struct.nv10_gr_chan*, %struct.nv10_gr_chan** %2, align 8
  %10 = getelementptr inbounds %struct.nv10_gr_chan, %struct.nv10_gr_chan* %9, i32 0, i32 0
  store %struct.pipe_state* %10, %struct.pipe_state** %4, align 8
  %11 = load %struct.nv10_gr*, %struct.nv10_gr** %3, align 8
  %12 = getelementptr inbounds %struct.nv10_gr, %struct.nv10_gr* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %15, align 8
  store %struct.nvkm_device* %16, %struct.nvkm_device** %5, align 8
  %17 = load %struct.nv10_gr*, %struct.nv10_gr** %3, align 8
  %18 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %19 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @PIPE_SAVE(%struct.nv10_gr* %17, i32 %20, i32 17408)
  %22 = load %struct.nv10_gr*, %struct.nv10_gr** %3, align 8
  %23 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %24 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @PIPE_SAVE(%struct.nv10_gr* %22, i32 %25, i32 512)
  %27 = load %struct.nv10_gr*, %struct.nv10_gr** %3, align 8
  %28 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %29 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @PIPE_SAVE(%struct.nv10_gr* %27, i32 %30, i32 25600)
  %32 = load %struct.nv10_gr*, %struct.nv10_gr** %3, align 8
  %33 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %34 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @PIPE_SAVE(%struct.nv10_gr* %32, i32 %35, i32 26624)
  %37 = load %struct.nv10_gr*, %struct.nv10_gr** %3, align 8
  %38 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %39 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @PIPE_SAVE(%struct.nv10_gr* %37, i32 %40, i32 27648)
  %42 = load %struct.nv10_gr*, %struct.nv10_gr** %3, align 8
  %43 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %44 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @PIPE_SAVE(%struct.nv10_gr* %42, i32 %45, i32 28672)
  %47 = load %struct.nv10_gr*, %struct.nv10_gr** %3, align 8
  %48 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %49 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @PIPE_SAVE(%struct.nv10_gr* %47, i32 %50, i32 29696)
  %52 = load %struct.nv10_gr*, %struct.nv10_gr** %3, align 8
  %53 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %54 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @PIPE_SAVE(%struct.nv10_gr* %52, i32 %55, i32 30720)
  %57 = load %struct.nv10_gr*, %struct.nv10_gr** %3, align 8
  %58 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %59 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @PIPE_SAVE(%struct.nv10_gr* %57, i32 %60, i32 64)
  %62 = load %struct.nv10_gr*, %struct.nv10_gr** %3, align 8
  %63 = load %struct.pipe_state*, %struct.pipe_state** %4, align 8
  %64 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @PIPE_SAVE(%struct.nv10_gr* %62, i32 %65, i32 0)
  ret void
}

declare dso_local i32 @PIPE_SAVE(%struct.nv10_gr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
