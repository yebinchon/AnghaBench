; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_omap-mailbox.c_omap_mbox_chan_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_omap-mailbox.c_omap_mbox_chan_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { i32 }
%struct.omap_mbox = type { %struct.omap_mbox_device* }
%struct.omap_mbox_device = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbox_chan*)* @omap_mbox_chan_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_mbox_chan_shutdown(%struct.mbox_chan* %0) #0 {
  %2 = alloca %struct.mbox_chan*, align 8
  %3 = alloca %struct.omap_mbox*, align 8
  %4 = alloca %struct.omap_mbox_device*, align 8
  store %struct.mbox_chan* %0, %struct.mbox_chan** %2, align 8
  %5 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %6 = call %struct.omap_mbox* @mbox_chan_to_omap_mbox(%struct.mbox_chan* %5)
  store %struct.omap_mbox* %6, %struct.omap_mbox** %3, align 8
  %7 = load %struct.omap_mbox*, %struct.omap_mbox** %3, align 8
  %8 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %7, i32 0, i32 0
  %9 = load %struct.omap_mbox_device*, %struct.omap_mbox_device** %8, align 8
  store %struct.omap_mbox_device* %9, %struct.omap_mbox_device** %4, align 8
  %10 = load %struct.omap_mbox_device*, %struct.omap_mbox_device** %4, align 8
  %11 = getelementptr inbounds %struct.omap_mbox_device, %struct.omap_mbox_device* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.omap_mbox*, %struct.omap_mbox** %3, align 8
  %14 = call i32 @omap_mbox_fini(%struct.omap_mbox* %13)
  %15 = load %struct.omap_mbox_device*, %struct.omap_mbox_device** %4, align 8
  %16 = getelementptr inbounds %struct.omap_mbox_device, %struct.omap_mbox_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pm_runtime_put_sync(i32 %17)
  %19 = load %struct.omap_mbox_device*, %struct.omap_mbox_device** %4, align 8
  %20 = getelementptr inbounds %struct.omap_mbox_device, %struct.omap_mbox_device* %19, i32 0, i32 0
  %21 = call i32 @mutex_unlock(i32* %20)
  ret void
}

declare dso_local %struct.omap_mbox* @mbox_chan_to_omap_mbox(%struct.mbox_chan*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @omap_mbox_fini(%struct.omap_mbox*) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
