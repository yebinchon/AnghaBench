; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv50.c_nv50_gr_chan_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv50.c_nv50_gr_chan_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_object = type { i32 }
%struct.nvkm_gpuobj = type { i32 }
%struct.nv50_gr = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { %struct.nv50_gr* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_object*, %struct.nvkm_gpuobj*, i32, %struct.nvkm_gpuobj**)* @nv50_gr_chan_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_gr_chan_bind(%struct.nvkm_object* %0, %struct.nvkm_gpuobj* %1, i32 %2, %struct.nvkm_gpuobj** %3) #0 {
  %5 = alloca %struct.nvkm_object*, align 8
  %6 = alloca %struct.nvkm_gpuobj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_gpuobj**, align 8
  %9 = alloca %struct.nv50_gr*, align 8
  %10 = alloca i32, align 4
  store %struct.nvkm_object* %0, %struct.nvkm_object** %5, align 8
  store %struct.nvkm_gpuobj* %1, %struct.nvkm_gpuobj** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nvkm_gpuobj** %3, %struct.nvkm_gpuobj*** %8, align 8
  %11 = load %struct.nvkm_object*, %struct.nvkm_object** %5, align 8
  %12 = call %struct.TYPE_8__* @nv50_gr_chan(%struct.nvkm_object* %11)
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.nv50_gr*, %struct.nv50_gr** %13, align 8
  store %struct.nv50_gr* %14, %struct.nv50_gr** %9, align 8
  %15 = load %struct.nv50_gr*, %struct.nv50_gr** %9, align 8
  %16 = getelementptr inbounds %struct.nv50_gr, %struct.nv50_gr* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.nv50_gr*, %struct.nv50_gr** %9, align 8
  %22 = getelementptr inbounds %struct.nv50_gr, %struct.nv50_gr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %6, align 8
  %26 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %27 = call i32 @nvkm_gpuobj_new(i32 %20, i32 %23, i32 %24, i32 1, %struct.nvkm_gpuobj* %25, %struct.nvkm_gpuobj** %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %4
  %31 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %32 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %31, align 8
  %33 = call i32 @nvkm_kmap(%struct.nvkm_gpuobj* %32)
  %34 = load %struct.nv50_gr*, %struct.nv50_gr** %9, align 8
  %35 = getelementptr inbounds %struct.nv50_gr, %struct.nv50_gr* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %41 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %40, align 8
  %42 = call i32 @nv50_grctx_fill(i32 %39, %struct.nvkm_gpuobj* %41)
  %43 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %44 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %43, align 8
  %45 = call i32 @nvkm_done(%struct.nvkm_gpuobj* %44)
  br label %46

46:                                               ; preds = %30, %4
  %47 = load i32, i32* %10, align 4
  ret i32 %47
}

declare dso_local %struct.TYPE_8__* @nv50_gr_chan(%struct.nvkm_object*) #1

declare dso_local i32 @nvkm_gpuobj_new(i32, i32, i32, i32, %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj**) #1

declare dso_local i32 @nvkm_kmap(%struct.nvkm_gpuobj*) #1

declare dso_local i32 @nv50_grctx_fill(i32, %struct.nvkm_gpuobj*) #1

declare dso_local i32 @nvkm_done(%struct.nvkm_gpuobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
