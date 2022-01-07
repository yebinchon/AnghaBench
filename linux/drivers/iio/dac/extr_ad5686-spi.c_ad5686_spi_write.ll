; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5686-spi.c_ad5686_spi_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5686-spi.c_ad5686_spi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5686_state = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32*, i8*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.spi_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad5686_state*, i32, i32, i32)* @ad5686_spi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5686_spi_write(%struct.ad5686_state* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ad5686_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.spi_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.ad5686_state* %0, %struct.ad5686_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ad5686_state*, %struct.ad5686_state** %6, align 8
  %14 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.spi_device* @to_spi_device(i32 %15)
  store %struct.spi_device* %16, %struct.spi_device** %10, align 8
  %17 = load %struct.ad5686_state*, %struct.ad5686_state** %6, align 8
  %18 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %80 [
    i32 130, label %22
    i32 129, label %40
    i32 128, label %59
  ]

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @AD5310_CMD(i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @cpu_to_be16(i32 %26)
  %28 = load %struct.ad5686_state*, %struct.ad5686_state** %6, align 8
  %29 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  store i32 %27, i32* %32, align 8
  %33 = load %struct.ad5686_state*, %struct.ad5686_state** %6, align 8
  %34 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32* %39, i32** %12, align 8
  store i32 2, i32* %11, align 4
  br label %83

40:                                               ; preds = %4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @AD5686_CMD(i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @AD5683_DATA(i32 %43)
  %45 = or i32 %42, %44
  %46 = call i8* @cpu_to_be32(i32 %45)
  %47 = load %struct.ad5686_state*, %struct.ad5686_state** %6, align 8
  %48 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i8* %46, i8** %51, align 8
  %52 = load %struct.ad5686_state*, %struct.ad5686_state** %6, align 8
  %53 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32* %58, i32** %12, align 8
  store i32 3, i32* %11, align 4
  br label %83

59:                                               ; preds = %4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @AD5686_CMD(i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @AD5686_ADDR(i32 %62)
  %64 = or i32 %61, %63
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %64, %65
  %67 = call i8* @cpu_to_be32(i32 %66)
  %68 = load %struct.ad5686_state*, %struct.ad5686_state** %6, align 8
  %69 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store i8* %67, i8** %72, align 8
  %73 = load %struct.ad5686_state*, %struct.ad5686_state** %6, align 8
  %74 = getelementptr inbounds %struct.ad5686_state, %struct.ad5686_state* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  store i32* %79, i32** %12, align 8
  store i32 3, i32* %11, align 4
  br label %83

80:                                               ; preds = %4
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %88

83:                                               ; preds = %59, %40, %22
  %84 = load %struct.spi_device*, %struct.spi_device** %10, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @spi_write(%struct.spi_device* %84, i32* %85, i32 %86)
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %83, %80
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local %struct.spi_device* @to_spi_device(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @AD5310_CMD(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @AD5686_CMD(i32) #1

declare dso_local i32 @AD5683_DATA(i32) #1

declare dso_local i32 @AD5686_ADDR(i32) #1

declare dso_local i32 @spi_write(%struct.spi_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
