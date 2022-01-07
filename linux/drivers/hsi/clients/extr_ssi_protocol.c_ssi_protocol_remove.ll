; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssi_protocol_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssi_protocol_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hsi_client = type { i32 }
%struct.ssi_protocol = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ssi_protocol_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssi_protocol_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.hsi_client*, align 8
  %4 = alloca %struct.ssi_protocol*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.hsi_client* @to_hsi_client(%struct.device* %5)
  store %struct.hsi_client* %6, %struct.hsi_client** %3, align 8
  %7 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %8 = call %struct.ssi_protocol* @hsi_client_drvdata(%struct.hsi_client* %7)
  store %struct.ssi_protocol* %8, %struct.ssi_protocol** %4, align 8
  %9 = load %struct.ssi_protocol*, %struct.ssi_protocol** %4, align 8
  %10 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %9, i32 0, i32 1
  %11 = call i32 @list_del(i32* %10)
  %12 = load %struct.ssi_protocol*, %struct.ssi_protocol** %4, align 8
  %13 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @unregister_netdev(i32 %14)
  %16 = load %struct.ssi_protocol*, %struct.ssi_protocol** %4, align 8
  %17 = call i32 @ssip_free_cmds(%struct.ssi_protocol* %16)
  %18 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %19 = call i32 @hsi_client_set_drvdata(%struct.hsi_client* %18, i32* null)
  %20 = load %struct.ssi_protocol*, %struct.ssi_protocol** %4, align 8
  %21 = call i32 @kfree(%struct.ssi_protocol* %20)
  ret i32 0
}

declare dso_local %struct.hsi_client* @to_hsi_client(%struct.device*) #1

declare dso_local %struct.ssi_protocol* @hsi_client_drvdata(%struct.hsi_client*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @unregister_netdev(i32) #1

declare dso_local i32 @ssip_free_cmds(%struct.ssi_protocol*) #1

declare dso_local i32 @hsi_client_set_drvdata(%struct.hsi_client*, i32*) #1

declare dso_local i32 @kfree(%struct.ssi_protocol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
