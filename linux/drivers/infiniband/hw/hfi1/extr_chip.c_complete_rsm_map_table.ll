; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_complete_rsm_map_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_complete_rsm_map_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }
%struct.rsm_map_table = type { i32* }

@NUM_MAP_REGS = common dso_local global i32 0, align 4
@RCV_RSM_MAP_TABLE = common dso_local global i64 0, align 8
@RCV_CTRL_RCV_RSM_ENABLE_SMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*, %struct.rsm_map_table*)* @complete_rsm_map_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @complete_rsm_map_table(%struct.hfi1_devdata* %0, %struct.rsm_map_table* %1) #0 {
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca %struct.rsm_map_table*, align 8
  %5 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  store %struct.rsm_map_table* %1, %struct.rsm_map_table** %4, align 8
  %6 = load %struct.rsm_map_table*, %struct.rsm_map_table** %4, align 8
  %7 = icmp ne %struct.rsm_map_table* %6, null
  br i1 %7, label %8, label %35

8:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %28, %8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @NUM_MAP_REGS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %9
  %14 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %15 = load i64, i64* @RCV_RSM_MAP_TABLE, align 8
  %16 = load i32, i32* %5, align 4
  %17 = mul nsw i32 8, %16
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %15, %18
  %20 = load %struct.rsm_map_table*, %struct.rsm_map_table** %4, align 8
  %21 = getelementptr inbounds %struct.rsm_map_table, %struct.rsm_map_table* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @write_csr(%struct.hfi1_devdata* %14, i64 %19, i32 %26)
  br label %28

28:                                               ; preds = %13
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %9

31:                                               ; preds = %9
  %32 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %33 = load i32, i32* @RCV_CTRL_RCV_RSM_ENABLE_SMASK, align 4
  %34 = call i32 @add_rcvctrl(%struct.hfi1_devdata* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %2
  ret void
}

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i64, i32) #1

declare dso_local i32 @add_rcvctrl(%struct.hfi1_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
