; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_get_hw_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_get_hw_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.rdma_hw_stats = type { i32, i32* }
%struct.i40iw_device = type { %struct.TYPE_2__, %struct.i40iw_sc_dev }
%struct.TYPE_2__ = type { %struct.i40iw_vsi_pestat* }
%struct.i40iw_vsi_pestat = type { %struct.i40iw_dev_hw_stats }
%struct.i40iw_dev_hw_stats = type { i32 }
%struct.i40iw_sc_dev = type { i64 }

@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, %struct.rdma_hw_stats*, i32, i32)* @i40iw_get_hw_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_get_hw_stats(%struct.ib_device* %0, %struct.rdma_hw_stats* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca %struct.rdma_hw_stats*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i40iw_device*, align 8
  %11 = alloca %struct.i40iw_sc_dev*, align 8
  %12 = alloca %struct.i40iw_vsi_pestat*, align 8
  %13 = alloca %struct.i40iw_dev_hw_stats*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store %struct.rdma_hw_stats* %1, %struct.rdma_hw_stats** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %15 = call %struct.i40iw_device* @to_iwdev(%struct.ib_device* %14)
  store %struct.i40iw_device* %15, %struct.i40iw_device** %10, align 8
  %16 = load %struct.i40iw_device*, %struct.i40iw_device** %10, align 8
  %17 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %16, i32 0, i32 1
  store %struct.i40iw_sc_dev* %17, %struct.i40iw_sc_dev** %11, align 8
  %18 = load %struct.i40iw_device*, %struct.i40iw_device** %10, align 8
  %19 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.i40iw_vsi_pestat*, %struct.i40iw_vsi_pestat** %20, align 8
  store %struct.i40iw_vsi_pestat* %21, %struct.i40iw_vsi_pestat** %12, align 8
  %22 = load %struct.i40iw_vsi_pestat*, %struct.i40iw_vsi_pestat** %12, align 8
  %23 = getelementptr inbounds %struct.i40iw_vsi_pestat, %struct.i40iw_vsi_pestat* %22, i32 0, i32 0
  store %struct.i40iw_dev_hw_stats* %23, %struct.i40iw_dev_hw_stats** %13, align 8
  %24 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %11, align 8
  %25 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %4
  %29 = load %struct.i40iw_vsi_pestat*, %struct.i40iw_vsi_pestat** %12, align 8
  %30 = load %struct.i40iw_vsi_pestat*, %struct.i40iw_vsi_pestat** %12, align 8
  %31 = getelementptr inbounds %struct.i40iw_vsi_pestat, %struct.i40iw_vsi_pestat* %30, i32 0, i32 0
  %32 = call i32 @i40iw_hw_stats_read_all(%struct.i40iw_vsi_pestat* %29, %struct.i40iw_dev_hw_stats* %31)
  br label %43

33:                                               ; preds = %4
  %34 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %11, align 8
  %35 = load %struct.i40iw_vsi_pestat*, %struct.i40iw_vsi_pestat** %12, align 8
  %36 = getelementptr inbounds %struct.i40iw_vsi_pestat, %struct.i40iw_vsi_pestat* %35, i32 0, i32 0
  %37 = call i64 @i40iw_vchnl_vf_get_pe_stats(%struct.i40iw_sc_dev* %34, %struct.i40iw_dev_hw_stats* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @ENOSYS, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %53

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %28
  %44 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %45 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load %struct.i40iw_dev_hw_stats*, %struct.i40iw_dev_hw_stats** %13, align 8
  %49 = call i32 @memcpy(i32* %47, %struct.i40iw_dev_hw_stats* %48, i32 4)
  %50 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %51 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %43, %39
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.i40iw_device* @to_iwdev(%struct.ib_device*) #1

declare dso_local i32 @i40iw_hw_stats_read_all(%struct.i40iw_vsi_pestat*, %struct.i40iw_dev_hw_stats*) #1

declare dso_local i64 @i40iw_vchnl_vf_get_pe_stats(%struct.i40iw_sc_dev*, %struct.i40iw_dev_hw_stats*) #1

declare dso_local i32 @memcpy(i32*, %struct.i40iw_dev_hw_stats*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
