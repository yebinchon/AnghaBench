; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_shut_down_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_shut_down_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_dev_info = type { i32 }
%struct.hfi1_ibdev = type { i32 }
%struct.hfi1_devdata = type { %struct.hfi1_pportdata* }
%struct.hfi1_pportdata = type { i32 }

@OPA_LINKDOWN_REASON_UNKNOWN = common dso_local global i32 0, align 4
@HLS_DN_DOWNDEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvt_dev_info*, i32)* @shut_down_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shut_down_port(%struct.rvt_dev_info* %0, i32 %1) #0 {
  %3 = alloca %struct.rvt_dev_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi1_ibdev*, align 8
  %6 = alloca %struct.hfi1_devdata*, align 8
  %7 = alloca %struct.hfi1_pportdata*, align 8
  %8 = alloca i32, align 4
  store %struct.rvt_dev_info* %0, %struct.rvt_dev_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %10 = call %struct.hfi1_ibdev* @dev_from_rdi(%struct.rvt_dev_info* %9)
  store %struct.hfi1_ibdev* %10, %struct.hfi1_ibdev** %5, align 8
  %11 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %5, align 8
  %12 = call %struct.hfi1_devdata* @dd_from_dev(%struct.hfi1_ibdev* %11)
  store %struct.hfi1_devdata* %12, %struct.hfi1_devdata** %6, align 8
  %13 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %14 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %13, i32 0, i32 0
  %15 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %15, i64 %18
  store %struct.hfi1_pportdata* %19, %struct.hfi1_pportdata** %7, align 8
  %20 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %21 = load i32, i32* @OPA_LINKDOWN_REASON_UNKNOWN, align 4
  %22 = load i32, i32* @OPA_LINKDOWN_REASON_UNKNOWN, align 4
  %23 = call i32 @set_link_down_reason(%struct.hfi1_pportdata* %20, i32 %21, i32 0, i32 %22)
  %24 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %25 = load i32, i32* @HLS_DN_DOWNDEF, align 4
  %26 = call i32 @set_link_state(%struct.hfi1_pportdata* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  ret i32 %27
}

declare dso_local %struct.hfi1_ibdev* @dev_from_rdi(%struct.rvt_dev_info*) #1

declare dso_local %struct.hfi1_devdata* @dd_from_dev(%struct.hfi1_ibdev*) #1

declare dso_local i32 @set_link_down_reason(%struct.hfi1_pportdata*, i32, i32, i32) #1

declare dso_local i32 @set_link_state(%struct.hfi1_pportdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
