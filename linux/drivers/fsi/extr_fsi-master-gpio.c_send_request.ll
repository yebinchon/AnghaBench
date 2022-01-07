; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-gpio.c_send_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-gpio.c_send_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master_gpio = type { i64 }
%struct.fsi_gpio_msg = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_master_gpio*, %struct.fsi_gpio_msg*)* @send_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_request(%struct.fsi_master_gpio* %0, %struct.fsi_gpio_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsi_master_gpio*, align 8
  %5 = alloca %struct.fsi_gpio_msg*, align 8
  %6 = alloca i64, align 8
  store %struct.fsi_master_gpio* %0, %struct.fsi_master_gpio** %4, align 8
  store %struct.fsi_gpio_msg* %1, %struct.fsi_gpio_msg** %5, align 8
  %7 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %8 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %24

14:                                               ; preds = %2
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @local_irq_save(i64 %15)
  %17 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %18 = load %struct.fsi_gpio_msg*, %struct.fsi_gpio_msg** %5, align 8
  %19 = call i32 @serial_out(%struct.fsi_master_gpio* %17, %struct.fsi_gpio_msg* %18)
  %20 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %21 = call i32 @echo_delay(%struct.fsi_master_gpio* %20)
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @local_irq_restore(i64 %22)
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %14, %11
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @serial_out(%struct.fsi_master_gpio*, %struct.fsi_gpio_msg*) #1

declare dso_local i32 @echo_delay(%struct.fsi_master_gpio*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
