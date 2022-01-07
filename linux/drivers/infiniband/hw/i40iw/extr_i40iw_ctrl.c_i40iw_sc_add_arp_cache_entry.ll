; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_add_arp_cache_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_add_arp_cache_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_cqp = type { i32, i32 }
%struct.i40iw_add_arp_cache_entry_info = type { i32, i32*, i32, i64 }

@I40IW_ERR_RING_FULL = common dso_local global i32 0, align 4
@I40IW_CQP_OP_MANAGE_ARP = common dso_local global i32 0, align 4
@I40IW_CQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_MAT_PERMANENT = common dso_local global i32 0, align 4
@I40IW_CQPSQ_MAT_ENTRYVALID = common dso_local global i32 0, align 4
@I40IW_CQPSQ_WQEVALID = common dso_local global i32 0, align 4
@I40IW_DEBUG_WQE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"ARP_CACHE_ENTRY WQE\00", align 1
@I40IW_CQP_WQE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_cqp*, %struct.i40iw_add_arp_cache_entry_info*, i32, i32)* @i40iw_sc_add_arp_cache_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_sc_add_arp_cache_entry(%struct.i40iw_sc_cqp* %0, %struct.i40iw_add_arp_cache_entry_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_sc_cqp*, align 8
  %7 = alloca %struct.i40iw_add_arp_cache_entry_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i40iw_sc_cqp* %0, %struct.i40iw_sc_cqp** %6, align 8
  store %struct.i40iw_add_arp_cache_entry_info* %1, %struct.i40iw_add_arp_cache_entry_info** %7, align 8
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
  br label %111

20:                                               ; preds = %4
  %21 = load i32*, i32** %10, align 8
  %22 = load %struct.i40iw_add_arp_cache_entry_info*, %struct.i40iw_add_arp_cache_entry_info** %7, align 8
  %23 = getelementptr inbounds %struct.i40iw_add_arp_cache_entry_info, %struct.i40iw_add_arp_cache_entry_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @set_64bit_val(i32* %21, i32 8, i32 %24)
  %26 = load %struct.i40iw_add_arp_cache_entry_info*, %struct.i40iw_add_arp_cache_entry_info** %7, align 8
  %27 = getelementptr inbounds %struct.i40iw_add_arp_cache_entry_info, %struct.i40iw_add_arp_cache_entry_info* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 5
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.i40iw_add_arp_cache_entry_info*, %struct.i40iw_add_arp_cache_entry_info** %7, align 8
  %32 = getelementptr inbounds %struct.i40iw_add_arp_cache_entry_info, %struct.i40iw_add_arp_cache_entry_info* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @LS_64_1(i32 %35, i32 8)
  %37 = or i32 %30, %36
  %38 = load %struct.i40iw_add_arp_cache_entry_info*, %struct.i40iw_add_arp_cache_entry_info** %7, align 8
  %39 = getelementptr inbounds %struct.i40iw_add_arp_cache_entry_info, %struct.i40iw_add_arp_cache_entry_info* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @LS_64_1(i32 %42, i32 16)
  %44 = or i32 %37, %43
  %45 = load %struct.i40iw_add_arp_cache_entry_info*, %struct.i40iw_add_arp_cache_entry_info** %7, align 8
  %46 = getelementptr inbounds %struct.i40iw_add_arp_cache_entry_info, %struct.i40iw_add_arp_cache_entry_info* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @LS_64_1(i32 %49, i32 24)
  %51 = or i32 %44, %50
  %52 = load %struct.i40iw_add_arp_cache_entry_info*, %struct.i40iw_add_arp_cache_entry_info** %7, align 8
  %53 = getelementptr inbounds %struct.i40iw_add_arp_cache_entry_info, %struct.i40iw_add_arp_cache_entry_info* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @LS_64_1(i32 %56, i32 32)
  %58 = or i32 %51, %57
  %59 = load %struct.i40iw_add_arp_cache_entry_info*, %struct.i40iw_add_arp_cache_entry_info** %7, align 8
  %60 = getelementptr inbounds %struct.i40iw_add_arp_cache_entry_info, %struct.i40iw_add_arp_cache_entry_info* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @LS_64_1(i32 %63, i32 40)
  %65 = or i32 %58, %64
  store i32 %65, i32* %11, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @set_64bit_val(i32* %66, i32 16, i32 %67)
  %69 = load %struct.i40iw_add_arp_cache_entry_info*, %struct.i40iw_add_arp_cache_entry_info** %7, align 8
  %70 = getelementptr inbounds %struct.i40iw_add_arp_cache_entry_info, %struct.i40iw_add_arp_cache_entry_info* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @I40IW_CQP_OP_MANAGE_ARP, align 4
  %73 = load i32, i32* @I40IW_CQPSQ_OPCODE, align 4
  %74 = call i32 @LS_64(i32 %72, i32 %73)
  %75 = or i32 %71, %74
  %76 = load %struct.i40iw_add_arp_cache_entry_info*, %struct.i40iw_add_arp_cache_entry_info** %7, align 8
  %77 = getelementptr inbounds %struct.i40iw_add_arp_cache_entry_info, %struct.i40iw_add_arp_cache_entry_info* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 1, i32 0
  %82 = load i32, i32* @I40IW_CQPSQ_MAT_PERMANENT, align 4
  %83 = call i32 @LS_64(i32 %81, i32 %82)
  %84 = or i32 %75, %83
  %85 = load i32, i32* @I40IW_CQPSQ_MAT_ENTRYVALID, align 4
  %86 = call i32 @LS_64(i32 1, i32 %85)
  %87 = or i32 %84, %86
  %88 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %6, align 8
  %89 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @I40IW_CQPSQ_WQEVALID, align 4
  %92 = call i32 @LS_64(i32 %90, i32 %91)
  %93 = or i32 %87, %92
  store i32 %93, i32* %12, align 4
  %94 = load i32*, i32** %10, align 8
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @i40iw_insert_wqe_hdr(i32* %94, i32 %95)
  %97 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %6, align 8
  %98 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @I40IW_DEBUG_WQE, align 4
  %101 = load i32*, i32** %10, align 8
  %102 = load i32, i32* @I40IW_CQP_WQE_SIZE, align 4
  %103 = mul nsw i32 %102, 8
  %104 = call i32 @i40iw_debug_buf(i32 %99, i32 %100, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* %101, i32 %103)
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %20
  %108 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %6, align 8
  %109 = call i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp* %108)
  br label %110

110:                                              ; preds = %107, %20
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %110, %18
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp*, i32) #1

declare dso_local i32 @set_64bit_val(i32*, i32, i32) #1

declare dso_local i32 @LS_64_1(i32, i32) #1

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
