; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nvidia-gpu.c_gpu_i2c_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nvidia-gpu.c_gpu_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpu_i2c_dev = type { i64 }

@I2C_MST_DATA = common dso_local global i64 0, align 8
@I2C_MST_CNTL_CMD_WRITE = common dso_local global i32 0, align 4
@I2C_MST_CNTL_BURST_SIZE_SHIFT = common dso_local global i32 0, align 4
@I2C_MST_CNTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpu_i2c_dev*, i32)* @gpu_i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpu_i2c_write(%struct.gpu_i2c_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.gpu_i2c_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gpu_i2c_dev* %0, %struct.gpu_i2c_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %3, align 8
  %8 = getelementptr inbounds %struct.gpu_i2c_dev, %struct.gpu_i2c_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @I2C_MST_DATA, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writel(i32 %6, i64 %11)
  %13 = load i32, i32* @I2C_MST_CNTL_CMD_WRITE, align 4
  %14 = load i32, i32* @I2C_MST_CNTL_BURST_SIZE_SHIFT, align 4
  %15 = shl i32 1, %14
  %16 = or i32 %13, %15
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %3, align 8
  %19 = getelementptr inbounds %struct.gpu_i2c_dev, %struct.gpu_i2c_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @I2C_MST_CNTL, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 %17, i64 %22)
  %24 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %3, align 8
  %25 = call i32 @gpu_i2c_check_status(%struct.gpu_i2c_dev* %24)
  ret i32 %25
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @gpu_i2c_check_status(%struct.gpu_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
