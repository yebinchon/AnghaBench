; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_head.c_nv50_head_atomic_check_dither.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_head.c_nv50_head_atomic_check_dither.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_head_atom = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.nouveau_conn_atom = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_7__ = type { %struct.drm_connector* }
%struct.drm_connector = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@DITHERING_MODE_AUTO = common dso_local global i64 0, align 8
@DITHERING_MODE_DYNAMIC2X2 = common dso_local global i32 0, align 4
@DITHERING_DEPTH_AUTO = common dso_local global i32 0, align 4
@DITHERING_DEPTH_8BPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv50_head_atom*, %struct.nv50_head_atom*, %struct.nouveau_conn_atom*)* @nv50_head_atomic_check_dither to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_head_atomic_check_dither(%struct.nv50_head_atom* %0, %struct.nv50_head_atom* %1, %struct.nouveau_conn_atom* %2) #0 {
  %4 = alloca %struct.nv50_head_atom*, align 8
  %5 = alloca %struct.nv50_head_atom*, align 8
  %6 = alloca %struct.nouveau_conn_atom*, align 8
  %7 = alloca %struct.drm_connector*, align 8
  %8 = alloca i32, align 4
  store %struct.nv50_head_atom* %0, %struct.nv50_head_atom** %4, align 8
  store %struct.nv50_head_atom* %1, %struct.nv50_head_atom** %5, align 8
  store %struct.nouveau_conn_atom* %2, %struct.nouveau_conn_atom** %6, align 8
  %9 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %6, align 8
  %10 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.drm_connector*, %struct.drm_connector** %11, align 8
  store %struct.drm_connector* %12, %struct.drm_connector** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %6, align 8
  %14 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DITHERING_MODE_AUTO, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %3
  %20 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %21 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %25 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 3
  %29 = icmp sgt i32 %23, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i32, i32* @DITHERING_MODE_DYNAMIC2X2, align 4
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %30, %19
  br label %39

33:                                               ; preds = %3
  %34 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %6, align 8
  %35 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %33, %32
  %40 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %6, align 8
  %41 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @DITHERING_DEPTH_AUTO, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %39
  %47 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %48 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sge i32 %50, 8
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32, i32* @DITHERING_DEPTH_8BPC, align 4
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %52, %46
  br label %64

57:                                               ; preds = %39
  %58 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %6, align 8
  %59 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %57, %56
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %67 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* %8, align 4
  %70 = ashr i32 %69, 1
  %71 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %72 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* %8, align 4
  %75 = ashr i32 %74, 3
  %76 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %77 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 2
  store i32 %75, i32* %78, align 4
  %79 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %80 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  store i32 1, i32* %81, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
