; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad_sigma_delta.c_ad_sd_read_reg_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad_sigma_delta.c_ad_sd_read_reg_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad_sigma_delta = type { i32*, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.spi_transfer = type { i32*, i32, i32*, i64 }
%struct.spi_message = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad_sigma_delta*, i32, i32, i32*)* @ad_sd_read_reg_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad_sd_read_reg_raw(%struct.ad_sigma_delta* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.ad_sigma_delta*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [2 x %struct.spi_transfer], align 16
  %12 = alloca %struct.spi_message, align 4
  store %struct.ad_sigma_delta* %0, %struct.ad_sigma_delta** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %5, align 8
  %14 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %9, align 8
  %16 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 0
  %17 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %16, i32 0, i32 0
  %18 = load i32*, i32** %9, align 8
  store i32* %18, i32** %17, align 16
  %19 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %16, i32 0, i32 1
  store i32 1, i32* %19, align 8
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %16, i32 0, i32 2
  store i32* null, i32** %20, align 16
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %16, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %16, i64 1
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 0
  store i32* null, i32** %23, align 16
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 1
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %24, align 8
  %26 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 2
  %27 = load i32*, i32** %8, align 8
  store i32* %27, i32** %26, align 16
  %28 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 3
  %29 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %5, align 8
  %30 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %28, align 8
  %32 = call i32 @spi_message_init(%struct.spi_message* %12)
  %33 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %5, align 8
  %34 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %33, i32 0, i32 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %4
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %5, align 8
  %42 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %41, i32 0, i32 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = shl i32 %40, %45
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %5, align 8
  %50 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %49, i32 0, i32 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %5, align 8
  %59 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 0
  %66 = call i32 @spi_message_add_tail(%struct.spi_transfer* %65, %struct.spi_message* %12)
  br label %67

67:                                               ; preds = %39, %4
  %68 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 1
  %69 = call i32 @spi_message_add_tail(%struct.spi_transfer* %68, %struct.spi_message* %12)
  %70 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %5, align 8
  %71 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %5, align 8
  %76 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @spi_sync_locked(i32 %77, %struct.spi_message* %12)
  store i32 %78, i32* %10, align 4
  br label %84

79:                                               ; preds = %67
  %80 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %5, align 8
  %81 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @spi_sync(i32 %82, %struct.spi_message* %12)
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %79, %74
  %85 = load i32, i32* %10, align 4
  ret i32 %85
}

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync_locked(i32, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
