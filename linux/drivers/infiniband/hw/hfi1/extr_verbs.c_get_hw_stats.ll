; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_get_hw_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_get_hw_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.rdma_hw_stats = type { i32 }
%struct.hfi1_ibport = type { i32 }

@hfi1_stats = common dso_local global i32 0, align 4
@num_dev_cntrs = common dso_local global i64 0, align 8
@num_driver_cntrs = common dso_local global i32 0, align 4
@num_port_cntrs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, %struct.rdma_hw_stats*, i32, i32)* @get_hw_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_hw_stats(%struct.ib_device* %0, %struct.rdma_hw_stats* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.rdma_hw_stats*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.hfi1_ibport*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store %struct.rdma_hw_stats* %1, %struct.rdma_hw_stats** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %49, label %16

16:                                               ; preds = %4
  store i32* @hfi1_stats, i32** %11, align 8
  %17 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %18 = call i32 @dd_from_ibdev(%struct.ib_device* %17)
  %19 = call i32 @hfi1_read_cntrs(i32 %18, i32* null, i32** %9)
  %20 = call i32 (...) @hfi1_sps_ints()
  %21 = load i32*, i32** %9, align 8
  %22 = load i64, i64* @num_dev_cntrs, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32 %20, i32* %23, align 4
  store i32 1, i32* %12, align 4
  br label %24

24:                                               ; preds = %40, %16
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @num_driver_cntrs, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = load i64, i64* @num_dev_cntrs, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = add i64 %35, %37
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  store i32 %33, i32* %39, align 4
  br label %40

40:                                               ; preds = %28
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %12, align 4
  br label %24

43:                                               ; preds = %24
  %44 = load i64, i64* @num_dev_cntrs, align 8
  %45 = load i32, i32* @num_driver_cntrs, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 %44, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %10, align 4
  br label %57

49:                                               ; preds = %4
  %50 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call %struct.hfi1_ibport* @to_iport(%struct.ib_device* %50, i32 %51)
  store %struct.hfi1_ibport* %52, %struct.hfi1_ibport** %13, align 8
  %53 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %13, align 8
  %54 = call i32 @ppd_from_ibp(%struct.hfi1_ibport* %53)
  %55 = call i32 @hfi1_read_portcntrs(i32 %54, i32* null, i32** %9)
  %56 = load i32, i32* @num_port_cntrs, align 4
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %49, %43
  %58 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %6, align 8
  %59 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 4
  %65 = trunc i64 %64 to i32
  %66 = call i32 @memcpy(i32 %60, i32* %61, i32 %65)
  %67 = load i32, i32* %10, align 4
  ret i32 %67
}

declare dso_local i32 @hfi1_read_cntrs(i32, i32*, i32**) #1

declare dso_local i32 @dd_from_ibdev(%struct.ib_device*) #1

declare dso_local i32 @hfi1_sps_ints(...) #1

declare dso_local %struct.hfi1_ibport* @to_iport(%struct.ib_device*, i32) #1

declare dso_local i32 @hfi1_read_portcntrs(i32, i32*, i32**) #1

declare dso_local i32 @ppd_from_ibp(%struct.hfi1_ibport*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
