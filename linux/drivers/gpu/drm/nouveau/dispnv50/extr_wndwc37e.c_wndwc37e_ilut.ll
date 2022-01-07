; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wndwc37e.c_wndwc37e_ilut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wndwc37e.c_wndwc37e_ilut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_wndw = type { i32 }
%struct.nv50_wndw_atom = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i64 }

@head907d_olut_load = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv50_wndw*, %struct.nv50_wndw_atom*)* @wndwc37e_ilut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wndwc37e_ilut(%struct.nv50_wndw* %0, %struct.nv50_wndw_atom* %1) #0 {
  %3 = alloca %struct.nv50_wndw*, align 8
  %4 = alloca %struct.nv50_wndw_atom*, align 8
  store %struct.nv50_wndw* %0, %struct.nv50_wndw** %3, align 8
  store %struct.nv50_wndw_atom* %1, %struct.nv50_wndw_atom** %4, align 8
  %5 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %6 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 2, i32* %8, align 8
  %9 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %10 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %14 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %18 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i32 1, i32* %20, align 4
  %21 = load i32, i32* @head907d_olut_load, align 4
  %22 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %23 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  store i32 %21, i32* %25, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
