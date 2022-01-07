; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-ilitek-ili9322.c_ili9322_regmap_spi_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-ilitek-ili9322.c_ili9322_regmap_spi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.spi_device = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"WRITE: %02x %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @ili9322_regmap_spi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ili9322_regmap_spi_write(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.spi_device*, align 8
  %9 = alloca [2 x i32], align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.device*
  store %struct.device* %11, %struct.device** %7, align 8
  %12 = load %struct.device*, %struct.device** %7, align 8
  %13 = call %struct.spi_device* @to_spi_device(%struct.device* %12)
  store %struct.spi_device* %13, %struct.spi_device** %8, align 8
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @memcpy(i32* %14, i8* %15, i32 2)
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, -129
  store i32 %19, i32* %17, align 4
  %20 = load %struct.device*, %struct.device** %7, align 8
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_dbg(%struct.device* %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %24)
  %26 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %28 = call i32 @spi_write_then_read(%struct.spi_device* %26, i32* %27, i32 2, i32* null, i32 0)
  ret i32 %28
}

declare dso_local %struct.spi_device* @to_spi_device(%struct.device*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @spi_write_then_read(%struct.spi_device*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
