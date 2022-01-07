; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-core.c_xadc_zynq_interrupt_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-core.c_xadc_zynq_interrupt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.xadc = type { i32, i32, i32, i32, i32 }

@XADC_ZYNQ_REG_INTSTS = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@XADC_ZYNQ_INT_DFIFO_GTH = common dso_local global i32 0, align 4
@XADC_ZYNQ_INT_ALARM_MASK = common dso_local global i32 0, align 4
@XADC_ZYNQ_UNMASK_TIMEOUT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @xadc_zynq_interrupt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xadc_zynq_interrupt_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.xadc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.iio_dev*
  store %struct.iio_dev* %10, %struct.iio_dev** %6, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %12 = call %struct.xadc* @iio_priv(%struct.iio_dev* %11)
  store %struct.xadc* %12, %struct.xadc** %7, align 8
  %13 = load %struct.xadc*, %struct.xadc** %7, align 8
  %14 = load i32, i32* @XADC_ZYNQ_REG_INTSTS, align 4
  %15 = call i32 @xadc_read_reg(%struct.xadc* %13, i32 %14, i32* %8)
  %16 = load %struct.xadc*, %struct.xadc** %7, align 8
  %17 = getelementptr inbounds %struct.xadc, %struct.xadc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.xadc*, %struct.xadc** %7, align 8
  %20 = getelementptr inbounds %struct.xadc, %struct.xadc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %18, %21
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @IRQ_NONE, align 4
  store i32 %29, i32* %3, align 4
  br label %78

30:                                               ; preds = %2
  %31 = load %struct.xadc*, %struct.xadc** %7, align 8
  %32 = getelementptr inbounds %struct.xadc, %struct.xadc* %31, i32 0, i32 2
  %33 = call i32 @spin_lock(i32* %32)
  %34 = load %struct.xadc*, %struct.xadc** %7, align 8
  %35 = load i32, i32* @XADC_ZYNQ_REG_INTSTS, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @xadc_write_reg(%struct.xadc* %34, i32 %35, i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @XADC_ZYNQ_INT_DFIFO_GTH, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %30
  %43 = load %struct.xadc*, %struct.xadc** %7, align 8
  %44 = load i32, i32* @XADC_ZYNQ_INT_DFIFO_GTH, align 4
  %45 = load i32, i32* @XADC_ZYNQ_INT_DFIFO_GTH, align 4
  %46 = call i32 @xadc_zynq_update_intmsk(%struct.xadc* %43, i32 %44, i32 %45)
  %47 = load %struct.xadc*, %struct.xadc** %7, align 8
  %48 = getelementptr inbounds %struct.xadc, %struct.xadc* %47, i32 0, i32 4
  %49 = call i32 @complete(i32* %48)
  br label %50

50:                                               ; preds = %42, %30
  %51 = load i32, i32* @XADC_ZYNQ_INT_ALARM_MASK, align 4
  %52 = load i32, i32* %8, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %50
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.xadc*, %struct.xadc** %7, align 8
  %59 = getelementptr inbounds %struct.xadc, %struct.xadc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.xadc*, %struct.xadc** %7, align 8
  %63 = call i32 @xadc_zynq_update_intmsk(%struct.xadc* %62, i32 0, i32 0)
  %64 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @xadc_zynq_transform_alarm(i32 %65)
  %67 = call i32 @xadc_handle_events(%struct.iio_dev* %64, i32 %66)
  %68 = load %struct.xadc*, %struct.xadc** %7, align 8
  %69 = getelementptr inbounds %struct.xadc, %struct.xadc* %68, i32 0, i32 3
  %70 = load i32, i32* @XADC_ZYNQ_UNMASK_TIMEOUT, align 4
  %71 = call i32 @msecs_to_jiffies(i32 %70)
  %72 = call i32 @schedule_delayed_work(i32* %69, i32 %71)
  br label %73

73:                                               ; preds = %56, %50
  %74 = load %struct.xadc*, %struct.xadc** %7, align 8
  %75 = getelementptr inbounds %struct.xadc, %struct.xadc* %74, i32 0, i32 2
  %76 = call i32 @spin_unlock(i32* %75)
  %77 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %73, %28
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.xadc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @xadc_read_reg(%struct.xadc*, i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @xadc_write_reg(%struct.xadc*, i32, i32) #1

declare dso_local i32 @xadc_zynq_update_intmsk(%struct.xadc*, i32, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @xadc_handle_events(%struct.iio_dev*, i32) #1

declare dso_local i32 @xadc_zynq_transform_alarm(i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
