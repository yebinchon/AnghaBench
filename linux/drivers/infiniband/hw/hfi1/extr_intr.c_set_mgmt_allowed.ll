; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_intr.c_set_mgmt_allowed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_intr.c_set_mgmt_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { i64, i32, %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { i32 }

@NEIGHBOR_TYPE_HFI = common dso_local global i64 0, align 8
@REMOTE_LNI_INFO = common dso_local global i32 0, align 4
@GENERAL_CONFIG = common dso_local global i32 0, align 4
@MGMT_ALLOWED_SHIFT = common dso_local global i32 0, align 4
@MGMT_ALLOWED_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_pportdata*)* @set_mgmt_allowed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_mgmt_allowed(%struct.hfi1_pportdata* %0) #0 {
  %2 = alloca %struct.hfi1_pportdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfi1_devdata*, align 8
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %2, align 8
  %5 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %6 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %5, i32 0, i32 2
  %7 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  store %struct.hfi1_devdata* %7, %struct.hfi1_devdata** %4, align 8
  %8 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %9 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @NEIGHBOR_TYPE_HFI, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %15 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %14, i32 0, i32 1
  store i32 1, i32* %15, align 8
  br label %28

16:                                               ; preds = %1
  %17 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %18 = load i32, i32* @REMOTE_LNI_INFO, align 4
  %19 = load i32, i32* @GENERAL_CONFIG, align 4
  %20 = call i32 @read_8051_config(%struct.hfi1_devdata* %17, i32 %18, i32 %19, i32* %3)
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @MGMT_ALLOWED_SHIFT, align 4
  %23 = ashr i32 %21, %22
  %24 = load i32, i32* @MGMT_ALLOWED_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %27 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %16, %13
  ret void
}

declare dso_local i32 @read_8051_config(%struct.hfi1_devdata*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
