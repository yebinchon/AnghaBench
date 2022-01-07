; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_neigh_refresh_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_neigh_refresh_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_neigh = type { i32 }
%struct.net_device = type { i32 }
%struct.ipoib_dev_priv = type { i32 }
%struct.ipoib_path = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipoib_neigh*, i32*, %struct.net_device*)* @neigh_refresh_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neigh_refresh_path(%struct.ipoib_neigh* %0, i32* %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.ipoib_neigh*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ipoib_dev_priv*, align 8
  %8 = alloca %struct.ipoib_path*, align 8
  %9 = alloca i64, align 8
  store %struct.ipoib_neigh* %0, %struct.ipoib_neigh** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %6, align 8
  %11 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %10)
  store %struct.ipoib_dev_priv* %11, %struct.ipoib_dev_priv** %7, align 8
  %12 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %13 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 4
  %19 = call %struct.ipoib_path* @__path_find(%struct.net_device* %16, i32* %18)
  store %struct.ipoib_path* %19, %struct.ipoib_path** %8, align 8
  %20 = load %struct.ipoib_path*, %struct.ipoib_path** %8, align 8
  %21 = icmp ne %struct.ipoib_path* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  br label %33

23:                                               ; preds = %3
  %24 = load %struct.ipoib_path*, %struct.ipoib_path** %8, align 8
  %25 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load %struct.net_device*, %struct.net_device** %6, align 8
  %30 = load %struct.ipoib_path*, %struct.ipoib_path** %8, align 8
  %31 = call i32 @path_rec_start(%struct.net_device* %29, %struct.ipoib_path* %30)
  br label %32

32:                                               ; preds = %28, %23
  br label %33

33:                                               ; preds = %32, %22
  %34 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %35 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %34, i32 0, i32 0
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  ret void
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ipoib_path* @__path_find(%struct.net_device*, i32*) #1

declare dso_local i32 @path_rec_start(%struct.net_device*, %struct.ipoib_path*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
