; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_config_global_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_config_global_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32 }
%struct.hns_roce_cfg_global_param = type { i32 }
%struct.hns_roce_cmq_desc = type { i64 }

@HNS_ROCE_OPC_CFG_GLOBAL_PARAM = common dso_local global i32 0, align 4
@CFG_GLOBAL_PARAM_DATA_0_ROCEE_TIME_1US_CFG_M = common dso_local global i32 0, align 4
@CFG_GLOBAL_PARAM_DATA_0_ROCEE_TIME_1US_CFG_S = common dso_local global i32 0, align 4
@CFG_GLOBAL_PARAM_DATA_0_ROCEE_UDP_PORT_M = common dso_local global i32 0, align 4
@CFG_GLOBAL_PARAM_DATA_0_ROCEE_UDP_PORT_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*)* @hns_roce_config_global_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_config_global_param(%struct.hns_roce_dev* %0) #0 {
  %2 = alloca %struct.hns_roce_dev*, align 8
  %3 = alloca %struct.hns_roce_cfg_global_param*, align 8
  %4 = alloca %struct.hns_roce_cmq_desc, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %2, align 8
  %5 = load i32, i32* @HNS_ROCE_OPC_CFG_GLOBAL_PARAM, align 4
  %6 = call i32 @hns_roce_cmq_setup_basic_desc(%struct.hns_roce_cmq_desc* %4, i32 %5, i32 0)
  %7 = getelementptr inbounds %struct.hns_roce_cmq_desc, %struct.hns_roce_cmq_desc* %4, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.hns_roce_cfg_global_param*
  store %struct.hns_roce_cfg_global_param* %9, %struct.hns_roce_cfg_global_param** %3, align 8
  %10 = load %struct.hns_roce_cfg_global_param*, %struct.hns_roce_cfg_global_param** %3, align 8
  %11 = call i32 @memset(%struct.hns_roce_cfg_global_param* %10, i32 0, i32 4)
  %12 = load %struct.hns_roce_cfg_global_param*, %struct.hns_roce_cfg_global_param** %3, align 8
  %13 = getelementptr inbounds %struct.hns_roce_cfg_global_param, %struct.hns_roce_cfg_global_param* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CFG_GLOBAL_PARAM_DATA_0_ROCEE_TIME_1US_CFG_M, align 4
  %16 = load i32, i32* @CFG_GLOBAL_PARAM_DATA_0_ROCEE_TIME_1US_CFG_S, align 4
  %17 = call i32 @roce_set_field(i32 %14, i32 %15, i32 %16, i32 1000)
  %18 = load %struct.hns_roce_cfg_global_param*, %struct.hns_roce_cfg_global_param** %3, align 8
  %19 = getelementptr inbounds %struct.hns_roce_cfg_global_param, %struct.hns_roce_cfg_global_param* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CFG_GLOBAL_PARAM_DATA_0_ROCEE_UDP_PORT_M, align 4
  %22 = load i32, i32* @CFG_GLOBAL_PARAM_DATA_0_ROCEE_UDP_PORT_S, align 4
  %23 = call i32 @roce_set_field(i32 %20, i32 %21, i32 %22, i32 4791)
  %24 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %25 = call i32 @hns_roce_cmq_send(%struct.hns_roce_dev* %24, %struct.hns_roce_cmq_desc* %4, i32 1)
  ret i32 %25
}

declare dso_local i32 @hns_roce_cmq_setup_basic_desc(%struct.hns_roce_cmq_desc*, i32, i32) #1

declare dso_local i32 @memset(%struct.hns_roce_cfg_global_param*, i32, i32) #1

declare dso_local i32 @roce_set_field(i32, i32, i32, i32) #1

declare dso_local i32 @hns_roce_cmq_send(%struct.hns_roce_dev*, %struct.hns_roce_cmq_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
