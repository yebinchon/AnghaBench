; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_check_op_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_check_op_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rxe_pkt_info = type { i32 }

@RESPST_CHK_OP_VALID = common dso_local global i32 0, align 4
@RESPST_ERR_MISSING_OPCODE_LAST_C = common dso_local global i32 0, align 4
@RESPST_ERR_MISSING_OPCODE_FIRST = common dso_local global i32 0, align 4
@RESPST_ERR_MISSING_OPCODE_LAST_D1E = common dso_local global i32 0, align 4
@RESPST_CLEANUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_qp*, %struct.rxe_pkt_info*)* @check_op_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_op_seq(%struct.rxe_qp* %0, %struct.rxe_pkt_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rxe_qp*, align 8
  %5 = alloca %struct.rxe_pkt_info*, align 8
  store %struct.rxe_qp* %0, %struct.rxe_qp** %4, align 8
  store %struct.rxe_pkt_info* %1, %struct.rxe_pkt_info** %5, align 8
  %6 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %7 = call i32 @qp_type(%struct.rxe_qp* %6)
  switch i32 %7, label %69 [
    i32 129, label %8
    i32 128, label %37
  ]

8:                                                ; preds = %2
  %9 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %10 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %29 [
    i32 142, label %13
    i32 138, label %13
    i32 146, label %21
    i32 143, label %21
  ]

13:                                               ; preds = %8, %8
  %14 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %15 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %19 [
    i32 138, label %17
    i32 141, label %17
    i32 140, label %17
    i32 139, label %17
  ]

17:                                               ; preds = %13, %13, %13, %13
  %18 = load i32, i32* @RESPST_CHK_OP_VALID, align 4
  store i32 %18, i32* %3, align 4
  br label %71

19:                                               ; preds = %13
  %20 = load i32, i32* @RESPST_ERR_MISSING_OPCODE_LAST_C, align 4
  store i32 %20, i32* %3, align 4
  br label %71

21:                                               ; preds = %8, %8
  %22 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %23 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %27 [
    i32 143, label %25
    i32 145, label %25
    i32 144, label %25
  ]

25:                                               ; preds = %21, %21, %21
  %26 = load i32, i32* @RESPST_CHK_OP_VALID, align 4
  store i32 %26, i32* %3, align 4
  br label %71

27:                                               ; preds = %21
  %28 = load i32, i32* @RESPST_ERR_MISSING_OPCODE_LAST_C, align 4
  store i32 %28, i32* %3, align 4
  br label %71

29:                                               ; preds = %8
  %30 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %31 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %35 [
    i32 138, label %33
    i32 141, label %33
    i32 140, label %33
    i32 139, label %33
    i32 143, label %33
    i32 145, label %33
    i32 144, label %33
  ]

33:                                               ; preds = %29, %29, %29, %29, %29, %29, %29
  %34 = load i32, i32* @RESPST_ERR_MISSING_OPCODE_FIRST, align 4
  store i32 %34, i32* %3, align 4
  br label %71

35:                                               ; preds = %29
  %36 = load i32, i32* @RESPST_CHK_OP_VALID, align 4
  store i32 %36, i32* %3, align 4
  br label %71

37:                                               ; preds = %2
  %38 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %39 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %58 [
    i32 133, label %42
    i32 130, label %42
    i32 137, label %50
    i32 134, label %50
  ]

42:                                               ; preds = %37, %37
  %43 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %44 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %48 [
    i32 130, label %46
    i32 132, label %46
    i32 131, label %46
  ]

46:                                               ; preds = %42, %42, %42
  %47 = load i32, i32* @RESPST_CHK_OP_VALID, align 4
  store i32 %47, i32* %3, align 4
  br label %71

48:                                               ; preds = %42
  %49 = load i32, i32* @RESPST_ERR_MISSING_OPCODE_LAST_D1E, align 4
  store i32 %49, i32* %3, align 4
  br label %71

50:                                               ; preds = %37, %37
  %51 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %52 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %56 [
    i32 134, label %54
    i32 136, label %54
    i32 135, label %54
  ]

54:                                               ; preds = %50, %50, %50
  %55 = load i32, i32* @RESPST_CHK_OP_VALID, align 4
  store i32 %55, i32* %3, align 4
  br label %71

56:                                               ; preds = %50
  %57 = load i32, i32* @RESPST_ERR_MISSING_OPCODE_LAST_D1E, align 4
  store i32 %57, i32* %3, align 4
  br label %71

58:                                               ; preds = %37
  %59 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %60 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  switch i32 %61, label %67 [
    i32 130, label %62
    i32 132, label %62
    i32 131, label %62
    i32 134, label %62
    i32 136, label %62
    i32 135, label %62
  ]

62:                                               ; preds = %58, %58, %58, %58, %58, %58
  %63 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %64 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 4
  %66 = load i32, i32* @RESPST_CLEANUP, align 4
  store i32 %66, i32* %3, align 4
  br label %71

67:                                               ; preds = %58
  %68 = load i32, i32* @RESPST_CHK_OP_VALID, align 4
  store i32 %68, i32* %3, align 4
  br label %71

69:                                               ; preds = %2
  %70 = load i32, i32* @RESPST_CHK_OP_VALID, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %67, %62, %56, %54, %48, %46, %35, %33, %27, %25, %19, %17
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @qp_type(%struct.rxe_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
