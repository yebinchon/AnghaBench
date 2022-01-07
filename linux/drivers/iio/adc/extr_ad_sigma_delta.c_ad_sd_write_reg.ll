; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad_sigma_delta.c_ad_sd_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad_sigma_delta.c_ad_sd_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad_sigma_delta = type { i32*, i32, i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.spi_transfer = type { i32*, i32, i32 }
%struct.spi_message = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ad_sd_write_reg(%struct.ad_sigma_delta* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ad_sigma_delta*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.spi_transfer, align 8
  %12 = alloca %struct.spi_message, align 4
  %13 = alloca i32, align 4
  store %struct.ad_sigma_delta* %0, %struct.ad_sigma_delta** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %6, align 8
  %15 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %10, align 8
  %17 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 0
  %18 = load i32*, i32** %10, align 8
  store i32* %18, i32** %17, align 8
  %19 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 1
  %20 = load i32, i32* %8, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 2
  %23 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %6, align 8
  %24 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %22, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %6, align 8
  %28 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %27, i32 0, i32 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %26, %31
  %33 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %6, align 8
  %34 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %32, %35
  %37 = load i32*, i32** %10, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %8, align 4
  switch i32 %39, label %62 [
    i32 3, label %40
    i32 2, label %52
    i32 1, label %57
    i32 0, label %61
  ]

40:                                               ; preds = %4
  %41 = load i32, i32* %9, align 4
  %42 = lshr i32 %41, 16
  %43 = load i32*, i32** %10, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %9, align 4
  %46 = lshr i32 %45, 8
  %47 = load i32*, i32** %10, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32*, i32** %10, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  store i32 %49, i32* %51, align 4
  br label %65

52:                                               ; preds = %4
  %53 = load i32, i32* %9, align 4
  %54 = load i32*, i32** %10, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = call i32 @put_unaligned_be16(i32 %53, i32* %55)
  br label %65

57:                                               ; preds = %4
  %58 = load i32, i32* %9, align 4
  %59 = load i32*, i32** %10, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 %58, i32* %60, align 4
  br label %65

61:                                               ; preds = %4
  br label %65

62:                                               ; preds = %4
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %84

65:                                               ; preds = %61, %57, %52, %40
  %66 = call i32 @spi_message_init(%struct.spi_message* %12)
  %67 = call i32 @spi_message_add_tail(%struct.spi_transfer* %11, %struct.spi_message* %12)
  %68 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %6, align 8
  %69 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %6, align 8
  %74 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @spi_sync_locked(i32 %75, %struct.spi_message* %12)
  store i32 %76, i32* %13, align 4
  br label %82

77:                                               ; preds = %65
  %78 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %6, align 8
  %79 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @spi_sync(i32 %80, %struct.spi_message* %12)
  store i32 %81, i32* %13, align 4
  br label %82

82:                                               ; preds = %77, %72
  %83 = load i32, i32* %13, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %82, %62
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @put_unaligned_be16(i32, i32*) #1

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
