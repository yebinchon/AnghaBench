; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ad7877.c_ad7877_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ad7877.c_ad7877_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.ser_req = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32, i32*, i64* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AD7877_REG_CTRL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, i64)* @ad7877_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7877_read(%struct.spi_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ser_req*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ser_req* @kzalloc(i32 24, i32 %9)
  store %struct.ser_req* %10, %struct.ser_req** %6, align 8
  %11 = load %struct.ser_req*, %struct.ser_req** %6, align 8
  %12 = icmp ne %struct.ser_req* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %87

16:                                               ; preds = %2
  %17 = load %struct.ser_req*, %struct.ser_req** %6, align 8
  %18 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %17, i32 0, i32 1
  %19 = call i32 @spi_message_init(i32* %18)
  %20 = load i32, i32* @AD7877_REG_CTRL1, align 4
  %21 = call i32 @AD7877_WRITEADD(i32 %20)
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @AD7877_READADD(i64 %22)
  %24 = or i32 %21, %23
  %25 = sext i32 %24 to i64
  %26 = load %struct.ser_req*, %struct.ser_req** %6, align 8
  %27 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %26, i32 0, i32 3
  store i64 %25, i64* %27, align 8
  %28 = load %struct.ser_req*, %struct.ser_req** %6, align 8
  %29 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %28, i32 0, i32 3
  %30 = load %struct.ser_req*, %struct.ser_req** %6, align 8
  %31 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  store i64* %29, i64** %34, align 8
  %35 = load %struct.ser_req*, %struct.ser_req** %6, align 8
  %36 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 2, i32* %39, align 8
  %40 = load %struct.ser_req*, %struct.ser_req** %6, align 8
  %41 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = load %struct.ser_req*, %struct.ser_req** %6, align 8
  %46 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %45, i32 0, i32 0
  %47 = load %struct.ser_req*, %struct.ser_req** %6, align 8
  %48 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  store i32* %46, i32** %51, align 8
  %52 = load %struct.ser_req*, %struct.ser_req** %6, align 8
  %53 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 2, i32* %56, align 8
  %57 = load %struct.ser_req*, %struct.ser_req** %6, align 8
  %58 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 0
  %61 = load %struct.ser_req*, %struct.ser_req** %6, align 8
  %62 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %61, i32 0, i32 1
  %63 = call i32 @spi_message_add_tail(%struct.TYPE_2__* %60, i32* %62)
  %64 = load %struct.ser_req*, %struct.ser_req** %6, align 8
  %65 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 1
  %68 = load %struct.ser_req*, %struct.ser_req** %6, align 8
  %69 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %68, i32 0, i32 1
  %70 = call i32 @spi_message_add_tail(%struct.TYPE_2__* %67, i32* %69)
  %71 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %72 = load %struct.ser_req*, %struct.ser_req** %6, align 8
  %73 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %72, i32 0, i32 1
  %74 = call i32 @spi_sync(%struct.spi_device* %71, i32* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %16
  br label %82

78:                                               ; preds = %16
  %79 = load %struct.ser_req*, %struct.ser_req** %6, align 8
  %80 = getelementptr inbounds %struct.ser_req, %struct.ser_req* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  br label %82

82:                                               ; preds = %78, %77
  %83 = phi i32 [ %75, %77 ], [ %81, %78 ]
  store i32 %83, i32* %8, align 4
  %84 = load %struct.ser_req*, %struct.ser_req** %6, align 8
  %85 = call i32 @kfree(%struct.ser_req* %84)
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %82, %13
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.ser_req* @kzalloc(i32, i32) #1

declare dso_local i32 @spi_message_init(i32*) #1

declare dso_local i32 @AD7877_WRITEADD(i32) #1

declare dso_local i32 @AD7877_READADD(i64) #1

declare dso_local i32 @spi_message_add_tail(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @spi_sync(%struct.spi_device*, i32*) #1

declare dso_local i32 @kfree(%struct.ser_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
