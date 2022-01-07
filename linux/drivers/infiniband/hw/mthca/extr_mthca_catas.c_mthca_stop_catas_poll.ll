; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_catas.c_mthca_stop_catas_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_catas.c_mthca_stop_catas_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32 }

@catas_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mthca_stop_catas_poll(%struct.mthca_dev* %0) #0 {
  %2 = alloca %struct.mthca_dev*, align 8
  store %struct.mthca_dev* %0, %struct.mthca_dev** %2, align 8
  %3 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %4 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 2
  %6 = call i32 @del_timer_sync(i32* %5)
  %7 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %8 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %14 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @iounmap(i64 %16)
  br label %18

18:                                               ; preds = %12, %1
  %19 = call i32 @spin_lock_irq(i32* @catas_lock)
  %20 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %21 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @list_del(i32* %22)
  %24 = call i32 @spin_unlock_irq(i32* @catas_lock)
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
