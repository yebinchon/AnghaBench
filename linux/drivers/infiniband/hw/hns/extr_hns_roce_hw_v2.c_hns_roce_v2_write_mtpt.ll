; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_write_mtpt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_write_mtpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_mr = type { i64, i64, i64, i32, i64, i32, i32, i32 }
%struct.hns_roce_v2_mpt_entry = type { i8*, i8*, i8*, i8*, i8*, i32, i32, i32 }

@V2_MPT_BYTE_4_MPT_ST_M = common dso_local global i32 0, align 4
@V2_MPT_BYTE_4_MPT_ST_S = common dso_local global i32 0, align 4
@V2_MPT_ST_VALID = common dso_local global i64 0, align 8
@V2_MPT_BYTE_4_PBL_HOP_NUM_M = common dso_local global i32 0, align 4
@V2_MPT_BYTE_4_PBL_HOP_NUM_S = common dso_local global i32 0, align 4
@HNS_ROCE_HOP_NUM_0 = common dso_local global i64 0, align 8
@V2_MPT_BYTE_4_PBL_BA_PG_SZ_M = common dso_local global i32 0, align 4
@V2_MPT_BYTE_4_PBL_BA_PG_SZ_S = common dso_local global i32 0, align 4
@PG_SHIFT_OFFSET = common dso_local global i64 0, align 8
@V2_MPT_BYTE_4_PD_M = common dso_local global i32 0, align 4
@V2_MPT_BYTE_4_PD_S = common dso_local global i32 0, align 4
@V2_MPT_BYTE_8_RA_EN_S = common dso_local global i32 0, align 4
@V2_MPT_BYTE_8_R_INV_EN_S = common dso_local global i32 0, align 4
@V2_MPT_BYTE_8_L_INV_EN_S = common dso_local global i32 0, align 4
@V2_MPT_BYTE_8_BIND_EN_S = common dso_local global i32 0, align 4
@IB_ACCESS_MW_BIND = common dso_local global i32 0, align 4
@V2_MPT_BYTE_8_ATOMIC_EN_S = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_ATOMIC = common dso_local global i32 0, align 4
@V2_MPT_BYTE_8_RR_EN_S = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@V2_MPT_BYTE_8_RW_EN_S = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@V2_MPT_BYTE_8_LW_EN_S = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@V2_MPT_BYTE_12_PA_S = common dso_local global i32 0, align 4
@MR_TYPE_MR = common dso_local global i64 0, align 8
@V2_MPT_BYTE_12_INNER_PA_VLD_S = common dso_local global i32 0, align 4
@MR_TYPE_DMA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.hns_roce_mr*, i64)* @hns_roce_v2_write_mtpt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v2_write_mtpt(i8* %0, %struct.hns_roce_mr* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hns_roce_mr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hns_roce_v2_mpt_entry*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.hns_roce_mr* %1, %struct.hns_roce_mr** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.hns_roce_v2_mpt_entry*
  store %struct.hns_roce_v2_mpt_entry* %11, %struct.hns_roce_v2_mpt_entry** %8, align 8
  %12 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %8, align 8
  %13 = call i32 @memset(%struct.hns_roce_v2_mpt_entry* %12, i32 0, i32 56)
  %14 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %8, align 8
  %15 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @V2_MPT_BYTE_4_MPT_ST_M, align 4
  %18 = load i32, i32* @V2_MPT_BYTE_4_MPT_ST_S, align 4
  %19 = load i64, i64* @V2_MPT_ST_VALID, align 8
  %20 = call i32 @roce_set_field(i32 %16, i32 %17, i32 %18, i64 %19)
  %21 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %8, align 8
  %22 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @V2_MPT_BYTE_4_PBL_HOP_NUM_M, align 4
  %25 = load i32, i32* @V2_MPT_BYTE_4_PBL_HOP_NUM_S, align 4
  %26 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %6, align 8
  %27 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @HNS_ROCE_HOP_NUM_0, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  br label %36

32:                                               ; preds = %3
  %33 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %6, align 8
  %34 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  br label %36

36:                                               ; preds = %32, %31
  %37 = phi i64 [ 0, %31 ], [ %35, %32 ]
  %38 = call i32 @roce_set_field(i32 %23, i32 %24, i32 %25, i64 %37)
  %39 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %8, align 8
  %40 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @V2_MPT_BYTE_4_PBL_BA_PG_SZ_M, align 4
  %43 = load i32, i32* @V2_MPT_BYTE_4_PBL_BA_PG_SZ_S, align 4
  %44 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %6, align 8
  %45 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PG_SHIFT_OFFSET, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @roce_set_field(i32 %41, i32 %42, i32 %43, i64 %48)
  %50 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %8, align 8
  %51 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @V2_MPT_BYTE_4_PD_M, align 4
  %54 = load i32, i32* @V2_MPT_BYTE_4_PD_S, align 4
  %55 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %6, align 8
  %56 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @roce_set_field(i32 %52, i32 %53, i32 %54, i64 %57)
  %59 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %8, align 8
  %60 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @V2_MPT_BYTE_8_RA_EN_S, align 4
  %63 = call i32 @roce_set_bit(i32 %61, i32 %62, i32 0)
  %64 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %8, align 8
  %65 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @V2_MPT_BYTE_8_R_INV_EN_S, align 4
  %68 = call i32 @roce_set_bit(i32 %66, i32 %67, i32 0)
  %69 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %8, align 8
  %70 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @V2_MPT_BYTE_8_L_INV_EN_S, align 4
  %73 = call i32 @roce_set_bit(i32 %71, i32 %72, i32 1)
  %74 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %8, align 8
  %75 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @V2_MPT_BYTE_8_BIND_EN_S, align 4
  %78 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %6, align 8
  %79 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @IB_ACCESS_MW_BIND, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 1, i32 0
  %86 = call i32 @roce_set_bit(i32 %76, i32 %77, i32 %85)
  %87 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %8, align 8
  %88 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @V2_MPT_BYTE_8_ATOMIC_EN_S, align 4
  %91 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %6, align 8
  %92 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @IB_ACCESS_REMOTE_ATOMIC, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 1, i32 0
  %99 = call i32 @roce_set_bit(i32 %89, i32 %90, i32 %98)
  %100 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %8, align 8
  %101 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @V2_MPT_BYTE_8_RR_EN_S, align 4
  %104 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %6, align 8
  %105 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 1, i32 0
  %112 = call i32 @roce_set_bit(i32 %102, i32 %103, i32 %111)
  %113 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %8, align 8
  %114 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @V2_MPT_BYTE_8_RW_EN_S, align 4
  %117 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %6, align 8
  %118 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i32 1, i32 0
  %125 = call i32 @roce_set_bit(i32 %115, i32 %116, i32 %124)
  %126 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %8, align 8
  %127 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @V2_MPT_BYTE_8_LW_EN_S, align 4
  %130 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %6, align 8
  %131 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i32 1, i32 0
  %138 = call i32 @roce_set_bit(i32 %128, i32 %129, i32 %137)
  %139 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %8, align 8
  %140 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @V2_MPT_BYTE_12_PA_S, align 4
  %143 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %6, align 8
  %144 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @MR_TYPE_MR, align 8
  %147 = icmp eq i64 %145, %146
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i32 0, i32 1
  %150 = call i32 @roce_set_bit(i32 %141, i32 %142, i32 %149)
  %151 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %8, align 8
  %152 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @V2_MPT_BYTE_12_INNER_PA_VLD_S, align 4
  %155 = call i32 @roce_set_bit(i32 %153, i32 %154, i32 1)
  %156 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %6, align 8
  %157 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %156, i32 0, i32 7
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @lower_32_bits(i32 %158)
  %160 = call i8* @cpu_to_le32(i32 %159)
  %161 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %8, align 8
  %162 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %161, i32 0, i32 4
  store i8* %160, i8** %162, align 8
  %163 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %6, align 8
  %164 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @upper_32_bits(i32 %165)
  %167 = call i8* @cpu_to_le32(i32 %166)
  %168 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %8, align 8
  %169 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %168, i32 0, i32 3
  store i8* %167, i8** %169, align 8
  %170 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %6, align 8
  %171 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %170, i32 0, i32 6
  %172 = load i32, i32* %171, align 4
  %173 = call i8* @cpu_to_le32(i32 %172)
  %174 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %8, align 8
  %175 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %174, i32 0, i32 2
  store i8* %173, i8** %175, align 8
  %176 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %6, align 8
  %177 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @lower_32_bits(i32 %178)
  %180 = call i8* @cpu_to_le32(i32 %179)
  %181 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %8, align 8
  %182 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %181, i32 0, i32 1
  store i8* %180, i8** %182, align 8
  %183 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %6, align 8
  %184 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @upper_32_bits(i32 %185)
  %187 = call i8* @cpu_to_le32(i32 %186)
  %188 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %8, align 8
  %189 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %188, i32 0, i32 0
  store i8* %187, i8** %189, align 8
  %190 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %6, align 8
  %191 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %190, i32 0, i32 4
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @MR_TYPE_DMA, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %36
  store i32 0, i32* %4, align 4
  br label %201

196:                                              ; preds = %36
  %197 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %8, align 8
  %198 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %6, align 8
  %199 = call i32 @set_mtpt_pbl(%struct.hns_roce_v2_mpt_entry* %197, %struct.hns_roce_mr* %198)
  store i32 %199, i32* %9, align 4
  %200 = load i32, i32* %9, align 4
  store i32 %200, i32* %4, align 4
  br label %201

201:                                              ; preds = %196, %195
  %202 = load i32, i32* %4, align 4
  ret i32 %202
}

declare dso_local i32 @memset(%struct.hns_roce_v2_mpt_entry*, i32, i32) #1

declare dso_local i32 @roce_set_field(i32, i32, i32, i64) #1

declare dso_local i32 @roce_set_bit(i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @set_mtpt_pbl(%struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
