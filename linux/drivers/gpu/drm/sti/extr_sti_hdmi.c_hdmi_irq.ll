; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi.c_hdmi_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi.c_hdmi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_hdmi = type { i32 }

@HDMI_INT_STA = common dso_local global i32 0, align 4
@HDMI_INT_CLR = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hdmi_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sti_hdmi*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.sti_hdmi*
  store %struct.sti_hdmi* %7, %struct.sti_hdmi** %5, align 8
  %8 = load %struct.sti_hdmi*, %struct.sti_hdmi** %5, align 8
  %9 = load i32, i32* @HDMI_INT_STA, align 4
  %10 = call i32 @hdmi_read(%struct.sti_hdmi* %8, i32 %9)
  %11 = load %struct.sti_hdmi*, %struct.sti_hdmi** %5, align 8
  %12 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.sti_hdmi*, %struct.sti_hdmi** %5, align 8
  %14 = load %struct.sti_hdmi*, %struct.sti_hdmi** %5, align 8
  %15 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @HDMI_INT_CLR, align 4
  %18 = call i32 @hdmi_write(%struct.sti_hdmi* %13, i32 %16, i32 %17)
  %19 = load %struct.sti_hdmi*, %struct.sti_hdmi** %5, align 8
  %20 = load i32, i32* @HDMI_INT_STA, align 4
  %21 = call i32 @hdmi_read(%struct.sti_hdmi* %19, i32 %20)
  %22 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  ret i32 %22
}

declare dso_local i32 @hdmi_read(%struct.sti_hdmi*, i32) #1

declare dso_local i32 @hdmi_write(%struct.sti_hdmi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
