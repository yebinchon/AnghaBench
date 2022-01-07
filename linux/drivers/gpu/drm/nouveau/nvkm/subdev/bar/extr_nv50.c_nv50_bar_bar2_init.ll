; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bar/extr_nv50.c_nv50_bar_bar2_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bar/extr_nv50.c_nv50_bar_bar2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bar = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nv50_bar = type { %struct.TYPE_6__*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv50_bar_bar2_init(%struct.nvkm_bar* %0) #0 {
  %2 = alloca %struct.nvkm_bar*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca %struct.nv50_bar*, align 8
  store %struct.nvkm_bar* %0, %struct.nvkm_bar** %2, align 8
  %5 = load %struct.nvkm_bar*, %struct.nvkm_bar** %2, align 8
  %6 = getelementptr inbounds %struct.nvkm_bar, %struct.nvkm_bar* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  store %struct.nvkm_device* %8, %struct.nvkm_device** %3, align 8
  %9 = load %struct.nvkm_bar*, %struct.nvkm_bar** %2, align 8
  %10 = call %struct.nv50_bar* @nv50_bar(%struct.nvkm_bar* %9)
  store %struct.nv50_bar* %10, %struct.nv50_bar** %4, align 8
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %12 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %13 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = ashr i32 %16, 12
  %18 = or i32 0, %17
  %19 = call i32 @nvkm_wr32(%struct.nvkm_device* %11, i32 5892, i32 %18)
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %21 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %22 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %21, i32 0, i32 1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 12
  %27 = or i32 1073741824, %26
  %28 = call i32 @nvkm_wr32(%struct.nvkm_device* %20, i32 5892, i32 %27)
  %29 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %30 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %31 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 4
  %38 = or i32 -2147483648, %37
  %39 = call i32 @nvkm_wr32(%struct.nvkm_device* %29, i32 5900, i32 %38)
  ret void
}

declare dso_local %struct.nv50_bar* @nv50_bar(%struct.nvkm_bar*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
