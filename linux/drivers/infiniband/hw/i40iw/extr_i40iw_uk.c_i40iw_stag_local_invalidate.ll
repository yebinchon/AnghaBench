; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_stag_local_invalidate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_stag_local_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_qp_uk = type { i32 }
%struct.i40iw_post_sq_info = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.i40iw_inv_local_stag }
%struct.i40iw_inv_local_stag = type { i32 }

@I40IW_QP_WQE_MIN_SIZE = common dso_local global i32 0, align 4
@I40IW_ERR_QP_TOOMANY_WRS_POSTED = common dso_local global i32 0, align 4
@I40IWQPSQ_LOCSTAG = common dso_local global i32 0, align 4
@I40IW_OP_TYPE_INV_STAG = common dso_local global i32 0, align 4
@I40IWQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IWQPSQ_READFENCE = common dso_local global i32 0, align 4
@I40IWQPSQ_LOCALFENCE = common dso_local global i32 0, align 4
@I40IWQPSQ_SIGCOMPL = common dso_local global i32 0, align 4
@I40IWQPSQ_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_qp_uk*, %struct.i40iw_post_sq_info*, i32)* @i40iw_stag_local_invalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_stag_local_invalidate(%struct.i40iw_qp_uk* %0, %struct.i40iw_post_sq_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40iw_qp_uk*, align 8
  %6 = alloca %struct.i40iw_post_sq_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.i40iw_inv_local_stag*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i40iw_qp_uk* %0, %struct.i40iw_qp_uk** %5, align 8
  store %struct.i40iw_post_sq_info* %1, %struct.i40iw_post_sq_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.i40iw_post_sq_info*, %struct.i40iw_post_sq_info** %6, align 8
  %14 = getelementptr inbounds %struct.i40iw_post_sq_info, %struct.i40iw_post_sq_info* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.i40iw_inv_local_stag* %15, %struct.i40iw_inv_local_stag** %9, align 8
  %16 = load %struct.i40iw_post_sq_info*, %struct.i40iw_post_sq_info** %6, align 8
  %17 = getelementptr inbounds %struct.i40iw_post_sq_info, %struct.i40iw_post_sq_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %12, align 4
  %19 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %5, align 8
  %20 = load i32, i32* @I40IW_QP_WQE_MIN_SIZE, align 4
  %21 = load %struct.i40iw_post_sq_info*, %struct.i40iw_post_sq_info** %6, align 8
  %22 = getelementptr inbounds %struct.i40iw_post_sq_info, %struct.i40iw_post_sq_info* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32* @i40iw_qp_get_next_send_wqe(%struct.i40iw_qp_uk* %19, i32* %11, i32 %20, i32 0, i32 %23)
  store i32* %24, i32** %8, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @I40IW_ERR_QP_TOOMANY_WRS_POSTED, align 4
  store i32 %28, i32* %4, align 4
  br label %76

29:                                               ; preds = %3
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @set_64bit_val(i32* %30, i32 0, i32 0)
  %32 = load i32*, i32** %8, align 8
  %33 = load %struct.i40iw_inv_local_stag*, %struct.i40iw_inv_local_stag** %9, align 8
  %34 = getelementptr inbounds %struct.i40iw_inv_local_stag, %struct.i40iw_inv_local_stag* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @I40IWQPSQ_LOCSTAG, align 4
  %37 = call i32 @LS_64(i32 %35, i32 %36)
  %38 = call i32 @set_64bit_val(i32* %32, i32 8, i32 %37)
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @set_64bit_val(i32* %39, i32 16, i32 0)
  %41 = load i32, i32* @I40IW_OP_TYPE_INV_STAG, align 4
  %42 = load i32, i32* @I40IWQPSQ_OPCODE, align 4
  %43 = call i32 @LS_64(i32 %41, i32 %42)
  %44 = load %struct.i40iw_post_sq_info*, %struct.i40iw_post_sq_info** %6, align 8
  %45 = getelementptr inbounds %struct.i40iw_post_sq_info, %struct.i40iw_post_sq_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @I40IWQPSQ_READFENCE, align 4
  %48 = call i32 @LS_64(i32 %46, i32 %47)
  %49 = or i32 %43, %48
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @I40IWQPSQ_LOCALFENCE, align 4
  %52 = call i32 @LS_64(i32 %50, i32 %51)
  %53 = or i32 %49, %52
  %54 = load %struct.i40iw_post_sq_info*, %struct.i40iw_post_sq_info** %6, align 8
  %55 = getelementptr inbounds %struct.i40iw_post_sq_info, %struct.i40iw_post_sq_info* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @I40IWQPSQ_SIGCOMPL, align 4
  %58 = call i32 @LS_64(i32 %56, i32 %57)
  %59 = or i32 %53, %58
  %60 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %5, align 8
  %61 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @I40IWQPSQ_VALID, align 4
  %64 = call i32 @LS_64(i32 %62, i32 %63)
  %65 = or i32 %59, %64
  store i32 %65, i32* %10, align 4
  %66 = call i32 (...) @wmb()
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @set_64bit_val(i32* %67, i32 24, i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %29
  %73 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %5, align 8
  %74 = call i32 @i40iw_qp_post_wr(%struct.i40iw_qp_uk* %73)
  br label %75

75:                                               ; preds = %72, %29
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %27
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32* @i40iw_qp_get_next_send_wqe(%struct.i40iw_qp_uk*, i32*, i32, i32, i32) #1

declare dso_local i32 @set_64bit_val(i32*, i32, i32) #1

declare dso_local i32 @LS_64(i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @i40iw_qp_post_wr(%struct.i40iw_qp_uk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
