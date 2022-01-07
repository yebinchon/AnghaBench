; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mt7621.c_mtk_i2c_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mt7621.c_mtk_i2c_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_i2c = type { i32, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"I2C reset failed!\0A\00", align 1
@SM0CTL0_CLK_DIV_MASK = common dso_local global i32 0, align 4
@SM0CTL0_EN = common dso_local global i32 0, align 4
@SM0CTL0_SCL_STRETCH = common dso_local global i32 0, align 4
@REG_SM0CTL0_REG = common dso_local global i64 0, align 8
@REG_SM0CFG2_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_i2c*)* @mtk_i2c_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_i2c_reset(%struct.mtk_i2c* %0) #0 {
  %2 = alloca %struct.mtk_i2c*, align 8
  %3 = alloca i32, align 4
  store %struct.mtk_i2c* %0, %struct.mtk_i2c** %2, align 8
  %4 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %5 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @device_reset(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %14 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %19 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = shl i32 %20, 16
  %22 = load i32, i32* @SM0CTL0_CLK_DIV_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @SM0CTL0_EN, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @SM0CTL0_SCL_STRETCH, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %29 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @REG_SM0CTL0_REG, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @iowrite32(i32 %27, i64 %32)
  %34 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %35 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @REG_SM0CFG2_REG, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @iowrite32(i32 0, i64 %38)
  ret void
}

declare dso_local i32 @device_reset(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
