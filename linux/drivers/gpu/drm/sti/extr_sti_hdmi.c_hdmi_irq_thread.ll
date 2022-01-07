; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi.c_hdmi_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi.c_hdmi_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_hdmi = type { i32, i32, i32, i32, i64, i64 }

@HDMI_INT_HOT_PLUG = common dso_local global i32 0, align 4
@HDMI_STA = common dso_local global i64 0, align 8
@HDMI_STA_HOT_PLUG = common dso_local global i32 0, align 4
@HDMI_INT_SW_RST = common dso_local global i32 0, align 4
@HDMI_INT_DLL_LCK = common dso_local global i32 0, align 4
@HDMI_INT_AUDIO_FIFO_XRUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Warning: audio FIFO underrun occurs!\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hdmi_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sti_hdmi*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.sti_hdmi*
  store %struct.sti_hdmi* %7, %struct.sti_hdmi** %5, align 8
  %8 = load %struct.sti_hdmi*, %struct.sti_hdmi** %5, align 8
  %9 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @HDMI_INT_HOT_PLUG, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %2
  %15 = load %struct.sti_hdmi*, %struct.sti_hdmi** %5, align 8
  %16 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HDMI_STA, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  %21 = load i32, i32* @HDMI_STA_HOT_PLUG, align 4
  %22 = and i32 %20, %21
  %23 = load %struct.sti_hdmi*, %struct.sti_hdmi** %5, align 8
  %24 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.sti_hdmi*, %struct.sti_hdmi** %5, align 8
  %26 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %14
  %30 = load %struct.sti_hdmi*, %struct.sti_hdmi** %5, align 8
  %31 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @drm_helper_hpd_irq_event(i64 %32)
  br label %34

34:                                               ; preds = %29, %14
  br label %35

35:                                               ; preds = %34, %2
  %36 = load %struct.sti_hdmi*, %struct.sti_hdmi** %5, align 8
  %37 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @HDMI_INT_SW_RST, align 4
  %40 = load i32, i32* @HDMI_INT_DLL_LCK, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = load %struct.sti_hdmi*, %struct.sti_hdmi** %5, align 8
  %46 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %45, i32 0, i32 2
  store i32 1, i32* %46, align 8
  %47 = load %struct.sti_hdmi*, %struct.sti_hdmi** %5, align 8
  %48 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %47, i32 0, i32 3
  %49 = call i32 @wake_up_interruptible(i32* %48)
  br label %50

50:                                               ; preds = %44, %35
  %51 = load %struct.sti_hdmi*, %struct.sti_hdmi** %5, align 8
  %52 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @HDMI_INT_AUDIO_FIFO_XRUN, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = call i32 @DRM_INFO(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %50
  %60 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %60
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @drm_helper_hpd_irq_event(i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @DRM_INFO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
