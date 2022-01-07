; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_set_frmr_seg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_set_frmr_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_v2_rc_send_wqe = type { i32, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.hns_roce_wqe_frmr_seg = type { i32, i8* }
%struct.ib_reg_wr = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.hns_roce_mr = type { i32, i32, i64 }

@V2_RC_FRMR_WQE_BYTE_4_BIND_EN_S = common dso_local global i32 0, align 4
@IB_ACCESS_MW_BIND = common dso_local global i32 0, align 4
@V2_RC_FRMR_WQE_BYTE_4_ATOMIC_S = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_ATOMIC = common dso_local global i32 0, align 4
@V2_RC_FRMR_WQE_BYTE_4_RR_S = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@V2_RC_FRMR_WQE_BYTE_4_RW_S = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@V2_RC_FRMR_WQE_BYTE_4_LW_S = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@V2_RC_FRMR_WQE_BYTE_40_PBL_BUF_PG_SZ_M = common dso_local global i32 0, align 4
@V2_RC_FRMR_WQE_BYTE_40_PBL_BUF_PG_SZ_S = common dso_local global i32 0, align 4
@PG_SHIFT_OFFSET = common dso_local global i64 0, align 8
@V2_RC_FRMR_WQE_BYTE_40_BLK_MODE_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_wqe_frmr_seg*, %struct.ib_reg_wr*)* @set_frmr_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_frmr_seg(%struct.hns_roce_v2_rc_send_wqe* %0, %struct.hns_roce_wqe_frmr_seg* %1, %struct.ib_reg_wr* %2) #0 {
  %4 = alloca %struct.hns_roce_v2_rc_send_wqe*, align 8
  %5 = alloca %struct.hns_roce_wqe_frmr_seg*, align 8
  %6 = alloca %struct.ib_reg_wr*, align 8
  %7 = alloca %struct.hns_roce_mr*, align 8
  store %struct.hns_roce_v2_rc_send_wqe* %0, %struct.hns_roce_v2_rc_send_wqe** %4, align 8
  store %struct.hns_roce_wqe_frmr_seg* %1, %struct.hns_roce_wqe_frmr_seg** %5, align 8
  store %struct.ib_reg_wr* %2, %struct.ib_reg_wr** %6, align 8
  %8 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %6, align 8
  %9 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = call %struct.hns_roce_mr* @to_hr_mr(%struct.TYPE_2__* %10)
  store %struct.hns_roce_mr* %11, %struct.hns_roce_mr** %7, align 8
  %12 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %4, align 8
  %13 = getelementptr inbounds %struct.hns_roce_v2_rc_send_wqe, %struct.hns_roce_v2_rc_send_wqe* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @V2_RC_FRMR_WQE_BYTE_4_BIND_EN_S, align 4
  %16 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %6, align 8
  %17 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @IB_ACCESS_MW_BIND, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  %24 = call i32 @roce_set_bit(i32 %14, i32 %15, i32 %23)
  %25 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %4, align 8
  %26 = getelementptr inbounds %struct.hns_roce_v2_rc_send_wqe, %struct.hns_roce_v2_rc_send_wqe* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @V2_RC_FRMR_WQE_BYTE_4_ATOMIC_S, align 4
  %29 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %6, align 8
  %30 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IB_ACCESS_REMOTE_ATOMIC, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 0
  %37 = call i32 @roce_set_bit(i32 %27, i32 %28, i32 %36)
  %38 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %4, align 8
  %39 = getelementptr inbounds %struct.hns_roce_v2_rc_send_wqe, %struct.hns_roce_v2_rc_send_wqe* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @V2_RC_FRMR_WQE_BYTE_4_RR_S, align 4
  %42 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %6, align 8
  %43 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 1, i32 0
  %50 = call i32 @roce_set_bit(i32 %40, i32 %41, i32 %49)
  %51 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %4, align 8
  %52 = getelementptr inbounds %struct.hns_roce_v2_rc_send_wqe, %struct.hns_roce_v2_rc_send_wqe* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @V2_RC_FRMR_WQE_BYTE_4_RW_S, align 4
  %55 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %6, align 8
  %56 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 1, i32 0
  %63 = call i32 @roce_set_bit(i32 %53, i32 %54, i32 %62)
  %64 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %4, align 8
  %65 = getelementptr inbounds %struct.hns_roce_v2_rc_send_wqe, %struct.hns_roce_v2_rc_send_wqe* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @V2_RC_FRMR_WQE_BYTE_4_LW_S, align 4
  %68 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %6, align 8
  %69 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 1, i32 0
  %76 = call i32 @roce_set_bit(i32 %66, i32 %67, i32 %75)
  %77 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %7, align 8
  %78 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i8* @cpu_to_le32(i32 %79)
  %81 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %4, align 8
  %82 = getelementptr inbounds %struct.hns_roce_v2_rc_send_wqe, %struct.hns_roce_v2_rc_send_wqe* %81, i32 0, i32 5
  store i8* %80, i8** %82, align 8
  %83 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %7, align 8
  %84 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = ashr i32 %85, 32
  %87 = call i8* @cpu_to_le32(i32 %86)
  %88 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %4, align 8
  %89 = getelementptr inbounds %struct.hns_roce_v2_rc_send_wqe, %struct.hns_roce_v2_rc_send_wqe* %88, i32 0, i32 4
  store i8* %87, i8** %89, align 8
  %90 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %6, align 8
  %91 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %90, i32 0, i32 2
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @cpu_to_le32(i32 %94)
  %96 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %4, align 8
  %97 = getelementptr inbounds %struct.hns_roce_v2_rc_send_wqe, %struct.hns_roce_v2_rc_send_wqe* %96, i32 0, i32 3
  store i8* %95, i8** %97, align 8
  %98 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %6, align 8
  %99 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %98, i32 0, i32 2
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = ashr i32 %102, 32
  %104 = call i8* @cpu_to_le32(i32 %103)
  %105 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %4, align 8
  %106 = getelementptr inbounds %struct.hns_roce_v2_rc_send_wqe, %struct.hns_roce_v2_rc_send_wqe* %105, i32 0, i32 2
  store i8* %104, i8** %106, align 8
  %107 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %6, align 8
  %108 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i8* @cpu_to_le32(i32 %109)
  %111 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %4, align 8
  %112 = getelementptr inbounds %struct.hns_roce_v2_rc_send_wqe, %struct.hns_roce_v2_rc_send_wqe* %111, i32 0, i32 1
  store i8* %110, i8** %112, align 8
  %113 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %6, align 8
  %114 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %113, i32 0, i32 2
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @cpu_to_le64(i32 %117)
  %119 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %4, align 8
  %120 = getelementptr inbounds %struct.hns_roce_v2_rc_send_wqe, %struct.hns_roce_v2_rc_send_wqe* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %7, align 8
  %122 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @cpu_to_le32(i32 %123)
  %125 = load %struct.hns_roce_wqe_frmr_seg*, %struct.hns_roce_wqe_frmr_seg** %5, align 8
  %126 = getelementptr inbounds %struct.hns_roce_wqe_frmr_seg, %struct.hns_roce_wqe_frmr_seg* %125, i32 0, i32 1
  store i8* %124, i8** %126, align 8
  %127 = load %struct.hns_roce_wqe_frmr_seg*, %struct.hns_roce_wqe_frmr_seg** %5, align 8
  %128 = getelementptr inbounds %struct.hns_roce_wqe_frmr_seg, %struct.hns_roce_wqe_frmr_seg* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @V2_RC_FRMR_WQE_BYTE_40_PBL_BUF_PG_SZ_M, align 4
  %131 = load i32, i32* @V2_RC_FRMR_WQE_BYTE_40_PBL_BUF_PG_SZ_S, align 4
  %132 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %7, align 8
  %133 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @PG_SHIFT_OFFSET, align 8
  %136 = add nsw i64 %134, %135
  %137 = call i32 @roce_set_field(i32 %129, i32 %130, i32 %131, i64 %136)
  %138 = load %struct.hns_roce_wqe_frmr_seg*, %struct.hns_roce_wqe_frmr_seg** %5, align 8
  %139 = getelementptr inbounds %struct.hns_roce_wqe_frmr_seg, %struct.hns_roce_wqe_frmr_seg* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @V2_RC_FRMR_WQE_BYTE_40_BLK_MODE_S, align 4
  %142 = call i32 @roce_set_bit(i32 %140, i32 %141, i32 0)
  ret void
}

declare dso_local %struct.hns_roce_mr* @to_hr_mr(%struct.TYPE_2__*) #1

declare dso_local i32 @roce_set_bit(i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @roce_set_field(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
