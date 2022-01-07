; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_hdmi.c_zx_hdmi_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_hdmi.c_zx_hdmi_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32 }
%struct.zx_hdmi = type { i32, %struct.zx_hdmi_i2c* }
%struct.zx_hdmi_i2c = type { i32 }

@TPI_DDC_MASTER_EN = common dso_local global i32 0, align 4
@HW_DDC_MASTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"xfer: num: %d/%d, len: %d, flags: %#x\0A\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @zx_hdmi_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_hdmi_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.zx_hdmi*, align 8
  %8 = alloca %struct.zx_hdmi_i2c*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %12 = call %struct.zx_hdmi* @i2c_get_adapdata(%struct.i2c_adapter* %11)
  store %struct.zx_hdmi* %12, %struct.zx_hdmi** %7, align 8
  %13 = load %struct.zx_hdmi*, %struct.zx_hdmi** %7, align 8
  %14 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %13, i32 0, i32 1
  %15 = load %struct.zx_hdmi_i2c*, %struct.zx_hdmi_i2c** %14, align 8
  store %struct.zx_hdmi_i2c* %15, %struct.zx_hdmi_i2c** %8, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.zx_hdmi_i2c*, %struct.zx_hdmi_i2c** %8, align 8
  %17 = getelementptr inbounds %struct.zx_hdmi_i2c, %struct.zx_hdmi_i2c* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.zx_hdmi*, %struct.zx_hdmi** %7, align 8
  %20 = load i32, i32* @TPI_DDC_MASTER_EN, align 4
  %21 = load i32, i32* @HW_DDC_MASTER, align 4
  %22 = load i32, i32* @HW_DDC_MASTER, align 4
  %23 = call i32 @hdmi_writeb_mask(%struct.zx_hdmi* %19, i32 %20, i32 %21, i32 %22)
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %76, %3
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %79

28:                                               ; preds = %24
  %29 = load %struct.zx_hdmi*, %struct.zx_hdmi** %7, align 8
  %30 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i64 %37
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %41, i64 %43
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @DRM_DEV_DEBUG(i32 %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34, i32 %40, i32 %46)
  %48 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %48, i64 %50
  %52 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @I2C_M_RD, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %28
  %58 = load %struct.zx_hdmi*, %struct.zx_hdmi** %7, align 8
  %59 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %59, i64 %61
  %63 = call i32 @zx_hdmi_i2c_read(%struct.zx_hdmi* %58, %struct.i2c_msg* %62)
  store i32 %63, i32* %10, align 4
  br label %71

64:                                               ; preds = %28
  %65 = load %struct.zx_hdmi*, %struct.zx_hdmi** %7, align 8
  %66 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %66, i64 %68
  %70 = call i32 @zx_hdmi_i2c_write(%struct.zx_hdmi* %65, %struct.i2c_msg* %69)
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %64, %57
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %79

75:                                               ; preds = %71
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %24

79:                                               ; preds = %74, %24
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %82, %79
  %85 = load %struct.zx_hdmi*, %struct.zx_hdmi** %7, align 8
  %86 = load i32, i32* @TPI_DDC_MASTER_EN, align 4
  %87 = load i32, i32* @HW_DDC_MASTER, align 4
  %88 = call i32 @hdmi_writeb_mask(%struct.zx_hdmi* %85, i32 %86, i32 %87, i32 0)
  %89 = load %struct.zx_hdmi_i2c*, %struct.zx_hdmi_i2c** %8, align 8
  %90 = getelementptr inbounds %struct.zx_hdmi_i2c, %struct.zx_hdmi_i2c* %89, i32 0, i32 0
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load i32, i32* %10, align 4
  ret i32 %92
}

declare dso_local %struct.zx_hdmi* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hdmi_writeb_mask(%struct.zx_hdmi*, i32, i32, i32) #1

declare dso_local i32 @DRM_DEV_DEBUG(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @zx_hdmi_i2c_read(%struct.zx_hdmi*, %struct.i2c_msg*) #1

declare dso_local i32 @zx_hdmi_i2c_write(%struct.zx_hdmi*, %struct.i2c_msg*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
