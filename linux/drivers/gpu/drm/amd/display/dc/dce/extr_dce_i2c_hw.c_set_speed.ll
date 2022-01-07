; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_hw.c_set_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_hw.c_set_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_i2c_hw = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SPEED = common dso_local global i32 0, align 4
@DC_I2C_DDC1_SPEED = common dso_local global i32 0, align 4
@DC_I2C_DDC1_PRESCALE = common dso_local global i32 0, align 4
@DC_I2C_DDC1_THRESHOLD = common dso_local global i32 0, align 4
@DC_I2C_DDC1_START_STOP_TIMING_CNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_i2c_hw*, i32)* @set_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_speed(%struct.dce_i2c_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.dce_i2c_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.dce_i2c_hw* %0, %struct.dce_i2c_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %50

7:                                                ; preds = %2
  %8 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %3, align 8
  %9 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %7
  %15 = load i32, i32* @SPEED, align 4
  %16 = load i32, i32* @DC_I2C_DDC1_SPEED, align 4
  %17 = load i32, i32* @DC_I2C_DDC1_PRESCALE, align 4
  %18 = call i32 @FN(i32 %16, i32 %17)
  %19 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %3, align 8
  %20 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sdiv i32 %21, %22
  %24 = load i32, i32* @DC_I2C_DDC1_SPEED, align 4
  %25 = load i32, i32* @DC_I2C_DDC1_THRESHOLD, align 4
  %26 = call i32 @FN(i32 %24, i32 %25)
  %27 = load i32, i32* @DC_I2C_DDC1_SPEED, align 4
  %28 = load i32, i32* @DC_I2C_DDC1_START_STOP_TIMING_CNTL, align 4
  %29 = call i32 @FN(i32 %27, i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = icmp sgt i32 %30, 50
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 2, i32 1
  %34 = call i32 (i32, i32, i32, i32, i32, i32, ...) @REG_UPDATE_N(i32 %15, i32 3, i32 %18, i32 %23, i32 %26, i32 2, i32 %29, i32 %33)
  br label %49

35:                                               ; preds = %7
  %36 = load i32, i32* @SPEED, align 4
  %37 = load i32, i32* @DC_I2C_DDC1_SPEED, align 4
  %38 = load i32, i32* @DC_I2C_DDC1_PRESCALE, align 4
  %39 = call i32 @FN(i32 %37, i32 %38)
  %40 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %3, align 8
  %41 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sdiv i32 %42, %43
  %45 = load i32, i32* @DC_I2C_DDC1_SPEED, align 4
  %46 = load i32, i32* @DC_I2C_DDC1_THRESHOLD, align 4
  %47 = call i32 @FN(i32 %45, i32 %46)
  %48 = call i32 (i32, i32, i32, i32, i32, i32, ...) @REG_UPDATE_N(i32 %36, i32 2, i32 %39, i32 %44, i32 %47, i32 2)
  br label %49

49:                                               ; preds = %35, %14
  br label %50

50:                                               ; preds = %49, %2
  ret void
}

declare dso_local i32 @REG_UPDATE_N(i32, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @FN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
