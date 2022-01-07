; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_add_ndev_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_add_ndev_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_port_data = type { i64, i32 }

@ndev_hash_lock = common dso_local global i32 0, align 4
@ndev_hash = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_port_data*)* @add_ndev_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_ndev_hash(%struct.ib_port_data* %0) #0 {
  %2 = alloca %struct.ib_port_data*, align 8
  %3 = alloca i64, align 8
  store %struct.ib_port_data* %0, %struct.ib_port_data** %2, align 8
  %4 = call i32 (...) @might_sleep()
  %5 = load i64, i64* %3, align 8
  %6 = call i32 @spin_lock_irqsave(i32* @ndev_hash_lock, i64 %5)
  %7 = load %struct.ib_port_data*, %struct.ib_port_data** %2, align 8
  %8 = getelementptr inbounds %struct.ib_port_data, %struct.ib_port_data* %7, i32 0, i32 1
  %9 = call i64 @hash_hashed(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.ib_port_data*, %struct.ib_port_data** %2, align 8
  %13 = getelementptr inbounds %struct.ib_port_data, %struct.ib_port_data* %12, i32 0, i32 1
  %14 = call i32 @hash_del_rcu(i32* %13)
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @spin_unlock_irqrestore(i32* @ndev_hash_lock, i64 %15)
  %17 = call i32 (...) @synchronize_rcu()
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @spin_lock_irqsave(i32* @ndev_hash_lock, i64 %18)
  br label %20

20:                                               ; preds = %11, %1
  %21 = load %struct.ib_port_data*, %struct.ib_port_data** %2, align 8
  %22 = getelementptr inbounds %struct.ib_port_data, %struct.ib_port_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load i32, i32* @ndev_hash, align 4
  %27 = load %struct.ib_port_data*, %struct.ib_port_data** %2, align 8
  %28 = getelementptr inbounds %struct.ib_port_data, %struct.ib_port_data* %27, i32 0, i32 1
  %29 = load %struct.ib_port_data*, %struct.ib_port_data** %2, align 8
  %30 = getelementptr inbounds %struct.ib_port_data, %struct.ib_port_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @hash_add_rcu(i32 %26, i32* %28, i64 %31)
  br label %33

33:                                               ; preds = %25, %20
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* @ndev_hash_lock, i64 %34)
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @hash_hashed(i32*) #1

declare dso_local i32 @hash_del_rcu(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @hash_add_rcu(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
