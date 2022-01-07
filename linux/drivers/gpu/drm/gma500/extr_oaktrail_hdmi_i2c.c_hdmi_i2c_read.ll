; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_hdmi_i2c.c_hdmi_i2c_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_hdmi_i2c.c_hdmi_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oaktrail_hdmi_dev = type { %struct.hdmi_i2c_dev* }
%struct.hdmi_i2c_dev = type { i32, i32, %struct.i2c_msg* }
%struct.i2c_msg = type { i32* }

@HDMI_HI2CRDB0 = common dso_local global i64 0, align 8
@HDMI_HISR = common dso_local global i64 0, align 8
@HDMI_INTR_I2C_FULL = common dso_local global i32 0, align 4
@HDMI_HI2CHCR = common dso_local global i64 0, align 8
@HI2C_READ_CONTINUE = common dso_local global i32 0, align 4
@I2C_READ_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oaktrail_hdmi_dev*)* @hdmi_i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_i2c_read(%struct.oaktrail_hdmi_dev* %0) #0 {
  %2 = alloca %struct.oaktrail_hdmi_dev*, align 8
  %3 = alloca %struct.hdmi_i2c_dev*, align 8
  %4 = alloca %struct.i2c_msg*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.oaktrail_hdmi_dev* %0, %struct.oaktrail_hdmi_dev** %2, align 8
  %9 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %2, align 8
  %10 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %9, i32 0, i32 0
  %11 = load %struct.hdmi_i2c_dev*, %struct.hdmi_i2c_dev** %10, align 8
  store %struct.hdmi_i2c_dev* %11, %struct.hdmi_i2c_dev** %3, align 8
  %12 = load %struct.hdmi_i2c_dev*, %struct.hdmi_i2c_dev** %3, align 8
  %13 = getelementptr inbounds %struct.hdmi_i2c_dev, %struct.hdmi_i2c_dev* %12, i32 0, i32 2
  %14 = load %struct.i2c_msg*, %struct.i2c_msg** %13, align 8
  store %struct.i2c_msg* %14, %struct.i2c_msg** %4, align 8
  %15 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %5, align 8
  %18 = load %struct.hdmi_i2c_dev*, %struct.hdmi_i2c_dev** %3, align 8
  %19 = getelementptr inbounds %struct.hdmi_i2c_dev, %struct.hdmi_i2c_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %39, %1
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 16
  br i1 %23, label %24, label %42

24:                                               ; preds = %21
  %25 = load i64, i64* @HDMI_HI2CRDB0, align 8
  %26 = load i32, i32* %7, align 4
  %27 = mul nsw i32 %26, 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %25, %28
  %30 = call i32 @HDMI_READ(i64 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = mul nsw i32 %33, 4
  %35 = add nsw i32 %32, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %31, i64 %36
  %38 = call i32 @memcpy(i32* %37, i32* %6, i32 4)
  br label %39

39:                                               ; preds = %24
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %21

42:                                               ; preds = %21
  %43 = load %struct.hdmi_i2c_dev*, %struct.hdmi_i2c_dev** %3, align 8
  %44 = getelementptr inbounds %struct.hdmi_i2c_dev, %struct.hdmi_i2c_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 64
  store i32 %46, i32* %44, align 8
  %47 = load i64, i64* @HDMI_HISR, align 8
  %48 = call i32 @HDMI_READ(i64 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i64, i64* @HDMI_HISR, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @HDMI_INTR_I2C_FULL, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @HDMI_WRITE(i64 %49, i32 %52)
  %54 = load i64, i64* @HDMI_HISR, align 8
  %55 = call i32 @HDMI_READ(i64 %54)
  %56 = load i64, i64* @HDMI_HI2CHCR, align 8
  %57 = call i32 @HDMI_READ(i64 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i64, i64* @HDMI_HI2CHCR, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @HI2C_READ_CONTINUE, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @HDMI_WRITE(i64 %58, i32 %61)
  %63 = load i64, i64* @HDMI_HI2CHCR, align 8
  %64 = call i32 @HDMI_READ(i64 %63)
  %65 = load i32, i32* @I2C_READ_DONE, align 4
  %66 = load %struct.hdmi_i2c_dev*, %struct.hdmi_i2c_dev** %3, align 8
  %67 = getelementptr inbounds %struct.hdmi_i2c_dev, %struct.hdmi_i2c_dev* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  ret void
}

declare dso_local i32 @HDMI_READ(i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @HDMI_WRITE(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
