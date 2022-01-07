; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-omap.c_omap_i2c_resize_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-omap.c_omap_i2c_resize_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_i2c_dev = type { i32, i32, i64, i32, i32, i32, i32*, i32 }

@OMAP_I2C_FLAG_NO_FIFO = common dso_local global i32 0, align 4
@OMAP_I2C_BUF_REG = common dso_local global i32 0, align 4
@OMAP_I2C_BUF_RXFIF_CLR = common dso_local global i32 0, align 4
@OMAP_I2C_BUF_TXFIF_CLR = common dso_local global i32 0, align 4
@OMAP_I2C_REV_ON_3630 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_i2c_dev*, i32, i32)* @omap_i2c_resize_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_i2c_resize_fifo(%struct.omap_i2c_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.omap_i2c_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.omap_i2c_dev* %0, %struct.omap_i2c_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %9 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @OMAP_I2C_FLAG_NO_FIFO, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %82

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %18 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @clamp(i32 %16, i32 1, i32 %19)
  %21 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %22 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %24 = load i32, i32* @OMAP_I2C_BUF_REG, align 4
  %25 = call i32 @omap_i2c_read_reg(%struct.omap_i2c_dev* %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %15
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, -16129
  store i32 %30, i32* %7, align 4
  %31 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %32 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %33, 1
  %35 = shl i32 %34, 8
  %36 = load i32, i32* @OMAP_I2C_BUF_RXFIF_CLR, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %7, align 4
  br label %51

40:                                               ; preds = %15
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, -64
  store i32 %42, i32* %7, align 4
  %43 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %44 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, 1
  %47 = load i32, i32* @OMAP_I2C_BUF_TXFIF_CLR, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %40, %28
  %52 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %53 = load i32, i32* @OMAP_I2C_BUF_REG, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @omap_i2c_write_reg(%struct.omap_i2c_dev* %52, i32 %53, i32 %54)
  %56 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %57 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @OMAP_I2C_REV_ON_3630, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %63 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %62, i32 0, i32 3
  store i32 1, i32* %63, align 8
  br label %64

64:                                               ; preds = %61, %51
  %65 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %66 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %65, i32 0, i32 6
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %82

69:                                               ; preds = %64
  %70 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %71 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 1000000, %72
  %74 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %75 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = mul nsw i32 1000, %76
  %78 = sdiv i32 %77, 8
  %79 = sdiv i32 %73, %78
  %80 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %4, align 8
  %81 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %14, %69, %64
  ret void
}

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @omap_i2c_read_reg(%struct.omap_i2c_dev*, i32) #1

declare dso_local i32 @omap_i2c_write_reg(%struct.omap_i2c_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
