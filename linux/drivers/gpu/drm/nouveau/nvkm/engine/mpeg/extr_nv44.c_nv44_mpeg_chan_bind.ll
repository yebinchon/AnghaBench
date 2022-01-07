; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/mpeg/extr_nv44.c_nv44_mpeg_chan_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/mpeg/extr_nv44.c_nv44_mpeg_chan_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_object = type { i32 }
%struct.nvkm_gpuobj = type { i32 }
%struct.nv44_mpeg_chan = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_object*, %struct.nvkm_gpuobj*, i32, %struct.nvkm_gpuobj**)* @nv44_mpeg_chan_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv44_mpeg_chan_bind(%struct.nvkm_object* %0, %struct.nvkm_gpuobj* %1, i32 %2, %struct.nvkm_gpuobj** %3) #0 {
  %5 = alloca %struct.nvkm_object*, align 8
  %6 = alloca %struct.nvkm_gpuobj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_gpuobj**, align 8
  %9 = alloca %struct.nv44_mpeg_chan*, align 8
  %10 = alloca i32, align 4
  store %struct.nvkm_object* %0, %struct.nvkm_object** %5, align 8
  store %struct.nvkm_gpuobj* %1, %struct.nvkm_gpuobj** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nvkm_gpuobj** %3, %struct.nvkm_gpuobj*** %8, align 8
  %11 = load %struct.nvkm_object*, %struct.nvkm_object** %5, align 8
  %12 = call %struct.nv44_mpeg_chan* @nv44_mpeg_chan(%struct.nvkm_object* %11)
  store %struct.nv44_mpeg_chan* %12, %struct.nv44_mpeg_chan** %9, align 8
  %13 = load %struct.nv44_mpeg_chan*, %struct.nv44_mpeg_chan** %9, align 8
  %14 = getelementptr inbounds %struct.nv44_mpeg_chan, %struct.nv44_mpeg_chan* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %6, align 8
  %22 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %23 = call i32 @nvkm_gpuobj_new(i32 %19, i32 1056, i32 %20, i32 1, %struct.nvkm_gpuobj* %21, %struct.nvkm_gpuobj** %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %4
  %27 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %28 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %27, align 8
  %29 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.nv44_mpeg_chan*, %struct.nv44_mpeg_chan** %9, align 8
  %32 = getelementptr inbounds %struct.nv44_mpeg_chan, %struct.nv44_mpeg_chan* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %34 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %33, align 8
  %35 = call i32 @nvkm_kmap(%struct.nvkm_gpuobj* %34)
  %36 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %37 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %36, align 8
  %38 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %37, i32 120, i32 33562305)
  %39 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %40 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %39, align 8
  %41 = call i32 @nvkm_done(%struct.nvkm_gpuobj* %40)
  br label %42

42:                                               ; preds = %26, %4
  %43 = load i32, i32* %10, align 4
  ret i32 %43
}

declare dso_local %struct.nv44_mpeg_chan* @nv44_mpeg_chan(%struct.nvkm_object*) #1

declare dso_local i32 @nvkm_gpuobj_new(i32, i32, i32, i32, %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj**) #1

declare dso_local i32 @nvkm_kmap(%struct.nvkm_gpuobj*) #1

declare dso_local i32 @nvkm_wo32(%struct.nvkm_gpuobj*, i32, i32) #1

declare dso_local i32 @nvkm_done(%struct.nvkm_gpuobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
