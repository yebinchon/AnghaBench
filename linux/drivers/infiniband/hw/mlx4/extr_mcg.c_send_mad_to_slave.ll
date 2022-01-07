; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mcg.c_send_mad_to_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mcg.c_send_mad_to_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_demux_ctx = type { i32, %struct.mlx4_ib_dev* }
%struct.mlx4_ib_dev = type { i32, i32*, %struct.ib_mad_agent*** }
%struct.ib_mad_agent = type { i32 }
%struct.ib_mad = type { i32 }
%struct.ib_wc = type { i32, i32, i32, i64, i64, i32 }
%struct.rdma_ah_attr = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@IB_DEFAULT_PKEY_FULL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IB_QPT_GSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.mlx4_ib_demux_ctx*, %struct.ib_mad*)* @send_mad_to_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_mad_to_slave(i32 %0, %struct.mlx4_ib_demux_ctx* %1, %struct.ib_mad* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_ib_demux_ctx*, align 8
  %7 = alloca %struct.ib_mad*, align 8
  %8 = alloca %struct.mlx4_ib_dev*, align 8
  %9 = alloca %struct.ib_mad_agent*, align 8
  %10 = alloca %struct.ib_wc, align 8
  %11 = alloca %struct.rdma_ah_attr, align 4
  store i32 %0, i32* %5, align 4
  store %struct.mlx4_ib_demux_ctx* %1, %struct.mlx4_ib_demux_ctx** %6, align 8
  store %struct.ib_mad* %2, %struct.ib_mad** %7, align 8
  %12 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %13 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %12, i32 0, i32 1
  %14 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %13, align 8
  store %struct.mlx4_ib_dev* %14, %struct.mlx4_ib_dev** %8, align 8
  %15 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %16 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %15, i32 0, i32 2
  %17 = load %struct.ib_mad_agent***, %struct.ib_mad_agent**** %16, align 8
  %18 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %19 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ib_mad_agent**, %struct.ib_mad_agent*** %17, i64 %22
  %24 = load %struct.ib_mad_agent**, %struct.ib_mad_agent*** %23, align 8
  %25 = getelementptr inbounds %struct.ib_mad_agent*, %struct.ib_mad_agent** %24, i64 1
  %26 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %25, align 8
  store %struct.ib_mad_agent* %26, %struct.ib_mad_agent** %9, align 8
  %27 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %9, align 8
  %28 = icmp ne %struct.ib_mad_agent* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @EAGAIN, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %74

32:                                               ; preds = %3
  %33 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %34 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %37 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %35, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @rdma_query_ah(i32 %42, %struct.rdma_ah_attr* %11)
  %44 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %45 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %44, i32 0, i32 0
  %46 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %47 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @IB_DEFAULT_PKEY_FULL, align 4
  %50 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %10, i32 0, i32 5
  %51 = call i64 @ib_find_cached_pkey(i32* %45, i32 %48, i32 %49, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %32
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %74

56:                                               ; preds = %32
  %57 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %10, i32 0, i32 4
  store i64 0, i64* %57, align 8
  %58 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %10, i32 0, i32 3
  store i64 0, i64* %58, align 8
  %59 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %60 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %10, i32 0, i32 0
  store i32 %61, i32* %62, align 8
  %63 = call i32 @rdma_ah_get_dlid(%struct.rdma_ah_attr* %11)
  %64 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %10, i32 0, i32 2
  store i32 %63, i32* %64, align 8
  %65 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %10, i32 0, i32 1
  store i32 1, i32* %65, align 4
  %66 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %69 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @IB_QPT_GSI, align 4
  %72 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %73 = call i32 @mlx4_ib_send_to_slave(%struct.mlx4_ib_dev* %66, i32 %67, i32 %70, i32 %71, %struct.ib_wc* %10, i32* null, %struct.ib_mad* %72)
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %56, %53, %29
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @rdma_query_ah(i32, %struct.rdma_ah_attr*) #1

declare dso_local i64 @ib_find_cached_pkey(i32*, i32, i32, i32*) #1

declare dso_local i32 @rdma_ah_get_dlid(%struct.rdma_ah_attr*) #1

declare dso_local i32 @mlx4_ib_send_to_slave(%struct.mlx4_ib_dev*, i32, i32, i32, %struct.ib_wc*, i32*, %struct.ib_mad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
