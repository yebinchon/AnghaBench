; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_mcast_start_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_mcast_start_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipoib_dev_priv = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"starting multicast thread\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipoib_mcast_start_thread(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ipoib_dev_priv*, align 8
  %4 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %5)
  store %struct.ipoib_dev_priv* %6, %struct.ipoib_dev_priv** %3, align 8
  %7 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %8 = call i32 @ipoib_dbg_mcast(%struct.ipoib_dev_priv* %7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %10 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %9, i32 0, i32 0
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %14 = call i32 @__ipoib_mcast_schedule_join_thread(%struct.ipoib_dev_priv* %13, i32* null, i32 0)
  %15 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %16 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %15, i32 0, i32 0
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @spin_unlock_irqrestore(i32* %16, i64 %17)
  ret void
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

declare dso_local i32 @ipoib_dbg_mcast(%struct.ipoib_dev_priv*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__ipoib_mcast_schedule_join_thread(%struct.ipoib_dev_priv*, i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
