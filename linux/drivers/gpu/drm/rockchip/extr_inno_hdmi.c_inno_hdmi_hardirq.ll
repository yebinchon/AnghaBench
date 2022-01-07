; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_inno_hdmi.c_inno_hdmi_hardirq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_inno_hdmi.c_inno_hdmi_hardirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inno_hdmi = type { i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@HDMI_STATUS = common dso_local global i32 0, align 4
@m_INT_HOTPLUG = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @inno_hdmi_hardirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inno_hdmi_hardirq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.inno_hdmi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.inno_hdmi*
  store %struct.inno_hdmi* %9, %struct.inno_hdmi** %5, align 8
  %10 = load i32, i32* @IRQ_NONE, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.inno_hdmi*, %struct.inno_hdmi** %5, align 8
  %12 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.inno_hdmi*, %struct.inno_hdmi** %5, align 8
  %17 = call i32 @inno_hdmi_i2c_irq(%struct.inno_hdmi* %16)
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %15, %2
  %19 = load %struct.inno_hdmi*, %struct.inno_hdmi** %5, align 8
  %20 = load i32, i32* @HDMI_STATUS, align 4
  %21 = call i32 @hdmi_readb(%struct.inno_hdmi* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @m_INT_HOTPLUG, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = load %struct.inno_hdmi*, %struct.inno_hdmi** %5, align 8
  %28 = load i32, i32* @HDMI_STATUS, align 4
  %29 = load i32, i32* @m_INT_HOTPLUG, align 4
  %30 = load i32, i32* @m_INT_HOTPLUG, align 4
  %31 = call i32 @hdmi_modb(%struct.inno_hdmi* %27, i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %26, %18
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local i32 @inno_hdmi_i2c_irq(%struct.inno_hdmi*) #1

declare dso_local i32 @hdmi_readb(%struct.inno_hdmi*, i32) #1

declare dso_local i32 @hdmi_modb(%struct.inno_hdmi*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
