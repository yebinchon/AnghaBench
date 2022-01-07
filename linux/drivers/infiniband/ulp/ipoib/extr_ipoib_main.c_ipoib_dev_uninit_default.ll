; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_dev_uninit_default.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_dev_uninit_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipoib_dev_priv = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ipoib_dev_uninit_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipoib_dev_uninit_default(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ipoib_dev_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %4)
  store %struct.ipoib_dev_priv* %5, %struct.ipoib_dev_priv** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i32 @ipoib_transport_dev_cleanup(%struct.net_device* %6)
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call i32 @ipoib_napi_del(%struct.net_device* %8)
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call i32 @ipoib_cm_dev_cleanup(%struct.net_device* %10)
  %12 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %13 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @kfree(i32* %14)
  %16 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %17 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @vfree(i32* %18)
  %20 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %21 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %23 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  ret void
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

declare dso_local i32 @ipoib_transport_dev_cleanup(%struct.net_device*) #1

declare dso_local i32 @ipoib_napi_del(%struct.net_device*) #1

declare dso_local i32 @ipoib_cm_dev_cleanup(%struct.net_device*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
