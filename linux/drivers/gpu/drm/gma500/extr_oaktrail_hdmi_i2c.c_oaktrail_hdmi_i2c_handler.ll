; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_hdmi_i2c.c_oaktrail_hdmi_i2c_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_hdmi_i2c.c_oaktrail_hdmi_i2c_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oaktrail_hdmi_dev = type { %struct.hdmi_i2c_dev* }
%struct.hdmi_i2c_dev = type { i32 }

@HDMI_HISR = common dso_local global i32 0, align 4
@HDMI_INTR_HPD = common dso_local global i32 0, align 4
@HDMI_INTR_I2C_FULL = common dso_local global i32 0, align 4
@HDMI_INTR_I2C_DONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @oaktrail_hdmi_i2c_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oaktrail_hdmi_i2c_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.oaktrail_hdmi_dev*, align 8
  %6 = alloca %struct.hdmi_i2c_dev*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.oaktrail_hdmi_dev*
  store %struct.oaktrail_hdmi_dev* %9, %struct.oaktrail_hdmi_dev** %5, align 8
  %10 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %5, align 8
  %11 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %10, i32 0, i32 0
  %12 = load %struct.hdmi_i2c_dev*, %struct.hdmi_i2c_dev** %11, align 8
  store %struct.hdmi_i2c_dev* %12, %struct.hdmi_i2c_dev** %6, align 8
  %13 = load i32, i32* @HDMI_HISR, align 4
  %14 = call i32 @HDMI_READ(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @HDMI_INTR_HPD, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load i32, i32* @HDMI_HISR, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @HDMI_INTR_HPD, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @HDMI_WRITE(i32 %20, i32 %23)
  %25 = load i32, i32* @HDMI_HISR, align 4
  %26 = call i32 @HDMI_READ(i32 %25)
  br label %27

27:                                               ; preds = %19, %2
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @HDMI_INTR_I2C_FULL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %5, align 8
  %34 = call i32 @hdmi_i2c_read(%struct.oaktrail_hdmi_dev* %33)
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @HDMI_INTR_I2C_DONE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %5, align 8
  %42 = call i32 @hdmi_i2c_transaction_done(%struct.oaktrail_hdmi_dev* %41)
  br label %43

43:                                               ; preds = %40, %35
  %44 = load %struct.hdmi_i2c_dev*, %struct.hdmi_i2c_dev** %6, align 8
  %45 = getelementptr inbounds %struct.hdmi_i2c_dev, %struct.hdmi_i2c_dev* %44, i32 0, i32 0
  %46 = call i32 @complete(i32* %45)
  %47 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %47
}

declare dso_local i32 @HDMI_READ(i32) #1

declare dso_local i32 @HDMI_WRITE(i32, i32) #1

declare dso_local i32 @hdmi_i2c_read(%struct.oaktrail_hdmi_dev*) #1

declare dso_local i32 @hdmi_i2c_transaction_done(%struct.oaktrail_hdmi_dev*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
