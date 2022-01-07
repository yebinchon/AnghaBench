; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi5.c_hdmi_core_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi5.c_hdmi_core_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hdmi = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"ENTER omapdss_hdmi_core_enable\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to power on device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_hdmi*)* @hdmi_core_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_core_enable(%struct.omap_hdmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_hdmi*, align 8
  %4 = alloca i32, align 4
  store %struct.omap_hdmi* %0, %struct.omap_hdmi** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = call i32 @DSSDBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %7 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %10 = call i32 @hdmi_power_on_core(%struct.omap_hdmi* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 @DSSERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %19

15:                                               ; preds = %1
  %16 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %17 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %16, i32 0, i32 0
  %18 = call i32 @mutex_unlock(i32* %17)
  store i32 0, i32* %2, align 4
  br label %24

19:                                               ; preds = %13
  %20 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %21 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %20, i32 0, i32 0
  %22 = call i32 @mutex_unlock(i32* %21)
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %19, %15
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @DSSDBG(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hdmi_power_on_core(%struct.omap_hdmi*) #1

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
