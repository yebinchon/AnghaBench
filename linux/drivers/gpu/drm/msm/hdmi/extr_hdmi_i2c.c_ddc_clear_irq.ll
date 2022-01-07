; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_i2c.c_ddc_clear_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_i2c.c_ddc_clear_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_i2c_adapter = type { i32, %struct.hdmi* }
%struct.hdmi = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@REG_HDMI_DDC_INT_CTRL = common dso_local global i32 0, align 4
@HDMI_DDC_INT_CTRL_SW_DONE_ACK = common dso_local global i32 0, align 4
@HDMI_DDC_INT_CTRL_SW_DONE_MASK = common dso_local global i32 0, align 4
@HDMI_DDC_INT_CTRL_SW_DONE_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"timeout waiting for DDC\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdmi_i2c_adapter*)* @ddc_clear_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddc_clear_irq(%struct.hdmi_i2c_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdmi_i2c_adapter*, align 8
  %4 = alloca %struct.hdmi*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hdmi_i2c_adapter* %0, %struct.hdmi_i2c_adapter** %3, align 8
  %8 = load %struct.hdmi_i2c_adapter*, %struct.hdmi_i2c_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.hdmi_i2c_adapter, %struct.hdmi_i2c_adapter* %8, i32 0, i32 1
  %10 = load %struct.hdmi*, %struct.hdmi** %9, align 8
  store %struct.hdmi* %10, %struct.hdmi** %4, align 8
  %11 = load %struct.hdmi*, %struct.hdmi** %4, align 8
  %12 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %5, align 8
  store i32 65535, i32* %6, align 4
  br label %14

14:                                               ; preds = %34, %1
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %6, align 4
  %17 = load %struct.hdmi*, %struct.hdmi** %4, align 8
  %18 = load i32, i32* @REG_HDMI_DDC_INT_CTRL, align 4
  %19 = load i32, i32* @HDMI_DDC_INT_CTRL_SW_DONE_ACK, align 4
  %20 = load i32, i32* @HDMI_DDC_INT_CTRL_SW_DONE_MASK, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @hdmi_write(%struct.hdmi* %17, i32 %18, i32 %21)
  %23 = load %struct.hdmi*, %struct.hdmi** %4, align 8
  %24 = load i32, i32* @REG_HDMI_DDC_INT_CTRL, align 4
  %25 = call i32 @hdmi_read(%struct.hdmi* %23, i32 %24)
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %14
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @HDMI_DDC_INT_CTRL_SW_DONE_INT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %31, %26
  %35 = phi i1 [ false, %26 ], [ %33, %31 ]
  br i1 %35, label %14, label %36

36:                                               ; preds = %34
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %41 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @DRM_DEV_ERROR(i32 %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @ETIMEDOUT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %49

46:                                               ; preds = %36
  %47 = load %struct.hdmi_i2c_adapter*, %struct.hdmi_i2c_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.hdmi_i2c_adapter, %struct.hdmi_i2c_adapter* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %46, %39
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @hdmi_write(%struct.hdmi*, i32, i32) #1

declare dso_local i32 @hdmi_read(%struct.hdmi*, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
