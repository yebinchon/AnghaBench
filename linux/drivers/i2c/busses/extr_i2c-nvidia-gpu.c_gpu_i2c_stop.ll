; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nvidia-gpu.c_gpu_i2c_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nvidia-gpu.c_gpu_i2c_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpu_i2c_dev = type { i64 }

@I2C_MST_CNTL_GEN_STOP = common dso_local global i32 0, align 4
@I2C_MST_CNTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpu_i2c_dev*)* @gpu_i2c_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpu_i2c_stop(%struct.gpu_i2c_dev* %0) #0 {
  %2 = alloca %struct.gpu_i2c_dev*, align 8
  store %struct.gpu_i2c_dev* %0, %struct.gpu_i2c_dev** %2, align 8
  %3 = load i32, i32* @I2C_MST_CNTL_GEN_STOP, align 4
  %4 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %2, align 8
  %5 = getelementptr inbounds %struct.gpu_i2c_dev, %struct.gpu_i2c_dev* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @I2C_MST_CNTL, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @writel(i32 %3, i64 %8)
  %10 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %2, align 8
  %11 = call i32 @gpu_i2c_check_status(%struct.gpu_i2c_dev* %10)
  ret i32 %11
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @gpu_i2c_check_status(%struct.gpu_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
