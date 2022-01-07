; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5758.c_ad5758_spi_reg_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5758.c_ad5758_spi_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5758_state = type { i8**, i32 }
%struct.spi_transfer = type { i32, i32, i8**, i8** }

@AD5758_TWO_STAGE_READBACK_SELECT = common dso_local global i32 0, align 4
@AD5758_NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad5758_state*, i32)* @ad5758_spi_reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5758_spi_reg_read(%struct.ad5758_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ad5758_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x %struct.spi_transfer], align 16
  %7 = alloca i32, align 4
  store %struct.ad5758_state* %0, %struct.ad5758_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %6, i64 0, i64 0
  %9 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 0
  store i32 4, i32* %9, align 8
  %10 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 1
  store i32 1, i32* %10, align 4
  %11 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 2
  store i8** null, i8*** %11, align 8
  %12 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 3
  %13 = load %struct.ad5758_state*, %struct.ad5758_state** %4, align 8
  %14 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %13, i32 0, i32 0
  %15 = load i8**, i8*** %14, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  store i8** %16, i8*** %12, align 8
  %17 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i64 1
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 0
  store i32 4, i32* %18, align 8
  %19 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 2
  %21 = load %struct.ad5758_state*, %struct.ad5758_state** %4, align 8
  %22 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %21, i32 0, i32 0
  %23 = load i8**, i8*** %22, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 2
  store i8** %24, i8*** %20, align 8
  %25 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 3
  %26 = load %struct.ad5758_state*, %struct.ad5758_state** %4, align 8
  %27 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %26, i32 0, i32 0
  %28 = load i8**, i8*** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  store i8** %29, i8*** %25, align 8
  %30 = load i32, i32* @AD5758_TWO_STAGE_READBACK_SELECT, align 4
  %31 = call i32 @AD5758_WR_FLAG_MSK(i32 %30)
  %32 = shl i32 %31, 24
  %33 = load i32, i32* %5, align 4
  %34 = shl i32 %33, 8
  %35 = or i32 %32, %34
  %36 = call i8* @cpu_to_be32(i32 %35)
  %37 = load %struct.ad5758_state*, %struct.ad5758_state** %4, align 8
  %38 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %37, i32 0, i32 0
  %39 = load i8**, i8*** %38, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  store i8* %36, i8** %40, align 8
  %41 = load i32, i32* @AD5758_NOP, align 4
  %42 = call i32 @AD5758_WR_FLAG_MSK(i32 %41)
  %43 = shl i32 %42, 24
  %44 = call i8* @cpu_to_be32(i32 %43)
  %45 = load %struct.ad5758_state*, %struct.ad5758_state** %4, align 8
  %46 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %45, i32 0, i32 0
  %47 = load i8**, i8*** %46, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 1
  store i8* %44, i8** %48, align 8
  %49 = load %struct.ad5758_state*, %struct.ad5758_state** %4, align 8
  %50 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %6, i64 0, i64 0
  %53 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %6, i64 0, i64 0
  %54 = call i32 @ARRAY_SIZE(%struct.spi_transfer* %53)
  %55 = call i32 @spi_sync_transfer(i32 %51, %struct.spi_transfer* %52, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %2
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %69

60:                                               ; preds = %2
  %61 = load %struct.ad5758_state*, %struct.ad5758_state** %4, align 8
  %62 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %61, i32 0, i32 0
  %63 = load i8**, i8*** %62, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 2
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @be32_to_cpu(i8* %65)
  %67 = ashr i32 %66, 8
  %68 = and i32 %67, 65535
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %60, %58
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @AD5758_WR_FLAG_MSK(i32) #1

declare dso_local i32 @spi_sync_transfer(i32, %struct.spi_transfer*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.spi_transfer*) #1

declare dso_local i32 @be32_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
