; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_ndo_uninit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_ndo_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipoib_dev_priv = type { %struct.net_device*, i32*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ipoib_ndo_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipoib_ndo_uninit(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ipoib_dev_priv*, align 8
  %4 = alloca %struct.ipoib_dev_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %5)
  store %struct.ipoib_dev_priv* %6, %struct.ipoib_dev_priv** %3, align 8
  %7 = call i32 (...) @ASSERT_RTNL()
  %8 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %9 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %8, i32 0, i32 4
  %10 = call i32 @list_empty(i32* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %16 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %15, i32 0, i32 0
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  %18 = icmp ne %struct.net_device* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %1
  %20 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %21 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %20, i32 0, i32 0
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  %23 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %22)
  store %struct.ipoib_dev_priv* %23, %struct.ipoib_dev_priv** %4, align 8
  %24 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %25 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %24, i32 0, i32 2
  %26 = call i32 @down_write(i32* %25)
  %27 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %28 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %27, i32 0, i32 3
  %29 = call i32 @list_del(i32* %28)
  %30 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %31 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %30, i32 0, i32 2
  %32 = call i32 @up_write(i32* %31)
  br label %33

33:                                               ; preds = %19, %1
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = call i32 @ipoib_neigh_hash_uninit(%struct.net_device* %34)
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = call i32 @ipoib_ib_dev_cleanup(%struct.net_device* %36)
  %38 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %39 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %33
  %43 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %44 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @flush_workqueue(i32* %45)
  %47 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %48 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @destroy_workqueue(i32* %49)
  %51 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %52 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %51, i32 0, i32 1
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %42, %33
  %54 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %55 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %54, i32 0, i32 0
  %56 = load %struct.net_device*, %struct.net_device** %55, align 8
  %57 = icmp ne %struct.net_device* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %60 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %59, i32 0, i32 0
  %61 = load %struct.net_device*, %struct.net_device** %60, align 8
  %62 = call i32 @dev_put(%struct.net_device* %61)
  br label %63

63:                                               ; preds = %58, %53
  ret void
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @ipoib_neigh_hash_uninit(%struct.net_device*) #1

declare dso_local i32 @ipoib_ib_dev_cleanup(%struct.net_device*) #1

declare dso_local i32 @flush_workqueue(i32*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
