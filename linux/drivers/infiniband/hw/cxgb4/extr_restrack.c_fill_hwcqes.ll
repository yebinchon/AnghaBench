; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_restrack.c_fill_hwcqes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_restrack.c_fill_hwcqes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.t4_cq = type { i64, i32 }
%struct.t4_cqe = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"hwcq_idx\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.t4_cq*, %struct.t4_cqe*)* @fill_hwcqes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_hwcqes(%struct.sk_buff* %0, %struct.t4_cq* %1, %struct.t4_cqe* %2) #0 {
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
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.t4_cq*, %struct.t4_cq** %6, align 8
  %15 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %16, 1
  br label %24

18:                                               ; preds = %3
  %19 = load %struct.t4_cq*, %struct.t4_cq** %6, align 8
  %20 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  br label %24

24:                                               ; preds = %18, %13
  %25 = phi i64 [ %17, %13 ], [ %23, %18 ]
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = load %struct.t4_cqe*, %struct.t4_cqe** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @fill_cqe(%struct.sk_buff* %27, %struct.t4_cqe* %28, i32 %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %46

33:                                               ; preds = %24
  %34 = load %struct.t4_cq*, %struct.t4_cq** %6, align 8
  %35 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %8, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = load %struct.t4_cqe*, %struct.t4_cqe** %7, align 8
  %40 = getelementptr inbounds %struct.t4_cqe, %struct.t4_cqe* %39, i64 1
  %41 = load i32, i32* %8, align 4
  %42 = call i64 @fill_cqe(%struct.sk_buff* %38, %struct.t4_cqe* %40, i32 %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %46

45:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %49

46:                                               ; preds = %44, %32
  %47 = load i32, i32* @EMSGSIZE, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %46, %45
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i64 @fill_cqe(%struct.sk_buff*, %struct.t4_cqe*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
