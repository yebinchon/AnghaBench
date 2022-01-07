; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5686-spi.c_ad5686_spi_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5686-spi.c_ad5686_spi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5686_state = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i8*, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.spi_transfer = type { i32, i32, i32*, i32* }
%struct.spi_device = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@AD5686_CMD_READBACK_ENABLE_V2 = common dso_local global i32 0, align 4
@AD5686_CMD_READBACK_ENABLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AD5686_CMD_NOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad5686_state*, i32)* @ad5686_spi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5686_spi_read(%struct.ad5686_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ad5686_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x %struct.spi_transfer], align 16
  %7 = alloca %struct.spi_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ad5686_state* %0, %struct.ad5686_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %6, i64 0, i64 0
  %11 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 0
  store i32 3, i32* %11, align 8
  %12 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 1
  store i32 1, i32* %12, align 4
  %13 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 2
  store i32* null, i32** %13, align 8
  %14 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 3
  %15 = load %struct.ad5686_state*, %struct.ad5686_state** %4, align 8
  %16 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32* %21, i32** %14, align 8
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i64 1
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 0
  store i32 3, i32* %23, align 8
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 2
  %26 = load %struct.ad5686_state*, %struct.ad5686_state** %4, align 8
  %27 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32* %32, i32** %25, align 8
  %33 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 3
  %34 = load %struct.ad5686_state*, %struct.ad5686_state** %4, align 8
  %35 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32* %40, i32** %33, align 8
  %41 = load %struct.ad5686_state*, %struct.ad5686_state** %4, align 8
  %42 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.spi_device* @to_spi_device(i32 %43)
  store %struct.spi_device* %44, %struct.spi_device** %7, align 8
  store i32 0, i32* %8, align 4
  %45 = load %struct.ad5686_state*, %struct.ad5686_state** %4, align 8
  %46 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %57 [
    i32 130, label %50
    i32 129, label %53
    i32 128, label %55
  ]

50:                                               ; preds = %2
  %51 = load i32, i32* @ENOTSUPP, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %97

53:                                               ; preds = %2
  %54 = load i32, i32* @AD5686_CMD_READBACK_ENABLE_V2, align 4
  store i32 %54, i32* %8, align 4
  br label %60

55:                                               ; preds = %2
  %56 = load i32, i32* @AD5686_CMD_READBACK_ENABLE, align 4
  store i32 %56, i32* %8, align 4
  br label %60

57:                                               ; preds = %2
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %97

60:                                               ; preds = %55, %53
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @AD5686_CMD(i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @AD5686_ADDR(i32 %63)
  %65 = or i32 %62, %64
  %66 = call i8* @cpu_to_be32(i32 %65)
  %67 = load %struct.ad5686_state*, %struct.ad5686_state** %4, align 8
  %68 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i8* %66, i8** %71, align 8
  %72 = load i32, i32* @AD5686_CMD_NOOP, align 4
  %73 = call i32 @AD5686_CMD(i32 %72)
  %74 = call i8* @cpu_to_be32(i32 %73)
  %75 = load %struct.ad5686_state*, %struct.ad5686_state** %4, align 8
  %76 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i8* %74, i8** %79, align 8
  %80 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %81 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %6, i64 0, i64 0
  %82 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %6, i64 0, i64 0
  %83 = call i32 @ARRAY_SIZE(%struct.spi_transfer* %82)
  %84 = call i32 @spi_sync_transfer(%struct.spi_device* %80, %struct.spi_transfer* %81, i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %60
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %3, align 4
  br label %97

89:                                               ; preds = %60
  %90 = load %struct.ad5686_state*, %struct.ad5686_state** %4, align 8
  %91 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 2
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @be32_to_cpu(i8* %95)
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %89, %87, %57, %50
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.spi_device* @to_spi_device(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @AD5686_CMD(i32) #1

declare dso_local i32 @AD5686_ADDR(i32) #1

declare dso_local i32 @spi_sync_transfer(%struct.spi_device*, %struct.spi_transfer*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.spi_transfer*) #1

declare dso_local i32 @be32_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
