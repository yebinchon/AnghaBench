; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cq.c_c4iw_count_rcqes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cq.c_c4iw_count_rcqes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_cq = type { i64, i64, i64, %struct.t4_cqe* }
%struct.t4_cqe = type { i32 }
%struct.t4_wq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"count zero %d\0A\00", align 1
@FW_RI_READ_RESP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"cq %p count %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c4iw_count_rcqes(%struct.t4_cq* %0, %struct.t4_wq* %1, i32* %2) #0 {
  %4 = alloca %struct.t4_cq*, align 8
  %5 = alloca %struct.t4_wq*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.t4_cqe*, align 8
  %8 = alloca i64, align 8
  store %struct.t4_cq* %0, %struct.t4_cq** %4, align 8
  store %struct.t4_wq* %1, %struct.t4_wq** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = load i32, i32* %10, align 4
  %12 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.t4_cq*, %struct.t4_cq** %4, align 8
  %14 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  br label %16

16:                                               ; preds = %61, %3
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.t4_cq*, %struct.t4_cq** %4, align 8
  %19 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %62

22:                                               ; preds = %16
  %23 = load %struct.t4_cq*, %struct.t4_cq** %4, align 8
  %24 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %23, i32 0, i32 3
  %25 = load %struct.t4_cqe*, %struct.t4_cqe** %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds %struct.t4_cqe, %struct.t4_cqe* %25, i64 %26
  store %struct.t4_cqe* %27, %struct.t4_cqe** %7, align 8
  %28 = load %struct.t4_cqe*, %struct.t4_cqe** %7, align 8
  %29 = call i64 @RQ_TYPE(%struct.t4_cqe* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %22
  %32 = load %struct.t4_cqe*, %struct.t4_cqe** %7, align 8
  %33 = call i64 @CQE_OPCODE(%struct.t4_cqe* %32)
  %34 = load i64, i64* @FW_RI_READ_RESP, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %31
  %37 = load %struct.t4_cqe*, %struct.t4_cqe** %7, align 8
  %38 = call i64 @CQE_QPID(%struct.t4_cqe* %37)
  %39 = load %struct.t4_wq*, %struct.t4_wq** %5, align 8
  %40 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %38, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %36
  %45 = load %struct.t4_cqe*, %struct.t4_cqe** %7, align 8
  %46 = load %struct.t4_wq*, %struct.t4_wq** %5, align 8
  %47 = call i64 @cqe_completes_wr(%struct.t4_cqe* %45, %struct.t4_wq* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %49, %44, %36, %31, %22
  %54 = load i64, i64* %8, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %8, align 8
  %56 = load %struct.t4_cq*, %struct.t4_cq** %4, align 8
  %57 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i64 0, i64* %8, align 8
  br label %61

61:                                               ; preds = %60, %53
  br label %16

62:                                               ; preds = %16
  %63 = load %struct.t4_cq*, %struct.t4_cq** %4, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.t4_cq* %63, i32 %65)
  ret void
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i64 @RQ_TYPE(%struct.t4_cqe*) #1

declare dso_local i64 @CQE_OPCODE(%struct.t4_cqe*) #1

declare dso_local i64 @CQE_QPID(%struct.t4_cqe*) #1

declare dso_local i64 @cqe_completes_wr(%struct.t4_cqe*, %struct.t4_wq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
