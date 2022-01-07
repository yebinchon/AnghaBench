; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb3/extr_cxio_hal.c_cxio_hal_cq_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb3/extr_cxio_hal.c_cxio_hal_cq_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxio_rdev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32, %struct.rdma_cq_op*)* }
%struct.rdma_cq_op = type { i32, i64, i32 }
%struct.t3_cq = type { i32, %struct.t3_cqe*, i64, i32 }
%struct.t3_cqe = type { i32 }

@CQ_CREDIT_UPDATE = common dso_local global i32 0, align 4
@RDMA_CQ_OP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%s: stalled rnic\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxio_hal_cq_op(%struct.cxio_rdev* %0, %struct.t3_cq* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cxio_rdev*, align 8
  %7 = alloca %struct.t3_cq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.t3_cqe*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.rdma_cq_op, align 8
  %14 = alloca i32, align 4
  store %struct.cxio_rdev* %0, %struct.cxio_rdev** %6, align 8
  store %struct.t3_cq* %1, %struct.t3_cq** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %15 = load %struct.t3_cq*, %struct.t3_cq** %7, align 8
  %16 = getelementptr inbounds %struct.t3_cq, %struct.t3_cq* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds %struct.rdma_cq_op, %struct.rdma_cq_op* %13, i32 0, i32 2
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @CQ_CREDIT_UPDATE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i64, i64* %9, align 8
  br label %25

24:                                               ; preds = %4
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i64 [ %23, %22 ], [ 0, %24 ]
  %27 = getelementptr inbounds %struct.rdma_cq_op, %struct.rdma_cq_op* %13, i32 0, i32 1
  store i64 %26, i64* %27, align 8
  %28 = load i32, i32* %8, align 4
  %29 = getelementptr inbounds %struct.rdma_cq_op, %struct.rdma_cq_op* %13, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = load %struct.cxio_rdev*, %struct.cxio_rdev** %6, align 8
  %31 = getelementptr inbounds %struct.cxio_rdev, %struct.cxio_rdev* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_2__*, i32, %struct.rdma_cq_op*)*, i32 (%struct.TYPE_2__*, i32, %struct.rdma_cq_op*)** %33, align 8
  %35 = load %struct.cxio_rdev*, %struct.cxio_rdev** %6, align 8
  %36 = getelementptr inbounds %struct.cxio_rdev, %struct.cxio_rdev* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* @RDMA_CQ_OP, align 4
  %39 = call i32 %34(%struct.TYPE_2__* %37, i32 %38, %struct.rdma_cq_op* %13)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %25
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @CQ_CREDIT_UPDATE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42, %25
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %5, align 4
  br label %109

48:                                               ; preds = %42
  %49 = load %struct.t3_cq*, %struct.t3_cq** %7, align 8
  %50 = getelementptr inbounds %struct.t3_cq, %struct.t3_cq* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.t3_cq*, %struct.t3_cq** %7, align 8
  %53 = getelementptr inbounds %struct.t3_cq, %struct.t3_cq* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @Q_PTR2IDX(i64 %51, i32 %54)
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %108

58:                                               ; preds = %48
  store i32 0, i32* %14, align 4
  %59 = load %struct.t3_cq*, %struct.t3_cq** %7, align 8
  %60 = getelementptr inbounds %struct.t3_cq, %struct.t3_cq* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %12, align 8
  br label %62

62:                                               ; preds = %71, %58
  %63 = load i64, i64* %12, align 8
  %64 = add nsw i64 %63, 1
  %65 = load %struct.t3_cq*, %struct.t3_cq** %7, align 8
  %66 = getelementptr inbounds %struct.t3_cq, %struct.t3_cq* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @Q_PTR2IDX(i64 %64, i32 %67)
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load i64, i64* %12, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %12, align 8
  br label %62

74:                                               ; preds = %62
  %75 = load %struct.t3_cq*, %struct.t3_cq** %7, align 8
  %76 = getelementptr inbounds %struct.t3_cq, %struct.t3_cq* %75, i32 0, i32 1
  %77 = load %struct.t3_cqe*, %struct.t3_cqe** %76, align 8
  %78 = load i64, i64* %12, align 8
  %79 = load %struct.t3_cq*, %struct.t3_cq** %7, align 8
  %80 = getelementptr inbounds %struct.t3_cq, %struct.t3_cq* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @Q_PTR2IDX(i64 %78, i32 %81)
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.t3_cqe, %struct.t3_cqe* %77, i64 %83
  store %struct.t3_cqe* %84, %struct.t3_cqe** %11, align 8
  br label %85

85:                                               ; preds = %106, %74
  %86 = load i64, i64* %12, align 8
  %87 = load %struct.t3_cq*, %struct.t3_cq** %7, align 8
  %88 = getelementptr inbounds %struct.t3_cq, %struct.t3_cq* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.t3_cqe*, %struct.t3_cqe** %11, align 8
  %91 = call i32 @CQ_VLD_ENTRY(i64 %86, i32 %89, %struct.t3_cqe* %90)
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  br i1 %93, label %94, label %107

94:                                               ; preds = %85
  %95 = call i32 @udelay(i32 1)
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %14, align 4
  %98 = icmp sgt i32 %96, 1000000
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = load %struct.cxio_rdev*, %struct.cxio_rdev** %6, align 8
  %101 = getelementptr inbounds %struct.cxio_rdev, %struct.cxio_rdev* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @EIO, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %5, align 4
  br label %109

106:                                              ; preds = %94
  br label %85

107:                                              ; preds = %85
  store i32 1, i32* %5, align 4
  br label %109

108:                                              ; preds = %48
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %108, %107, %99, %46
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @Q_PTR2IDX(i64, i32) #1

declare dso_local i32 @CQ_VLD_ENTRY(i64, i32, %struct.t3_cqe*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
