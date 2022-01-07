; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_config_sgid_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_config_sgid_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32 }
%union.ib_gid = type { i32* }
%struct.hns_roce_cmq_desc = type { i64 }
%struct.hns_roce_cfg_sgid_tb = type { i8*, i8*, i8*, i8*, i32, i32 }

@HNS_ROCE_OPC_CFG_SGID_TB = common dso_local global i32 0, align 4
@CFG_SGID_TB_TABLE_IDX_M = common dso_local global i32 0, align 4
@CFG_SGID_TB_TABLE_IDX_S = common dso_local global i32 0, align 4
@CFG_SGID_TB_VF_SGID_TYPE_M = common dso_local global i32 0, align 4
@CFG_SGID_TB_VF_SGID_TYPE_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, i32, %union.ib_gid*, i32)* @hns_roce_config_sgid_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_config_sgid_table(%struct.hns_roce_dev* %0, i32 %1, %union.ib_gid* %2, i32 %3) #0 {
  %5 = alloca %struct.hns_roce_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.ib_gid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hns_roce_cmq_desc, align 8
  %10 = alloca %struct.hns_roce_cfg_sgid_tb*, align 8
  %11 = alloca i32*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.ib_gid* %2, %union.ib_gid** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = getelementptr inbounds %struct.hns_roce_cmq_desc, %struct.hns_roce_cmq_desc* %9, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.hns_roce_cfg_sgid_tb*
  store %struct.hns_roce_cfg_sgid_tb* %14, %struct.hns_roce_cfg_sgid_tb** %10, align 8
  %15 = load i32, i32* @HNS_ROCE_OPC_CFG_SGID_TB, align 4
  %16 = call i32 @hns_roce_cmq_setup_basic_desc(%struct.hns_roce_cmq_desc* %9, i32 %15, i32 0)
  %17 = load %struct.hns_roce_cfg_sgid_tb*, %struct.hns_roce_cfg_sgid_tb** %10, align 8
  %18 = getelementptr inbounds %struct.hns_roce_cfg_sgid_tb, %struct.hns_roce_cfg_sgid_tb* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CFG_SGID_TB_TABLE_IDX_M, align 4
  %21 = load i32, i32* @CFG_SGID_TB_TABLE_IDX_S, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @roce_set_field(i32 %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.hns_roce_cfg_sgid_tb*, %struct.hns_roce_cfg_sgid_tb** %10, align 8
  %25 = getelementptr inbounds %struct.hns_roce_cfg_sgid_tb, %struct.hns_roce_cfg_sgid_tb* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @CFG_SGID_TB_VF_SGID_TYPE_M, align 4
  %28 = load i32, i32* @CFG_SGID_TB_VF_SGID_TYPE_S, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @roce_set_field(i32 %26, i32 %27, i32 %28, i32 %29)
  %31 = load %union.ib_gid*, %union.ib_gid** %7, align 8
  %32 = bitcast %union.ib_gid* %31 to i32**
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32* %34, i32** %11, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @cpu_to_le32(i32 %36)
  %38 = load %struct.hns_roce_cfg_sgid_tb*, %struct.hns_roce_cfg_sgid_tb** %10, align 8
  %39 = getelementptr inbounds %struct.hns_roce_cfg_sgid_tb, %struct.hns_roce_cfg_sgid_tb* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load %union.ib_gid*, %union.ib_gid** %7, align 8
  %41 = bitcast %union.ib_gid* %40 to i32**
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  store i32* %43, i32** %11, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @cpu_to_le32(i32 %45)
  %47 = load %struct.hns_roce_cfg_sgid_tb*, %struct.hns_roce_cfg_sgid_tb** %10, align 8
  %48 = getelementptr inbounds %struct.hns_roce_cfg_sgid_tb, %struct.hns_roce_cfg_sgid_tb* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  %49 = load %union.ib_gid*, %union.ib_gid** %7, align 8
  %50 = bitcast %union.ib_gid* %49 to i32**
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 8
  store i32* %52, i32** %11, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @cpu_to_le32(i32 %54)
  %56 = load %struct.hns_roce_cfg_sgid_tb*, %struct.hns_roce_cfg_sgid_tb** %10, align 8
  %57 = getelementptr inbounds %struct.hns_roce_cfg_sgid_tb, %struct.hns_roce_cfg_sgid_tb* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load %union.ib_gid*, %union.ib_gid** %7, align 8
  %59 = bitcast %union.ib_gid* %58 to i32**
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 12
  store i32* %61, i32** %11, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @cpu_to_le32(i32 %63)
  %65 = load %struct.hns_roce_cfg_sgid_tb*, %struct.hns_roce_cfg_sgid_tb** %10, align 8
  %66 = getelementptr inbounds %struct.hns_roce_cfg_sgid_tb, %struct.hns_roce_cfg_sgid_tb* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %68 = call i32 @hns_roce_cmq_send(%struct.hns_roce_dev* %67, %struct.hns_roce_cmq_desc* %9, i32 1)
  ret i32 %68
}

declare dso_local i32 @hns_roce_cmq_setup_basic_desc(%struct.hns_roce_cmq_desc*, i32, i32) #1

declare dso_local i32 @roce_set_field(i32, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @hns_roce_cmq_send(%struct.hns_roce_dev*, %struct.hns_roce_cmq_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
