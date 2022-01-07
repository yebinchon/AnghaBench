; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi5.c_hdmi_display_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi5.c_hdmi_display_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.omap_hdmi = type { i32, i32, i32, i32, i64, %struct.TYPE_6__*, i32 (i32*)*, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"ENTER hdmi_display_enable\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to power on device\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Error restoring audio configuration: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_dss_device*)* @hdmi_display_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_display_enable(%struct.omap_dss_device* %0) #0 {
  %2 = alloca %struct.omap_dss_device*, align 8
  %3 = alloca %struct.omap_hdmi*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %2, align 8
  %6 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %7 = call %struct.omap_hdmi* @dssdev_to_hdmi(%struct.omap_dss_device* %6)
  store %struct.omap_hdmi* %7, %struct.omap_hdmi** %3, align 8
  %8 = call i32 @DSSDBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %10 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %9, i32 0, i32 2
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %13 = call i32 @hdmi_power_on_full(%struct.omap_hdmi* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %76

18:                                               ; preds = %1
  %19 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %20 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %18
  %24 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %25 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %24, i32 0, i32 10
  %26 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %27 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %26, i32 0, i32 9
  %28 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %29 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %28, i32 0, i32 8
  %30 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %31 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %30, i32 0, i32 7
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @hdmi5_audio_config(i32* %25, i32* %27, i32* %29, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %23
  %39 = load i32, i32* %5, align 4
  %40 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %42 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %41, i32 0, i32 6
  %43 = load i32 (i32*)*, i32 (i32*)** %42, align 8
  %44 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %45 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %44, i32 0, i32 5
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = call i32 %43(i32* %47)
  %49 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %50 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  br label %51

51:                                               ; preds = %38, %23
  br label %52

52:                                               ; preds = %51, %18
  %53 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %54 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %53, i32 0, i32 3
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @spin_lock_irqsave(i32* %54, i64 %55)
  %57 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %58 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %52
  %62 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %63 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %68 = call i32 @hdmi_start_audio_stream(%struct.omap_hdmi* %67)
  br label %69

69:                                               ; preds = %66, %61, %52
  %70 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %71 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %70, i32 0, i32 1
  store i32 1, i32* %71, align 4
  %72 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %73 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %72, i32 0, i32 3
  %74 = load i64, i64* %4, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  br label %76

76:                                               ; preds = %69, %16
  %77 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %78 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %77, i32 0, i32 2
  %79 = call i32 @mutex_unlock(i32* %78)
  ret void
}

declare dso_local %struct.omap_hdmi* @dssdev_to_hdmi(%struct.omap_dss_device*) #1

declare dso_local i32 @DSSDBG(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hdmi_power_on_full(%struct.omap_hdmi*) #1

declare dso_local i32 @DSSERR(i8*, ...) #1

declare dso_local i32 @hdmi5_audio_config(i32*, i32*, i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hdmi_start_audio_stream(%struct.omap_hdmi*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
