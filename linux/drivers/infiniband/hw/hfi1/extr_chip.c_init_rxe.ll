; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_init_rxe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_init_rxe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rsm_map_table = type { i32 }

@RCV_ERR_MASK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RCV_BYPASS = common dso_local global i32 0, align 4
@RCV_BYPASS_HDR_SIZE_SMASK = common dso_local global i64 0, align 8
@RCV_BYPASS_HDR_SIZE_MASK = common dso_local global i64 0, align 8
@RCV_BYPASS_HDR_SIZE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*)* @init_rxe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_rxe(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca %struct.rsm_map_table*, align 8
  %5 = alloca i64, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  %6 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %7 = load i32, i32* @RCV_ERR_MASK, align 4
  %8 = call i32 @write_csr(%struct.hfi1_devdata* %6, i32 %7, i64 -1)
  %9 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %10 = call %struct.rsm_map_table* @alloc_rsm_map_table(%struct.hfi1_devdata* %9)
  store %struct.rsm_map_table* %10, %struct.rsm_map_table** %4, align 8
  %11 = load %struct.rsm_map_table*, %struct.rsm_map_table** %4, align 8
  %12 = icmp ne %struct.rsm_map_table* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %51

16:                                               ; preds = %1
  %17 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %18 = load %struct.rsm_map_table*, %struct.rsm_map_table** %4, align 8
  %19 = call i32 @init_qos(%struct.hfi1_devdata* %17, %struct.rsm_map_table* %18)
  %20 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %21 = load %struct.rsm_map_table*, %struct.rsm_map_table** %4, align 8
  %22 = call i32 @init_fecn_handling(%struct.hfi1_devdata* %20, %struct.rsm_map_table* %21)
  %23 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %24 = load %struct.rsm_map_table*, %struct.rsm_map_table** %4, align 8
  %25 = call i32 @complete_rsm_map_table(%struct.hfi1_devdata* %23, %struct.rsm_map_table* %24)
  %26 = load %struct.rsm_map_table*, %struct.rsm_map_table** %4, align 8
  %27 = getelementptr inbounds %struct.rsm_map_table, %struct.rsm_map_table* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %30 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load %struct.rsm_map_table*, %struct.rsm_map_table** %4, align 8
  %33 = call i32 @kfree(%struct.rsm_map_table* %32)
  %34 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %35 = load i32, i32* @RCV_BYPASS, align 4
  %36 = call i64 @read_csr(%struct.hfi1_devdata* %34, i32 %35)
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* @RCV_BYPASS_HDR_SIZE_SMASK, align 8
  %38 = xor i64 %37, -1
  %39 = load i64, i64* %5, align 8
  %40 = and i64 %39, %38
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* @RCV_BYPASS_HDR_SIZE_MASK, align 8
  %42 = and i64 4, %41
  %43 = load i64, i64* @RCV_BYPASS_HDR_SIZE_SHIFT, align 8
  %44 = shl i64 %42, %43
  %45 = load i64, i64* %5, align 8
  %46 = or i64 %45, %44
  store i64 %46, i64* %5, align 8
  %47 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %48 = load i32, i32* @RCV_BYPASS, align 4
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @write_csr(%struct.hfi1_devdata* %47, i32 %48, i64 %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %16, %13
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i32, i64) #1

declare dso_local %struct.rsm_map_table* @alloc_rsm_map_table(%struct.hfi1_devdata*) #1

declare dso_local i32 @init_qos(%struct.hfi1_devdata*, %struct.rsm_map_table*) #1

declare dso_local i32 @init_fecn_handling(%struct.hfi1_devdata*, %struct.rsm_map_table*) #1

declare dso_local i32 @complete_rsm_map_table(%struct.hfi1_devdata*, %struct.rsm_map_table*) #1

declare dso_local i32 @kfree(%struct.rsm_map_table*) #1

declare dso_local i64 @read_csr(%struct.hfi1_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
