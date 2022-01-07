; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi_wp.c_hdmi_wp_set_phy_pwr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi_wp.c_hdmi_wp_set_phy_pwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_wp_data = type { i32 }

@HDMI_WP_PWR_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to set PHY power mode to %d\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdmi_wp_set_phy_pwr(%struct.hdmi_wp_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdmi_wp_data*, align 8
  %5 = alloca i32, align 4
  store %struct.hdmi_wp_data* %0, %struct.hdmi_wp_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %4, align 8
  %7 = getelementptr inbounds %struct.hdmi_wp_data, %struct.hdmi_wp_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @HDMI_WP_PWR_CTRL, align 4
  %10 = call i32 @REG_GET(i32 %8, i32 %9, i32 5, i32 4)
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %35

14:                                               ; preds = %2
  %15 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %4, align 8
  %16 = getelementptr inbounds %struct.hdmi_wp_data, %struct.hdmi_wp_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @HDMI_WP_PWR_CTRL, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @REG_FLD_MOD(i32 %17, i32 %18, i32 %19, i32 7, i32 6)
  %21 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %4, align 8
  %22 = getelementptr inbounds %struct.hdmi_wp_data, %struct.hdmi_wp_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @HDMI_WP_PWR_CTRL, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @hdmi_wait_for_bit_change(i32 %23, i32 %24, i32 5, i32 4, i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %14
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @DSSERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @ETIMEDOUT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %35

34:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %29, %13
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @REG_GET(i32, i32, i32, i32) #1

declare dso_local i32 @REG_FLD_MOD(i32, i32, i32, i32, i32) #1

declare dso_local i32 @hdmi_wait_for_bit_change(i32, i32, i32, i32, i32) #1

declare dso_local i32 @DSSERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
