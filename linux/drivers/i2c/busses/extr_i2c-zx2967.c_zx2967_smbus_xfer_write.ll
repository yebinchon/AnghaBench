; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-zx2967.c_zx2967_smbus_xfer_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-zx2967.c_zx2967_smbus_xfer_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zx2967_i2c = type { i32, i32 }

@REG_CMD = common dso_local global i32 0, align 4
@I2C_START = common dso_local global i32 0, align 4
@I2C_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zx2967_i2c*)* @zx2967_smbus_xfer_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx2967_smbus_xfer_write(%struct.zx2967_i2c* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zx2967_i2c*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.zx2967_i2c* %0, %struct.zx2967_i2c** %3, align 8
  %6 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %3, align 8
  %7 = getelementptr inbounds %struct.zx2967_i2c, %struct.zx2967_i2c* %6, i32 0, i32 1
  %8 = call i32 @reinit_completion(i32* %7)
  %9 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %3, align 8
  %10 = load i32, i32* @REG_CMD, align 4
  %11 = call i32 @zx2967_i2c_readl(%struct.zx2967_i2c* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @I2C_START, align 4
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @REG_CMD, align 4
  %18 = call i32 @zx2967_i2c_writel(%struct.zx2967_i2c* %15, i32 %16, i32 %17)
  %19 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %3, align 8
  %20 = getelementptr inbounds %struct.zx2967_i2c, %struct.zx2967_i2c* %19, i32 0, i32 1
  %21 = load i32, i32* @I2C_TIMEOUT, align 4
  %22 = call i64 @wait_for_completion_timeout(i32* %20, i32 %21)
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i32, i32* @ETIMEDOUT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %38

28:                                               ; preds = %1
  %29 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %3, align 8
  %30 = getelementptr inbounds %struct.zx2967_i2c, %struct.zx2967_i2c* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %3, align 8
  %35 = getelementptr inbounds %struct.zx2967_i2c, %struct.zx2967_i2c* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %2, align 4
  br label %38

37:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %33, %25
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @zx2967_i2c_readl(%struct.zx2967_i2c*, i32) #1

declare dso_local i32 @zx2967_i2c_writel(%struct.zx2967_i2c*, i32, i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
