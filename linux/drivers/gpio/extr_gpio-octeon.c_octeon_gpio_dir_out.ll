; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-octeon.c_octeon_gpio_dir_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-octeon.c_octeon_gpio_dir_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.octeon_gpio = type { i64 }
%union.cvmx_gpio_bit_cfgx = type { i64 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @octeon_gpio_dir_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_gpio_dir_out(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.octeon_gpio*, align 8
  %8 = alloca %union.cvmx_gpio_bit_cfgx, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.octeon_gpio* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.octeon_gpio* %10, %struct.octeon_gpio** %7, align 8
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @octeon_gpio_set(%struct.gpio_chip* %11, i32 %12, i32 %13)
  %15 = bitcast %union.cvmx_gpio_bit_cfgx* %8 to i64*
  store i64 0, i64* %15, align 8
  %16 = bitcast %union.cvmx_gpio_bit_cfgx* %8 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.octeon_gpio*, %struct.octeon_gpio** %7, align 8
  %19 = getelementptr inbounds %struct.octeon_gpio, %struct.octeon_gpio* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @bit_cfg_reg(i32 %21)
  %23 = add nsw i64 %20, %22
  %24 = bitcast %union.cvmx_gpio_bit_cfgx* %8 to i64*
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @cvmx_write_csr(i64 %23, i64 %25)
  ret i32 0
}

declare dso_local %struct.octeon_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @octeon_gpio_set(%struct.gpio_chip*, i32, i32) #1

declare dso_local i32 @cvmx_write_csr(i64, i64) #1

declare dso_local i64 @bit_cfg_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
