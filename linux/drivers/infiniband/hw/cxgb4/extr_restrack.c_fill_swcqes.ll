; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_restrack.c_fill_swcqes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_restrack.c_fill_swcqes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.t4_cq = type { i32, i32, i64, i32 }
%struct.t4_cqe = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"swcq_idx\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.t4_cq*, %struct.t4_cqe*)* @fill_swcqes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_swcqes(%struct.sk_buff* %0, %struct.t4_cq* %1, %struct.t4_cqe* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.t4_cq*, align 8
  %7 = alloca %struct.t4_cqe*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.t4_cq* %1, %struct.t4_cq** %6, align 8
  store %struct.t4_cqe* %2, %struct.t4_cqe** %7, align 8
  %9 = load %struct.t4_cq*, %struct.t4_cq** %6, align 8
  %10 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %61

14:                                               ; preds = %3
  %15 = load %struct.t4_cq*, %struct.t4_cq** %6, align 8
  %16 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = load %struct.t4_cqe*, %struct.t4_cqe** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @fill_cqe(%struct.sk_buff* %18, %struct.t4_cqe* %19, i32 %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %58

24:                                               ; preds = %14
  %25 = load %struct.t4_cq*, %struct.t4_cq** %6, align 8
  %26 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %57

30:                                               ; preds = %24
  %31 = load %struct.t4_cq*, %struct.t4_cq** %6, align 8
  %32 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.t4_cq*, %struct.t4_cq** %6, align 8
  %37 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %38, 1
  br label %46

40:                                               ; preds = %30
  %41 = load %struct.t4_cq*, %struct.t4_cq** %6, align 8
  %42 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  br label %46

46:                                               ; preds = %40, %35
  %47 = phi i64 [ %39, %35 ], [ %45, %40 ]
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %8, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = load %struct.t4_cqe*, %struct.t4_cqe** %7, align 8
  %51 = getelementptr inbounds %struct.t4_cqe, %struct.t4_cqe* %50, i64 1
  %52 = load i32, i32* %8, align 4
  %53 = call i64 @fill_cqe(%struct.sk_buff* %49, %struct.t4_cqe* %51, i32 %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %58

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56, %29
  store i32 0, i32* %4, align 4
  br label %61

58:                                               ; preds = %55, %23
  %59 = load i32, i32* @EMSGSIZE, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %58, %57, %13
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i64 @fill_cqe(%struct.sk_buff*, %struct.t4_cqe*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
