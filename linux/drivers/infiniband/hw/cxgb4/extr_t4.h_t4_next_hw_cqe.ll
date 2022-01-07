; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_t4.h_t4_next_hw_cqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_t4.h_t4_next_hw_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_cq = type { i32, i64, i64, i32, %struct.t4_cqe*, i32 }
%struct.t4_cqe = type { i64 }

@EOVERFLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"cq overflow cqid %u\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t4_cq*, %struct.t4_cqe**)* @t4_next_hw_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t4_next_hw_cqe(%struct.t4_cq* %0, %struct.t4_cqe** %1) #0 {
  %3 = alloca %struct.t4_cq*, align 8
  %4 = alloca %struct.t4_cqe**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.t4_cq* %0, %struct.t4_cq** %3, align 8
  store %struct.t4_cqe** %1, %struct.t4_cqe*** %4, align 8
  %7 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %8 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %13 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = sub i64 %14, 1
  store i64 %15, i64* %6, align 8
  br label %22

16:                                               ; preds = %2
  %17 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %18 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %6, align 8
  br label %22

22:                                               ; preds = %16, %11
  %23 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %24 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %23, i32 0, i32 4
  %25 = load %struct.t4_cqe*, %struct.t4_cqe** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds %struct.t4_cqe, %struct.t4_cqe* %25, i64 %26
  %28 = getelementptr inbounds %struct.t4_cqe, %struct.t4_cqe* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %31 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %22
  %35 = load i32, i32* @EOVERFLOW, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  %37 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %38 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %37, i32 0, i32 3
  store i32 1, i32* %38, align 8
  %39 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %40 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %70

43:                                               ; preds = %22
  %44 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %45 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %46 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %45, i32 0, i32 4
  %47 = load %struct.t4_cqe*, %struct.t4_cqe** %46, align 8
  %48 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %49 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.t4_cqe, %struct.t4_cqe* %47, i64 %51
  %53 = call i64 @t4_valid_cqe(%struct.t4_cq* %44, %struct.t4_cqe* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %43
  %56 = call i32 (...) @rmb()
  %57 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %58 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %57, i32 0, i32 4
  %59 = load %struct.t4_cqe*, %struct.t4_cqe** %58, align 8
  %60 = load %struct.t4_cq*, %struct.t4_cq** %3, align 8
  %61 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.t4_cqe, %struct.t4_cqe* %59, i64 %63
  %65 = load %struct.t4_cqe**, %struct.t4_cqe*** %4, align 8
  store %struct.t4_cqe* %64, %struct.t4_cqe** %65, align 8
  store i32 0, i32* %5, align 4
  br label %69

66:                                               ; preds = %43
  %67 = load i32, i32* @ENODATA, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %66, %55
  br label %70

70:                                               ; preds = %69, %34
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i64 @t4_valid_cqe(%struct.t4_cq*, %struct.t4_cqe*) #1

declare dso_local i32 @rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
