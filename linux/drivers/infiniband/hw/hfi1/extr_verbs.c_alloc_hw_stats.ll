; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_alloc_hw_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_alloc_hw_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_hw_stats = type { i32 }
%struct.ib_device = type { i32 }
%struct.hfi1_devdata = type { i32, i32, i32, i32 }

@cntr_names_lock = common dso_local global i32 0, align 4
@cntr_names_initialized = common dso_local global i32 0, align 4
@num_driver_cntrs = common dso_local global i32 0, align 4
@num_dev_cntrs = common dso_local global i32 0, align 4
@dev_cntr_names = common dso_local global i32* null, align 8
@driver_cntr_names = common dso_local global i32* null, align 8
@num_port_cntrs = common dso_local global i32 0, align 4
@port_cntr_names = common dso_local global i32* null, align 8
@RDMA_HW_STATS_DEFAULT_LIFESPAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rdma_hw_stats* (%struct.ib_device*, i32)* @alloc_hw_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rdma_hw_stats* @alloc_hw_stats(%struct.ib_device* %0, i32 %1) #0 {
  %3 = alloca %struct.rdma_hw_stats*, align 8
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hfi1_devdata*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call i32 @mutex_lock(i32* @cntr_names_lock)
  %10 = load i32, i32* @cntr_names_initialized, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %62, label %12

12:                                               ; preds = %2
  %13 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %14 = call %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device* %13)
  store %struct.hfi1_devdata* %14, %struct.hfi1_devdata** %8, align 8
  %15 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %16 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %19 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @num_driver_cntrs, align 4
  %22 = call i32 @init_cntr_names(i32 %17, i32 %20, i32 %21, i32* @num_dev_cntrs, i32** @dev_cntr_names)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %12
  %26 = call i32 @mutex_unlock(i32* @cntr_names_lock)
  store %struct.rdma_hw_stats* null, %struct.rdma_hw_stats** %3, align 8
  br label %78

27:                                               ; preds = %12
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %44, %27
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @num_driver_cntrs, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load i32*, i32** @driver_cntr_names, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** @dev_cntr_names, align 8
  %39 = load i32, i32* @num_dev_cntrs, align 4
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  store i32 %37, i32* %43, align 4
  br label %44

44:                                               ; preds = %32
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %28

47:                                               ; preds = %28
  %48 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %49 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %52 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @init_cntr_names(i32 %50, i32 %53, i32 0, i32* @num_port_cntrs, i32** @port_cntr_names)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %47
  %58 = load i32*, i32** @dev_cntr_names, align 8
  %59 = call i32 @kfree(i32* %58)
  store i32* null, i32** @dev_cntr_names, align 8
  %60 = call i32 @mutex_unlock(i32* @cntr_names_lock)
  store %struct.rdma_hw_stats* null, %struct.rdma_hw_stats** %3, align 8
  br label %78

61:                                               ; preds = %47
  store i32 1, i32* @cntr_names_initialized, align 4
  br label %62

62:                                               ; preds = %61, %2
  %63 = call i32 @mutex_unlock(i32* @cntr_names_lock)
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %62
  %67 = load i32*, i32** @dev_cntr_names, align 8
  %68 = load i32, i32* @num_dev_cntrs, align 4
  %69 = load i32, i32* @num_driver_cntrs, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* @RDMA_HW_STATS_DEFAULT_LIFESPAN, align 4
  %72 = call %struct.rdma_hw_stats* @rdma_alloc_hw_stats_struct(i32* %67, i32 %70, i32 %71)
  store %struct.rdma_hw_stats* %72, %struct.rdma_hw_stats** %3, align 8
  br label %78

73:                                               ; preds = %62
  %74 = load i32*, i32** @port_cntr_names, align 8
  %75 = load i32, i32* @num_port_cntrs, align 4
  %76 = load i32, i32* @RDMA_HW_STATS_DEFAULT_LIFESPAN, align 4
  %77 = call %struct.rdma_hw_stats* @rdma_alloc_hw_stats_struct(i32* %74, i32 %75, i32 %76)
  store %struct.rdma_hw_stats* %77, %struct.rdma_hw_stats** %3, align 8
  br label %78

78:                                               ; preds = %73, %66, %57, %25
  %79 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %3, align 8
  ret %struct.rdma_hw_stats* %79
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device*) #1

declare dso_local i32 @init_cntr_names(i32, i32, i32, i32*, i32**) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local %struct.rdma_hw_stats* @rdma_alloc_hw_stats_struct(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
