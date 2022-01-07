; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nomadik.c_nmk_i2c_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nomadik.c_nmk_i2c_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amba_device = type { %struct.resource }
%struct.resource = type { i32 }
%struct.nmk_i2c_dev = type { i32, i64, i32 }

@I2C_CR = common dso_local global i64 0, align 8
@I2C_CR_PE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amba_device*)* @nmk_i2c_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nmk_i2c_remove(%struct.amba_device* %0) #0 {
  %2 = alloca %struct.amba_device*, align 8
  %3 = alloca %struct.resource*, align 8
  %4 = alloca %struct.nmk_i2c_dev*, align 8
  store %struct.amba_device* %0, %struct.amba_device** %2, align 8
  %5 = load %struct.amba_device*, %struct.amba_device** %2, align 8
  %6 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %5, i32 0, i32 0
  store %struct.resource* %6, %struct.resource** %3, align 8
  %7 = load %struct.amba_device*, %struct.amba_device** %2, align 8
  %8 = call %struct.nmk_i2c_dev* @amba_get_drvdata(%struct.amba_device* %7)
  store %struct.nmk_i2c_dev* %8, %struct.nmk_i2c_dev** %4, align 8
  %9 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %4, align 8
  %10 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %9, i32 0, i32 2
  %11 = call i32 @i2c_del_adapter(i32* %10)
  %12 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %4, align 8
  %13 = call i32 @flush_i2c_fifo(%struct.nmk_i2c_dev* %12)
  %14 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %4, align 8
  %15 = call i32 @disable_all_interrupts(%struct.nmk_i2c_dev* %14)
  %16 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %4, align 8
  %17 = call i32 @clear_all_interrupts(%struct.nmk_i2c_dev* %16)
  %18 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %4, align 8
  %19 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @I2C_CR, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i32, i32* @I2C_CR_PE, align 4
  %24 = call i32 @i2c_clr_bit(i64 %22, i32 %23)
  %25 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %4, align 8
  %26 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @clk_disable_unprepare(i32 %27)
  %29 = load %struct.resource*, %struct.resource** %3, align 8
  %30 = getelementptr inbounds %struct.resource, %struct.resource* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.resource*, %struct.resource** %3, align 8
  %33 = call i32 @resource_size(%struct.resource* %32)
  %34 = call i32 @release_mem_region(i32 %31, i32 %33)
  ret i32 0
}

declare dso_local %struct.nmk_i2c_dev* @amba_get_drvdata(%struct.amba_device*) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @flush_i2c_fifo(%struct.nmk_i2c_dev*) #1

declare dso_local i32 @disable_all_interrupts(%struct.nmk_i2c_dev*) #1

declare dso_local i32 @clear_all_interrupts(%struct.nmk_i2c_dev*) #1

declare dso_local i32 @i2c_clr_bit(i64, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
