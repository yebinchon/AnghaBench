; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_child_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_child_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipoib_dev_priv = type { i32, %struct.TYPE_2__*, i32, i32, %struct.net_device* }
%struct.TYPE_2__ = type { i32* }

@IPOIB_FLAG_SUBINTERFACE = common dso_local global i32 0, align 4
@INFINIBAND_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ipoib_child_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipoib_child_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ipoib_dev_priv*, align 8
  %4 = alloca %struct.ipoib_dev_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %5)
  store %struct.ipoib_dev_priv* %6, %struct.ipoib_dev_priv** %3, align 8
  %7 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %8 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %7, i32 0, i32 4
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  %10 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %9)
  store %struct.ipoib_dev_priv* %10, %struct.ipoib_dev_priv** %4, align 8
  %11 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %12 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %15 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @IPOIB_FLAG_SUBINTERFACE, align 4
  %17 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %18 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %17, i32 0, i32 2
  %19 = call i32 @set_bit(i32 %16, i32* %18)
  %20 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %21 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %26 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* @INFINIBAND_ALEN, align 4
  %31 = call i32 @memcpy(i32* %24, i32* %29, i32 %30)
  %32 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %33 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %32, i32 0, i32 0
  %34 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %35 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %34, i32 0, i32 0
  %36 = call i32 @memcpy(i32* %33, i32* %35, i32 4)
  ret void
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
