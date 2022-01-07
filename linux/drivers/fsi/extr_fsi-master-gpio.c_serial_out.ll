; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-gpio.c_serial_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-gpio.c_serial_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master_gpio = type { i32 }
%struct.fsi_gpio_msg = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"trying to output 0 bits\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsi_master_gpio*, %struct.fsi_gpio_msg*)* @serial_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_out(%struct.fsi_master_gpio* %0, %struct.fsi_gpio_msg* %1) #0 {
  %3 = alloca %struct.fsi_master_gpio*, align 8
  %4 = alloca %struct.fsi_gpio_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fsi_master_gpio* %0, %struct.fsi_master_gpio** %3, align 8
  store %struct.fsi_gpio_msg* %1, %struct.fsi_gpio_msg** %4, align 8
  %10 = load %struct.fsi_gpio_msg*, %struct.fsi_gpio_msg** %4, align 8
  %11 = getelementptr inbounds %struct.fsi_gpio_msg, %struct.fsi_gpio_msg* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = xor i32 %12, -1
  store i32 %13, i32* %6, align 4
  %14 = load %struct.fsi_gpio_msg*, %struct.fsi_gpio_msg** %4, align 8
  %15 = getelementptr inbounds %struct.fsi_gpio_msg, %struct.fsi_gpio_msg* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = shl i64 1, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %21 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %3, align 8
  %22 = load %struct.fsi_gpio_msg*, %struct.fsi_gpio_msg** %4, align 8
  %23 = getelementptr inbounds %struct.fsi_gpio_msg, %struct.fsi_gpio_msg* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.fsi_gpio_msg*, %struct.fsi_gpio_msg** %4, align 8
  %26 = getelementptr inbounds %struct.fsi_gpio_msg, %struct.fsi_gpio_msg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @trace_fsi_master_gpio_out(%struct.fsi_master_gpio* %21, i32 %24, i32 %27)
  %29 = load %struct.fsi_gpio_msg*, %struct.fsi_gpio_msg** %4, align 8
  %30 = getelementptr inbounds %struct.fsi_gpio_msg, %struct.fsi_gpio_msg* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %2
  %34 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %3, align 8
  %35 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_warn(i32 %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %77

38:                                               ; preds = %2
  %39 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %3, align 8
  %40 = call i32 @set_sda_output(%struct.fsi_master_gpio* %39, i32 0)
  %41 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %3, align 8
  %42 = call i32 @sda_out(%struct.fsi_master_gpio* %41, i32 0)
  %43 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %3, align 8
  %44 = call i32 @clock_toggle(%struct.fsi_master_gpio* %43, i32 1)
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %74, %38
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.fsi_gpio_msg*, %struct.fsi_gpio_msg** %4, align 8
  %48 = getelementptr inbounds %struct.fsi_gpio_msg, %struct.fsi_gpio_msg* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %77

51:                                               ; preds = %45
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %52, %53
  %55 = load %struct.fsi_gpio_msg*, %struct.fsi_gpio_msg** %4, align 8
  %56 = getelementptr inbounds %struct.fsi_gpio_msg, %struct.fsi_gpio_msg* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %57, 1
  %59 = ashr i32 %54, %58
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = xor i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %51
  %65 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %3, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @sda_out(%struct.fsi_master_gpio* %65, i32 %66)
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %64, %51
  %70 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %3, align 8
  %71 = call i32 @clock_toggle(%struct.fsi_master_gpio* %70, i32 1)
  %72 = load i32, i32* %6, align 4
  %73 = shl i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %45

77:                                               ; preds = %33, %45
  ret void
}

declare dso_local i32 @trace_fsi_master_gpio_out(%struct.fsi_master_gpio*, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @set_sda_output(%struct.fsi_master_gpio*, i32) #1

declare dso_local i32 @sda_out(%struct.fsi_master_gpio*, i32) #1

declare dso_local i32 @clock_toggle(%struct.fsi_master_gpio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
