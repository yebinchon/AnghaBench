; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x-spi.c_ad714x_spi_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x-spi.c_ad714x_spi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad714x_chip = type { i32*, i32 }
%struct.spi_device = type { i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i32, i32*, i32* }

@AD714x_SPI_CMD_PREFIX = common dso_local global i16 0, align 2
@AD714x_SPI_READ = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [20 x i8] c"SPI read error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad714x_chip*, i16, i16*, i64)* @ad714x_spi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad714x_spi_read(%struct.ad714x_chip* %0, i16 zeroext %1, i16* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ad714x_chip*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.spi_device*, align 8
  %11 = alloca %struct.spi_message, align 4
  %12 = alloca [2 x %struct.spi_transfer], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ad714x_chip* %0, %struct.ad714x_chip** %6, align 8
  store i16 %1, i16* %7, align 2
  store i16* %2, i16** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.ad714x_chip*, %struct.ad714x_chip** %6, align 8
  %16 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.spi_device* @to_spi_device(i32 %17)
  store %struct.spi_device* %18, %struct.spi_device** %10, align 8
  %19 = call i32 @spi_message_init(%struct.spi_message* %11)
  %20 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %12, i64 0, i64 0
  %21 = call i32 @memset(%struct.spi_transfer* %20, i32 0, i32 48)
  %22 = load i16, i16* @AD714x_SPI_CMD_PREFIX, align 2
  %23 = zext i16 %22 to i32
  %24 = load i16, i16* @AD714x_SPI_READ, align 2
  %25 = zext i16 %24 to i32
  %26 = or i32 %23, %25
  %27 = load i16, i16* %7, align 2
  %28 = zext i16 %27 to i32
  %29 = or i32 %26, %28
  %30 = trunc i32 %29 to i16
  %31 = call i32 @cpu_to_be16(i16 zeroext %30)
  %32 = load %struct.ad714x_chip*, %struct.ad714x_chip** %6, align 8
  %33 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %31, i32* %35, align 4
  %36 = load %struct.ad714x_chip*, %struct.ad714x_chip** %6, align 8
  %37 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %12, i64 0, i64 0
  %41 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %40, i32 0, i32 2
  store i32* %39, i32** %41, align 16
  %42 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %12, i64 0, i64 0
  %43 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %42, i32 0, i32 0
  store i32 4, i32* %43, align 16
  %44 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %12, i64 0, i64 0
  %45 = call i32 @spi_message_add_tail(%struct.spi_transfer* %44, %struct.spi_message* %11)
  %46 = load %struct.ad714x_chip*, %struct.ad714x_chip** %6, align 8
  %47 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %12, i64 0, i64 1
  %51 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %50, i32 0, i32 1
  store i32* %49, i32** %51, align 8
  %52 = load i64, i64* %9, align 8
  %53 = mul i64 4, %52
  %54 = trunc i64 %53 to i32
  %55 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %12, i64 0, i64 1
  %56 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %12, i64 0, i64 1
  %58 = call i32 @spi_message_add_tail(%struct.spi_transfer* %57, %struct.spi_message* %11)
  %59 = load %struct.spi_device*, %struct.spi_device** %10, align 8
  %60 = call i32 @spi_sync(%struct.spi_device* %59, %struct.spi_message* %11)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %4
  %65 = load %struct.ad714x_chip*, %struct.ad714x_chip** %6, align 8
  %66 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %14, align 4
  store i32 %70, i32* %5, align 4
  br label %95

71:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %72

72:                                               ; preds = %91, %71
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %9, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %94

77:                                               ; preds = %72
  %78 = load %struct.ad714x_chip*, %struct.ad714x_chip** %6, align 8
  %79 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call zeroext i16 @be16_to_cpu(i32 %85)
  %87 = load i16*, i16** %8, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i16, i16* %87, i64 %89
  store i16 %86, i16* %90, align 2
  br label %91

91:                                               ; preds = %77
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %13, align 4
  br label %72

94:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %94, %64
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local %struct.spi_device* @to_spi_device(i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i16 zeroext) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(%struct.spi_device*, %struct.spi_message*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local zeroext i16 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
