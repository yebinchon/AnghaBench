; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_frmr_write_mtpt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_frmr_write_mtpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_mr = type { i32, i32, i32, i32, i32 }
%struct.hns_roce_v2_mpt_entry = type { i32, i32, i8*, i8*, i32, i32, i32 }

@V2_MPT_BYTE_4_MPT_ST_M = common dso_local global i32 0, align 4
@V2_MPT_BYTE_4_MPT_ST_S = common dso_local global i32 0, align 4
@V2_MPT_ST_FREE = common dso_local global i32 0, align 4
@V2_MPT_BYTE_4_PBL_HOP_NUM_M = common dso_local global i32 0, align 4
@V2_MPT_BYTE_4_PBL_HOP_NUM_S = common dso_local global i32 0, align 4
@V2_MPT_BYTE_4_PBL_BA_PG_SZ_M = common dso_local global i32 0, align 4
@V2_MPT_BYTE_4_PBL_BA_PG_SZ_S = common dso_local global i32 0, align 4
@PG_SHIFT_OFFSET = common dso_local global i32 0, align 4
@V2_MPT_BYTE_4_PD_M = common dso_local global i32 0, align 4
@V2_MPT_BYTE_4_PD_S = common dso_local global i32 0, align 4
@V2_MPT_BYTE_8_RA_EN_S = common dso_local global i32 0, align 4
@V2_MPT_BYTE_8_R_INV_EN_S = common dso_local global i32 0, align 4
@V2_MPT_BYTE_8_L_INV_EN_S = common dso_local global i32 0, align 4
@V2_MPT_BYTE_12_FRE_S = common dso_local global i32 0, align 4
@V2_MPT_BYTE_12_PA_S = common dso_local global i32 0, align 4
@V2_MPT_BYTE_12_MR_MW_S = common dso_local global i32 0, align 4
@V2_MPT_BYTE_12_BPD_S = common dso_local global i32 0, align 4
@V2_MPT_BYTE_48_PBL_BA_H_M = common dso_local global i32 0, align 4
@V2_MPT_BYTE_48_PBL_BA_H_S = common dso_local global i32 0, align 4
@V2_MPT_BYTE_64_PBL_BUF_PG_SZ_M = common dso_local global i32 0, align 4
@V2_MPT_BYTE_64_PBL_BUF_PG_SZ_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.hns_roce_mr*)* @hns_roce_v2_frmr_write_mtpt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v2_frmr_write_mtpt(i8* %0, %struct.hns_roce_mr* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hns_roce_mr*, align 8
  %5 = alloca %struct.hns_roce_v2_mpt_entry*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.hns_roce_mr* %1, %struct.hns_roce_mr** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.hns_roce_v2_mpt_entry*
  store %struct.hns_roce_v2_mpt_entry* %7, %struct.hns_roce_v2_mpt_entry** %5, align 8
  %8 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %5, align 8
  %9 = call i32 @memset(%struct.hns_roce_v2_mpt_entry* %8, i32 0, i32 40)
  %10 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %5, align 8
  %11 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @V2_MPT_BYTE_4_MPT_ST_M, align 4
  %14 = load i32, i32* @V2_MPT_BYTE_4_MPT_ST_S, align 4
  %15 = load i32, i32* @V2_MPT_ST_FREE, align 4
  %16 = call i32 @roce_set_field(i32 %12, i32 %13, i32 %14, i32 %15)
  %17 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %5, align 8
  %18 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @V2_MPT_BYTE_4_PBL_HOP_NUM_M, align 4
  %21 = load i32, i32* @V2_MPT_BYTE_4_PBL_HOP_NUM_S, align 4
  %22 = call i32 @roce_set_field(i32 %19, i32 %20, i32 %21, i32 1)
  %23 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %5, align 8
  %24 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @V2_MPT_BYTE_4_PBL_BA_PG_SZ_M, align 4
  %27 = load i32, i32* @V2_MPT_BYTE_4_PBL_BA_PG_SZ_S, align 4
  %28 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %29 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PG_SHIFT_OFFSET, align 4
  %32 = add nsw i32 %30, %31
  %33 = call i32 @roce_set_field(i32 %25, i32 %26, i32 %27, i32 %32)
  %34 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %5, align 8
  %35 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @V2_MPT_BYTE_4_PD_M, align 4
  %38 = load i32, i32* @V2_MPT_BYTE_4_PD_S, align 4
  %39 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %40 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @roce_set_field(i32 %36, i32 %37, i32 %38, i32 %41)
  %43 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %5, align 8
  %44 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @V2_MPT_BYTE_8_RA_EN_S, align 4
  %47 = call i32 @roce_set_bit(i32 %45, i32 %46, i32 1)
  %48 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %5, align 8
  %49 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @V2_MPT_BYTE_8_R_INV_EN_S, align 4
  %52 = call i32 @roce_set_bit(i32 %50, i32 %51, i32 1)
  %53 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %5, align 8
  %54 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @V2_MPT_BYTE_8_L_INV_EN_S, align 4
  %57 = call i32 @roce_set_bit(i32 %55, i32 %56, i32 1)
  %58 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %5, align 8
  %59 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @V2_MPT_BYTE_12_FRE_S, align 4
  %62 = call i32 @roce_set_bit(i32 %60, i32 %61, i32 1)
  %63 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %5, align 8
  %64 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @V2_MPT_BYTE_12_PA_S, align 4
  %67 = call i32 @roce_set_bit(i32 %65, i32 %66, i32 0)
  %68 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %5, align 8
  %69 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @V2_MPT_BYTE_12_MR_MW_S, align 4
  %72 = call i32 @roce_set_bit(i32 %70, i32 %71, i32 0)
  %73 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %5, align 8
  %74 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @V2_MPT_BYTE_12_BPD_S, align 4
  %77 = call i32 @roce_set_bit(i32 %75, i32 %76, i32 1)
  %78 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %79 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @cpu_to_le32(i32 %80)
  %82 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %5, align 8
  %83 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %82, i32 0, i32 3
  store i8* %81, i8** %83, align 8
  %84 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %85 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = ashr i32 %86, 3
  %88 = call i32 @lower_32_bits(i32 %87)
  %89 = call i8* @cpu_to_le32(i32 %88)
  %90 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %5, align 8
  %91 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  %92 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %5, align 8
  %93 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @V2_MPT_BYTE_48_PBL_BA_H_M, align 4
  %96 = load i32, i32* @V2_MPT_BYTE_48_PBL_BA_H_S, align 4
  %97 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %98 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = ashr i32 %99, 3
  %101 = call i32 @upper_32_bits(i32 %100)
  %102 = call i32 @roce_set_field(i32 %94, i32 %95, i32 %96, i32 %101)
  %103 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %5, align 8
  %104 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @V2_MPT_BYTE_64_PBL_BUF_PG_SZ_M, align 4
  %107 = load i32, i32* @V2_MPT_BYTE_64_PBL_BUF_PG_SZ_S, align 4
  %108 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %109 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @PG_SHIFT_OFFSET, align 4
  %112 = add nsw i32 %110, %111
  %113 = call i32 @roce_set_field(i32 %105, i32 %106, i32 %107, i32 %112)
  ret i32 0
}

declare dso_local i32 @memset(%struct.hns_roce_v2_mpt_entry*, i32, i32) #1

declare dso_local i32 @roce_set_field(i32, i32, i32, i32) #1

declare dso_local i32 @roce_set_bit(i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
