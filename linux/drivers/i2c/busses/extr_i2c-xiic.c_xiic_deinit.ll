; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xiic.c_xiic_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xiic.c_xiic_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xiic_i2c = type { i32 }

@XIIC_RESETR_OFFSET = common dso_local global i32 0, align 4
@XIIC_RESET_MASK = common dso_local global i32 0, align 4
@XIIC_CR_REG_OFFSET = common dso_local global i32 0, align 4
@XIIC_CR_ENABLE_DEVICE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xiic_i2c*)* @xiic_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xiic_deinit(%struct.xiic_i2c* %0) #0 {
  %2 = alloca %struct.xiic_i2c*, align 8
  %3 = alloca i32, align 4
  store %struct.xiic_i2c* %0, %struct.xiic_i2c** %2, align 8
  %4 = load %struct.xiic_i2c*, %struct.xiic_i2c** %2, align 8
  %5 = load i32, i32* @XIIC_RESETR_OFFSET, align 4
  %6 = load i32, i32* @XIIC_RESET_MASK, align 4
  %7 = call i32 @xiic_setreg32(%struct.xiic_i2c* %4, i32 %5, i32 %6)
  %8 = load %struct.xiic_i2c*, %struct.xiic_i2c** %2, align 8
  %9 = load i32, i32* @XIIC_CR_REG_OFFSET, align 4
  %10 = call i32 @xiic_getreg8(%struct.xiic_i2c* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.xiic_i2c*, %struct.xiic_i2c** %2, align 8
  %12 = load i32, i32* @XIIC_CR_REG_OFFSET, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @XIIC_CR_ENABLE_DEVICE_MASK, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = call i32 @xiic_setreg8(%struct.xiic_i2c* %11, i32 %12, i32 %16)
  ret void
}

declare dso_local i32 @xiic_setreg32(%struct.xiic_i2c*, i32, i32) #1

declare dso_local i32 @xiic_getreg8(%struct.xiic_i2c*, i32) #1

declare dso_local i32 @xiic_setreg8(%struct.xiic_i2c*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
