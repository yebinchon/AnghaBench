; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_alloc_stag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_alloc_stag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { %struct.i40iw_sc_cqp* }
%struct.i40iw_sc_cqp = type { i32 }
%struct.i40iw_allocate_stag_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@I40IW_PAGE_SIZE_2M = common dso_local global i32 0, align 4
@I40IW_PAGE_SIZE_4K = common dso_local global i32 0, align 4
@I40IW_ERR_RING_FULL = common dso_local global i32 0, align 4
@I40IW_CQPSQ_STAG_PDID = common dso_local global i32 0, align 4
@I40IW_CQPSQ_STAG_STAGLEN = common dso_local global i32 0, align 4
@I40IW_CQPSQ_STAG_IDX = common dso_local global i32 0, align 4
@I40IW_CQPSQ_STAG_HMCFNIDX = common dso_local global i32 0, align 4
@I40IW_CQP_OP_ALLOC_STAG = common dso_local global i32 0, align 4
@I40IW_CQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_STAG_MR = common dso_local global i32 0, align 4
@I40IW_CQPSQ_STAG_ARIGHTS = common dso_local global i32 0, align 4
@I40IW_CQPSQ_STAG_LPBLSIZE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_STAG_HPAGESIZE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_STAG_REMACCENABLED = common dso_local global i32 0, align 4
@I40IW_CQPSQ_STAG_USEHMCFNIDX = common dso_local global i32 0, align 4
@I40IW_CQPSQ_STAG_USEPFRID = common dso_local global i32 0, align 4
@I40IW_CQPSQ_WQEVALID = common dso_local global i32 0, align 4
@I40IW_DEBUG_WQE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"ALLOC_STAG WQE\00", align 1
@I40IW_CQP_WQE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_dev*, %struct.i40iw_allocate_stag_info*, i32, i32)* @i40iw_sc_alloc_stag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_sc_alloc_stag(%struct.i40iw_sc_dev* %0, %struct.i40iw_allocate_stag_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_sc_dev*, align 8
  %7 = alloca %struct.i40iw_allocate_stag_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.i40iw_sc_cqp*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %6, align 8
  store %struct.i40iw_allocate_stag_info* %1, %struct.i40iw_allocate_stag_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.i40iw_allocate_stag_info*, %struct.i40iw_allocate_stag_info** %7, align 8
  %15 = getelementptr inbounds %struct.i40iw_allocate_stag_info, %struct.i40iw_allocate_stag_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 2097152
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @I40IW_PAGE_SIZE_2M, align 4
  br label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @I40IW_PAGE_SIZE_4K, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %13, align 4
  %24 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %25 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %24, i32 0, i32 0
  %26 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %25, align 8
  store %struct.i40iw_sc_cqp* %26, %struct.i40iw_sc_cqp** %11, align 8
  %27 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %11, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp* %27, i32 %28)
  store i32* %29, i32** %10, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %22
  %33 = load i32, i32* @I40IW_ERR_RING_FULL, align 4
  store i32 %33, i32* %5, align 4
  br label %123

