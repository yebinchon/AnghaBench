; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/extr_hsi_core.c_hsi_register_port_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/extr_hsi_core.c_hsi_register_port_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_client = type { void (%struct.hsi_client*, i64)*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hsi_port = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@hsi_event_notifier_call = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hsi_register_port_event(%struct.hsi_client* %0, void (%struct.hsi_client*, i64)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hsi_client*, align 8
  %5 = alloca void (%struct.hsi_client*, i64)*, align 8
  %6 = alloca %struct.hsi_port*, align 8
  store %struct.hsi_client* %0, %struct.hsi_client** %4, align 8
  store void (%struct.hsi_client*, i64)* %1, void (%struct.hsi_client*, i64)** %5, align 8
  %7 = load %struct.hsi_client*, %struct.hsi_client** %4, align 8
  %8 = call %struct.hsi_port* @hsi_get_port(%struct.hsi_client* %7)
  store %struct.hsi_port* %8, %struct.hsi_port** %6, align 8
  %9 = load void (%struct.hsi_client*, i64)*, void (%struct.hsi_client*, i64)** %5, align 8
  %10 = icmp ne void (%struct.hsi_client*, i64)* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.hsi_client*, %struct.hsi_client** %4, align 8
  %13 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %12, i32 0, i32 0
  %14 = load void (%struct.hsi_client*, i64)*, void (%struct.hsi_client*, i64)** %13, align 8
  %15 = icmp ne void (%struct.hsi_client*, i64)* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %11, %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %39

19:                                               ; preds = %11
  %20 = load %struct.hsi_client*, %struct.hsi_client** %4, align 8
  %21 = call i32 @hsi_port_claimed(%struct.hsi_client* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @EACCES, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %39

26:                                               ; preds = %19
  %27 = load void (%struct.hsi_client*, i64)*, void (%struct.hsi_client*, i64)** %5, align 8
  %28 = load %struct.hsi_client*, %struct.hsi_client** %4, align 8
  %29 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %28, i32 0, i32 0
  store void (%struct.hsi_client*, i64)* %27, void (%struct.hsi_client*, i64)** %29, align 8
  %30 = load i32, i32* @hsi_event_notifier_call, align 4
  %31 = load %struct.hsi_client*, %struct.hsi_client** %4, align 8
  %32 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load %struct.hsi_port*, %struct.hsi_port** %6, align 8
  %35 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %34, i32 0, i32 0
  %36 = load %struct.hsi_client*, %struct.hsi_client** %4, align 8
  %37 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %36, i32 0, i32 1
  %38 = call i32 @blocking_notifier_chain_register(i32* %35, %struct.TYPE_2__* %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %26, %23, %16
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.hsi_port* @hsi_get_port(%struct.hsi_client*) #1

declare dso_local i32 @hsi_port_claimed(%struct.hsi_client*) #1

declare dso_local i32 @blocking_notifier_chain_register(i32*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
