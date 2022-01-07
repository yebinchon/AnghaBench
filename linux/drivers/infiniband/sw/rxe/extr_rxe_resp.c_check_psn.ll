; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_check_psn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_check_psn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.rxe_pkt_info = type { i32, i32 }
%struct.rxe_dev = type { i32 }

@RESPST_CLEANUP = common dso_local global i32 0, align 4
@RXE_CNT_OUT_OF_SEQ_REQ = common dso_local global i32 0, align 4
@RESPST_ERR_PSN_OUT_OF_SEQ = common dso_local global i32 0, align 4
@RXE_CNT_DUP_REQ = common dso_local global i32 0, align 4
@RESPST_DUPLICATE_REQUEST = common dso_local global i32 0, align 4
@RXE_START_MASK = common dso_local global i32 0, align 4
@RESPST_CHK_OP_SEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_qp*, %struct.rxe_pkt_info*)* @check_psn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_psn(%struct.rxe_qp* %0, %struct.rxe_pkt_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rxe_qp*, align 8
  %5 = alloca %struct.rxe_pkt_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rxe_dev*, align 8
  store %struct.rxe_qp* %0, %struct.rxe_qp** %4, align 8
  store %struct.rxe_pkt_info* %1, %struct.rxe_pkt_info** %5, align 8
  %8 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %9 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %12 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @psn_compare(i32 %10, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %17 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.rxe_dev* @to_rdev(i32 %19)
  store %struct.rxe_dev* %20, %struct.rxe_dev** %7, align 8
  %21 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %22 = call i32 @qp_type(%struct.rxe_qp* %21)
  switch i32 %22, label %89 [
    i32 129, label %23
    i32 128, label %62
  ]

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %23
  %27 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %28 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @RESPST_CLEANUP, align 4
  store i32 %33, i32* %3, align 4
  br label %92

34:                                               ; preds = %26
  %35 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %36 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.rxe_dev*, %struct.rxe_dev** %7, align 8
  %39 = load i32, i32* @RXE_CNT_OUT_OF_SEQ_REQ, align 4
  %40 = call i32 @rxe_counter_inc(%struct.rxe_dev* %38, i32 %39)
  %41 = load i32, i32* @RESPST_ERR_PSN_OUT_OF_SEQ, align 4
  store i32 %41, i32* %3, align 4
  br label %92

42:                                               ; preds = %23
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.rxe_dev*, %struct.rxe_dev** %7, align 8
  %47 = load i32, i32* @RXE_CNT_DUP_REQ, align 4
  %48 = call i32 @rxe_counter_inc(%struct.rxe_dev* %46, i32 %47)
  %49 = load i32, i32* @RESPST_DUPLICATE_REQUEST, align 4
  store i32 %49, i32* %3, align 4
  br label %92

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %53 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %59 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 0, i32* %60, align 4
  br label %61

61:                                               ; preds = %57, %51
  br label %90

62:                                               ; preds = %2
  %63 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %64 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %68, %62
  %72 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %73 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @RXE_START_MASK, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %80 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i32 0, i32* %81, align 4
  %82 = load i32, i32* @RESPST_CHK_OP_SEQ, align 4
  store i32 %82, i32* %3, align 4
  br label %92

83:                                               ; preds = %71
  %84 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %85 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  store i32 1, i32* %86, align 4
  %87 = load i32, i32* @RESPST_CLEANUP, align 4
  store i32 %87, i32* %3, align 4
  br label %92

88:                                               ; preds = %68
  br label %90

89:                                               ; preds = %2
  br label %90

90:                                               ; preds = %89, %88, %61
  %91 = load i32, i32* @RESPST_CHK_OP_SEQ, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %83, %78, %45, %34, %32
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @psn_compare(i32, i32) #1

declare dso_local %struct.rxe_dev* @to_rdev(i32) #1

declare dso_local i32 @qp_type(%struct.rxe_qp*) #1

declare dso_local i32 @rxe_counter_inc(%struct.rxe_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
