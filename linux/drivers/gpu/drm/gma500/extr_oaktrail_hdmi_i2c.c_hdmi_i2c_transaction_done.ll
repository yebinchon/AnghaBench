; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_hdmi_i2c.c_hdmi_i2c_transaction_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_hdmi_i2c.c_hdmi_i2c_transaction_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oaktrail_hdmi_dev = type { %struct.hdmi_i2c_dev* }
%struct.hdmi_i2c_dev = type { i32 }

@HDMI_HISR = common dso_local global i32 0, align 4
@HDMI_INTR_I2C_DONE = common dso_local global i32 0, align 4
@HDMI_HI2CHCR = common dso_local global i32 0, align 4
@HI2C_ENABLE_TRANSACTION = common dso_local global i32 0, align 4
@I2C_TRANSACTION_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oaktrail_hdmi_dev*)* @hdmi_i2c_transaction_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_i2c_transaction_done(%struct.oaktrail_hdmi_dev* %0) #0 {
  %2 = alloca %struct.oaktrail_hdmi_dev*, align 8
  %3 = alloca %struct.hdmi_i2c_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.oaktrail_hdmi_dev* %0, %struct.oaktrail_hdmi_dev** %2, align 8
  %5 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %2, align 8
  %6 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %5, i32 0, i32 0
  %7 = load %struct.hdmi_i2c_dev*, %struct.hdmi_i2c_dev** %6, align 8
  store %struct.hdmi_i2c_dev* %7, %struct.hdmi_i2c_dev** %3, align 8
  %8 = load i32, i32* @HDMI_HISR, align 4
  %9 = call i32 @HDMI_READ(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @HDMI_HISR, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @HDMI_INTR_I2C_DONE, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @HDMI_WRITE(i32 %10, i32 %13)
  %15 = load i32, i32* @HDMI_HISR, align 4
  %16 = call i32 @HDMI_READ(i32 %15)
  %17 = load i32, i32* @HDMI_HI2CHCR, align 4
  %18 = call i32 @HDMI_READ(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @HDMI_HI2CHCR, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @HI2C_ENABLE_TRANSACTION, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = call i32 @HDMI_WRITE(i32 %19, i32 %23)
  %25 = load i32, i32* @HDMI_HI2CHCR, align 4
  %26 = call i32 @HDMI_READ(i32 %25)
  %27 = load i32, i32* @I2C_TRANSACTION_DONE, align 4
  %28 = load %struct.hdmi_i2c_dev*, %struct.hdmi_i2c_dev** %3, align 8
  %29 = getelementptr inbounds %struct.hdmi_i2c_dev, %struct.hdmi_i2c_dev* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  ret void
}

declare dso_local i32 @HDMI_READ(i32) #1

declare dso_local i32 @HDMI_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
