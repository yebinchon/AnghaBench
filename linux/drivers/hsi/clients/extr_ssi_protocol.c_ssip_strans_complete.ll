; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_strans_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_strans_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_msg = type { %struct.hsi_msg*, %struct.hsi_client* }
%struct.hsi_client = type { i32 }
%struct.ssi_protocol = type { i32 }

@SENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hsi_msg*)* @ssip_strans_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssip_strans_complete(%struct.hsi_msg* %0) #0 {
  %2 = alloca %struct.hsi_msg*, align 8
  %3 = alloca %struct.hsi_client*, align 8
  %4 = alloca %struct.ssi_protocol*, align 8
  %5 = alloca %struct.hsi_msg*, align 8
  store %struct.hsi_msg* %0, %struct.hsi_msg** %2, align 8
  %6 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %7 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %6, i32 0, i32 1
  %8 = load %struct.hsi_client*, %struct.hsi_client** %7, align 8
  store %struct.hsi_client* %8, %struct.hsi_client** %3, align 8
  %9 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %10 = call %struct.ssi_protocol* @hsi_client_drvdata(%struct.hsi_client* %9)
  store %struct.ssi_protocol* %10, %struct.ssi_protocol** %4, align 8
  %11 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %12 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %11, i32 0, i32 0
  %13 = load %struct.hsi_msg*, %struct.hsi_msg** %12, align 8
  store %struct.hsi_msg* %13, %struct.hsi_msg** %5, align 8
  %14 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %15 = call i32 @ssip_release_cmd(%struct.hsi_msg* %14)
  %16 = load %struct.ssi_protocol*, %struct.ssi_protocol** %4, align 8
  %17 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_bh(i32* %17)
  %19 = load %struct.ssi_protocol*, %struct.ssi_protocol** %4, align 8
  %20 = load i32, i32* @SENDING, align 4
  %21 = call i32 @ssip_set_txstate(%struct.ssi_protocol* %19, i32 %20)
  %22 = load %struct.ssi_protocol*, %struct.ssi_protocol** %4, align 8
  %23 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock_bh(i32* %23)
  %25 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %26 = load %struct.hsi_msg*, %struct.hsi_msg** %5, align 8
  %27 = call i32 @hsi_async_write(%struct.hsi_client* %25, %struct.hsi_msg* %26)
  ret void
}

declare dso_local %struct.ssi_protocol* @hsi_client_drvdata(%struct.hsi_client*) #1

declare dso_local i32 @ssip_release_cmd(%struct.hsi_msg*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ssip_set_txstate(%struct.ssi_protocol*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @hsi_async_write(%struct.hsi_client*, %struct.hsi_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
