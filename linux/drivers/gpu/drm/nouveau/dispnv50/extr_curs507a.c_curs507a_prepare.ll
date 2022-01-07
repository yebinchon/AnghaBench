; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_curs507a.c_curs507a_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_curs507a.c_curs507a_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_wndw = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.nv50_head_atom = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i64, i64, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.nv50_wndw_atom = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv50_wndw*, %struct.nv50_head_atom*, %struct.nv50_wndw_atom*)* @curs507a_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @curs507a_prepare(%struct.nv50_wndw* %0, %struct.nv50_head_atom* %1, %struct.nv50_wndw_atom* %2) #0 {
  %4 = alloca %struct.nv50_wndw*, align 8
  %5 = alloca %struct.nv50_head_atom*, align 8
  %6 = alloca %struct.nv50_wndw_atom*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.nv50_wndw* %0, %struct.nv50_wndw** %4, align 8
  store %struct.nv50_head_atom* %1, %struct.nv50_head_atom** %5, align 8
  store %struct.nv50_wndw_atom* %2, %struct.nv50_wndw_atom** %6, align 8
  %9 = load %struct.nv50_wndw*, %struct.nv50_wndw** %4, align 8
  %10 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_16__* @nv50_disp(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %6, align 8
  %21 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %8, align 8
  %26 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %27 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %39, label %32

32:                                               ; preds = %3
  %33 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %34 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %32, %3
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %42 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  store i64 %40, i64* %43, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %46 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  store i64 %44, i64* %47, align 8
  %48 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %49 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %53 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  br label %55

55:                                               ; preds = %39, %32
  ret void
}

declare dso_local %struct.TYPE_16__* @nv50_disp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
