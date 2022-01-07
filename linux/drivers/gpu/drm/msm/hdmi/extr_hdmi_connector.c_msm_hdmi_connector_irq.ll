; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_connector.c_msm_hdmi_connector_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_connector.c_msm_hdmi_connector_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.hdmi_connector = type { i32, %struct.hdmi* }
%struct.hdmi = type { i32 }

@REG_HDMI_HPD_INT_STATUS = common dso_local global i32 0, align 4
@REG_HDMI_HPD_INT_CTRL = common dso_local global i32 0, align 4
@HDMI_HPD_INT_CTRL_INT_EN = common dso_local global i32 0, align 4
@HDMI_HPD_INT_STATUS_INT = common dso_local global i32 0, align 4
@HDMI_HPD_INT_STATUS_CABLE_DETECTED = common dso_local global i32 0, align 4
@HDMI_HPD_INT_CTRL_INT_ACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"status=%04x, ctrl=%04x\00", align 1
@HDMI_HPD_INT_CTRL_INT_CONNECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_hdmi_connector_irq(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.hdmi_connector*, align 8
  %4 = alloca %struct.hdmi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %9 = call %struct.hdmi_connector* @to_hdmi_connector(%struct.drm_connector* %8)
  store %struct.hdmi_connector* %9, %struct.hdmi_connector** %3, align 8
  %10 = load %struct.hdmi_connector*, %struct.hdmi_connector** %3, align 8
  %11 = getelementptr inbounds %struct.hdmi_connector, %struct.hdmi_connector* %10, i32 0, i32 1
  %12 = load %struct.hdmi*, %struct.hdmi** %11, align 8
  store %struct.hdmi* %12, %struct.hdmi** %4, align 8
  %13 = load %struct.hdmi*, %struct.hdmi** %4, align 8
  %14 = load i32, i32* @REG_HDMI_HPD_INT_STATUS, align 4
  %15 = call i32 @hdmi_read(%struct.hdmi* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.hdmi*, %struct.hdmi** %4, align 8
  %17 = load i32, i32* @REG_HDMI_HPD_INT_CTRL, align 4
  %18 = call i32 @hdmi_read(%struct.hdmi* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @HDMI_HPD_INT_CTRL_INT_EN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %61

23:                                               ; preds = %1
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @HDMI_HPD_INT_STATUS_INT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %61

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @HDMI_HPD_INT_STATUS_CABLE_DETECTED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %7, align 4
  %36 = load %struct.hdmi*, %struct.hdmi** %4, align 8
  %37 = load i32, i32* @REG_HDMI_HPD_INT_CTRL, align 4
  %38 = load i32, i32* @HDMI_HPD_INT_CTRL_INT_ACK, align 4
  %39 = call i32 @hdmi_write(%struct.hdmi* %36, i32 %37, i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load i32, i32* @HDMI_HPD_INT_CTRL_INT_EN, align 4
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %28
  %47 = load i32, i32* @HDMI_HPD_INT_CTRL_INT_CONNECT, align 4
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %46, %28
  %51 = load %struct.hdmi*, %struct.hdmi** %4, align 8
  %52 = load i32, i32* @REG_HDMI_HPD_INT_CTRL, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @hdmi_write(%struct.hdmi* %51, i32 %52, i32 %53)
  %55 = load %struct.hdmi*, %struct.hdmi** %4, align 8
  %56 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.hdmi_connector*, %struct.hdmi_connector** %3, align 8
  %59 = getelementptr inbounds %struct.hdmi_connector, %struct.hdmi_connector* %58, i32 0, i32 0
  %60 = call i32 @queue_work(i32 %57, i32* %59)
  br label %61

61:                                               ; preds = %50, %23, %1
  ret void
}

declare dso_local %struct.hdmi_connector* @to_hdmi_connector(%struct.drm_connector*) #1

declare dso_local i32 @hdmi_read(%struct.hdmi*, i32) #1

declare dso_local i32 @hdmi_write(%struct.hdmi*, i32, i32) #1

declare dso_local i32 @DBG(i8*, i32, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
