; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-emev2.c_em_clear_set_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-emev2.c_em_clear_set_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em_i2c_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.em_i2c_device*, i32, i32, i32)* @em_clear_set_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em_clear_set_bit(%struct.em_i2c_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.em_i2c_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.em_i2c_device* %0, %struct.em_i2c_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.em_i2c_device*, %struct.em_i2c_device** %5, align 8
  %10 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %8, align 4
  %13 = add nsw i32 %11, %12
  %14 = call i32 @readb(i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.em_i2c_device*, %struct.em_i2c_device** %5, align 8
  %21 = getelementptr inbounds %struct.em_i2c_device, %struct.em_i2c_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %22, %23
  %25 = call i32 @writeb(i32 %19, i32 %24)
  ret void
}

declare dso_local i32 @writeb(i32, i32) #1

declare dso_local i32 @readb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
