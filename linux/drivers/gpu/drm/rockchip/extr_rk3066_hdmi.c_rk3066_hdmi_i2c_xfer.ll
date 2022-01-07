; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rk3066_hdmi.c_rk3066_hdmi_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rk3066_hdmi.c_rk3066_hdmi_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32 }
%struct.rk3066_hdmi = type { i32, %struct.rk3066_hdmi_i2c* }
%struct.rk3066_hdmi_i2c = type { i32, i64 }

@HDMI_INTR_MASK1 = common dso_local global i32 0, align 4
@HDMI_INTR_EDID_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"xfer: num: %d/%d, len: %d, flags: %#x\0A\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @rk3066_hdmi_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk3066_hdmi_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rk3066_hdmi*, align 8
  %8 = alloca %struct.rk3066_hdmi_i2c*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %12 = call %struct.rk3066_hdmi* @i2c_get_adapdata(%struct.i2c_adapter* %11)
  store %struct.rk3066_hdmi* %12, %struct.rk3066_hdmi** %7, align 8
  %13 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %7, align 8
  %14 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %13, i32 0, i32 1
  %15 = load %struct.rk3066_hdmi_i2c*, %struct.rk3066_hdmi_i2c** %14, align 8
  store %struct.rk3066_hdmi_i2c* %15, %struct.rk3066_hdmi_i2c** %8, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.rk3066_hdmi_i2c*, %struct.rk3066_hdmi_i2c** %8, align 8
  %17 = getelementptr inbounds %struct.rk3066_hdmi_i2c, %struct.rk3066_hdmi_i2c* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %7, align 8
  %20 = call i32 @rk3066_hdmi_i2c_init(%struct.rk3066_hdmi* %19)
  %21 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %7, align 8
  %22 = load i32, i32* @HDMI_INTR_MASK1, align 4
  %23 = load i32, i32* @HDMI_INTR_EDID_MASK, align 4
  %24 = load i32, i32* @HDMI_INTR_EDID_MASK, align 4
  %25 = call i32 @hdmi_modb(%struct.rk3066_hdmi* %21, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.rk3066_hdmi_i2c*, %struct.rk3066_hdmi_i2c** %8, align 8
  %27 = getelementptr inbounds %struct.rk3066_hdmi_i2c, %struct.rk3066_hdmi_i2c* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %80, %3
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %83

32:                                               ; preds = %28
  %33 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %7, align 8
  %34 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %39, i64 %41
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %45, i64 %47
  %49 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @DRM_DEV_DEBUG(i32 %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38, i32 %44, i32 %50)
  %52 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %52, i64 %54
  %56 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @I2C_M_RD, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %32
  %62 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %7, align 8
  %63 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %63, i64 %65
  %67 = call i32 @rk3066_hdmi_i2c_read(%struct.rk3066_hdmi* %62, %struct.i2c_msg* %66)
  store i32 %67, i32* %10, align 4
  br label %75

68:                                               ; preds = %32
  %69 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %7, align 8
  %70 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %70, i64 %72
  %74 = call i32 @rk3066_hdmi_i2c_write(%struct.rk3066_hdmi* %69, %struct.i2c_msg* %73)
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %68, %61
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %83

79:                                               ; preds = %75
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %28

83:                                               ; preds = %78, %28
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %86, %83
  %89 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %7, align 8
  %90 = load i32, i32* @HDMI_INTR_MASK1, align 4
  %91 = load i32, i32* @HDMI_INTR_EDID_MASK, align 4
  %92 = call i32 @hdmi_modb(%struct.rk3066_hdmi* %89, i32 %90, i32 %91, i32 0)
  %93 = load %struct.rk3066_hdmi_i2c*, %struct.rk3066_hdmi_i2c** %8, align 8
  %94 = getelementptr inbounds %struct.rk3066_hdmi_i2c, %struct.rk3066_hdmi_i2c* %93, i32 0, i32 0
  %95 = call i32 @mutex_unlock(i32* %94)
  %96 = load i32, i32* %10, align 4
  ret i32 %96
}

declare dso_local %struct.rk3066_hdmi* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rk3066_hdmi_i2c_init(%struct.rk3066_hdmi*) #1

declare dso_local i32 @hdmi_modb(%struct.rk3066_hdmi*, i32, i32, i32) #1

declare dso_local i32 @DRM_DEV_DEBUG(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @rk3066_hdmi_i2c_read(%struct.rk3066_hdmi*, %struct.i2c_msg*) #1

declare dso_local i32 @rk3066_hdmi_i2c_write(%struct.rk3066_hdmi*, %struct.i2c_msg*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
