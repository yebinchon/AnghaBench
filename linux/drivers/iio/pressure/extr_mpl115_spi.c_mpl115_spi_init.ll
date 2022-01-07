; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_mpl115_spi.c_mpl115_spi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_mpl115_spi.c_mpl115_spi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.spi_device = type { i32 }
%struct.mpl115_spi_buf = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @mpl115_spi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpl115_spi_init(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.mpl115_spi_buf*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.spi_device* @to_spi_device(%struct.device* %6)
  store %struct.spi_device* %7, %struct.spi_device** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.mpl115_spi_buf* @devm_kzalloc(%struct.device* %8, i32 4, i32 %9)
  store %struct.mpl115_spi_buf* %10, %struct.mpl115_spi_buf** %5, align 8
  %11 = load %struct.mpl115_spi_buf*, %struct.mpl115_spi_buf** %5, align 8
  %12 = icmp ne %struct.mpl115_spi_buf* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %20

16:                                               ; preds = %1
  %17 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %18 = load %struct.mpl115_spi_buf*, %struct.mpl115_spi_buf** %5, align 8
  %19 = call i32 @spi_set_drvdata(%struct.spi_device* %17, %struct.mpl115_spi_buf* %18)
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %16, %13
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local %struct.spi_device* @to_spi_device(%struct.device*) #1

declare dso_local %struct.mpl115_spi_buf* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.mpl115_spi_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
