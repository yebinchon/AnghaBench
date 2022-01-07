; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_omap-keypad.c_omap_kp_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_omap-keypad.c_omap_kp_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.omap_kp = type { i32, i32, i32 }

@kp_tasklet = common dso_local global i32 0, align 4
@OMAP1_MPUIO_BASE = common dso_local global i64 0, align 8
@OMAP_MPUIO_KBD_MASKIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @omap_kp_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_kp_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.omap_kp*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.omap_kp* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.omap_kp* %5, %struct.omap_kp** %3, align 8
  %6 = call i32 @tasklet_disable(i32* @kp_tasklet)
  %7 = load i64, i64* @OMAP1_MPUIO_BASE, align 8
  %8 = load i64, i64* @OMAP_MPUIO_KBD_MASKIT, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @omap_writew(i32 1, i64 %9)
  %11 = load %struct.omap_kp*, %struct.omap_kp** %3, align 8
  %12 = getelementptr inbounds %struct.omap_kp, %struct.omap_kp* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.omap_kp*, %struct.omap_kp** %3, align 8
  %15 = call i32 @free_irq(i32 %13, %struct.omap_kp* %14)
  %16 = load %struct.omap_kp*, %struct.omap_kp** %3, align 8
  %17 = getelementptr inbounds %struct.omap_kp, %struct.omap_kp* %16, i32 0, i32 1
  %18 = call i32 @del_timer_sync(i32* %17)
  %19 = call i32 @tasklet_kill(i32* @kp_tasklet)
  %20 = load %struct.omap_kp*, %struct.omap_kp** %3, align 8
  %21 = getelementptr inbounds %struct.omap_kp, %struct.omap_kp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @input_unregister_device(i32 %22)
  %24 = load %struct.omap_kp*, %struct.omap_kp** %3, align 8
  %25 = call i32 @kfree(%struct.omap_kp* %24)
  ret i32 0
}

declare dso_local %struct.omap_kp* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @omap_writew(i32, i64) #1

declare dso_local i32 @free_irq(i32, %struct.omap_kp*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @kfree(%struct.omap_kp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
