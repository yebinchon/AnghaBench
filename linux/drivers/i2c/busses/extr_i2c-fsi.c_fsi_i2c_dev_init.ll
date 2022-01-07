; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-fsi.c_fsi_i2c_dev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-fsi.c_fsi_i2c_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_i2c_master = type { i32, i64 }

@I2C_MODE_ENHANCED = common dso_local global i32 0, align 4
@I2C_FSI_INT_MASK = common dso_local global i32 0, align 4
@I2C_MODE_CLKDIV = common dso_local global i32 0, align 4
@I2C_DEFAULT_CLK_DIV = common dso_local global i64 0, align 8
@I2C_FSI_MODE = common dso_local global i32 0, align 4
@I2C_FSI_ESTAT = common dso_local global i32 0, align 4
@I2C_ESTAT_FIFO_SZ = common dso_local global i32 0, align 4
@I2C_WATERMARK_HI = common dso_local global i32 0, align 4
@I2C_FIFO_HI_LVL = common dso_local global i64 0, align 8
@I2C_WATERMARK_LO = common dso_local global i32 0, align 4
@I2C_FIFO_LO_LVL = common dso_local global i64 0, align 8
@I2C_FSI_WATER_MARK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_i2c_master*)* @fsi_i2c_dev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_i2c_dev_init(%struct.fsi_i2c_master* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsi_i2c_master*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fsi_i2c_master* %0, %struct.fsi_i2c_master** %3, align 8
  %9 = load i32, i32* @I2C_MODE_ENHANCED, align 4
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %3, align 8
  %11 = getelementptr inbounds %struct.fsi_i2c_master, %struct.fsi_i2c_master* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @I2C_FSI_INT_MASK, align 4
  %14 = call i32 @fsi_i2c_write_reg(i32 %12, i32 %13, i32* %8)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %67

19:                                               ; preds = %1
  %20 = load i32, i32* @I2C_MODE_CLKDIV, align 4
  %21 = load i64, i64* @I2C_DEFAULT_CLK_DIV, align 8
  %22 = call i32 @FIELD_PREP(i32 %20, i64 %21)
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %3, align 8
  %26 = getelementptr inbounds %struct.fsi_i2c_master, %struct.fsi_i2c_master* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @I2C_FSI_MODE, align 4
  %29 = call i32 @fsi_i2c_write_reg(i32 %27, i32 %28, i32* %5)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %19
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %67

34:                                               ; preds = %19
  %35 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %3, align 8
  %36 = getelementptr inbounds %struct.fsi_i2c_master, %struct.fsi_i2c_master* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @I2C_FSI_ESTAT, align 4
  %39 = call i32 @fsi_i2c_read_reg(i32 %37, i32 %38, i32* %6)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %67

44:                                               ; preds = %34
  %45 = load i32, i32* @I2C_ESTAT_FIFO_SZ, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i64 @FIELD_GET(i32 %45, i32 %46)
  %48 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %3, align 8
  %49 = getelementptr inbounds %struct.fsi_i2c_master, %struct.fsi_i2c_master* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load i32, i32* @I2C_WATERMARK_HI, align 4
  %51 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %3, align 8
  %52 = getelementptr inbounds %struct.fsi_i2c_master, %struct.fsi_i2c_master* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @I2C_FIFO_HI_LVL, align 8
  %55 = sub nsw i64 %53, %54
  %56 = call i32 @FIELD_PREP(i32 %50, i64 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* @I2C_WATERMARK_LO, align 4
  %58 = load i64, i64* @I2C_FIFO_LO_LVL, align 8
  %59 = call i32 @FIELD_PREP(i32 %57, i64 %58)
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  %62 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %3, align 8
  %63 = getelementptr inbounds %struct.fsi_i2c_master, %struct.fsi_i2c_master* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @I2C_FSI_WATER_MARK, align 4
  %66 = call i32 @fsi_i2c_write_reg(i32 %64, i32 %65, i32* %7)
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %44, %42, %32, %17
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @fsi_i2c_write_reg(i32, i32, i32*) #1

declare dso_local i32 @FIELD_PREP(i32, i64) #1

declare dso_local i32 @fsi_i2c_read_reg(i32, i32, i32*) #1

declare dso_local i64 @FIELD_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
