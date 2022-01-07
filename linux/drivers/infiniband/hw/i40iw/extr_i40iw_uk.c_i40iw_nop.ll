; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_nop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_nop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_qp_uk = type { i32 }

@I40IW_QP_WQE_MIN_SIZE = common dso_local global i32 0, align 4
@I40IW_ERR_QP_TOOMANY_WRS_POSTED = common dso_local global i32 0, align 4
@I40IWQP_OP_NOP = common dso_local global i32 0, align 4
@I40IWQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IWQPSQ_SIGCOMPL = common dso_local global i32 0, align 4
@I40IWQPSQ_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_nop(%struct.i40iw_qp_uk* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_qp_uk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.i40iw_qp_uk* %0, %struct.i40iw_qp_uk** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %6, align 8
  %14 = load i32, i32* @I40IW_QP_WQE_MIN_SIZE, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32* @i40iw_qp_get_next_send_wqe(%struct.i40iw_qp_uk* %13, i32* %12, i32 %14, i32 0, i32 %15)
  store i32* %16, i32** %11, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @I40IW_ERR_QP_TOOMANY_WRS_POSTED, align 4
  store i32 %20, i32* %5, align 4
  br label %51

21:                                               ; preds = %4
  %22 = load i32*, i32** %11, align 8
  %23 = call i32 @set_64bit_val(i32* %22, i32 0, i32 0)
  %24 = load i32*, i32** %11, align 8
  %25 = call i32 @set_64bit_val(i32* %24, i32 8, i32 0)
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @set_64bit_val(i32* %26, i32 16, i32 0)
  %28 = load i32, i32* @I40IWQP_OP_NOP, align 4
  %29 = load i32, i32* @I40IWQPSQ_OPCODE, align 4
  %30 = call i32 @LS_64(i32 %28, i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @I40IWQPSQ_SIGCOMPL, align 4
  %33 = call i32 @LS_64(i32 %31, i32 %32)
  %34 = or i32 %30, %33
  %35 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %6, align 8
  %36 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @I40IWQPSQ_VALID, align 4
  %39 = call i32 @LS_64(i32 %37, i32 %38)
  %40 = or i32 %34, %39
  store i32 %40, i32* %10, align 4
  %41 = call i32 (...) @wmb()
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @set_64bit_val(i32* %42, i32 24, i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %21
  %48 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %6, align 8
  %49 = call i32 @i40iw_qp_post_wr(%struct.i40iw_qp_uk* %48)
  br label %50

50:                                               ; preds = %47, %21
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %19
  %52 = load i32, i32* %5, align 4
  ret i32 %52
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
