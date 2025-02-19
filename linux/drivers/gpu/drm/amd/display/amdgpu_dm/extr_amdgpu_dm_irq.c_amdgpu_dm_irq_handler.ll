; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_irq.c_amdgpu_dm_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_irq.c_amdgpu_dm_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.amdgpu_irq_src = type { i32 }
%struct.amdgpu_iv_entry = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_irq_src*, %struct.amdgpu_iv_entry*)* @amdgpu_dm_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_dm_irq_handler(%struct.amdgpu_device* %0, %struct.amdgpu_irq_src* %1, %struct.amdgpu_iv_entry* %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_irq_src*, align 8
  %6 = alloca %struct.amdgpu_iv_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.amdgpu_irq_src* %1, %struct.amdgpu_irq_src** %5, align 8
  store %struct.amdgpu_iv_entry* %2, %struct.amdgpu_iv_entry** %6, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %13 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %16 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dc_interrupt_to_irq_source(i32 %11, i32 %14, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @dc_interrupt_ack(i32 %24, i32 %25)
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @amdgpu_dm_irq_immediate_work(%struct.amdgpu_device* %27, i32 %28)
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @amdgpu_dm_irq_schedule_work(%struct.amdgpu_device* %30, i32 %31)
  ret i32 0
}

declare dso_local i32 @dc_interrupt_to_irq_source(i32, i32, i32) #1

declare dso_local i32 @dc_interrupt_ack(i32, i32) #1

declare dso_local i32 @amdgpu_dm_irq_immediate_work(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_dm_irq_schedule_work(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
