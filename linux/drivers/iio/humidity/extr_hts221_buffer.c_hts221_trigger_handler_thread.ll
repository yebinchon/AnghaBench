; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hts221_buffer.c_hts221_trigger_handler_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hts221_buffer.c_hts221_trigger_handler_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hts221_hw = type { i32, i32 }

@HTS221_REG_STATUS_ADDR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@HTS221_RH_DRDY_MASK = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hts221_trigger_handler_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hts221_trigger_handler_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hts221_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.hts221_hw*
  store %struct.hts221_hw* %10, %struct.hts221_hw** %6, align 8
  %11 = load %struct.hts221_hw*, %struct.hts221_hw** %6, align 8
  %12 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @HTS221_REG_STATUS_ADDR, align 4
  %15 = call i32 @regmap_read(i32 %13, i32 %14, i32* %8)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %19, i32* %3, align 4
  br label %33

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @HTS221_RH_DRDY_MASK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @IRQ_NONE, align 4
  store i32 %26, i32* %3, align 4
  br label %33

27:                                               ; preds = %20
  %28 = load %struct.hts221_hw*, %struct.hts221_hw** %6, align 8
  %29 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @iio_trigger_poll_chained(i32 %30)
  %32 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %27, %25, %18
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @iio_trigger_poll_chained(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
