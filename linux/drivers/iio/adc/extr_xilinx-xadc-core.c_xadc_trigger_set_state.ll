; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-core.c_xadc_trigger_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-core.c_xadc_trigger_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_trigger = type { i32 }
%struct.xadc = type { i32, i32, %struct.iio_trigger*, %struct.iio_trigger* }

@EBUSY = common dso_local global i32 0, align 4
@XADC_CONF0_EC = common dso_local global i32 0, align 4
@XADC_REG_CONF1 = common dso_local global i32 0, align 4
@XADC_AXI_REG_IPIER = common dso_local global i32 0, align 4
@XADC_AXI_REG_IPISR = common dso_local global i32 0, align 4
@XADC_AXI_INT_EOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_trigger*, i32)* @xadc_trigger_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xadc_trigger_set_state(%struct.iio_trigger* %0, i32 %1) #0 {
  %3 = alloca %struct.iio_trigger*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xadc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iio_trigger* %0, %struct.iio_trigger** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %11 = call %struct.xadc* @iio_trigger_get_drvdata(%struct.iio_trigger* %10)
  store %struct.xadc* %11, %struct.xadc** %5, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.xadc*, %struct.xadc** %5, align 8
  %13 = getelementptr inbounds %struct.xadc, %struct.xadc* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %48

17:                                               ; preds = %2
  %18 = load %struct.xadc*, %struct.xadc** %5, align 8
  %19 = getelementptr inbounds %struct.xadc, %struct.xadc* %18, i32 0, i32 2
  %20 = load %struct.iio_trigger*, %struct.iio_trigger** %19, align 8
  %21 = icmp ne %struct.iio_trigger* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %9, align 4
  br label %85

25:                                               ; preds = %17
  %26 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %27 = load %struct.xadc*, %struct.xadc** %5, align 8
  %28 = getelementptr inbounds %struct.xadc, %struct.xadc* %27, i32 0, i32 2
  store %struct.iio_trigger* %26, %struct.iio_trigger** %28, align 8
  %29 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %30 = load %struct.xadc*, %struct.xadc** %5, align 8
  %31 = getelementptr inbounds %struct.xadc, %struct.xadc* %30, i32 0, i32 3
  %32 = load %struct.iio_trigger*, %struct.iio_trigger** %31, align 8
  %33 = icmp eq %struct.iio_trigger* %29, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* @XADC_CONF0_EC, align 4
  store i32 %35, i32* %7, align 4
  br label %37

36:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %36, %34
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.xadc*, %struct.xadc** %5, align 8
  %40 = load i32, i32* @XADC_REG_CONF1, align 4
  %41 = load i32, i32* @XADC_CONF0_EC, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @_xadc_update_adc_reg(%struct.xadc* %39, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %85

47:                                               ; preds = %38
  br label %51

48:                                               ; preds = %2
  %49 = load %struct.xadc*, %struct.xadc** %5, align 8
  %50 = getelementptr inbounds %struct.xadc, %struct.xadc* %49, i32 0, i32 2
  store %struct.iio_trigger* null, %struct.iio_trigger** %50, align 8
  br label %51

51:                                               ; preds = %48, %47
  %52 = load %struct.xadc*, %struct.xadc** %5, align 8
  %53 = getelementptr inbounds %struct.xadc, %struct.xadc* %52, i32 0, i32 1
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @spin_lock_irqsave(i32* %53, i64 %54)
  %56 = load %struct.xadc*, %struct.xadc** %5, align 8
  %57 = load i32, i32* @XADC_AXI_REG_IPIER, align 4
  %58 = call i32 @xadc_read_reg(%struct.xadc* %56, i32 %57, i32* %8)
  %59 = load %struct.xadc*, %struct.xadc** %5, align 8
  %60 = load i32, i32* @XADC_AXI_REG_IPISR, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @XADC_AXI_INT_EOS, align 4
  %63 = and i32 %61, %62
  %64 = call i32 @xadc_write_reg(%struct.xadc* %59, i32 %60, i32 %63)
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %51
  %68 = load i32, i32* @XADC_AXI_INT_EOS, align 4
  %69 = load i32, i32* %8, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %8, align 4
  br label %76

71:                                               ; preds = %51
  %72 = load i32, i32* @XADC_AXI_INT_EOS, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %8, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %71, %67
  %77 = load %struct.xadc*, %struct.xadc** %5, align 8
  %78 = load i32, i32* @XADC_AXI_REG_IPIER, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @xadc_write_reg(%struct.xadc* %77, i32 %78, i32 %79)
  %81 = load %struct.xadc*, %struct.xadc** %5, align 8
  %82 = getelementptr inbounds %struct.xadc, %struct.xadc* %81, i32 0, i32 1
  %83 = load i64, i64* %6, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  br label %85

85:                                               ; preds = %76, %46, %22
  %86 = load %struct.xadc*, %struct.xadc** %5, align 8
  %87 = getelementptr inbounds %struct.xadc, %struct.xadc* %86, i32 0, i32 0
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load i32, i32* %9, align 4
  ret i32 %89
}

declare dso_local %struct.xadc* @iio_trigger_get_drvdata(%struct.iio_trigger*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @_xadc_update_adc_reg(%struct.xadc*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @xadc_read_reg(%struct.xadc*, i32, i32*) #1

declare dso_local i32 @xadc_write_reg(%struct.xadc*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
