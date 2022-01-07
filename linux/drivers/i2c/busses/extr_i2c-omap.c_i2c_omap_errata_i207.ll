; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-omap.c_i2c_omap_errata_i207.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-omap.c_i2c_omap_errata_i207.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_i2c_dev = type { i32 }

@OMAP_I2C_STAT_RDR = common dso_local global i32 0, align 4
@OMAP_I2C_STAT_REG = common dso_local global i32 0, align 4
@OMAP_I2C_STAT_BB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"RDR when bus is busy.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_i2c_dev*, i32)* @i2c_omap_errata_i207 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_omap_errata_i207(%struct.omap_i2c_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.omap_i2c_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.omap_i2c_dev* %0, %struct.omap_i2c_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @OMAP_I2C_STAT_RDR, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %2
  %10 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %11 = load i32, i32* @OMAP_I2C_STAT_RDR, align 4
  %12 = call i32 @omap_i2c_ack_stat(%struct.omap_i2c_dev* %10, i32 %11)
  %13 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %14 = load i32, i32* @OMAP_I2C_STAT_REG, align 4
  %15 = call i32 @omap_i2c_read_reg(%struct.omap_i2c_dev* %13, i32 %14)
  %16 = load i32, i32* @OMAP_I2C_STAT_BB, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %9
  %20 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %21 = load i32, i32* @OMAP_I2C_STAT_REG, align 4
  %22 = call i32 @omap_i2c_read_reg(%struct.omap_i2c_dev* %20, i32 %21)
  %23 = load i32, i32* @OMAP_I2C_STAT_RDR, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %28 = load i32, i32* @OMAP_I2C_STAT_RDR, align 4
  %29 = call i32 @omap_i2c_ack_stat(%struct.omap_i2c_dev* %27, i32 %28)
  %30 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %31 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_dbg(i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %26, %19
  br label %35

35:                                               ; preds = %34, %9
  br label %36

36:                                               ; preds = %35, %2
  ret void
}

declare dso_local i32 @omap_i2c_ack_stat(%struct.omap_i2c_dev*, i32) #1

declare dso_local i32 @omap_i2c_read_reg(%struct.omap_i2c_dev*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
