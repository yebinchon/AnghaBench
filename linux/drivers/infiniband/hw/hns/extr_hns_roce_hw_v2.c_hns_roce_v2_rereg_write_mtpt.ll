; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_rereg_write_mtpt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_rereg_write_mtpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32 }
%struct.hns_roce_mr = type { i8*, i8*, i32 }
%struct.hns_roce_v2_mpt_entry = type { i8*, i8*, i8*, i8*, i32, i32 }

@V2_MPT_BYTE_4_MPT_ST_M = common dso_local global i32 0, align 4
@V2_MPT_BYTE_4_MPT_ST_S = common dso_local global i32 0, align 4
@V2_MPT_ST_VALID = common dso_local global i32 0, align 4
@IB_MR_REREG_PD = common dso_local global i32 0, align 4
@V2_MPT_BYTE_4_PD_M = common dso_local global i32 0, align 4
@V2_MPT_BYTE_4_PD_S = common dso_local global i32 0, align 4
@IB_MR_REREG_ACCESS = common dso_local global i32 0, align 4
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
@IB_MR_REREG_TRANS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, %struct.hns_roce_mr*, i32, i32, i32, i8*, i8*, i8*)* @hns_roce_v2_rereg_write_mtpt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v2_rereg_write_mtpt(%struct.hns_roce_dev* %0, %struct.hns_roce_mr* %1, i32 %2, i32 %3, i32 %4, i8* %5, i8* %6, i8* %7) #0 {
  %9 = alloca %struct.hns_roce_dev*, align 8
  %10 = alloca %struct.hns_roce_mr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.hns_roce_v2_mpt_entry*, align 8
  %18 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %9, align 8
  store %struct.hns_roce_mr* %1, %struct.hns_roce_mr** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i8* %7, i8** %16, align 8
  %19 = load i8*, i8** %16, align 8
  %20 = bitcast i8* %19 to %struct.hns_roce_v2_mpt_entry*
  store %struct.hns_roce_v2_mpt_entry* %20, %struct.hns_roce_v2_mpt_entry** %17, align 8
  store i32 0, i32* %18, align 4
  %21 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %17, align 8
  %22 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @V2_MPT_BYTE_4_MPT_ST_M, align 4
  %25 = load i32, i32* @V2_MPT_BYTE_4_MPT_ST_S, align 4
  %26 = load i32, i32* @V2_MPT_ST_VALID, align 4
  %27 = call i32 @roce_set_field(i32 %23, i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @IB_MR_REREG_PD, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %8
  %33 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %17, align 8
  %34 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @V2_MPT_BYTE_4_PD_M, align 4
  %37 = load i32, i32* @V2_MPT_BYTE_4_PD_S, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @roce_set_field(i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %10, align 8
  %42 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %32, %8
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @IB_MR_REREG_ACCESS, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %104

48:                                               ; preds = %43
  %49 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %17, align 8
  %50 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @V2_MPT_BYTE_8_BIND_EN_S, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @IB_ACCESS_MW_BIND, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 1, i32 0
  %59 = call i32 @roce_set_bit(i32 %51, i32 %52, i32 %58)
  %60 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %17, align 8
  %61 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @V2_MPT_BYTE_8_ATOMIC_EN_S, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* @IB_ACCESS_REMOTE_ATOMIC, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 1, i32 0
  %70 = call i32 @roce_set_bit(i32 %62, i32 %63, i32 %69)
  %71 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %17, align 8
  %72 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @V2_MPT_BYTE_8_RR_EN_S, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 1, i32 0
  %81 = call i32 @roce_set_bit(i32 %73, i32 %74, i32 %80)
  %82 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %17, align 8
  %83 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @V2_MPT_BYTE_8_RW_EN_S, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 1, i32 0
  %92 = call i32 @roce_set_bit(i32 %84, i32 %85, i32 %91)
  %93 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %17, align 8
  %94 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @V2_MPT_BYTE_8_LW_EN_S, align 4
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 1, i32 0
  %103 = call i32 @roce_set_bit(i32 %95, i32 %96, i32 %102)
  br label %104

104:                                              ; preds = %48, %43
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @IB_MR_REREG_TRANS, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %139

109:                                              ; preds = %104
  %110 = load i8*, i8** %14, align 8
  %111 = call i32 @lower_32_bits(i8* %110)
  %112 = call i8* @cpu_to_le32(i32 %111)
  %113 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %17, align 8
  %114 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %113, i32 0, i32 3
  store i8* %112, i8** %114, align 8
  %115 = load i8*, i8** %14, align 8
  %116 = call i32 @upper_32_bits(i8* %115)
  %117 = call i8* @cpu_to_le32(i32 %116)
  %118 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %17, align 8
  %119 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %118, i32 0, i32 2
  store i8* %117, i8** %119, align 8
  %120 = load i8*, i8** %15, align 8
  %121 = call i32 @lower_32_bits(i8* %120)
  %122 = call i8* @cpu_to_le32(i32 %121)
  %123 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %17, align 8
  %124 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %123, i32 0, i32 1
  store i8* %122, i8** %124, align 8
  %125 = load i8*, i8** %15, align 8
  %126 = call i32 @upper_32_bits(i8* %125)
  %127 = call i8* @cpu_to_le32(i32 %126)
  %128 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %17, align 8
  %129 = getelementptr inbounds %struct.hns_roce_v2_mpt_entry, %struct.hns_roce_v2_mpt_entry* %128, i32 0, i32 0
  store i8* %127, i8** %129, align 8
  %130 = load i8*, i8** %14, align 8
  %131 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %10, align 8
  %132 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %131, i32 0, i32 1
  store i8* %130, i8** %132, align 8
  %133 = load i8*, i8** %15, align 8
  %134 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %10, align 8
  %135 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %134, i32 0, i32 0
  store i8* %133, i8** %135, align 8
  %136 = load %struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_v2_mpt_entry** %17, align 8
  %137 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %10, align 8
  %138 = call i32 @set_mtpt_pbl(%struct.hns_roce_v2_mpt_entry* %136, %struct.hns_roce_mr* %137)
  store i32 %138, i32* %18, align 4
  br label %139

139:                                              ; preds = %109, %104
  %140 = load i32, i32* %18, align 4
  ret i32 %140
}

declare dso_local i32 @roce_set_field(i32, i32, i32, i32) #1

declare dso_local i32 @roce_set_bit(i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @lower_32_bits(i8*) #1

declare dso_local i32 @upper_32_bits(i8*) #1

declare dso_local i32 @set_mtpt_pbl(%struct.hns_roce_v2_mpt_entry*, %struct.hns_roce_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
