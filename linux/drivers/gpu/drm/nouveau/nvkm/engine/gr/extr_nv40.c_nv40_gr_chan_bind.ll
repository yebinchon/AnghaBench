; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv40.c_nv40_gr_chan_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv40.c_nv40_gr_chan_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_object = type { i32 }
%struct.nvkm_gpuobj = type { i32 }
%struct.nv40_gr_chan = type { i32, %struct.nv40_gr* }
%struct.nv40_gr = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_object*, %struct.nvkm_gpuobj*, i32, %struct.nvkm_gpuobj**)* @nv40_gr_chan_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv40_gr_chan_bind(%struct.nvkm_object* %0, %struct.nvkm_gpuobj* %1, i32 %2, %struct.nvkm_gpuobj** %3) #0 {
  %5 = alloca %struct.nvkm_object*, align 8
  %6 = alloca %struct.nvkm_gpuobj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_gpuobj**, align 8
  %9 = alloca %struct.nv40_gr_chan*, align 8
  %10 = alloca %struct.nv40_gr*, align 8
  %11 = alloca i32, align 4
  store %struct.nvkm_object* %0, %struct.nvkm_object** %5, align 8
  store %struct.nvkm_gpuobj* %1, %struct.nvkm_gpuobj** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nvkm_gpuobj** %3, %struct.nvkm_gpuobj*** %8, align 8
  %12 = load %struct.nvkm_object*, %struct.nvkm_object** %5, align 8
  %13 = call %struct.nv40_gr_chan* @nv40_gr_chan(%struct.nvkm_object* %12)
  store %struct.nv40_gr_chan* %13, %struct.nv40_gr_chan** %9, align 8
  %14 = load %struct.nv40_gr_chan*, %struct.nv40_gr_chan** %9, align 8
  %15 = getelementptr inbounds %struct.nv40_gr_chan, %struct.nv40_gr_chan* %14, i32 0, i32 1
  %16 = load %struct.nv40_gr*, %struct.nv40_gr** %15, align 8
  store %struct.nv40_gr* %16, %struct.nv40_gr** %10, align 8
  %17 = load %struct.nv40_gr*, %struct.nv40_gr** %10, align 8
  %18 = getelementptr inbounds %struct.nv40_gr, %struct.nv40_gr* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.nv40_gr*, %struct.nv40_gr** %10, align 8
  %24 = getelementptr inbounds %struct.nv40_gr, %struct.nv40_gr* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %6, align 8
  %28 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %29 = call i32 @nvkm_gpuobj_new(i32 %22, i32 %25, i32 %26, i32 1, %struct.nvkm_gpuobj* %27, %struct.nvkm_gpuobj** %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %61

32:                                               ; preds = %4
  %33 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %34 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %33, align 8
  %35 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nv40_gr_chan*, %struct.nv40_gr_chan** %9, align 8
  %38 = getelementptr inbounds %struct.nv40_gr_chan, %struct.nv40_gr_chan* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %40 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %39, align 8
  %41 = call i32 @nvkm_kmap(%struct.nvkm_gpuobj* %40)
  %42 = load %struct.nv40_gr*, %struct.nv40_gr** %10, align 8
  %43 = getelementptr inbounds %struct.nv40_gr, %struct.nv40_gr* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %49 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %48, align 8
  %50 = call i32 @nv40_grctx_fill(i32 %47, %struct.nvkm_gpuobj* %49)
  %51 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %52 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %51, align 8
  %53 = load %struct.nv40_gr_chan*, %struct.nv40_gr_chan** %9, align 8
  %54 = getelementptr inbounds %struct.nv40_gr_chan, %struct.nv40_gr_chan* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = ashr i32 %55, 4
  %57 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %52, i32 0, i32 %56)
  %58 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %59 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %58, align 8
  %60 = call i32 @nvkm_done(%struct.nvkm_gpuobj* %59)
  br label %61

61:                                               ; preds = %32, %4
  %62 = load i32, i32* %11, align 4
  ret i32 %62
}

declare dso_local %struct.nv40_gr_chan* @nv40_gr_chan(%struct.nvkm_object*) #1

declare dso_local i32 @nvkm_gpuobj_new(i32, i32, i32, i32, %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj**) #1

declare dso_local i32 @nvkm_kmap(%struct.nvkm_gpuobj*) #1

declare dso_local i32 @nv40_grctx_fill(i32, %struct.nvkm_gpuobj*) #1

declare dso_local i32 @nvkm_wo32(%struct.nvkm_gpuobj*, i32, i32) #1

declare dso_local i32 @nvkm_done(%struct.nvkm_gpuobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
