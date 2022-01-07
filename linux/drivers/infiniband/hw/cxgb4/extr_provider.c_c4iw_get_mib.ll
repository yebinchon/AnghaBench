; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_provider.c_c4iw_get_mib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_provider.c_c4iw_get_mib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.rdma_hw_stats = type { i32, i32* }
%struct.tp_tcp_stats = type { i32, i32, i32, i32 }
%struct.c4iw_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IP4INSEGS = common dso_local global i64 0, align 8
@IP4OUTSEGS = common dso_local global i64 0, align 8
@IP4RETRANSSEGS = common dso_local global i64 0, align 8
@IP4OUTRSTS = common dso_local global i64 0, align 8
@IP6INSEGS = common dso_local global i64 0, align 8
@IP6OUTSEGS = common dso_local global i64 0, align 8
@IP6RETRANSSEGS = common dso_local global i64 0, align 8
@IP6OUTRSTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, %struct.rdma_hw_stats*, i32, i32)* @c4iw_get_mib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c4iw_get_mib(%struct.ib_device* %0, %struct.rdma_hw_stats* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.rdma_hw_stats*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tp_tcp_stats, align 4
  %10 = alloca %struct.tp_tcp_stats, align 4
  %11 = alloca %struct.c4iw_dev*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store %struct.rdma_hw_stats* %1, %struct.rdma_hw_stats** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %13 = call %struct.c4iw_dev* @to_c4iw_dev(%struct.ib_device* %12)
  store %struct.c4iw_dev* %13, %struct.c4iw_dev** %11, align 8
  %14 = load %struct.c4iw_dev*, %struct.c4iw_dev** %11, align 8
  %15 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @cxgb4_get_tcp_stats(i32 %18, %struct.tp_tcp_stats* %9, %struct.tp_tcp_stats* %10)
  %20 = getelementptr inbounds %struct.tp_tcp_stats, %struct.tp_tcp_stats* %9, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %6, align 8
  %23 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @IP4INSEGS, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32 %21, i32* %26, align 4
  %27 = getelementptr inbounds %struct.tp_tcp_stats, %struct.tp_tcp_stats* %9, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %6, align 8
  %30 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @IP4OUTSEGS, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32 %28, i32* %33, align 4
  %34 = getelementptr inbounds %struct.tp_tcp_stats, %struct.tp_tcp_stats* %9, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %6, align 8
  %37 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @IP4RETRANSSEGS, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32 %35, i32* %40, align 4
  %41 = getelementptr inbounds %struct.tp_tcp_stats, %struct.tp_tcp_stats* %9, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %6, align 8
  %44 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @IP4OUTRSTS, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32 %42, i32* %47, align 4
  %48 = getelementptr inbounds %struct.tp_tcp_stats, %struct.tp_tcp_stats* %10, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %6, align 8
  %51 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @IP6INSEGS, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32 %49, i32* %54, align 4
  %55 = getelementptr inbounds %struct.tp_tcp_stats, %struct.tp_tcp_stats* %10, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %6, align 8
  %58 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @IP6OUTSEGS, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32 %56, i32* %61, align 4
  %62 = getelementptr inbounds %struct.tp_tcp_stats, %struct.tp_tcp_stats* %10, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %6, align 8
  %65 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @IP6RETRANSSEGS, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32 %63, i32* %68, align 4
  %69 = getelementptr inbounds %struct.tp_tcp_stats, %struct.tp_tcp_stats* %10, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %6, align 8
  %72 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* @IP6OUTRSTS, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32 %70, i32* %75, align 4
  %76 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %6, align 8
  %77 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  ret i32 %78
}

declare dso_local %struct.c4iw_dev* @to_c4iw_dev(%struct.ib_device*) #1

declare dso_local i32 @cxgb4_get_tcp_stats(i32, %struct.tp_tcp_stats*, %struct.tp_tcp_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
