; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_inno_hdmi.c_inno_hdmi_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_inno_hdmi.c_inno_hdmi_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32 }
%struct.inno_hdmi = type { i32, %struct.inno_hdmi_i2c* }
%struct.inno_hdmi_i2c = type { i32 }

@HDMI_INTERRUPT_MASK1 = common dso_local global i32 0, align 4
@m_INT_EDID_READY = common dso_local global i32 0, align 4
@HDMI_INTERRUPT_STATUS1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"xfer: num: %d/%d, len: %d, flags: %#x\0A\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @inno_hdmi_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inno_hdmi_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inno_hdmi*, align 8
  %8 = alloca %struct.inno_hdmi_i2c*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %12 = call %struct.inno_hdmi* @i2c_get_adapdata(%struct.i2c_adapter* %11)
  store %struct.inno_hdmi* %12, %struct.inno_hdmi** %7, align 8
  %13 = load %struct.inno_hdmi*, %struct.inno_hdmi** %7, align 8
  %14 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %13, i32 0, i32 1
  %15 = load %struct.inno_hdmi_i2c*, %struct.inno_hdmi_i2c** %14, align 8
  store %struct.inno_hdmi_i2c* %15, %struct.inno_hdmi_i2c** %8, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.inno_hdmi_i2c*, %struct.inno_hdmi_i2c** %8, align 8
  %17 = getelementptr inbounds %struct.inno_hdmi_i2c, %struct.inno_hdmi_i2c* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.inno_hdmi*, %struct.inno_hdmi** %7, align 8
  %20 = load i32, i32* @HDMI_INTERRUPT_MASK1, align 4
  %21 = load i32, i32* @m_INT_EDID_READY, align 4
  %22 = call i32 @hdmi_writeb(%struct.inno_hdmi* %19, i32 %20, i32 %21)
  %23 = load %struct.inno_hdmi*, %struct.inno_hdmi** %7, align 8
  %24 = load i32, i32* @HDMI_INTERRUPT_STATUS1, align 4
  %25 = load i32, i32* @m_INT_EDID_READY, align 4
  %26 = call i32 @hdmi_writeb(%struct.inno_hdmi* %23, i32 %24, i32 %25)
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %79, %3
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %82

31:                                               ; preds = %27
  %32 = load %struct.inno_hdmi*, %struct.inno_hdmi** %7, align 8
  %33 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i64 %40
  %42 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i64 %46
  %48 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @DRM_DEV_DEBUG(i32 %34, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37, i32 %43, i32 %49)
  %51 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %51, i64 %53
  %55 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @I2C_M_RD, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %31
  %61 = load %struct.inno_hdmi*, %struct.inno_hdmi** %7, align 8
  %62 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %62, i64 %64
  %66 = call i32 @inno_hdmi_i2c_read(%struct.inno_hdmi* %61, %struct.i2c_msg* %65)
  store i32 %66, i32* %10, align 4
  br label %74

67:                                               ; preds = %31
  %68 = load %struct.inno_hdmi*, %struct.inno_hdmi** %7, align 8
  %69 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %69, i64 %71
  %73 = call i32 @inno_hdmi_i2c_write(%struct.inno_hdmi* %68, %struct.i2c_msg* %72)
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %67, %60
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %82

78:                                               ; preds = %74
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %27

82:                                               ; preds = %77, %27
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %85, %82
  %88 = load %struct.inno_hdmi*, %struct.inno_hdmi** %7, align 8
  %89 = load i32, i32* @HDMI_INTERRUPT_MASK1, align 4
  %90 = call i32 @hdmi_writeb(%struct.inno_hdmi* %88, i32 %89, i32 0)
  %91 = load %struct.inno_hdmi_i2c*, %struct.inno_hdmi_i2c** %8, align 8
  %92 = getelementptr inbounds %struct.inno_hdmi_i2c, %struct.inno_hdmi_i2c* %91, i32 0, i32 0
  %93 = call i32 @mutex_unlock(i32* %92)
  %94 = load i32, i32* %10, align 4
  ret i32 %94
}

declare dso_local %struct.inno_hdmi* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hdmi_writeb(%struct.inno_hdmi*, i32, i32) #1

declare dso_local i32 @DRM_DEV_DEBUG(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @inno_hdmi_i2c_read(%struct.inno_hdmi*, %struct.i2c_msg*) #1

declare dso_local i32 @inno_hdmi_i2c_write(%struct.inno_hdmi*, %struct.i2c_msg*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
