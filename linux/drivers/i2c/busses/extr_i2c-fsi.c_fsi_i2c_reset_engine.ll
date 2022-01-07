; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-fsi.c_fsi_i2c_reset_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-fsi.c_fsi_i2c_reset_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_i2c_master = type { i32 }

@I2C_FSI_RESET_I2C = common dso_local global i32 0, align 4
@I2C_FSI_MODE = common dso_local global i32 0, align 4
@I2C_MODE_PORT = common dso_local global i32 0, align 4
@I2C_PORT_BUSY_RESET = common dso_local global i32 0, align 4
@I2C_FSI_PORT_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_i2c_master*, i64)* @fsi_i2c_reset_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_i2c_reset_engine(%struct.fsi_i2c_master* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsi_i2c_master*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fsi_i2c_master* %0, %struct.fsi_i2c_master** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %4, align 8
  %10 = getelementptr inbounds %struct.fsi_i2c_master, %struct.fsi_i2c_master* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @I2C_FSI_RESET_I2C, align 4
  %13 = call i32 @fsi_i2c_write_reg(i32 %11, i32 %12, i32* %8)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %70

18:                                               ; preds = %2
  %19 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %4, align 8
  %20 = call i32 @fsi_i2c_dev_init(%struct.fsi_i2c_master* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %70

25:                                               ; preds = %18
  %26 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %4, align 8
  %27 = getelementptr inbounds %struct.fsi_i2c_master, %struct.fsi_i2c_master* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @I2C_FSI_MODE, align 4
  %30 = call i32 @fsi_i2c_read_reg(i32 %28, i32 %29, i32* %7)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %70

35:                                               ; preds = %25
  %36 = load i64, i64* %5, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %35
  %39 = load i32, i32* @I2C_MODE_PORT, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* @I2C_MODE_PORT, align 4
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @FIELD_PREP(i32 %43, i64 %44)
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %4, align 8
  %49 = getelementptr inbounds %struct.fsi_i2c_master, %struct.fsi_i2c_master* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @I2C_FSI_MODE, align 4
  %52 = call i32 @fsi_i2c_write_reg(i32 %50, i32 %51, i32* %7)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %38
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %70

57:                                               ; preds = %38
  br label %58

58:                                               ; preds = %57, %35
  %59 = load i32, i32* @I2C_PORT_BUSY_RESET, align 4
  store i32 %59, i32* %8, align 4
  %60 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %4, align 8
  %61 = getelementptr inbounds %struct.fsi_i2c_master, %struct.fsi_i2c_master* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @I2C_FSI_PORT_BUSY, align 4
  %64 = call i32 @fsi_i2c_write_reg(i32 %62, i32 %63, i32* %8)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %70

69:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %67, %55, %33, %23, %16
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @fsi_i2c_write_reg(i32, i32, i32*) #1

declare dso_local i32 @fsi_i2c_dev_init(%struct.fsi_i2c_master*) #1

declare dso_local i32 @fsi_i2c_read_reg(i32, i32, i32*) #1

declare dso_local i32 @FIELD_PREP(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
