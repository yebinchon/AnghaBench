; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_check_and_add_mcast_sendonly.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_check_and_add_mcast_sendonly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { i32, i32 }
%struct.list_head = type { i32 }
%struct.ipoib_mcast = type { i32, i32, i32 }

@IPOIB_MCAST_FLAG_SENDONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipoib_check_and_add_mcast_sendonly(%struct.ipoib_dev_priv* %0, i32* %1, %struct.list_head* %2) #0 {
  %4 = alloca %struct.ipoib_dev_priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.ipoib_mcast*, align 8
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.list_head* %2, %struct.list_head** %6, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 255
  br i1 %10, label %11, label %39

11:                                               ; preds = %3
  %12 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %13 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = call %struct.ipoib_mcast* @__ipoib_mcast_find(i32 %14, i32* %15)
  store %struct.ipoib_mcast* %16, %struct.ipoib_mcast** %7, align 8
  %17 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %7, align 8
  %18 = icmp ne %struct.ipoib_mcast* %17, null
  br i1 %18, label %19, label %38

19:                                               ; preds = %11
  %20 = load i32, i32* @IPOIB_MCAST_FLAG_SENDONLY, align 4
  %21 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %7, align 8
  %22 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %21, i32 0, i32 2
  %23 = call i64 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %19
  %26 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %7, align 8
  %27 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %26, i32 0, i32 0
  %28 = call i32 @list_del(i32* %27)
  %29 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %7, align 8
  %30 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %29, i32 0, i32 1
  %31 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %32 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %31, i32 0, i32 0
  %33 = call i32 @rb_erase(i32* %30, i32* %32)
  %34 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %7, align 8
  %35 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %34, i32 0, i32 0
  %36 = load %struct.list_head*, %struct.list_head** %6, align 8
  %37 = call i32 @list_add_tail(i32* %35, %struct.list_head* %36)
  br label %38

38:                                               ; preds = %25, %19, %11
  br label %39

39:                                               ; preds = %38, %3
  ret void
}

declare dso_local %struct.ipoib_mcast* @__ipoib_mcast_find(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
