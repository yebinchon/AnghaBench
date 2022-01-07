; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_cqp_poll_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_cqp_poll_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_cqp = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32*, i32, i64 }

@I40E_PFPE_CQPERRCODES = common dso_local global i32 0, align 4
@I40E_VFPE_CQPERRCODES1 = common dso_local global i32 0, align 4
@I40IW_ERR_CQP_COMPL_ERROR = common dso_local global i32 0, align 4
@OP_COMPLETED_COMMANDS = common dso_local global i64 0, align 8
@I40IW_SLEEP_COUNT = common dso_local global i32 0, align 4
@I40IW_ERR_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_cqp*, i64, i64)* @i40iw_cqp_poll_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_cqp_poll_registers(%struct.i40iw_sc_cqp* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40iw_sc_cqp*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.i40iw_sc_cqp* %0, %struct.i40iw_sc_cqp** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %12

12:                                               ; preds = %67, %3
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %70

16:                                               ; preds = %12
  %17 = load i64, i64* %8, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %8, align 8
  %19 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %5, align 8
  %20 = call i32 @i40iw_get_cqp_reg_info(%struct.i40iw_sc_cqp* %19, i64* %11, i64* %9, i64* %10)
  %21 = load i64, i64* %10, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %16
  %24 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %5, align 8
  %25 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %5, align 8
  %32 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @I40E_PFPE_CQPERRCODES, align 4
  %37 = call i64 @i40iw_rd32(i32 %35, i32 %36)
  br label %46

38:                                               ; preds = %23
  %39 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %5, align 8
  %40 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @I40E_VFPE_CQPERRCODES1, align 4
  %45 = call i64 @i40iw_rd32(i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %38, %30
  %47 = phi i64 [ %37, %30 ], [ %45, %38 ]
  store i64 %47, i64* %10, align 8
  %48 = load i32, i32* @I40IW_ERR_CQP_COMPL_ERROR, align 4
  store i32 %48, i32* %4, align 4
  br label %72

49:                                               ; preds = %16
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %49
  %54 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %5, align 8
  %55 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @I40IW_RING_MOVE_TAIL(i32 %56)
  %58 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %5, align 8
  %59 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @OP_COMPLETED_COMMANDS, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  store i32 0, i32* %4, align 4
  br label %72

67:                                               ; preds = %49
  %68 = load i32, i32* @I40IW_SLEEP_COUNT, align 4
  %69 = call i32 @udelay(i32 %68)
  br label %12

70:                                               ; preds = %12
  %71 = load i32, i32* @I40IW_ERR_TIMEOUT, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %53, %46
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @i40iw_get_cqp_reg_info(%struct.i40iw_sc_cqp*, i64*, i64*, i64*) #1

declare dso_local i64 @i40iw_rd32(i32, i32) #1

declare dso_local i32 @I40IW_RING_MOVE_TAIL(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
