; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-ilitek-ili9322.c_ili9322_regmap_spi_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-ilitek-ili9322.c_ili9322_regmap_spi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.spi_device = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"READ: %02x reg size = %zu, val size = %zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i8*, i64)* @ili9322_regmap_spi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ili9322_regmap_spi_read(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.spi_device*, align 8
  %13 = alloca [1 x i32], align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.device*
  store %struct.device* %15, %struct.device** %11, align 8
  %16 = load %struct.device*, %struct.device** %11, align 8
  %17 = call %struct.spi_device* @to_spi_device(%struct.device* %16)
  store %struct.spi_device* %17, %struct.spi_device** %12, align 8
  %18 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @memcpy(i32* %18, i8* %19, i32 1)
  %21 = load %struct.device*, %struct.device** %11, align 8
  %22 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @dev_dbg(%struct.device* %21, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %23, i64 %24, i64 %25)
  %27 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, 128
  store i32 %29, i32* %27, align 4
  %30 = load %struct.spi_device*, %struct.spi_device** %12, align 8
  %31 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @spi_write_then_read(%struct.spi_device* %30, i32* %31, i32 1, i8* %32, i32 1)
  ret i32 %33
}

declare dso_local %struct.spi_device* @to_spi_device(%struct.device*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i64, i64) #1

declare dso_local i32 @spi_write_then_read(%struct.spi_device*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
