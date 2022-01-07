; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nvidia-gpu.c_gpu_i2c_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nvidia-gpu.c_gpu_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpu_i2c_dev = type { i64 }

@I2C_MST_CNTL_GEN_START = common dso_local global i32 0, align 4
@I2C_MST_CNTL_CMD_READ = common dso_local global i32 0, align 4
@I2C_MST_CNTL_BURST_SIZE_SHIFT = common dso_local global i32 0, align 4
@I2C_MST_CNTL_CYCLE_TRIGGER = common dso_local global i32 0, align 4
@I2C_MST_CNTL_GEN_NACK = common dso_local global i32 0, align 4
@I2C_MST_CNTL = common dso_local global i64 0, align 8
@I2C_MST_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpu_i2c_dev*, i32*, i32)* @gpu_i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpu_i2c_read(%struct.gpu_i2c_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpu_i2c_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gpu_i2c_dev* %0, %struct.gpu_i2c_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @I2C_MST_CNTL_GEN_START, align 4
  %11 = load i32, i32* @I2C_MST_CNTL_CMD_READ, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @I2C_MST_CNTL_BURST_SIZE_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = or i32 %12, %15
  %17 = load i32, i32* @I2C_MST_CNTL_CYCLE_TRIGGER, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @I2C_MST_CNTL_GEN_NACK, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %5, align 8
  %23 = getelementptr inbounds %struct.gpu_i2c_dev, %struct.gpu_i2c_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @I2C_MST_CNTL, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 %21, i64 %26)
  %28 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %5, align 8
  %29 = call i32 @gpu_i2c_check_status(%struct.gpu_i2c_dev* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %65

34:                                               ; preds = %3
  %35 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %5, align 8
  %36 = getelementptr inbounds %struct.gpu_i2c_dev, %struct.gpu_i2c_dev* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @I2C_MST_DATA, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @readl(i64 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %7, align 4
  switch i32 %41, label %62 [
    i32 1, label %42
    i32 2, label %46
    i32 3, label %50
    i32 4, label %58
  ]

42:                                               ; preds = %34
  %43 = load i32, i32* %9, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %43, i32* %45, align 4
  br label %63

46:                                               ; preds = %34
  %47 = load i32, i32* %9, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @put_unaligned_be16(i32 %47, i32* %48)
  br label %63

50:                                               ; preds = %34
  %51 = load i32, i32* %9, align 4
  %52 = ashr i32 %51, 8
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @put_unaligned_be16(i32 %52, i32* %53)
  %55 = load i32, i32* %9, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  store i32 %55, i32* %57, align 4
  br label %63

58:                                               ; preds = %34
  %59 = load i32, i32* %9, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @put_unaligned_be32(i32 %59, i32* %60)
  br label %63

62:                                               ; preds = %34
  br label %63

63:                                               ; preds = %62, %58, %50, %46, %42
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %32
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @gpu_i2c_check_status(%struct.gpu_i2c_dev*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @put_unaligned_be16(i32, i32*) #1

declare dso_local i32 @put_unaligned_be32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
