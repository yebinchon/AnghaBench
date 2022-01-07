; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_sched_ib_sl2vl_update_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_sched_ib_sl2vl_update_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { i32 }
%struct.ib_event_work = type { i32, i32, %struct.mlx4_ib_dev* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ib_sl2vl_update_work = common dso_local global i32 0, align 4
@wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_sched_ib_sl2vl_update_work(%struct.mlx4_ib_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx4_ib_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_event_work*, align 8
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @GFP_ATOMIC, align 4
  %7 = call %struct.ib_event_work* @kmalloc(i32 16, i32 %6)
  store %struct.ib_event_work* %7, %struct.ib_event_work** %5, align 8
  %8 = load %struct.ib_event_work*, %struct.ib_event_work** %5, align 8
  %9 = icmp ne %struct.ib_event_work* %8, null
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = load %struct.ib_event_work*, %struct.ib_event_work** %5, align 8
  %12 = getelementptr inbounds %struct.ib_event_work, %struct.ib_event_work* %11, i32 0, i32 1
  %13 = load i32, i32* @ib_sl2vl_update_work, align 4
  %14 = call i32 @INIT_WORK(i32* %12, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.ib_event_work*, %struct.ib_event_work** %5, align 8
  %17 = getelementptr inbounds %struct.ib_event_work, %struct.ib_event_work* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %19 = load %struct.ib_event_work*, %struct.ib_event_work** %5, align 8
  %20 = getelementptr inbounds %struct.ib_event_work, %struct.ib_event_work* %19, i32 0, i32 2
  store %struct.mlx4_ib_dev* %18, %struct.mlx4_ib_dev** %20, align 8
  %21 = load i32, i32* @wq, align 4
  %22 = load %struct.ib_event_work*, %struct.ib_event_work** %5, align 8
  %23 = getelementptr inbounds %struct.ib_event_work, %struct.ib_event_work* %22, i32 0, i32 1
  %24 = call i32 @queue_work(i32 %21, i32* %23)
  br label %25

25:                                               ; preds = %10, %2
  ret void
}

declare dso_local %struct.ib_event_work* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
