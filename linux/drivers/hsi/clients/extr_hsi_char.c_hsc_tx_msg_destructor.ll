; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_hsi_char.c_hsc_tx_msg_destructor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_hsi_char.c_hsc_tx_msg_destructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_msg = type { i32 }

@HSI_STATUS_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hsi_msg*)* @hsc_tx_msg_destructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hsc_tx_msg_destructor(%struct.hsi_msg* %0) #0 {
  %2 = alloca %struct.hsi_msg*, align 8
  store %struct.hsi_msg* %0, %struct.hsi_msg** %2, align 8
  %3 = load i32, i32* @HSI_STATUS_ERROR, align 4
  %4 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %5 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %4, i32 0, i32 0
  store i32 %3, i32* %5, align 4
  %6 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %7 = call i32 @hsc_msg_len_set(%struct.hsi_msg* %6, i32 0)
  %8 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %9 = call i32 @hsc_tx_completed(%struct.hsi_msg* %8)
  ret void
}

declare dso_local i32 @hsc_msg_len_set(%struct.hsi_msg*, i32) #1

declare dso_local i32 @hsc_tx_completed(%struct.hsi_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
