; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-gpio.c_msg_push_crc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-gpio.c_msg_push_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_gpio_msg = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsi_gpio_msg*)* @msg_push_crc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msg_push_crc(%struct.fsi_gpio_msg* %0) #0 {
  %2 = alloca %struct.fsi_gpio_msg*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.fsi_gpio_msg* %0, %struct.fsi_gpio_msg** %2, align 8
  %5 = load %struct.fsi_gpio_msg*, %struct.fsi_gpio_msg** %2, align 8
  %6 = getelementptr inbounds %struct.fsi_gpio_msg, %struct.fsi_gpio_msg* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 3
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = shl i32 1, %9
  %11 = load %struct.fsi_gpio_msg*, %struct.fsi_gpio_msg** %2, align 8
  %12 = getelementptr inbounds %struct.fsi_gpio_msg, %struct.fsi_gpio_msg* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.fsi_gpio_msg*, %struct.fsi_gpio_msg** %2, align 8
  %15 = getelementptr inbounds %struct.fsi_gpio_msg, %struct.fsi_gpio_msg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = sub nsw i32 %16, %17
  %19 = ashr i32 %13, %18
  %20 = or i32 %10, %19
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  %23 = call i64 @crc4(i64 0, i32 %20, i32 %22)
  store i64 %23, i64* %3, align 8
  %24 = load i64, i64* %3, align 8
  %25 = load %struct.fsi_gpio_msg*, %struct.fsi_gpio_msg** %2, align 8
  %26 = getelementptr inbounds %struct.fsi_gpio_msg, %struct.fsi_gpio_msg* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.fsi_gpio_msg*, %struct.fsi_gpio_msg** %2, align 8
  %29 = getelementptr inbounds %struct.fsi_gpio_msg, %struct.fsi_gpio_msg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = sub nsw i32 %30, %31
  %33 = call i64 @crc4(i64 %24, i32 %27, i32 %32)
  store i64 %33, i64* %3, align 8
  %34 = load %struct.fsi_gpio_msg*, %struct.fsi_gpio_msg** %2, align 8
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @msg_push_bits(%struct.fsi_gpio_msg* %34, i64 %35, i32 4)
  ret void
}

declare dso_local i64 @crc4(i64, i32, i32) #1

declare dso_local i32 @msg_push_bits(%struct.fsi_gpio_msg*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
