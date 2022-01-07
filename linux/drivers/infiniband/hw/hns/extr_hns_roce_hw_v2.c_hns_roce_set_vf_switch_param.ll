; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_set_vf_switch_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_set_vf_switch_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32 }
%struct.hns_roce_cmq_desc = type { i32, i64 }
%struct.hns_roce_vf_switch = type { i32, i32, i32 }

@HNS_SWITCH_PARAMETER_CFG = common dso_local global i32 0, align 4
@HNS_ICL_SWITCH_CMD_ROCEE_SEL = common dso_local global i32 0, align 4
@VF_SWITCH_DATA_FUN_ID_VF_ID_M = common dso_local global i32 0, align 4
@VF_SWITCH_DATA_FUN_ID_VF_ID_S = common dso_local global i32 0, align 4
@HNS_ROCE_CMD_FLAG_NO_INTR = common dso_local global i32 0, align 4
@HNS_ROCE_CMD_FLAG_IN = common dso_local global i32 0, align 4
@HNS_ROCE_CMD_FLAG_WR = common dso_local global i32 0, align 4
@VF_SWITCH_DATA_CFG_ALW_LPBK_S = common dso_local global i32 0, align 4
@VF_SWITCH_DATA_CFG_ALW_LCL_LPBK_S = common dso_local global i32 0, align 4
@VF_SWITCH_DATA_CFG_ALW_DST_OVRD_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, i32)* @hns_roce_set_vf_switch_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_set_vf_switch_param(%struct.hns_roce_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hns_roce_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hns_roce_cmq_desc, align 8
  %7 = alloca %struct.hns_roce_vf_switch*, align 8
  %8 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = getelementptr inbounds %struct.hns_roce_cmq_desc, %struct.hns_roce_cmq_desc* %6, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.hns_roce_vf_switch*
  store %struct.hns_roce_vf_switch* %11, %struct.hns_roce_vf_switch** %7, align 8
  %12 = load i32, i32* @HNS_SWITCH_PARAMETER_CFG, align 4
  %13 = call i32 @hns_roce_cmq_setup_basic_desc(%struct.hns_roce_cmq_desc* %6, i32 %12, i32 1)
  %14 = load i32, i32* @HNS_ICL_SWITCH_CMD_ROCEE_SEL, align 4
  %15 = call i32 @cpu_to_le32(i32 %14)
  %16 = load %struct.hns_roce_vf_switch*, %struct.hns_roce_vf_switch** %7, align 8
  %17 = getelementptr inbounds %struct.hns_roce_vf_switch, %struct.hns_roce_vf_switch* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.hns_roce_vf_switch*, %struct.hns_roce_vf_switch** %7, align 8
  %21 = getelementptr inbounds %struct.hns_roce_vf_switch, %struct.hns_roce_vf_switch* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @VF_SWITCH_DATA_FUN_ID_VF_ID_M, align 4
  %24 = load i32, i32* @VF_SWITCH_DATA_FUN_ID_VF_ID_S, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @roce_set_field(i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %28 = call i32 @hns_roce_cmq_send(%struct.hns_roce_dev* %27, %struct.hns_roce_cmq_desc* %6, i32 1)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %62

33:                                               ; preds = %2
  %34 = load i32, i32* @HNS_ROCE_CMD_FLAG_NO_INTR, align 4
  %35 = load i32, i32* @HNS_ROCE_CMD_FLAG_IN, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @cpu_to_le16(i32 %36)
  %38 = getelementptr inbounds %struct.hns_roce_cmq_desc, %struct.hns_roce_cmq_desc* %6, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  %39 = load i32, i32* @HNS_ROCE_CMD_FLAG_WR, align 4
  %40 = xor i32 %39, -1
  %41 = call i32 @cpu_to_le16(i32 %40)
  %42 = getelementptr inbounds %struct.hns_roce_cmq_desc, %struct.hns_roce_cmq_desc* %6, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %41
  store i32 %44, i32* %42, align 8
  %45 = load %struct.hns_roce_vf_switch*, %struct.hns_roce_vf_switch** %7, align 8
  %46 = getelementptr inbounds %struct.hns_roce_vf_switch, %struct.hns_roce_vf_switch* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @VF_SWITCH_DATA_CFG_ALW_LPBK_S, align 4
  %49 = call i32 @roce_set_bit(i32 %47, i32 %48, i32 1)
  %50 = load %struct.hns_roce_vf_switch*, %struct.hns_roce_vf_switch** %7, align 8
  %51 = getelementptr inbounds %struct.hns_roce_vf_switch, %struct.hns_roce_vf_switch* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @VF_SWITCH_DATA_CFG_ALW_LCL_LPBK_S, align 4
  %54 = call i32 @roce_set_bit(i32 %52, i32 %53, i32 0)
  %55 = load %struct.hns_roce_vf_switch*, %struct.hns_roce_vf_switch** %7, align 8
  %56 = getelementptr inbounds %struct.hns_roce_vf_switch, %struct.hns_roce_vf_switch* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @VF_SWITCH_DATA_CFG_ALW_DST_OVRD_S, align 4
  %59 = call i32 @roce_set_bit(i32 %57, i32 %58, i32 1)
  %60 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %61 = call i32 @hns_roce_cmq_send(%struct.hns_roce_dev* %60, %struct.hns_roce_cmq_desc* %6, i32 1)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %33, %31
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @hns_roce_cmq_setup_basic_desc(%struct.hns_roce_cmq_desc*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @roce_set_field(i32, i32, i32, i32) #1

declare dso_local i32 @hns_roce_cmq_send(%struct.hns_roce_dev*, %struct.hns_roce_cmq_desc*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @roce_set_bit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
