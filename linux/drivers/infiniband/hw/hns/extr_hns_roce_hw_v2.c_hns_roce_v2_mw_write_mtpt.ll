; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_mw_write_mtpt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_mw_write_mtpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_mw = type { i64, i64, i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.hns_roce_v2_mpt_entry = type { i32, i32, i32, i32, i32 }

@V2_MPT_BYTE_4_MPT_ST_M = common dso_local global i32 0, align 4
@V2_MPT_BYTE_4_MPT_ST_S = common dso_local global i32 0, align 4
@V2_MPT_ST_FREE = common dso_local global i64 0, align 8
@V2_MPT_BYTE_4_PD_M = common dso_local global i32 0, align 4
@V2_MPT_BYTE_4_PD_S = common dso_local global i32 0, align 4
@V2_MPT_BYTE_4_PBL_HOP_NUM_M = common dso_local global i32 0, align 4
@V2_MPT_BYTE_4_PBL_HOP_NUM_S = common dso_local global i32 0, align 4
@HNS_ROCE_HOP_NUM_0 = common dso_local global i64 0, align 8
@V2_MPT_BYTE_4_PBL_BA_PG_SZ_M = common dso_local global i32 0, align 4
@V2_MPT_BYTE_4_PBL_BA_PG_SZ_S = common dso_local global i32 0, align 4
@PG_SHIFT_OFFSET = common dso_local global i64 0, align 8
@V2_MPT_BYTE_8_R_INV_EN_S = common dso_local global i32 0, align 4
@V2_MPT_BYTE_8_L_INV_EN_S = common dso_local global i32 0, align 4
@V2_MPT_BYTE_12_PA_S = common dso_local global i32 0, align 4
@V2_MPT_BYTE_12_MR_MW_S = common dso_local global i32 0, align 4
@V2_MPT_BYTE_12_BPD_S = common dso_local global i32 0, align 4
@V2_MPT_BYTE_12_BQP_S = common dso_local global i32 0, align 4
@IB_MW_TYPE_1 = common dso_local global i64 0, align 8
@V2_MPT_BYTE_64_PBL_BUF_PG_SZ_M = common dso_local global i32 0, align 4
@V2_MPT_BYTE_64_PBL_BUF_PG_SZ_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.hns_roce_mw*)* @hns_roce_v2_mw_write_mtpt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v2_mw_write_mtpt(i8* %0, %struct.hns_roce_mw* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hns_roce_mw*, align 8
  %5 = alloca %struct.hns_roce_v2_mpt_entry*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.hns_roce_mw* %1, %struct.hns_roce_mw** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.hns_roce_v2_mpt_entry*
  store %struct.hns_roce_v2_mpt_entry* %7, %struct.hns_roce_v2_mpt_entry** %5, align 8
  %8 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %5, align 8
  %9 = call i32 @memset(%struct.hns_roce_v2_mpt_entry* %8, i32 0, i32 20)
  %10 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %5, align 8
  %11 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @V2_MPT_BYTE_4_MPT_ST_M, align 4
  %14 = load i32, i32* @V2_MPT_BYTE_4_MPT_ST_S, align 4
  %15 = load i64, i64* @V2_MPT_ST_FREE, align 8
  %16 = call i32 @roce_set_field(i32 %12, i32 %13, i32 %14, i64 %15)
  %17 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %5, align 8
  %18 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @V2_MPT_BYTE_4_PD_M, align 4
  %21 = load i32, i32* @V2_MPT_BYTE_4_PD_S, align 4
  %22 = load %struct.hns_roce_mw*, %struct.hns_roce_mw** %4, align 8
  %23 = getelementptr inbounds %struct.hns_roce_mw, %struct.hns_roce_mw* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @roce_set_field(i32 %19, i32 %20, i32 %21, i64 %24)
  %26 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %5, align 8
  %27 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @V2_MPT_BYTE_4_PBL_HOP_NUM_M, align 4
  %30 = load i32, i32* @V2_MPT_BYTE_4_PBL_HOP_NUM_S, align 4
  %31 = load %struct.hns_roce_mw*, %struct.hns_roce_mw** %4, align 8
  %32 = getelementptr inbounds %struct.hns_roce_mw, %struct.hns_roce_mw* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @HNS_ROCE_HOP_NUM_0, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  br label %41

37:                                               ; preds = %2
  %38 = load %struct.hns_roce_mw*, %struct.hns_roce_mw** %4, align 8
  %39 = getelementptr inbounds %struct.hns_roce_mw, %struct.hns_roce_mw* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  br label %41

41:                                               ; preds = %37, %36
  %42 = phi i64 [ 0, %36 ], [ %40, %37 ]
  %43 = call i32 @roce_set_field(i32 %28, i32 %29, i32 %30, i64 %42)
  %44 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %5, align 8
  %45 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @V2_MPT_BYTE_4_PBL_BA_PG_SZ_M, align 4
  %48 = load i32, i32* @V2_MPT_BYTE_4_PBL_BA_PG_SZ_S, align 4
  %49 = load %struct.hns_roce_mw*, %struct.hns_roce_mw** %4, align 8
  %50 = getelementptr inbounds %struct.hns_roce_mw, %struct.hns_roce_mw* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PG_SHIFT_OFFSET, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @roce_set_field(i32 %46, i32 %47, i32 %48, i64 %53)
  %55 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %5, align 8
  %56 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @V2_MPT_BYTE_8_R_INV_EN_S, align 4
  %59 = call i32 @roce_set_bit(i32 %57, i32 %58, i32 1)
  %60 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %5, align 8
  %61 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @V2_MPT_BYTE_8_L_INV_EN_S, align 4
  %64 = call i32 @roce_set_bit(i32 %62, i32 %63, i32 1)
  %65 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %5, align 8
  %66 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @V2_MPT_BYTE_12_PA_S, align 4
  %69 = call i32 @roce_set_bit(i32 %67, i32 %68, i32 0)
  %70 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %5, align 8
  %71 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @V2_MPT_BYTE_12_MR_MW_S, align 4
  %74 = call i32 @roce_set_bit(i32 %72, i32 %73, i32 1)
  %75 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %5, align 8
  %76 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @V2_MPT_BYTE_12_BPD_S, align 4
  %79 = call i32 @roce_set_bit(i32 %77, i32 %78, i32 1)
  %80 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %5, align 8
  %81 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @V2_MPT_BYTE_12_BQP_S, align 4
  %84 = load %struct.hns_roce_mw*, %struct.hns_roce_mw** %4, align 8
  %85 = getelementptr inbounds %struct.hns_roce_mw, %struct.hns_roce_mw* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @IB_MW_TYPE_1, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 0, i32 1
  %92 = call i32 @roce_set_bit(i32 %82, i32 %83, i32 %91)
  %93 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %5, align 8
  %94 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @V2_MPT_BYTE_64_PBL_BUF_PG_SZ_M, align 4
  %97 = load i32, i32* @V2_MPT_BYTE_64_PBL_BUF_PG_SZ_S, align 4
  %98 = load %struct.hns_roce_mw*, %struct.hns_roce_mw** %4, align 8
  %99 = getelementptr inbounds %struct.hns_roce_mw, %struct.hns_roce_mw* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @PG_SHIFT_OFFSET, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @roce_set_field(i32 %95, i32 %96, i32 %97, i64 %102)
  %104 = load %struct.hns_roce_mw*, %struct.hns_roce_mw** %4, align 8
  %105 = getelementptr inbounds %struct.hns_roce_mw, %struct.hns_roce_mw* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @cpu_to_le32(i32 %106)
  %108 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %5, align 8
  %109 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  ret i32 0
}

declare dso_local i32 @memset(%struct.hns_roce_v2_mpt_entry*, i32, i32) #1

declare dso_local i32 @roce_set_field(i32, i32, i32, i64) #1

declare dso_local i32 @roce_set_bit(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
