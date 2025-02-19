; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mad.c_destroy_pv_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mad.c_destroy_pv_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { i32 }
%struct.mlx4_ib_demux_pv_ctx = type { i64, i32*, i32*, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32* }

@DEMUX_PV_STATE_DOWN = common dso_local global i64 0, align 8
@DEMUX_PV_STATE_DOWNING = common dso_local global i64 0, align 8
@IB_QPT_SMI = common dso_local global i32 0, align 4
@IB_QPT_GSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_ib_dev*, i32, i32, %struct.mlx4_ib_demux_pv_ctx*, i32)* @destroy_pv_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_pv_resources(%struct.mlx4_ib_dev* %0, i32 %1, i32 %2, %struct.mlx4_ib_demux_pv_ctx* %3, i32 %4) #0 {
  %6 = alloca %struct.mlx4_ib_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_ib_demux_pv_ctx*, align 8
  %10 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.mlx4_ib_demux_pv_ctx* %3, %struct.mlx4_ib_demux_pv_ctx** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %9, align 8
  %12 = icmp ne %struct.mlx4_ib_demux_pv_ctx* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %5
  br label %83

14:                                               ; preds = %5
  %15 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %9, align 8
  %16 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DEMUX_PV_STATE_DOWN, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %83

20:                                               ; preds = %14
  %21 = load i64, i64* @DEMUX_PV_STATE_DOWNING, align 8
  %22 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %9, align 8
  %23 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %9, align 8
  %28 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @flush_workqueue(i32 %29)
  br label %31

31:                                               ; preds = %26, %20
  %32 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %9, align 8
  %33 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %31
  %37 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %9, align 8
  %38 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @ib_destroy_qp(i32* %42)
  %44 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %9, align 8
  %45 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %44, i32 0, i32 3
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  %49 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %9, align 8
  %50 = load i32, i32* @IB_QPT_SMI, align 4
  %51 = call i32 @mlx4_ib_free_pv_qp_bufs(%struct.mlx4_ib_demux_pv_ctx* %49, i32 %50, i32 1)
  br label %52

52:                                               ; preds = %36, %31
  %53 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %9, align 8
  %54 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %53, i32 0, i32 3
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @ib_destroy_qp(i32* %58)
  %60 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %9, align 8
  %61 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %60, i32 0, i32 3
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32* null, i32** %64, align 8
  %65 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %9, align 8
  %66 = load i32, i32* @IB_QPT_GSI, align 4
  %67 = call i32 @mlx4_ib_free_pv_qp_bufs(%struct.mlx4_ib_demux_pv_ctx* %65, i32 %66, i32 1)
  %68 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %9, align 8
  %69 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @ib_dealloc_pd(i32* %70)
  %72 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %9, align 8
  %73 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %72, i32 0, i32 2
  store i32* null, i32** %73, align 8
  %74 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %9, align 8
  %75 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @ib_destroy_cq(i32* %76)
  %78 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %9, align 8
  %79 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %78, i32 0, i32 1
  store i32* null, i32** %79, align 8
  %80 = load i64, i64* @DEMUX_PV_STATE_DOWN, align 8
  %81 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %9, align 8
  %82 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  br label %83

83:                                               ; preds = %13, %52, %14
  ret void
}

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @ib_destroy_qp(i32*) #1

declare dso_local i32 @mlx4_ib_free_pv_qp_bufs(%struct.mlx4_ib_demux_pv_ctx*, i32, i32) #1

declare dso_local i32 @ib_dealloc_pd(i32*) #1

declare dso_local i32 @ib_destroy_cq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
