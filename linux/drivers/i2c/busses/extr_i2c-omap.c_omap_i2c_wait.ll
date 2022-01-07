; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-omap.c_omap_i2c_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-omap.c_omap_i2c_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_i2c_dev = type { i32 }

@OMAP_I2C_IE_REG = common dso_local global i32 0, align 4
@OMAP_I2C_STAT_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_i2c_dev*)* @omap_i2c_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_i2c_wait(%struct.omap_i2c_dev* %0) #0 {
  %2 = alloca %struct.omap_i2c_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.omap_i2c_dev* %0, %struct.omap_i2c_dev** %2, align 8
  %6 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %2, align 8
  %7 = load i32, i32* @OMAP_I2C_IE_REG, align 4
  %8 = call i32 @omap_i2c_read_reg(%struct.omap_i2c_dev* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %23, %1
  %10 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %2, align 8
  %11 = load i32, i32* @OMAP_I2C_STAT_REG, align 4
  %12 = call i32 @omap_i2c_read_reg(%struct.omap_i2c_dev* %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %9
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 5
  br label %23

23:                                               ; preds = %20, %15
  %24 = phi i1 [ false, %15 ], [ %22, %20 ]
  br i1 %24, label %9, label %25

25:                                               ; preds = %23
  ret void
}

declare dso_local i32 @omap_i2c_read_reg(%struct.omap_i2c_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
