; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_init_7322_qsfp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_init_7322_qsfp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i32, %struct.qib_devdata*, %struct.TYPE_3__* }
%struct.qib_devdata = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.qib_qsfp_data }
%struct.qib_qsfp_data = type { %struct.qib_pportdata* }

@QSFP_GPIO_MOD_PRS_N = common dso_local global i32 0, align 4
@QSFP_GPIO_PORT2_SHIFT = common dso_local global i32 0, align 4
@qsfp_7322_event = common dso_local global i32 0, align 4
@EXTCtrl = common dso_local global i32 0, align 4
@GPIOInvert = common dso_local global i32 0, align 4
@kr_extctrl = common dso_local global i32 0, align 4
@kr_gpio_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*)* @qib_init_7322_qsfp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_init_7322_qsfp(%struct.qib_pportdata* %0) #0 {
  %2 = alloca %struct.qib_pportdata*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.qib_qsfp_data*, align 8
  %5 = alloca %struct.qib_devdata*, align 8
  %6 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %2, align 8
  %7 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %8 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %7, i32 0, i32 2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.qib_qsfp_data* %10, %struct.qib_qsfp_data** %4, align 8
  %11 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %12 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %11, i32 0, i32 1
  %13 = load %struct.qib_devdata*, %struct.qib_devdata** %12, align 8
  store %struct.qib_devdata* %13, %struct.qib_devdata** %5, align 8
  %14 = load i32, i32* @QSFP_GPIO_MOD_PRS_N, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @QSFP_GPIO_PORT2_SHIFT, align 4
  %16 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %17 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = mul nsw i32 %15, %18
  %20 = load i32, i32* %6, align 4
  %21 = shl i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %23 = load %struct.qib_qsfp_data*, %struct.qib_qsfp_data** %4, align 8
  %24 = getelementptr inbounds %struct.qib_qsfp_data, %struct.qib_qsfp_data* %23, i32 0, i32 0
  store %struct.qib_pportdata* %22, %struct.qib_pportdata** %24, align 8
  %25 = load %struct.qib_qsfp_data*, %struct.qib_qsfp_data** %4, align 8
  %26 = load i32, i32* @qsfp_7322_event, align 4
  %27 = call i32 @qib_qsfp_init(%struct.qib_qsfp_data* %25, i32 %26)
  %28 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %29 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @EXTCtrl, align 4
  %36 = load i32, i32* @GPIOInvert, align 4
  %37 = call i32 @SYM_LSB(i32 %35, i32 %36)
  %38 = shl i32 %34, %37
  %39 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %40 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %38
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %47 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %45
  store i32 %51, i32* %49, align 4
  %52 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %53 = load i32, i32* @kr_extctrl, align 4
  %54 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %55 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @qib_write_kreg(%struct.qib_devdata* %52, i32 %53, i32 %58)
  %60 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %61 = load i32, i32* @kr_gpio_mask, align 4
  %62 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %63 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @qib_write_kreg(%struct.qib_devdata* %60, i32 %61, i32 %66)
  %68 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %69 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i64, i64* %3, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  ret void
}

declare dso_local i32 @qib_qsfp_init(%struct.qib_qsfp_data*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @SYM_LSB(i32, i32) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
