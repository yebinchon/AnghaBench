; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_nldev.c_fill_stat_counter_hwcounters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_nldev.c_fill_stat_counter_hwcounters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.rdma_counter = type { %struct.rdma_hw_stats* }
%struct.rdma_hw_stats = type { i32, i32*, i32* }
%struct.nlattr = type { i32 }

@RDMA_NLDEV_ATTR_STAT_HWCOUNTERS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.rdma_counter*)* @fill_stat_counter_hwcounters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_stat_counter_hwcounters(%struct.sk_buff* %0, %struct.rdma_counter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.rdma_counter*, align 8
  %6 = alloca %struct.rdma_hw_stats*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.rdma_counter* %1, %struct.rdma_counter** %5, align 8
  %9 = load %struct.rdma_counter*, %struct.rdma_counter** %5, align 8
  %10 = getelementptr inbounds %struct.rdma_counter, %struct.rdma_counter* %9, i32 0, i32 0
  %11 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %10, align 8
  store %struct.rdma_hw_stats* %11, %struct.rdma_hw_stats** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = load i32, i32* @RDMA_NLDEV_ATTR_STAT_HWCOUNTERS, align 4
  %14 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %12, i32 %13)
  store %struct.nlattr* %14, %struct.nlattr** %7, align 8
  %15 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %16 = icmp ne %struct.nlattr* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EMSGSIZE, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %60

20:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %47, %20
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %6, align 8
  %24 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %21
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %6, align 8
  %30 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %6, align 8
  %37 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @fill_stat_hwcounter_entry(%struct.sk_buff* %28, i32 %35, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %27
  br label %54

46:                                               ; preds = %27
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %21

50:                                               ; preds = %21
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %53 = call i32 @nla_nest_end(%struct.sk_buff* %51, %struct.nlattr* %52)
  store i32 0, i32* %3, align 4
  br label %60

54:                                               ; preds = %45
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %57 = call i32 @nla_nest_cancel(%struct.sk_buff* %55, %struct.nlattr* %56)
  %58 = load i32, i32* @EMSGSIZE, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %54, %50, %17
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i64 @fill_stat_hwcounter_entry(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
