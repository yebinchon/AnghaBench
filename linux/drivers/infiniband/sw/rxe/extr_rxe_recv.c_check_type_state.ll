; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_recv.c_check_type_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_recv.c_check_type_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_dev = type { i32 }
%struct.rxe_pkt_info = type { i32, i32 }
%struct.rxe_qp = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@IB_OPCODE_RC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"bad qp type\0A\00", align 1
@IB_OPCODE_UC = common dso_local global i32 0, align 4
@IB_OPCODE_UD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"unsupported qp type\0A\00", align 1
@RXE_REQ_MASK = common dso_local global i32 0, align 4
@QP_STATE_READY = common dso_local global i64 0, align 8
@QP_STATE_DRAINED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_dev*, %struct.rxe_pkt_info*, %struct.rxe_qp*)* @check_type_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_type_state(%struct.rxe_dev* %0, %struct.rxe_pkt_info* %1, %struct.rxe_qp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rxe_dev*, align 8
  %6 = alloca %struct.rxe_pkt_info*, align 8
  %7 = alloca %struct.rxe_qp*, align 8
  store %struct.rxe_dev* %0, %struct.rxe_dev** %5, align 8
  store %struct.rxe_pkt_info* %1, %struct.rxe_pkt_info** %6, align 8
  store %struct.rxe_qp* %2, %struct.rxe_qp** %7, align 8
  %8 = load %struct.rxe_qp*, %struct.rxe_qp** %7, align 8
  %9 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %104

17:                                               ; preds = %3
  %18 = load %struct.rxe_qp*, %struct.rxe_qp** %7, align 8
  %19 = call i32 @qp_type(%struct.rxe_qp* %18)
  switch i32 %19, label %61 [
    i32 131, label %20
    i32 129, label %33
    i32 128, label %47
    i32 130, label %47
    i32 132, label %47
  ]

20:                                               ; preds = %17
  %21 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %22 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IB_OPCODE_RC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %104

32:                                               ; preds = %20
  br label %63

33:                                               ; preds = %17
  %34 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %35 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IB_OPCODE_UC, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %104

46:                                               ; preds = %33
  br label %63

47:                                               ; preds = %17, %17, %17
  %48 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %49 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IB_OPCODE_UD, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %104

60:                                               ; preds = %47
  br label %63

61:                                               ; preds = %17
  %62 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %104

63:                                               ; preds = %60, %46, %32
  %64 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %65 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @RXE_REQ_MASK, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %63
  %71 = load %struct.rxe_qp*, %struct.rxe_qp** %7, align 8
  %72 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @QP_STATE_READY, align 8
  %76 = icmp ne i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  br label %104

81:                                               ; preds = %70
  br label %103

82:                                               ; preds = %63
  %83 = load %struct.rxe_qp*, %struct.rxe_qp** %7, align 8
  %84 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @QP_STATE_READY, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %96, label %89

89:                                               ; preds = %82
  %90 = load %struct.rxe_qp*, %struct.rxe_qp** %7, align 8
  %91 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @QP_STATE_DRAINED, align 8
  %95 = icmp sgt i64 %93, %94
  br label %96

96:                                               ; preds = %89, %82
  %97 = phi i1 [ true, %82 ], [ %95, %89 ]
  %98 = zext i1 %97 to i32
  %99 = call i64 @unlikely(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %104

102:                                              ; preds = %96
  br label %103

103:                                              ; preds = %102, %81
  store i32 0, i32* %4, align 4
  br label %107

104:                                              ; preds = %101, %80, %61, %58, %44, %30, %16
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %104, %103
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @qp_type(%struct.rxe_qp*) #1

declare dso_local i32 @pr_warn_ratelimited(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
