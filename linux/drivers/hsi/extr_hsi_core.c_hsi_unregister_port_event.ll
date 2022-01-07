; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/extr_hsi_core.c_hsi_unregister_port_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/extr_hsi_core.c_hsi_unregister_port_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_client = type { i32*, i32 }
%struct.hsi_port = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hsi_unregister_port_event(%struct.hsi_client* %0) #0 {
  %2 = alloca %struct.hsi_client*, align 8
  %3 = alloca %struct.hsi_port*, align 8
  %4 = alloca i32, align 4
  store %struct.hsi_client* %0, %struct.hsi_client** %2, align 8
  %5 = load %struct.hsi_client*, %struct.hsi_client** %2, align 8
  %6 = call %struct.hsi_port* @hsi_get_port(%struct.hsi_client* %5)
  store %struct.hsi_port* %6, %struct.hsi_port** %3, align 8
  %7 = load %struct.hsi_client*, %struct.hsi_client** %2, align 8
  %8 = call i32 @hsi_port_claimed(%struct.hsi_client* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = load %struct.hsi_port*, %struct.hsi_port** %3, align 8
  %14 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %13, i32 0, i32 0
  %15 = load %struct.hsi_client*, %struct.hsi_client** %2, align 8
  %16 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %15, i32 0, i32 1
  %17 = call i32 @blocking_notifier_chain_unregister(i32* %14, i32* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load %struct.hsi_client*, %struct.hsi_client** %2, align 8
  %22 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  br label %23

23:                                               ; preds = %20, %1
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local %struct.hsi_port* @hsi_get_port(%struct.hsi_client*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @hsi_port_claimed(%struct.hsi_client*) #1

declare dso_local i32 @blocking_notifier_chain_unregister(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
