; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c___ipoib_mcast_schedule_join_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c___ipoib_mcast_schedule_join_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { i32, i32, i32 }
%struct.ipoib_mcast = type { i32, i64 }

@IPOIB_FLAG_OPER_UP = common dso_local global i32 0, align 4
@IPOIB_MAX_BACKOFF_SECONDS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipoib_dev_priv*, %struct.ipoib_mcast*, i32)* @__ipoib_mcast_schedule_join_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ipoib_mcast_schedule_join_thread(%struct.ipoib_dev_priv* %0, %struct.ipoib_mcast* %1, i32 %2) #0 {
  %4 = alloca %struct.ipoib_dev_priv*, align 8
  %5 = alloca %struct.ipoib_mcast*, align 8
  %6 = alloca i32, align 4
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %4, align 8
  store %struct.ipoib_mcast* %1, %struct.ipoib_mcast** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @IPOIB_FLAG_OPER_UP, align 4
  %8 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %9 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %8, i32 0, i32 2
  %10 = call i32 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %72

13:                                               ; preds = %3
  %14 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %15 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %14, i32 0, i32 0
  %16 = call i32 @cancel_delayed_work(i32* %15)
  %17 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %18 = icmp ne %struct.ipoib_mcast* %17, null
  br i1 %18, label %19, label %53

19:                                               ; preds = %13
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %53

22:                                               ; preds = %19
  %23 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %24 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = mul nsw i32 %25, 2
  store i32 %26, i32* %24, align 8
  %27 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %28 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @IPOIB_MAX_BACKOFF_SECONDS, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load i32, i32* @IPOIB_MAX_BACKOFF_SECONDS, align 4
  %34 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %35 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %32, %22
  %37 = load i64, i64* @jiffies, align 8
  %38 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %39 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @HZ, align 4
  %42 = mul nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %37, %43
  %45 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %46 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %48 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %51 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %50, i32 0, i32 0
  %52 = call i32 @queue_delayed_work(i32 %49, i32* %51, i32 0)
  br label %72

53:                                               ; preds = %19, %13
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %58 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %61 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %60, i32 0, i32 0
  %62 = load i32, i32* @HZ, align 4
  %63 = call i32 @queue_delayed_work(i32 %59, i32* %61, i32 %62)
  br label %71

64:                                               ; preds = %53
  %65 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %66 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %69 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %68, i32 0, i32 0
  %70 = call i32 @queue_delayed_work(i32 %67, i32* %69, i32 0)
  br label %71

71:                                               ; preds = %64, %56
  br label %72

72:                                               ; preds = %12, %71, %36
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
