; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-zx2967.c_zx2967_i2c_flush_fifos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-zx2967.c_zx2967_i2c_flush_fifos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zx2967_i2c = type { i64 }

@REG_RDCONF = common dso_local global i32 0, align 4
@I2C_RFIFO_RESET = common dso_local global i32 0, align 4
@REG_WRCONF = common dso_local global i32 0, align 4
@I2C_WFIFO_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zx2967_i2c*)* @zx2967_i2c_flush_fifos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zx2967_i2c_flush_fifos(%struct.zx2967_i2c* %0) #0 {
  %2 = alloca %struct.zx2967_i2c*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.zx2967_i2c* %0, %struct.zx2967_i2c** %2, align 8
  %5 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %2, align 8
  %6 = getelementptr inbounds %struct.zx2967_i2c, %struct.zx2967_i2c* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @REG_RDCONF, align 4
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @I2C_RFIFO_RESET, align 4
  store i32 %11, i32* %4, align 4
  br label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @REG_WRCONF, align 4
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @I2C_WFIFO_RESET, align 4
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %12, %9
  %16 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @zx2967_i2c_readl(%struct.zx2967_i2c* %16, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load %struct.zx2967_i2c*, %struct.zx2967_i2c** %2, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @zx2967_i2c_writel(%struct.zx2967_i2c* %21, i32 %22, i32 %23)
  ret void
}

declare dso_local i32 @zx2967_i2c_readl(%struct.zx2967_i2c*, i32) #1

declare dso_local i32 @zx2967_i2c_writel(%struct.zx2967_i2c*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
