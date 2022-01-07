; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wndw.c_nv50_wndw_flush_clr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wndw.c_nv50_wndw_flush_clr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_wndw = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32 (%struct.nv50_wndw*)*, i32 (%struct.nv50_wndw*)*, i32 (%struct.nv50_wndw*)*, i32 (%struct.nv50_wndw*)*, i32 (%struct.nv50_wndw*)* }
%struct.nv50_wndw_atom = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%union.nv50_wndw_atom_mask = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv50_wndw_flush_clr(%struct.nv50_wndw* %0, i32* %1, i32 %2, %struct.nv50_wndw_atom* %3) #0 {
  %5 = alloca %struct.nv50_wndw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nv50_wndw_atom*, align 8
  %9 = alloca %union.nv50_wndw_atom_mask, align 8
  store %struct.nv50_wndw* %0, %struct.nv50_wndw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nv50_wndw_atom* %3, %struct.nv50_wndw_atom** %8, align 8
  %10 = bitcast %union.nv50_wndw_atom_mask* %9 to i32*
  %11 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %8, align 8
  %12 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %23

18:                                               ; preds = %4
  %19 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %8, align 8
  %20 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  br label %23

23:                                               ; preds = %18, %17
  %24 = phi i32 [ 0, %17 ], [ %22, %18 ]
  %25 = xor i32 %24, -1
  %26 = and i32 %14, %25
  store i32 %26, i32* %10, align 8
  %27 = bitcast %union.nv50_wndw_atom_mask* %9 to i64*
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load %struct.nv50_wndw*, %struct.nv50_wndw** %5, align 8
  %32 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %31, i32 0, i32 1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 4
  %35 = load i32 (%struct.nv50_wndw*)*, i32 (%struct.nv50_wndw*)** %34, align 8
  %36 = load %struct.nv50_wndw*, %struct.nv50_wndw** %5, align 8
  %37 = call i32 %35(%struct.nv50_wndw* %36)
  br label %38

38:                                               ; preds = %30, %23
  %39 = bitcast %union.nv50_wndw_atom_mask* %9 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load %struct.nv50_wndw*, %struct.nv50_wndw** %5, align 8
  %44 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 3
  %47 = load i32 (%struct.nv50_wndw*)*, i32 (%struct.nv50_wndw*)** %46, align 8
  %48 = load %struct.nv50_wndw*, %struct.nv50_wndw** %5, align 8
  %49 = call i32 %47(%struct.nv50_wndw* %48)
  br label %50

50:                                               ; preds = %42, %38
  %51 = bitcast %union.nv50_wndw_atom_mask* %9 to i64*
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load %struct.nv50_wndw*, %struct.nv50_wndw** %5, align 8
  %56 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %55, i32 0, i32 1
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load i32 (%struct.nv50_wndw*)*, i32 (%struct.nv50_wndw*)** %58, align 8
  %60 = load %struct.nv50_wndw*, %struct.nv50_wndw** %5, align 8
  %61 = call i32 %59(%struct.nv50_wndw* %60)
  br label %62

62:                                               ; preds = %54, %50
  %63 = bitcast %union.nv50_wndw_atom_mask* %9 to i64*
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load %struct.nv50_wndw*, %struct.nv50_wndw** %5, align 8
  %68 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %67, i32 0, i32 1
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32 (%struct.nv50_wndw*)*, i32 (%struct.nv50_wndw*)** %70, align 8
  %72 = load %struct.nv50_wndw*, %struct.nv50_wndw** %5, align 8
  %73 = call i32 %71(%struct.nv50_wndw* %72)
  br label %74

74:                                               ; preds = %66, %62
  %75 = bitcast %union.nv50_wndw_atom_mask* %9 to i64*
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = load %struct.nv50_wndw*, %struct.nv50_wndw** %5, align 8
  %80 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %79, i32 0, i32 1
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32 (%struct.nv50_wndw*)*, i32 (%struct.nv50_wndw*)** %82, align 8
  %84 = load %struct.nv50_wndw*, %struct.nv50_wndw** %5, align 8
  %85 = call i32 %83(%struct.nv50_wndw* %84)
  br label %86

86:                                               ; preds = %78, %74
  %87 = load %struct.nv50_wndw*, %struct.nv50_wndw** %5, align 8
  %88 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32*, i32** %6, align 8
  %92 = load %struct.nv50_wndw*, %struct.nv50_wndw** %5, align 8
  %93 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i32, i32* %91, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %90
  store i32 %98, i32* %96, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
