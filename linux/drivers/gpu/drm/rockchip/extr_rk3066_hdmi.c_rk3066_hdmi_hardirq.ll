; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rk3066_hdmi.c_rk3066_hdmi_hardirq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rk3066_hdmi.c_rk3066_hdmi_hardirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk3066_hdmi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@HDMI_SYS_POWER_MODE_A = common dso_local global i64 0, align 8
@HDMI_SYS_CTRL = common dso_local global i32 0, align 4
@HDMI_SYS_POWER_MODE_B = common dso_local global i32 0, align 4
@HDMI_INTR_STATUS1 = common dso_local global i32 0, align 4
@HDMI_INTR_EDID_MASK = common dso_local global i32 0, align 4
@HDMI_INTR_HOTPLUG = common dso_local global i32 0, align 4
@HDMI_INTR_MSENS = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rk3066_hdmi_hardirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk3066_hdmi_hardirq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rk3066_hdmi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.rk3066_hdmi*
  store %struct.rk3066_hdmi* %9, %struct.rk3066_hdmi** %5, align 8
  %10 = load i32, i32* @IRQ_NONE, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %5, align 8
  %12 = call i64 @rk3066_hdmi_get_power_mode(%struct.rk3066_hdmi* %11)
  %13 = load i64, i64* @HDMI_SYS_POWER_MODE_A, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %5, align 8
  %17 = load i32, i32* @HDMI_SYS_CTRL, align 4
  %18 = load i32, i32* @HDMI_SYS_POWER_MODE_B, align 4
  %19 = call i32 @hdmi_writeb(%struct.rk3066_hdmi* %16, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %2
  %21 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %5, align 8
  %22 = load i32, i32* @HDMI_INTR_STATUS1, align 4
  %23 = call i32 @hdmi_readb(%struct.rk3066_hdmi* %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %5, align 8
  %28 = load i32, i32* @HDMI_INTR_STATUS1, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @hdmi_writeb(%struct.rk3066_hdmi* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %20
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @HDMI_INTR_EDID_MASK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %5, align 8
  %39 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 4
  %42 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %5, align 8
  %43 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = call i32 @complete(i32* %45)
  br label %47

47:                                               ; preds = %36, %31
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @HDMI_INTR_HOTPLUG, align 4
  %50 = load i32, i32* @HDMI_INTR_MSENS, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %54, %47
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i64 @rk3066_hdmi_get_power_mode(%struct.rk3066_hdmi*) #1

declare dso_local i32 @hdmi_writeb(%struct.rk3066_hdmi*, i32, i32) #1

declare dso_local i32 @hdmi_readb(%struct.rk3066_hdmi*, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