34:                                               ; preds = %22
  %35 = load i32*, i32** %10, align 8
  %36 = load %struct.i40iw_allocate_stag_info*, %struct.i40iw_allocate_stag_info** %7, align 8
  %37 = getelementptr inbounds %struct.i40iw_allocate_stag_info, %struct.i40iw_allocate_stag_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @I40IW_CQPSQ_STAG_PDID, align 4
  %40 = call i32 @LS_64(i32 %38, i32 %39)
  %41 = load %struct.i40iw_allocate_stag_info*, %struct.i40iw_allocate_stag_info** %7, align 8
  %42 = getelementptr inbounds %struct.i40iw_allocate_stag_info, %struct.i40iw_allocate_stag_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @I40IW_CQPSQ_STAG_STAGLEN, align 4
  %45 = call i32 @LS_64(i32 %43, i32 %44)
  %46 = or i32 %40, %45
  %47 = call i32 @set_64bit_val(i32* %35, i32 8, i32 %46)
  %48 = load i32*, i32** %10, align 8
  %49 = load %struct.i40iw_allocate_stag_info*, %struct.i40iw_allocate_stag_info** %7, align 8
  %50 = getelementptr inbounds %struct.i40iw_allocate_stag_info, %struct.i40iw_allocate_stag_info* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @I40IW_CQPSQ_STAG_IDX, align 4
  %53 = call i32 @LS_64(i32 %51, i32 %52)
  %54 = call i32 @set_64bit_val(i32* %48, i32 16, i32 %53)
  %55 = load i32*, i32** %10, align 8
  %56 = load %struct.i40iw_allocate_stag_info*, %struct.i40iw_allocate_stag_info** %7, align 8
  %57 = getelementptr inbounds %struct.i40iw_allocate_stag_info, %struct.i40iw_allocate_stag_info* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @I40IW_CQPSQ_STAG_HMCFNIDX, align 4
  %60 = call i32 @LS_64(i32 %58, i32 %59)
  %61 = call i32 @set_64bit_val(i32* %55, i32 40, i32 %60)
  %62 = load i32, i32* @I40IW_CQP_OP_ALLOC_STAG, align 4
  %63 = load i32, i32* @I40IW_CQPSQ_OPCODE, align 4
  %64 = call i32 @LS_64(i32 %62, i32 %63)
  %65 = load i32, i32* @I40IW_CQPSQ_STAG_MR, align 4
  %66 = call i32 @LS_64(i32 1, i32 %65)
  %67 = or i32 %64, %66
  %68 = load %struct.i40iw_allocate_stag_info*, %struct.i40iw_allocate_stag_info** %7, align 8
  %69 = getelementptr inbounds %struct.i40iw_allocate_stag_info, %struct.i40iw_allocate_stag_info* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @I40IW_CQPSQ_STAG_ARIGHTS, align 4
  %72 = call i32 @LS_64(i32 %70, i32 %71)
  %73 = or i32 %67, %72
  %74 = load %struct.i40iw_allocate_stag_info*, %struct.i40iw_allocate_stag_info** %7, align 8
  %75 = getelementptr inbounds %struct.i40iw_allocate_stag_info, %struct.i40iw_allocate_stag_info* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @I40IW_CQPSQ_STAG_LPBLSIZE, align 4
  %78 = call i32 @LS_64(i32 %76, i32 %77)
  %79 = or i32 %73, %78
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @I40IW_CQPSQ_STAG_HPAGESIZE, align 4
  %82 = call i32 @LS_64(i32 %80, i32 %81)
  %83 = or i32 %79, %82
  %84 = load %struct.i40iw_allocate_stag_info*, %struct.i40iw_allocate_stag_info** %7, align 8
  %85 = getelementptr inbounds %struct.i40iw_allocate_stag_info, %struct.i40iw_allocate_stag_info* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @I40IW_CQPSQ_STAG_REMACCENABLED, align 4
  %88 = call i32 @LS_64(i32 %86, i32 %87)
  %89 = or i32 %83, %88
  %90 = load %struct.i40iw_allocate_stag_info*, %struct.i40iw_allocate_stag_info** %7, align 8
  %91 = getelementptr inbounds %struct.i40iw_allocate_stag_info, %struct.i40iw_allocate_stag_info* %90, i32 0, i32 8
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @I40IW_CQPSQ_STAG_USEHMCFNIDX, align 4
  %94 = call i32 @LS_64(i32 %92, i32 %93)
  %95 = or i32 %89, %94
  %96 = load %struct.i40iw_allocate_stag_info*, %struct.i40iw_allocate_stag_info** %7, align 8
  %97 = getelementptr inbounds %struct.i40iw_allocate_stag_info, %struct.i40iw_allocate_stag_info* %96, i32 0, i32 9
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @I40IW_CQPSQ_STAG_USEPFRID, align 4
  %100 = call i32 @LS_64(i32 %98, i32 %99)
  %101 = or i32 %95, %100
  %102 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %11, align 8
  %103 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @I40IW_CQPSQ_WQEVALID, align 4
  %106 = call i32 @LS_64(i32 %104, i32 %105)
  %107 = or i32 %101, %106
  store i32 %107, i32* %12, align 4
  %108 = load i32*, i32** %10, align 8
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @i40iw_insert_wqe_hdr(i32* %108, i32 %109)
  %111 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %112 = load i32, i32* @I40IW_DEBUG_WQE, align 4
  %113 = load i32*, i32** %10, align 8
  %114 = load i32, i32* @I40IW_CQP_WQE_SIZE, align 4
  %115 = mul nsw i32 %114, 8
  %116 = call i32 @i40iw_debug_buf(%struct.i40iw_sc_dev* %111, i32 %112, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %113, i32 %115)
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %34
  %120 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %11, align 8
  %121 = call i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp* %120)
  br label %122

122:                                              ; preds = %119, %34
  store i32 0, i32* %5, align 4
  br label %123

123:                                              ; preds = %122, %32
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp*, i32) #1

declare dso_local i32 @set_64bit_val(i32*, i32, i32) #1

declare dso_local i32 @LS_64(i32, i32) #1

declare dso_local i32 @i40iw_insert_wqe_hdr(i32*, i32) #1

declare dso_local i32 @i40iw_debug_buf(%struct.i40iw_sc_dev*, i32, i8*, i32*, i32) #1

declare dso_local i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
