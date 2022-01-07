; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wndwc57e.c_wndwc57e_ilut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wndwc57e.c_wndwc57e_ilut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_wndw = type { i32 }
%struct.nv50_wndw_atom = type { %struct.TYPE_4__, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i64 }
%struct.TYPE_5__ = type { i32 }

@wndwc57e_ilut_load = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv50_wndw*, %struct.nv50_wndw_atom*)* @wndwc57e_ilut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wndwc57e_ilut(%struct.nv50_wndw* %0, %struct.nv50_wndw_atom* %1) #0 {
  %3 = alloca %struct.nv50_wndw*, align 8
  %4 = alloca %struct.nv50_wndw_atom*, align 8
  %5 = alloca i32, align 4
  store %struct.nv50_wndw* %0, %struct.nv50_wndw** %3, align 8
  store %struct.nv50_wndw_atom* %1, %struct.nv50_wndw_atom** %4, align 8
  %6 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %7 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %6, i32 0, i32 1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = udiv i64 %11, 4
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 256
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %18 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  br label %26

21:                                               ; preds = %2
  %22 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %23 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 2, i32* %25, align 8
  store i32 1024, i32* %5, align 4
  br label %26

26:                                               ; preds = %21, %16
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 4, %27
  %29 = add nsw i32 %28, 1
  %30 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %31 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store i32 %29, i32* %33, align 4
  %34 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %35 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* @wndwc57e_ilut_load, align 4
  %39 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %40 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  store i32 %38, i32* %42, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
