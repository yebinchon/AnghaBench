; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_i2c.c_sw_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_i2c.c_sw_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_i2c_adapter = type { i32, %struct.hdmi* }
%struct.hdmi = type { i32 }

@REG_HDMI_DDC_INT_CTRL = common dso_local global i32 0, align 4
@HDMI_DDC_INT_CTRL_SW_DONE_MASK = common dso_local global i32 0, align 4
@HDMI_DDC_INT_CTRL_SW_DONE_INT = common dso_local global i32 0, align 4
@HDMI_DDC_INT_CTRL_SW_DONE_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdmi_i2c_adapter*)* @sw_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sw_done(%struct.hdmi_i2c_adapter* %0) #0 {
  %2 = alloca %struct.hdmi_i2c_adapter*, align 8
  %3 = alloca %struct.hdmi*, align 8
  %4 = alloca i32, align 4
  store %struct.hdmi_i2c_adapter* %0, %struct.hdmi_i2c_adapter** %2, align 8
  %5 = load %struct.hdmi_i2c_adapter*, %struct.hdmi_i2c_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.hdmi_i2c_adapter, %struct.hdmi_i2c_adapter* %5, i32 0, i32 1
  %7 = load %struct.hdmi*, %struct.hdmi** %6, align 8
  store %struct.hdmi* %7, %struct.hdmi** %3, align 8
  %8 = load %struct.hdmi_i2c_adapter*, %struct.hdmi_i2c_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.hdmi_i2c_adapter, %struct.hdmi_i2c_adapter* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %1
  %13 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %14 = load i32, i32* @REG_HDMI_DDC_INT_CTRL, align 4
  %15 = call i32 @hdmi_read(%struct.hdmi* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @HDMI_DDC_INT_CTRL_SW_DONE_MASK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %12
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @HDMI_DDC_INT_CTRL_SW_DONE_INT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.hdmi_i2c_adapter*, %struct.hdmi_i2c_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.hdmi_i2c_adapter, %struct.hdmi_i2c_adapter* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %29 = load i32, i32* @REG_HDMI_DDC_INT_CTRL, align 4
  %30 = load i32, i32* @HDMI_DDC_INT_CTRL_SW_DONE_ACK, align 4
  %31 = call i32 @hdmi_write(%struct.hdmi* %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %25, %20, %12
  br label %33

33:                                               ; preds = %32, %1
  %34 = load %struct.hdmi_i2c_adapter*, %struct.hdmi_i2c_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.hdmi_i2c_adapter, %struct.hdmi_i2c_adapter* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  ret i32 %36
}

declare dso_local i32 @hdmi_read(%struct.hdmi*, i32) #1

declare dso_local i32 @hdmi_write(%struct.hdmi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
