; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-core.c_xadc_axi_interrupt_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-core.c_xadc_axi_interrupt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.xadc = type { i64 }

@XADC_AXI_REG_IPISR = common dso_local global i32 0, align 4
@XADC_AXI_REG_IPIER = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@XADC_AXI_INT_EOS = common dso_local global i32 0, align 4
@XADC_AXI_INT_ALARM_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @xadc_axi_interrupt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xadc_axi_interrupt_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.xadc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.iio_dev*
  store %struct.iio_dev* %12, %struct.iio_dev** %6, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %14 = call %struct.xadc* @iio_priv(%struct.iio_dev* %13)
  store %struct.xadc* %14, %struct.xadc** %7, align 8
  %15 = load %struct.xadc*, %struct.xadc** %7, align 8
  %16 = load i32, i32* @XADC_AXI_REG_IPISR, align 4
  %17 = call i32 @xadc_read_reg(%struct.xadc* %15, i32 %16, i32* %8)
  %18 = load %struct.xadc*, %struct.xadc** %7, align 8
  %19 = load i32, i32* @XADC_AXI_REG_IPIER, align 4
  %20 = call i32 @xadc_read_reg(%struct.xadc* %18, i32 %19, i32* %9)
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @IRQ_NONE, align 4
  store i32 %27, i32* %3, align 4
  br label %71

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @XADC_AXI_INT_EOS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load %struct.xadc*, %struct.xadc** %7, align 8
  %35 = getelementptr inbounds %struct.xadc, %struct.xadc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.xadc*, %struct.xadc** %7, align 8
  %40 = getelementptr inbounds %struct.xadc, %struct.xadc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @iio_trigger_poll(i64 %41)
  br label %43

43:                                               ; preds = %38, %33, %28
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @XADC_AXI_INT_ALARM_MASK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %43
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %49, 14
  %51 = ashr i32 %50, 1
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %8, align 4
  %53 = and i32 %52, 1
  %54 = shl i32 %53, 3
  %55 = load i32, i32* %10, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %8, align 4
  %58 = and i32 %57, 15360
  %59 = ashr i32 %58, 6
  %60 = load i32, i32* %10, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %10, align 4
  %62 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @xadc_handle_events(%struct.iio_dev* %62, i32 %63)
  br label %65

65:                                               ; preds = %48, %43
  %66 = load %struct.xadc*, %struct.xadc** %7, align 8
  %67 = load i32, i32* @XADC_AXI_REG_IPISR, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @xadc_write_reg(%struct.xadc* %66, i32 %67, i32 %68)
  %70 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %65, %26
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.xadc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @xadc_read_reg(%struct.xadc*, i32, i32*) #1

declare dso_local i32 @iio_trigger_poll(i64) #1

declare dso_local i32 @xadc_handle_events(%struct.iio_dev*, i32) #1

declare dso_local i32 @xadc_write_reg(%struct.xadc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
