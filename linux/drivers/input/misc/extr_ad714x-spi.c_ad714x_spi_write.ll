; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x-spi.c_ad714x_spi_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x-spi.c_ad714x_spi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad714x_chip = type { i32, i8** }
%struct.spi_device = type { i32 }

@AD714x_SPI_CMD_PREFIX = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [21 x i8] c"SPI write error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad714x_chip*, i16, i16)* @ad714x_spi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad714x_spi_write(%struct.ad714x_chip* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ad714x_chip*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca %struct.spi_device*, align 8
  %9 = alloca i32, align 4
  store %struct.ad714x_chip* %0, %struct.ad714x_chip** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  %10 = load %struct.ad714x_chip*, %struct.ad714x_chip** %5, align 8
  %11 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.spi_device* @to_spi_device(i32 %12)
  store %struct.spi_device* %13, %struct.spi_device** %8, align 8
  %14 = load i16, i16* @AD714x_SPI_CMD_PREFIX, align 2
  %15 = zext i16 %14 to i32
  %16 = load i16, i16* %6, align 2
  %17 = zext i16 %16 to i32
  %18 = or i32 %15, %17
  %19 = trunc i32 %18 to i16
  %20 = call i8* @cpu_to_be16(i16 zeroext %19)
  %21 = load %struct.ad714x_chip*, %struct.ad714x_chip** %5, align 8
  %22 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %21, i32 0, i32 1
  %23 = load i8**, i8*** %22, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  store i8* %20, i8** %24, align 8
  %25 = load i16, i16* %7, align 2
  %26 = call i8* @cpu_to_be16(i16 zeroext %25)
  %27 = load %struct.ad714x_chip*, %struct.ad714x_chip** %5, align 8
  %28 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %27, i32 0, i32 1
  %29 = load i8**, i8*** %28, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  store i8* %26, i8** %30, align 8
  %31 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %32 = load %struct.ad714x_chip*, %struct.ad714x_chip** %5, align 8
  %33 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %32, i32 0, i32 1
  %34 = load i8**, i8*** %33, align 8
  %35 = bitcast i8** %34 to i32*
  %36 = call i32 @spi_write(%struct.spi_device* %31, i32* %35, i32 16)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %3
  %41 = load %struct.ad714x_chip*, %struct.ad714x_chip** %5, align 8
  %42 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %48

47:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %40
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.spi_device* @to_spi_device(i32) #1

declare dso_local i8* @cpu_to_be16(i16 zeroext) #1

declare dso_local i32 @spi_write(%struct.spi_device*, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
