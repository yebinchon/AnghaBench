; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptpf_mbox.c_cpt_mbox_send_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptpf_mbox.c_cpt_mbox_send_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpt_device = type { i32 }
%struct.cpt_mbox = type { i64, i32 }

@CPT_MBOX_MSG_TYPE_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpt_device*, i32, %struct.cpt_mbox*)* @cpt_mbox_send_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpt_mbox_send_ack(%struct.cpt_device* %0, i32 %1, %struct.cpt_mbox* %2) #0 {
  %4 = alloca %struct.cpt_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpt_mbox*, align 8
  store %struct.cpt_device* %0, %struct.cpt_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.cpt_mbox* %2, %struct.cpt_mbox** %6, align 8
  %7 = load %struct.cpt_mbox*, %struct.cpt_mbox** %6, align 8
  %8 = getelementptr inbounds %struct.cpt_mbox, %struct.cpt_mbox* %7, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* @CPT_MBOX_MSG_TYPE_ACK, align 4
  %10 = load %struct.cpt_mbox*, %struct.cpt_mbox** %6, align 8
  %11 = getelementptr inbounds %struct.cpt_mbox, %struct.cpt_mbox* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  %12 = load %struct.cpt_device*, %struct.cpt_device** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.cpt_mbox*, %struct.cpt_mbox** %6, align 8
  %15 = call i32 @cpt_send_msg_to_vf(%struct.cpt_device* %12, i32 %13, %struct.cpt_mbox* %14)
  ret void
}

declare dso_local i32 @cpt_send_msg_to_vf(%struct.cpt_device*, i32, %struct.cpt_mbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
