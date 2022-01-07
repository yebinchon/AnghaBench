; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_srq.c_mlx5_ib_srq_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_srq.c_mlx5_ib_srq_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_srq = type { i32 }
%struct.ib_event = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.ib_srq* }
%struct.ib_srq = type { i32, i32 (%struct.ib_event.0*, i32)*, i32 }
%struct.ib_event.0 = type opaque
%struct.TYPE_4__ = type { %struct.ib_srq }

@IB_EVENT_SRQ_LIMIT_REACHED = common dso_local global i32 0, align 4
@IB_EVENT_SRQ_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"mlx5_ib: Unexpected event type %d on SRQ %06x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_core_srq*, i32)* @mlx5_ib_srq_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_ib_srq_event(%struct.mlx5_core_srq* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5_core_srq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_event, align 8
  %6 = alloca %struct.ib_srq*, align 8
  store %struct.mlx5_core_srq* %0, %struct.mlx5_core_srq** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %3, align 8
  %8 = call %struct.TYPE_4__* @to_mibsrq(%struct.mlx5_core_srq* %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.ib_srq* %9, %struct.ib_srq** %6, align 8
  %10 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %11 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %10, i32 0, i32 1
  %12 = load i32 (%struct.ib_event.0*, i32)*, i32 (%struct.ib_event.0*, i32)** %11, align 8
  %13 = icmp ne i32 (%struct.ib_event.0*, i32)* %12, null
  br i1 %13, label %14, label %44

14:                                               ; preds = %2
  %15 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %16 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %5, i32 0, i32 2
  store i32 %17, i32* %18, align 8
  %19 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %20 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %5, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store %struct.ib_srq* %19, %struct.ib_srq** %21, align 8
  %22 = load i32, i32* %4, align 4
  switch i32 %22, label %29 [
    i32 128, label %23
    i32 129, label %26
  ]

23:                                               ; preds = %14
  %24 = load i32, i32* @IB_EVENT_SRQ_LIMIT_REACHED, align 4
  %25 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %5, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  br label %35

26:                                               ; preds = %14
  %27 = load i32, i32* @IB_EVENT_SRQ_ERR, align 4
  %28 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %5, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  br label %35

29:                                               ; preds = %14
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %3, align 8
  %32 = getelementptr inbounds %struct.mlx5_core_srq, %struct.mlx5_core_srq* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pr_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33)
  br label %44

35:                                               ; preds = %26, %23
  %36 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %37 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %36, i32 0, i32 1
  %38 = load i32 (%struct.ib_event.0*, i32)*, i32 (%struct.ib_event.0*, i32)** %37, align 8
  %39 = bitcast %struct.ib_event* %5 to %struct.ib_event.0*
  %40 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %41 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 %38(%struct.ib_event.0* %39, i32 %42)
  br label %44

44:                                               ; preds = %29, %35, %2
  ret void
}

declare dso_local %struct.TYPE_4__* @to_mibsrq(%struct.mlx5_core_srq*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
