; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-thunderx-pcidrv.c_thunder_i2c_clock_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-thunderx-pcidrv.c_thunder_i2c_clock_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.octeon_i2c = type { i64, i32* }

@acpi_disabled = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"sclk\00", align 1
@SYS_FREQ_DEFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.octeon_i2c*)* @thunder_i2c_clock_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thunder_i2c_clock_enable(%struct.device* %0, %struct.octeon_i2c* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.octeon_i2c*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.octeon_i2c* %1, %struct.octeon_i2c** %4, align 8
  %6 = load i64, i64* @acpi_disabled, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %36

8:                                                ; preds = %2
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call i32* @clk_get(%struct.device* %9, i32* null)
  %11 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %12 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %11, i32 0, i32 1
  store i32* %10, i32** %12, align 8
  %13 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %14 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i64 @IS_ERR(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %8
  %19 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %20 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %19, i32 0, i32 1
  store i32* null, i32** %20, align 8
  br label %42

21:                                               ; preds = %8
  %22 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %23 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @clk_prepare_enable(i32* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %42

29:                                               ; preds = %21
  %30 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %31 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i64 @clk_get_rate(i32* %32)
  %34 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %35 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %41

36:                                               ; preds = %2
  %37 = load %struct.device*, %struct.device** %3, align 8
  %38 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %39 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %38, i32 0, i32 0
  %40 = call i32 @device_property_read_u32(%struct.device* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64* %39)
  br label %41

41:                                               ; preds = %36, %29
  br label %42

42:                                               ; preds = %41, %28, %18
  %43 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %44 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = load i64, i64* @SYS_FREQ_DEFAULT, align 8
  %49 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %50 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %47, %42
  ret void
}

declare dso_local i32* @clk_get(%struct.device*, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

declare dso_local i64 @clk_get_rate(i32*) #1

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
