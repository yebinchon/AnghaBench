; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mxgpu_ai.c_xgpu_ai_mailbox_rcv_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mxgpu_ai.c_xgpu_ai_mailbox_rcv_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.amdgpu_irq_src = type { i32 }
%struct.amdgpu_iv_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_irq_src*, %struct.amdgpu_iv_entry*)* @xgpu_ai_mailbox_rcv_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgpu_ai_mailbox_rcv_irq(%struct.amdgpu_device* %0, %struct.amdgpu_irq_src* %1, %struct.amdgpu_iv_entry* %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_irq_src*, align 8
  %6 = alloca %struct.amdgpu_iv_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.amdgpu_irq_src* %1, %struct.amdgpu_irq_src** %5, align 8
  store %struct.amdgpu_iv_entry* %2, %struct.amdgpu_iv_entry** %6, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %9 = call i32 @xgpu_ai_mailbox_peek_msg(%struct.amdgpu_device* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %25 [
    i32 131, label %11
    i32 129, label %21
    i32 132, label %24
    i32 130, label %24
    i32 128, label %24
  ]

11:                                               ; preds = %3
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %13 = call i32 @amdgpu_sriov_runtime(%struct.amdgpu_device* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @schedule_work(i32* %18)
  br label %20

20:                                               ; preds = %15, %11
  br label %26

21:                                               ; preds = %3
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %23 = call i32 @xgpu_ai_mailbox_send_ack(%struct.amdgpu_device* %22)
  br label %26

24:                                               ; preds = %3, %3, %3
  br label %25

25:                                               ; preds = %3, %24
  br label %26

26:                                               ; preds = %25, %21, %20
  ret i32 0
}

declare dso_local i32 @xgpu_ai_mailbox_peek_msg(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_sriov_runtime(%struct.amdgpu_device*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @xgpu_ai_mailbox_send_ack(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
