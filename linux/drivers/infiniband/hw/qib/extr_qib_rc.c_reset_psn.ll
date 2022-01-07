; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_rc.c_reset_psn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_rc.c_reset_psn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i64, i64, i64, i64, i64, i32, i32, i8*, i64 }
%struct.rvt_swqe = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@SEND_LAST = common dso_local global i32 0, align 4
@RDMA_READ_RESPONSE_FIRST = common dso_local global i32 0, align 4
@RDMA_READ_RESPONSE_LAST = common dso_local global i32 0, align 4
@RDMA_READ_RESPONSE_MIDDLE = common dso_local global i32 0, align 4
@RVT_S_WAIT_PSN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvt_qp*, i64)* @reset_psn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_psn(%struct.rvt_qp* %0, i64 %1) #0 {
  %3 = alloca %struct.rvt_qp*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rvt_swqe*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.rvt_qp* %0, %struct.rvt_qp** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %10 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp* %12, i64 %13)
  store %struct.rvt_swqe* %14, %struct.rvt_swqe** %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %17 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %16, i32 0, i32 8
  store i64 %15, i64* %17, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %20 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @qib_cmp24(i64 %18, i32 %21)
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load i32, i32* @SEND_LAST, align 4
  %26 = call i8* @OP(i32 %25)
  %27 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %28 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %27, i32 0, i32 7
  store i8* %26, i8** %28, align 8
  br label %100

29:                                               ; preds = %2
  %30 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %31 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %7, align 8
  br label %34

34:                                               ; preds = %72, %29
  %35 = load i64, i64* %5, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %5, align 8
  %37 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %38 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i64 0, i64* %5, align 8
  br label %42

42:                                               ; preds = %41, %34
  %43 = load i64, i64* %5, align 8
  %44 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %45 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %77

49:                                               ; preds = %42
  %50 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp* %50, i64 %51)
  store %struct.rvt_swqe* %52, %struct.rvt_swqe** %6, align 8
  %53 = load i64, i64* %4, align 8
  %54 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %55 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @qib_cmp24(i64 %53, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %77

61:                                               ; preds = %49
  %62 = load i64, i64* %5, align 8
  %63 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %64 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %63, i32 0, i32 8
  store i64 %62, i64* %64, align 8
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load i32, i32* @SEND_LAST, align 4
  %69 = call i8* @OP(i32 %68)
  %70 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %71 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %70, i32 0, i32 7
  store i8* %69, i8** %71, align 8
  br label %100

72:                                               ; preds = %61
  %73 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %74 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %7, align 8
  br label %34

77:                                               ; preds = %60, %48
  %78 = load i64, i64* %7, align 8
  switch i64 %78, label %94 [
    i64 129, label %79
    i64 128, label %79
    i64 131, label %84
    i64 130, label %84
    i64 132, label %89
  ]

79:                                               ; preds = %77, %77
  %80 = load i32, i32* @RDMA_READ_RESPONSE_FIRST, align 4
  %81 = call i8* @OP(i32 %80)
  %82 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %83 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %82, i32 0, i32 7
  store i8* %81, i8** %83, align 8
  br label %99

84:                                               ; preds = %77, %77
  %85 = load i32, i32* @RDMA_READ_RESPONSE_LAST, align 4
  %86 = call i8* @OP(i32 %85)
  %87 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %88 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %87, i32 0, i32 7
  store i8* %86, i8** %88, align 8
  br label %99

89:                                               ; preds = %77
  %90 = load i32, i32* @RDMA_READ_RESPONSE_MIDDLE, align 4
  %91 = call i8* @OP(i32 %90)
  %92 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %93 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %92, i32 0, i32 7
  store i8* %91, i8** %93, align 8
  br label %99

94:                                               ; preds = %77
  %95 = load i32, i32* @SEND_LAST, align 4
  %96 = call i8* @OP(i32 %95)
  %97 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %98 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %97, i32 0, i32 7
  store i8* %96, i8** %98, align 8
  br label %99

99:                                               ; preds = %94, %89, %84, %79
  br label %100

100:                                              ; preds = %99, %67, %24
  %101 = load i64, i64* %4, align 8
  %102 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %103 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %102, i32 0, i32 3
  store i64 %101, i64* %103, align 8
  %104 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %105 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %108 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @qib_cmp24(i64 %106, i32 %109)
  %111 = icmp sle i32 %110, 0
  br i1 %111, label %112, label %127

112:                                              ; preds = %100
  %113 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %114 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %117 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @qib_cmp24(i64 %115, i32 %118)
  %120 = icmp sle i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %112
  %122 = load i32, i32* @RVT_S_WAIT_PSN, align 4
  %123 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %124 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %121, %112, %100
  ret void
}

declare dso_local %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp*, i64) #1

declare dso_local i32 @qib_cmp24(i64, i32) #1

declare dso_local i8* @OP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
