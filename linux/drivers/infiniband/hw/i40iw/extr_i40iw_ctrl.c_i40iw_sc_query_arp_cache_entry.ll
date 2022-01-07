; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_query_arp_cache_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_query_arp_cache_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_cqp = type { i32, i32 }

@I40IW_ERR_RING_FULL = common dso_local global i32 0, align 4
@I40IW_CQP_OP_MANAGE_ARP = common dso_local global i32 0, align 4
@I40IW_CQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_MAT_QUERY = common dso_local global i32 0, align 4
@I40IW_CQPSQ_WQEVALID = common dso_local global i32 0, align 4
@I40IW_DEBUG_WQE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"QUERY_ARP_CACHE_ENTRY WQE\00", align 1
@I40IW_CQP_WQE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_cqp*, i32, i32, i32)* @i40iw_sc_query_arp_cache_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_sc_query_arp_cache_entry(%struct.i40iw_sc_cqp* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_sc_cqp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.i40iw_sc_cqp* %0, %struct.i40iw_sc_cqp** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp* %12, i32 %13)
  store i32* %14, i32** %10, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @I40IW_ERR_RING_FULL, align 4
  store i32 %18, i32* %5, align 4
  br label %51

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @I40IW_CQP_OP_MANAGE_ARP, align 4
  %22 = load i32, i32* @I40IW_CQPSQ_OPCODE, align 4
  %23 = call i32 @LS_64(i32 %21, i32 %22)
  %24 = or i32 %20, %23
  %25 = load i32, i32* @I40IW_CQPSQ_MAT_QUERY, align 4
  %26 = call i32 @LS_64(i32 1, i32 %25)
  %27 = or i32 %24, %26
  %28 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %6, align 8
  %29 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @I40IW_CQPSQ_WQEVALID, align 4
  %32 = call i32 @LS_64(i32 %30, i32 %31)
  %33 = or i32 %27, %32
  store i32 %33, i32* %11, align 4
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @i40iw_insert_wqe_hdr(i32* %34, i32 %35)
  %37 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %6, align 8
  %38 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @I40IW_DEBUG_WQE, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = load i32, i32* @I40IW_CQP_WQE_SIZE, align 4
  %43 = mul nsw i32 %42, 8
  %44 = call i32 @i40iw_debug_buf(i32 %39, i32 %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* %41, i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %19
  %48 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %6, align 8
  %49 = call i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp* %48)
  br label %50

50:                                               ; preds = %47, %19
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %17
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp*, i32) #1

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
