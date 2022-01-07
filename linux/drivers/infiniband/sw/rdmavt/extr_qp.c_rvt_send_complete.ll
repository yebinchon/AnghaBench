; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_send_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_send_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i64, i64, i64, i64, i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.rvt_swqe = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.rvt_dev_info = type { i32* }

@ib_rvt_state_ops = common dso_local global i32* null, align 8
@RVT_PROCESS_OR_FLUSH_SEND = common dso_local global i32 0, align 4
@IB_QPS_SQD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rvt_send_complete(%struct.rvt_qp* %0, %struct.rvt_swqe* %1, i32 %2) #0 {
  %4 = alloca %struct.rvt_qp*, align 8
  %5 = alloca %struct.rvt_swqe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rvt_dev_info*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %4, align 8
  store %struct.rvt_swqe* %1, %struct.rvt_swqe** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** @ib_rvt_state_ops, align 8
  %11 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %12 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @RVT_PROCESS_OR_FLUSH_SEND, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %90

20:                                               ; preds = %3
  %21 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %22 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %21, i32 0, i32 6
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.rvt_dev_info* @ib_to_rvt(i32 %24)
  store %struct.rvt_dev_info* %25, %struct.rvt_dev_info** %9, align 8
  %26 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %27 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %7, align 8
  %29 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %30 = load %struct.rvt_swqe*, %struct.rvt_swqe** %5, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @trace_rvt_qp_send_completion(%struct.rvt_qp* %29, %struct.rvt_swqe* %30, i64 %31)
  %33 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %34 = load %struct.rvt_swqe*, %struct.rvt_swqe** %5, align 8
  %35 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %9, align 8
  %36 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.rvt_swqe*, %struct.rvt_swqe** %5, align 8
  %39 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @rvt_qp_complete_swqe(%struct.rvt_qp* %33, %struct.rvt_swqe* %34, i32 %43, i32 %44)
  store i64 %45, i64* %8, align 8
  %46 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %47 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %20
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %54 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %51, %20
  %56 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %57 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i64, i64* %8, align 8
  %63 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %64 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %63, i32 0, i32 3
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %61, %55
  %66 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %67 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %7, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i64, i64* %8, align 8
  %73 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %74 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %73, i32 0, i32 4
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %71, %65
  %76 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %77 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @IB_QPS_SQD, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %75
  %82 = load i64, i64* %8, align 8
  %83 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %84 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %82, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %89 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %88, i32 0, i32 5
  store i64 0, i64* %89, align 8
  br label %90

90:                                               ; preds = %19, %87, %81, %75
  ret void
}

declare dso_local %struct.rvt_dev_info* @ib_to_rvt(i32) #1

declare dso_local i32 @trace_rvt_qp_send_completion(%struct.rvt_qp*, %struct.rvt_swqe*, i64) #1

declare dso_local i64 @rvt_qp_complete_swqe(%struct.rvt_qp*, %struct.rvt_swqe*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
