; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_sp.c_bnxt_qplib_dereg_mrw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_sp.c_bnxt_qplib_dereg_mrw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_res = type { i32, %struct.bnxt_qplib_rcfw* }
%struct.bnxt_qplib_rcfw = type { i32 }
%struct.bnxt_qplib_mrw = type { %struct.TYPE_2__, i64, i64, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.cmdq_deregister_mr = type { i32 }
%struct.creq_deregister_mr_resp = type { i32 }

@DEREGISTER_MR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_qplib_dereg_mrw(%struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_mrw* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt_qplib_res*, align 8
  %6 = alloca %struct.bnxt_qplib_mrw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnxt_qplib_rcfw*, align 8
  %9 = alloca %struct.cmdq_deregister_mr, align 4
  %10 = alloca %struct.creq_deregister_mr_resp, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_res** %5, align 8
  store %struct.bnxt_qplib_mrw* %1, %struct.bnxt_qplib_mrw** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %5, align 8
  %14 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %13, i32 0, i32 1
  %15 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %14, align 8
  store %struct.bnxt_qplib_rcfw* %15, %struct.bnxt_qplib_rcfw** %8, align 8
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* @DEREGISTER_MR, align 4
  %17 = load i32, i32* %11, align 4
  %18 = getelementptr inbounds %struct.cmdq_deregister_mr, %struct.cmdq_deregister_mr* %9, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @RCFW_CMD_PREP(i32 %19, i32 %16, i32 %17)
  %21 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %6, align 8
  %22 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @cpu_to_le32(i32 %23)
  %25 = getelementptr inbounds %struct.cmdq_deregister_mr, %struct.cmdq_deregister_mr* %9, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %8, align 8
  %27 = bitcast %struct.cmdq_deregister_mr* %9 to i8*
  %28 = bitcast %struct.creq_deregister_mr_resp* %10 to i8*
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @bnxt_qplib_rcfw_send_message(%struct.bnxt_qplib_rcfw* %26, i8* %27, i8* %28, i32* null, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %4, align 4
  br label %53

35:                                               ; preds = %3
  %36 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %6, align 8
  %37 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %6, align 8
  %43 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %6, align 8
  %45 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %5, align 8
  %47 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %6, align 8
  %50 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %49, i32 0, i32 0
  %51 = call i32 @bnxt_qplib_free_hwq(i32 %48, %struct.TYPE_2__* %50)
  br label %52

52:                                               ; preds = %41, %35
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %33
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @RCFW_CMD_PREP(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @bnxt_qplib_rcfw_send_message(%struct.bnxt_qplib_rcfw*, i8*, i8*, i32*, i32) #1

declare dso_local i32 @bnxt_qplib_free_hwq(i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
