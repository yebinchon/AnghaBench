; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/sw/extr_chan.c_nvkm_sw_chan_mthd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/sw/extr_chan.c_nvkm_sw_chan_mthd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_sw_chan = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_sw_chan_mthd(%struct.nvkm_sw_chan* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_sw_chan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nvkm_sw_chan* %0, %struct.nvkm_sw_chan** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  switch i32 %10, label %16 [
    i32 0, label %11
    i32 1280, label %12
  ]

11:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %38

12:                                               ; preds = %4
  %13 = load %struct.nvkm_sw_chan*, %struct.nvkm_sw_chan** %6, align 8
  %14 = getelementptr inbounds %struct.nvkm_sw_chan, %struct.nvkm_sw_chan* %13, i32 0, i32 1
  %15 = call i32 @nvkm_event_send(i32* %14, i32 1, i32 0, i32* null, i32 0)
  store i32 1, i32* %5, align 4
  br label %38

16:                                               ; preds = %4
  %17 = load %struct.nvkm_sw_chan*, %struct.nvkm_sw_chan** %6, align 8
  %18 = getelementptr inbounds %struct.nvkm_sw_chan, %struct.nvkm_sw_chan* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32 (%struct.nvkm_sw_chan*, i32, i32, i32)**
  %22 = load i32 (%struct.nvkm_sw_chan*, i32, i32, i32)*, i32 (%struct.nvkm_sw_chan*, i32, i32, i32)** %21, align 8
  %23 = icmp ne i32 (%struct.nvkm_sw_chan*, i32, i32, i32)* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %16
  %25 = load %struct.nvkm_sw_chan*, %struct.nvkm_sw_chan** %6, align 8
  %26 = getelementptr inbounds %struct.nvkm_sw_chan, %struct.nvkm_sw_chan* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = bitcast {}** %28 to i32 (%struct.nvkm_sw_chan*, i32, i32, i32)**
  %30 = load i32 (%struct.nvkm_sw_chan*, i32, i32, i32)*, i32 (%struct.nvkm_sw_chan*, i32, i32, i32)** %29, align 8
  %31 = load %struct.nvkm_sw_chan*, %struct.nvkm_sw_chan** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 %30(%struct.nvkm_sw_chan* %31, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %5, align 4
  br label %38

36:                                               ; preds = %16
  br label %37

37:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %24, %12, %11
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @nvkm_event_send(i32*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
