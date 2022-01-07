; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_restrack.c_fill_swsqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_restrack.c_fill_swsqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.t4_sq = type { i32 }
%struct.t4_swsqe = type { i64, i64, i32, i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"idx\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"opcode\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"complete\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"cqe_status\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"signaled\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"flushed\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.t4_sq*, i64, %struct.t4_swsqe*)* @fill_swsqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_swsqe(%struct.sk_buff* %0, %struct.t4_sq* %1, i64 %2, %struct.t4_swsqe* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.t4_sq*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.t4_swsqe*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.t4_sq* %1, %struct.t4_sq** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.t4_swsqe* %3, %struct.t4_swsqe** %9, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = load i64, i64* %8, align 8
  %12 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %61

15:                                               ; preds = %4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = load %struct.t4_swsqe*, %struct.t4_swsqe** %9, align 8
  %18 = getelementptr inbounds %struct.t4_swsqe, %struct.t4_swsqe* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %61

23:                                               ; preds = %15
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = load %struct.t4_swsqe*, %struct.t4_swsqe** %9, align 8
  %26 = getelementptr inbounds %struct.t4_swsqe, %struct.t4_swsqe* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %61

31:                                               ; preds = %23
  %32 = load %struct.t4_swsqe*, %struct.t4_swsqe** %9, align 8
  %33 = getelementptr inbounds %struct.t4_swsqe, %struct.t4_swsqe* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = load %struct.t4_swsqe*, %struct.t4_swsqe** %9, align 8
  %39 = getelementptr inbounds %struct.t4_swsqe, %struct.t4_swsqe* %38, i32 0, i32 2
  %40 = call i64 @CQE_STATUS(i32* %39)
  %41 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %61

44:                                               ; preds = %36, %31
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = load %struct.t4_swsqe*, %struct.t4_swsqe** %9, align 8
  %47 = getelementptr inbounds %struct.t4_swsqe, %struct.t4_swsqe* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %61

52:                                               ; preds = %44
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = load %struct.t4_swsqe*, %struct.t4_swsqe** %9, align 8
  %55 = getelementptr inbounds %struct.t4_swsqe, %struct.t4_swsqe* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %61

60:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %64

61:                                               ; preds = %59, %51, %43, %30, %22, %14
  %62 = load i32, i32* @EMSGSIZE, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %61, %60
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i64 @rdma_nl_put_driver_u32(%struct.sk_buff*, i8*, i64) #1

declare dso_local i64 @CQE_STATUS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
