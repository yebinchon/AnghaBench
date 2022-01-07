; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_add_local_mac_ipaddr_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_add_local_mac_ipaddr_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_cqp = type { i32, i32 }
%struct.i40iw_local_mac_ipaddr_entry_info = type { i32*, i32 }

@I40IW_ERR_RING_FULL = common dso_local global i32 0, align 4
@I40IW_CQPSQ_MLIPA_IPTABLEIDX = common dso_local global i32 0, align 4
@I40IW_CQP_OP_MANAGE_LOC_MAC_IP_TABLE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_WQEVALID = common dso_local global i32 0, align 4
@I40IW_DEBUG_WQE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ADD_LOCAL_MAC_IPADDR WQE\00", align 1
@I40IW_CQP_WQE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_cqp*, %struct.i40iw_local_mac_ipaddr_entry_info*, i32, i32)* @i40iw_sc_add_local_mac_ipaddr_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_sc_add_local_mac_ipaddr_entry(%struct.i40iw_sc_cqp* %0, %struct.i40iw_local_mac_ipaddr_entry_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_sc_cqp*, align 8
  %7 = alloca %struct.i40iw_local_mac_ipaddr_entry_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i40iw_sc_cqp* %0, %struct.i40iw_sc_cqp** %6, align 8
  store %struct.i40iw_local_mac_ipaddr_entry_info* %1, %struct.i40iw_local_mac_ipaddr_entry_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %6, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp* %13, i32 %14)
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @I40IW_ERR_RING_FULL, align 4
  store i32 %19, i32* %5, align 4
  br label %96

20:                                               ; preds = %4
  %21 = load %struct.i40iw_local_mac_ipaddr_entry_info*, %struct.i40iw_local_mac_ipaddr_entry_info** %7, align 8
  %22 = getelementptr inbounds %struct.i40iw_local_mac_ipaddr_entry_info, %struct.i40iw_local_mac_ipaddr_entry_info* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.i40iw_local_mac_ipaddr_entry_info*, %struct.i40iw_local_mac_ipaddr_entry_info** %7, align 8
  %27 = getelementptr inbounds %struct.i40iw_local_mac_ipaddr_entry_info, %struct.i40iw_local_mac_ipaddr_entry_info* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @LS_64_1(i32 %30, i32 8)
  %32 = or i32 %25, %31
  %33 = load %struct.i40iw_local_mac_ipaddr_entry_info*, %struct.i40iw_local_mac_ipaddr_entry_info** %7, align 8
  %34 = getelementptr inbounds %struct.i40iw_local_mac_ipaddr_entry_info, %struct.i40iw_local_mac_ipaddr_entry_info* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @LS_64_1(i32 %37, i32 16)
  %39 = or i32 %32, %38
  %40 = load %struct.i40iw_local_mac_ipaddr_entry_info*, %struct.i40iw_local_mac_ipaddr_entry_info** %7, align 8
  %41 = getelementptr inbounds %struct.i40iw_local_mac_ipaddr_entry_info, %struct.i40iw_local_mac_ipaddr_entry_info* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @LS_64_1(i32 %44, i32 24)
  %46 = or i32 %39, %45
  %47 = load %struct.i40iw_local_mac_ipaddr_entry_info*, %struct.i40iw_local_mac_ipaddr_entry_info** %7, align 8
  %48 = getelementptr inbounds %struct.i40iw_local_mac_ipaddr_entry_info, %struct.i40iw_local_mac_ipaddr_entry_info* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @LS_64_1(i32 %51, i32 32)
  %53 = or i32 %46, %52
  %54 = load %struct.i40iw_local_mac_ipaddr_entry_info*, %struct.i40iw_local_mac_ipaddr_entry_info** %7, align 8
  %55 = getelementptr inbounds %struct.i40iw_local_mac_ipaddr_entry_info, %struct.i40iw_local_mac_ipaddr_entry_info* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @LS_64_1(i32 %58, i32 40)
  %60 = or i32 %53, %59
  store i32 %60, i32* %11, align 4
  %61 = load i32*, i32** %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @set_64bit_val(i32* %61, i32 32, i32 %62)
  %64 = load %struct.i40iw_local_mac_ipaddr_entry_info*, %struct.i40iw_local_mac_ipaddr_entry_info** %7, align 8
  %65 = getelementptr inbounds %struct.i40iw_local_mac_ipaddr_entry_info, %struct.i40iw_local_mac_ipaddr_entry_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @I40IW_CQPSQ_MLIPA_IPTABLEIDX, align 4
  %68 = call i32 @LS_64(i32 %66, i32 %67)
  %69 = load i32, i32* @I40IW_CQP_OP_MANAGE_LOC_MAC_IP_TABLE, align 4
  %70 = load i32, i32* @I40IW_CQPSQ_OPCODE, align 4
  %71 = call i32 @LS_64(i32 %69, i32 %70)
  %72 = or i32 %68, %71
  %73 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %6, align 8
  %74 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @I40IW_CQPSQ_WQEVALID, align 4
  %77 = call i32 @LS_64(i32 %75, i32 %76)
  %78 = or i32 %72, %77
  store i32 %78, i32* %12, align 4
  %79 = load i32*, i32** %10, align 8
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @i40iw_insert_wqe_hdr(i32* %79, i32 %80)
  %82 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %6, align 8
  %83 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @I40IW_DEBUG_WQE, align 4
  %86 = load i32*, i32** %10, align 8
  %87 = load i32, i32* @I40IW_CQP_WQE_SIZE, align 4
  %88 = mul nsw i32 %87, 8
  %89 = call i32 @i40iw_debug_buf(i32 %84, i32 %85, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %86, i32 %88)
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %20
  %93 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %6, align 8
  %94 = call i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp* %93)
  br label %95

95:                                               ; preds = %92, %20
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %95, %18
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp*, i32) #1

declare dso_local i32 @LS_64_1(i32, i32) #1

declare dso_local i32 @set_64bit_val(i32*, i32, i32) #1

declare dso_local i32 @LS_64(i32, i32) #1

declare dso_local i32 @i40iw_insert_wqe_hdr(i32*, i32) #1

declare dso_local i32 @i40iw_debug_buf(i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
