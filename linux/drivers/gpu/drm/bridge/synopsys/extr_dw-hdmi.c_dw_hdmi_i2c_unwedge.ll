; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_i2c_unwedge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_i2c_unwedge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Attempting to unwedge stuck i2c bus\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_hdmi*)* @dw_hdmi_i2c_unwedge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_hdmi_i2c_unwedge(%struct.dw_hdmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dw_hdmi*, align 8
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %3, align 8
  %4 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %5 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

9:                                                ; preds = %1
  %10 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %11 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dev_info(i32 %12, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %15 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %18 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pinctrl_select_state(i32 %16, i32 %19)
  %21 = call i32 @msleep(i32 10)
  %22 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %23 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %26 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pinctrl_select_state(i32 %24, i32 %27)
  store i32 1, i32* %2, align 4
  br label %29

29:                                               ; preds = %9, %8
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @pinctrl_select_state(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
