; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-img-scb.c_img_i2c_raw_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-img-scb.c_img_i2c_raw_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_i2c = type { i32, i32, i64 }

@SCB_OVERRIDE_REG = common dso_local global i32 0, align 4
@OVERRIDE_SCLKEN_OVR = common dso_local global i32 0, align 4
@OVERRIDE_SDATEN_OVR = common dso_local global i32 0, align 4
@OVERRIDE_MASTER = common dso_local global i32 0, align 4
@OVERRIDE_LINE_OVR_EN = common dso_local global i32 0, align 4
@OVERRIDE_DIRECT = common dso_local global i32 0, align 4
@OVERRIDE_CMD_MASK = common dso_local global i32 0, align 4
@OVERRIDE_CMD_SHIFT = common dso_local global i32 0, align 4
@OVERRIDE_DATA_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.img_i2c*)* @img_i2c_raw_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @img_i2c_raw_op(%struct.img_i2c* %0) #0 {
  %2 = alloca %struct.img_i2c*, align 8
  store %struct.img_i2c* %0, %struct.img_i2c** %2, align 8
  %3 = load %struct.img_i2c*, %struct.img_i2c** %2, align 8
  %4 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %3, i32 0, i32 2
  store i64 0, i64* %4, align 8
  %5 = load %struct.img_i2c*, %struct.img_i2c** %2, align 8
  %6 = load i32, i32* @SCB_OVERRIDE_REG, align 4
  %7 = load i32, i32* @OVERRIDE_SCLKEN_OVR, align 4
  %8 = load i32, i32* @OVERRIDE_SDATEN_OVR, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @OVERRIDE_MASTER, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @OVERRIDE_LINE_OVR_EN, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @OVERRIDE_DIRECT, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.img_i2c*, %struct.img_i2c** %2, align 8
  %17 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @OVERRIDE_CMD_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @OVERRIDE_CMD_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = or i32 %15, %22
  %24 = load %struct.img_i2c*, %struct.img_i2c** %2, align 8
  %25 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @OVERRIDE_DATA_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = or i32 %23, %28
  %30 = call i32 @img_i2c_writel(%struct.img_i2c* %5, i32 %6, i32 %29)
  ret void
}

declare dso_local i32 @img_i2c_writel(%struct.img_i2c*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
