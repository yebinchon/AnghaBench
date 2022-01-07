; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_mstm_service.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_mstm_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_mstm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_dp_aux* }
%struct.drm_dp_aux = type { i32 }

@DP_SINK_COUNT_ESI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv50_mstm_service(%struct.nv50_mstm* %0) #0 {
  %2 = alloca %struct.nv50_mstm*, align 8
  %3 = alloca %struct.drm_dp_aux*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [8 x i32], align 16
  store %struct.nv50_mstm* %0, %struct.nv50_mstm** %2, align 8
  %7 = load %struct.nv50_mstm*, %struct.nv50_mstm** %2, align 8
  %8 = icmp ne %struct.nv50_mstm* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.nv50_mstm*, %struct.nv50_mstm** %2, align 8
  %11 = getelementptr inbounds %struct.nv50_mstm, %struct.nv50_mstm* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %12, align 8
  br label %15

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14, %9
  %16 = phi %struct.drm_dp_aux* [ %13, %9 ], [ null, %14 ]
  store %struct.drm_dp_aux* %16, %struct.drm_dp_aux** %3, align 8
  store i32 1, i32* %4, align 4
  %17 = bitcast [8 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 32, i1 false)
  %18 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %19 = icmp ne %struct.drm_dp_aux* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %50

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %44, %21
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %22
  %26 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %27 = load i64, i64* @DP_SINK_COUNT_ESI, align 8
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %29 = call i32 @drm_dp_dpcd_read(%struct.drm_dp_aux* %26, i64 %27, i32* %28, i32 8)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 8
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.nv50_mstm*, %struct.nv50_mstm** %2, align 8
  %34 = getelementptr inbounds %struct.nv50_mstm, %struct.nv50_mstm* %33, i32 0, i32 0
  %35 = call i32 @drm_dp_mst_topology_mgr_set_mst(%struct.TYPE_3__* %34, i32 0)
  br label %50

36:                                               ; preds = %25
  %37 = load %struct.nv50_mstm*, %struct.nv50_mstm** %2, align 8
  %38 = getelementptr inbounds %struct.nv50_mstm, %struct.nv50_mstm* %37, i32 0, i32 0
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %40 = call i32 @drm_dp_mst_hpd_irq(%struct.TYPE_3__* %38, i32* %39, i32* %4)
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  br label %50

44:                                               ; preds = %36
  %45 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %46 = load i64, i64* @DP_SINK_COUNT_ESI, align 8
  %47 = add nsw i64 %46, 1
  %48 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 1
  %49 = call i32 @drm_dp_dpcd_write(%struct.drm_dp_aux* %45, i64 %47, i32* %48, i32 3)
  br label %22

50:                                               ; preds = %20, %32, %43, %22
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @drm_dp_dpcd_read(%struct.drm_dp_aux*, i64, i32*, i32) #2

declare dso_local i32 @drm_dp_mst_topology_mgr_set_mst(%struct.TYPE_3__*, i32) #2

declare dso_local i32 @drm_dp_mst_hpd_irq(%struct.TYPE_3__*, i32*, i32*) #2

declare dso_local i32 @drm_dp_dpcd_write(%struct.drm_dp_aux*, i64, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
