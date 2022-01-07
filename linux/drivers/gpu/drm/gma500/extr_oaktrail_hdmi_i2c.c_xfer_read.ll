; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_hdmi_i2c.c_xfer_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_hdmi_i2c.c_xfer_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32 }
%struct.oaktrail_hdmi_dev = type { %struct.hdmi_i2c_dev* }
%struct.hdmi_i2c_dev = type { i64, i32, i64, %struct.i2c_msg* }

@I2C_STAT_INIT = common dso_local global i64 0, align 8
@HI2C_EDID_READ = common dso_local global i32 0, align 4
@HI2C_ENABLE_TRANSACTION = common dso_local global i32 0, align 4
@HDMI_HI2CHCR = common dso_local global i32 0, align 4
@I2C_TRANSACTION_DONE = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*)* @xfer_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfer_read(%struct.i2c_adapter* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca %struct.i2c_msg*, align 8
  %5 = alloca %struct.oaktrail_hdmi_dev*, align 8
  %6 = alloca %struct.hdmi_i2c_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %4, align 8
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %9 = call %struct.oaktrail_hdmi_dev* @i2c_get_adapdata(%struct.i2c_adapter* %8)
  store %struct.oaktrail_hdmi_dev* %9, %struct.oaktrail_hdmi_dev** %5, align 8
  %10 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %5, align 8
  %11 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %10, i32 0, i32 0
  %12 = load %struct.hdmi_i2c_dev*, %struct.hdmi_i2c_dev** %11, align 8
  store %struct.hdmi_i2c_dev* %12, %struct.hdmi_i2c_dev** %6, align 8
  %13 = load i64, i64* @I2C_STAT_INIT, align 8
  %14 = load %struct.hdmi_i2c_dev*, %struct.hdmi_i2c_dev** %6, align 8
  %15 = getelementptr inbounds %struct.hdmi_i2c_dev, %struct.hdmi_i2c_dev* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %17 = load %struct.hdmi_i2c_dev*, %struct.hdmi_i2c_dev** %6, align 8
  %18 = getelementptr inbounds %struct.hdmi_i2c_dev, %struct.hdmi_i2c_dev* %17, i32 0, i32 3
  store %struct.i2c_msg* %16, %struct.i2c_msg** %18, align 8
  %19 = load %struct.hdmi_i2c_dev*, %struct.hdmi_i2c_dev** %6, align 8
  %20 = getelementptr inbounds %struct.hdmi_i2c_dev, %struct.hdmi_i2c_dev* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load %struct.hdmi_i2c_dev*, %struct.hdmi_i2c_dev** %6, align 8
  %22 = getelementptr inbounds %struct.hdmi_i2c_dev, %struct.hdmi_i2c_dev* %21, i32 0, i32 1
  %23 = call i32 @reinit_completion(i32* %22)
  %24 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 20
  %28 = load i32, i32* @HI2C_EDID_READ, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @HI2C_ENABLE_TRANSACTION, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @HDMI_HI2CHCR, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @HDMI_WRITE(i32 %32, i32 %33)
  %35 = load i32, i32* @HDMI_HI2CHCR, align 4
  %36 = call i32 @HDMI_READ(i32 %35)
  br label %37

37:                                               ; preds = %43, %2
  %38 = load %struct.hdmi_i2c_dev*, %struct.hdmi_i2c_dev** %6, align 8
  %39 = getelementptr inbounds %struct.hdmi_i2c_dev, %struct.hdmi_i2c_dev* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @I2C_TRANSACTION_DONE, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.hdmi_i2c_dev*, %struct.hdmi_i2c_dev** %6, align 8
  %45 = getelementptr inbounds %struct.hdmi_i2c_dev, %struct.hdmi_i2c_dev* %44, i32 0, i32 1
  %46 = load i32, i32* @HZ, align 4
  %47 = mul nsw i32 10, %46
  %48 = call i32 @wait_for_completion_interruptible_timeout(i32* %45, i32 %47)
  br label %37

49:                                               ; preds = %37
  ret i32 0
}

declare dso_local %struct.oaktrail_hdmi_dev* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @HDMI_WRITE(i32, i32) #1

declare dso_local i32 @HDMI_READ(i32) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
