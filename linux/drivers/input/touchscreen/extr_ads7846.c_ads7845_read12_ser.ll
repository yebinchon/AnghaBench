; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ads7846.c_ads7845_read12_ser.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ads7846.c_ads7845_read12_ser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.spi_device = type { i32 }
%struct.ads7846 = type { i32 }
%struct.ads7845_ser_req = type { i32*, i32, %struct.TYPE_2__*, i64* }
%struct.TYPE_2__ = type { i32, i32*, i64* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @ads7845_read12_ser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads7845_read12_ser(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.ads7846*, align 8
  %8 = alloca %struct.ads7845_ser_req*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.spi_device* @to_spi_device(%struct.device* %10)
  store %struct.spi_device* %11, %struct.spi_device** %6, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.ads7846* @dev_get_drvdata(%struct.device* %12)
  store %struct.ads7846* %13, %struct.ads7846** %7, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.ads7845_ser_req* @kzalloc(i32 32, i32 %14)
  store %struct.ads7845_ser_req* %15, %struct.ads7845_ser_req** %8, align 8
  %16 = load %struct.ads7845_ser_req*, %struct.ads7845_ser_req** %8, align 8
  %17 = icmp ne %struct.ads7845_ser_req* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %90

21:                                               ; preds = %2
  %22 = load %struct.ads7845_ser_req*, %struct.ads7845_ser_req** %8, align 8
  %23 = getelementptr inbounds %struct.ads7845_ser_req, %struct.ads7845_ser_req* %22, i32 0, i32 1
  %24 = call i32 @spi_message_init(i32* %23)
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = load %struct.ads7845_ser_req*, %struct.ads7845_ser_req** %8, align 8
  %28 = getelementptr inbounds %struct.ads7845_ser_req, %struct.ads7845_ser_req* %27, i32 0, i32 3
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  store i64 %26, i64* %30, align 8
  %31 = load %struct.ads7845_ser_req*, %struct.ads7845_ser_req** %8, align 8
  %32 = getelementptr inbounds %struct.ads7845_ser_req, %struct.ads7845_ser_req* %31, i32 0, i32 3
  %33 = load i64*, i64** %32, align 8
  %34 = load %struct.ads7845_ser_req*, %struct.ads7845_ser_req** %8, align 8
  %35 = getelementptr inbounds %struct.ads7845_ser_req, %struct.ads7845_ser_req* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i64* %33, i64** %38, align 8
  %39 = load %struct.ads7845_ser_req*, %struct.ads7845_ser_req** %8, align 8
  %40 = getelementptr inbounds %struct.ads7845_ser_req, %struct.ads7845_ser_req* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.ads7845_ser_req*, %struct.ads7845_ser_req** %8, align 8
  %43 = getelementptr inbounds %struct.ads7845_ser_req, %struct.ads7845_ser_req* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32* %41, i32** %46, align 8
  %47 = load %struct.ads7845_ser_req*, %struct.ads7845_ser_req** %8, align 8
  %48 = getelementptr inbounds %struct.ads7845_ser_req, %struct.ads7845_ser_req* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 3, i32* %51, align 8
  %52 = load %struct.ads7845_ser_req*, %struct.ads7845_ser_req** %8, align 8
  %53 = getelementptr inbounds %struct.ads7845_ser_req, %struct.ads7845_ser_req* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 0
  %56 = load %struct.ads7845_ser_req*, %struct.ads7845_ser_req** %8, align 8
  %57 = getelementptr inbounds %struct.ads7845_ser_req, %struct.ads7845_ser_req* %56, i32 0, i32 1
  %58 = call i32 @spi_message_add_tail(%struct.TYPE_2__* %55, i32* %57)
  %59 = load %struct.ads7846*, %struct.ads7846** %7, align 8
  %60 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %59, i32 0, i32 0
  %61 = call i32 @mutex_lock(i32* %60)
  %62 = load %struct.ads7846*, %struct.ads7846** %7, align 8
  %63 = call i32 @ads7846_stop(%struct.ads7846* %62)
  %64 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %65 = load %struct.ads7845_ser_req*, %struct.ads7845_ser_req** %8, align 8
  %66 = getelementptr inbounds %struct.ads7845_ser_req, %struct.ads7845_ser_req* %65, i32 0, i32 1
  %67 = call i32 @spi_sync(%struct.spi_device* %64, i32* %66)
  store i32 %67, i32* %9, align 4
  %68 = load %struct.ads7846*, %struct.ads7846** %7, align 8
  %69 = call i32 @ads7846_restart(%struct.ads7846* %68)
  %70 = load %struct.ads7846*, %struct.ads7846** %7, align 8
  %71 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %70, i32 0, i32 0
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load i32, i32* %9, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %21
  %76 = load %struct.ads7845_ser_req*, %struct.ads7845_ser_req** %8, align 8
  %77 = getelementptr inbounds %struct.ads7845_ser_req, %struct.ads7845_ser_req* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @be16_to_cpu(i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = ashr i32 %82, 3
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = and i32 %84, 4095
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %75, %21
  %87 = load %struct.ads7845_ser_req*, %struct.ads7845_ser_req** %8, align 8
  %88 = call i32 @kfree(%struct.ads7845_ser_req* %87)
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %86, %18
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.spi_device* @to_spi_device(%struct.device*) #1

declare dso_local %struct.ads7846* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.ads7845_ser_req* @kzalloc(i32, i32) #1

declare dso_local i32 @spi_message_init(i32*) #1

declare dso_local i32 @spi_message_add_tail(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ads7846_stop(%struct.ads7846*) #1

declare dso_local i32 @spi_sync(%struct.spi_device*, i32*) #1

declare dso_local i32 @ads7846_restart(%struct.ads7846*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @kfree(%struct.ads7845_ser_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
