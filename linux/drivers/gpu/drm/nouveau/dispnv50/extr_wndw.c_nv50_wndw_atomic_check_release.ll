; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wndw.c_nv50_wndw_atomic_check_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wndw.c_nv50_wndw_atomic_check_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_wndw = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 (%struct.nv50_wndw*, %struct.nv50_wndw_atom*, %struct.nv50_head_atom*)* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.nv50_wndw_atom = type { %struct.TYPE_5__, %struct.TYPE_8__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.nv50_head_atom = type { i32 }
%struct.nouveau_drm = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"%s release\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv50_wndw*, %struct.nv50_wndw_atom*, %struct.nv50_head_atom*)* @nv50_wndw_atomic_check_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_wndw_atomic_check_release(%struct.nv50_wndw* %0, %struct.nv50_wndw_atom* %1, %struct.nv50_head_atom* %2) #0 {
  %4 = alloca %struct.nv50_wndw*, align 8
  %5 = alloca %struct.nv50_wndw_atom*, align 8
  %6 = alloca %struct.nv50_head_atom*, align 8
  %7 = alloca %struct.nouveau_drm*, align 8
  store %struct.nv50_wndw* %0, %struct.nv50_wndw** %4, align 8
  store %struct.nv50_wndw_atom* %1, %struct.nv50_wndw_atom** %5, align 8
  store %struct.nv50_head_atom* %2, %struct.nv50_head_atom** %6, align 8
  %8 = load %struct.nv50_wndw*, %struct.nv50_wndw** %4, align 8
  %9 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.nouveau_drm* @nouveau_drm(i32 %11)
  store %struct.nouveau_drm* %12, %struct.nouveau_drm** %7, align 8
  %13 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %14 = load %struct.nv50_wndw*, %struct.nv50_wndw** %4, align 8
  %15 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @NV_ATOMIC(%struct.nouveau_drm* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.nv50_wndw*, %struct.nv50_wndw** %4, align 8
  %20 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32 (%struct.nv50_wndw*, %struct.nv50_wndw_atom*, %struct.nv50_head_atom*)*, i32 (%struct.nv50_wndw*, %struct.nv50_wndw_atom*, %struct.nv50_head_atom*)** %22, align 8
  %24 = load %struct.nv50_wndw*, %struct.nv50_wndw** %4, align 8
  %25 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %5, align 8
  %26 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %6, align 8
  %27 = call i32 %23(%struct.nv50_wndw* %24, %struct.nv50_wndw_atom* %25, %struct.nv50_head_atom* %26)
  %28 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %5, align 8
  %29 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %5, align 8
  %32 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(i32) #1

declare dso_local i32 @NV_ATOMIC(%struct.nouveau_drm*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
