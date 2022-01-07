; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-gpio.c_fsi_master_gpio_break.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-gpio.c_fsi_master_gpio_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master = type { i32 }
%struct.fsi_master_gpio = type { i32, i64 }

@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@FSI_PRE_BREAK_CLOCKS = common dso_local global i32 0, align 4
@FSI_BREAK_CLOCKS = common dso_local global i32 0, align 4
@FSI_POST_BREAK_CLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_master*, i32)* @fsi_master_gpio_break to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_master_gpio_break(%struct.fsi_master* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsi_master*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsi_master_gpio*, align 8
  %7 = alloca i64, align 8
  store %struct.fsi_master* %0, %struct.fsi_master** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.fsi_master*, %struct.fsi_master** %4, align 8
  %9 = call %struct.fsi_master_gpio* @to_fsi_master_gpio(%struct.fsi_master* %8)
  store %struct.fsi_master_gpio* %9, %struct.fsi_master_gpio** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %61

15:                                               ; preds = %2
  %16 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %6, align 8
  %17 = call i32 @trace_fsi_master_gpio_break(%struct.fsi_master_gpio* %16)
  %18 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %6, align 8
  %19 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %6, align 8
  %22 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %15
  %26 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %6, align 8
  %27 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %61

31:                                               ; preds = %15
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @local_irq_save(i64 %32)
  %34 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %6, align 8
  %35 = call i32 @set_sda_output(%struct.fsi_master_gpio* %34, i32 1)
  %36 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %6, align 8
  %37 = call i32 @sda_out(%struct.fsi_master_gpio* %36, i32 1)
  %38 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %6, align 8
  %39 = load i32, i32* @FSI_PRE_BREAK_CLOCKS, align 4
  %40 = call i32 @clock_toggle(%struct.fsi_master_gpio* %38, i32 %39)
  %41 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %6, align 8
  %42 = call i32 @sda_out(%struct.fsi_master_gpio* %41, i32 0)
  %43 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %6, align 8
  %44 = load i32, i32* @FSI_BREAK_CLOCKS, align 4
  %45 = call i32 @clock_toggle(%struct.fsi_master_gpio* %43, i32 %44)
  %46 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %6, align 8
  %47 = call i32 @echo_delay(%struct.fsi_master_gpio* %46)
  %48 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %6, align 8
  %49 = call i32 @sda_out(%struct.fsi_master_gpio* %48, i32 1)
  %50 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %6, align 8
  %51 = load i32, i32* @FSI_POST_BREAK_CLOCKS, align 4
  %52 = call i32 @clock_toggle(%struct.fsi_master_gpio* %50, i32 %51)
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @local_irq_restore(i64 %53)
  %55 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %6, align 8
  %56 = call i32 @last_address_update(%struct.fsi_master_gpio* %55, i32 0, i32 0, i32 0)
  %57 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %6, align 8
  %58 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = call i32 @udelay(i32 200)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %31, %25, %12
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.fsi_master_gpio* @to_fsi_master_gpio(%struct.fsi_master*) #1

declare dso_local i32 @trace_fsi_master_gpio_break(%struct.fsi_master_gpio*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @set_sda_output(%struct.fsi_master_gpio*, i32) #1

declare dso_local i32 @sda_out(%struct.fsi_master_gpio*, i32) #1

declare dso_local i32 @clock_toggle(%struct.fsi_master_gpio*, i32) #1

declare dso_local i32 @echo_delay(%struct.fsi_master_gpio*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @last_address_update(%struct.fsi_master_gpio*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
