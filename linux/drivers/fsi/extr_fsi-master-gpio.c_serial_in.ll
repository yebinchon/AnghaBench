; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-gpio.c_serial_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-gpio.c_serial_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master_gpio = type { i32 }
%struct.fsi_gpio_msg = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsi_master_gpio*, %struct.fsi_gpio_msg*, i64)* @serial_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_in(%struct.fsi_master_gpio* %0, %struct.fsi_gpio_msg* %1, i64 %2) #0 {
  %4 = alloca %struct.fsi_master_gpio*, align 8
  %5 = alloca %struct.fsi_gpio_msg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.fsi_master_gpio* %0, %struct.fsi_master_gpio** %4, align 8
  store %struct.fsi_gpio_msg* %1, %struct.fsi_gpio_msg** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %10 = call i32 @set_sda_input(%struct.fsi_master_gpio* %9)
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %31, %3
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %11
  %16 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %17 = call i64 @sda_clock_in(%struct.fsi_master_gpio* %16)
  store i64 %17, i64* %8, align 8
  %18 = load %struct.fsi_gpio_msg*, %struct.fsi_gpio_msg** %5, align 8
  %19 = getelementptr inbounds %struct.fsi_gpio_msg, %struct.fsi_gpio_msg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load i64, i64* %8, align 8
  %23 = xor i64 %22, -1
  %24 = and i64 %23, 1
  %25 = load %struct.fsi_gpio_msg*, %struct.fsi_gpio_msg** %5, align 8
  %26 = getelementptr inbounds %struct.fsi_gpio_msg, %struct.fsi_gpio_msg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = or i64 %28, %24
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %26, align 4
  br label %31

31:                                               ; preds = %15
  %32 = load i64, i64* %7, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %7, align 8
  br label %11

34:                                               ; preds = %11
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.fsi_gpio_msg*, %struct.fsi_gpio_msg** %5, align 8
  %37 = getelementptr inbounds %struct.fsi_gpio_msg, %struct.fsi_gpio_msg* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %35
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 4
  %42 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.fsi_gpio_msg*, %struct.fsi_gpio_msg** %5, align 8
  %45 = getelementptr inbounds %struct.fsi_gpio_msg, %struct.fsi_gpio_msg* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = call i32 @trace_fsi_master_gpio_in(%struct.fsi_master_gpio* %42, i64 %43, i64 %47)
  ret void
}

declare dso_local i32 @set_sda_input(%struct.fsi_master_gpio*) #1

declare dso_local i64 @sda_clock_in(%struct.fsi_master_gpio*) #1

declare dso_local i32 @trace_fsi_master_gpio_in(%struct.fsi_master_gpio*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
