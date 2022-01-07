; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba6120.c_gpio_6120_mod.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba6120.c_gpio_6120_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@EXTCtrl = common dso_local global i32 0, align 4
@GPIOOe = common dso_local global i32 0, align 4
@kr_extctrl = common dso_local global i32 0, align 4
@kr_gpio_out = common dso_local global i32 0, align 4
@kr_extstatus = common dso_local global i32 0, align 4
@EXTStatus = common dso_local global i32 0, align 4
@GPIOIn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*, i32, i32, i32)* @gpio_6120_mod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_6120_mod(%struct.qib_devdata* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qib_devdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %83

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %22 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i64, i64* %11, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @EXTCtrl, align 4
  %29 = load i32, i32* @GPIOOe, align 4
  %30 = call i32 @SYM_LSB(i32 %28, i32 %29)
  %31 = shl i32 %27, %30
  %32 = xor i32 %31, -1
  %33 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %34 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %32
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @EXTCtrl, align 4
  %41 = load i32, i32* @GPIOOe, align 4
  %42 = call i32 @SYM_LSB(i32 %40, i32 %41)
  %43 = shl i32 %39, %42
  %44 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %45 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %43
  store i32 %49, i32* %47, align 4
  %50 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %51 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %8, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %10, align 4
  %60 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %61 = load i32, i32* @kr_extctrl, align 4
  %62 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %63 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @qib_write_kreg(%struct.qib_devdata* %60, i32 %61, i32 %66)
  %68 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %69 = load i32, i32* @kr_gpio_out, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @qib_write_kreg(%struct.qib_devdata* %68, i32 %69, i32 %70)
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %74 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i32 %72, i32* %76, align 4
  %77 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %78 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i64, i64* %11, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  br label %83

83:                                               ; preds = %14, %4
  %84 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %85 = load i32, i32* @kr_extstatus, align 4
  %86 = call i32 @qib_read_kreg64(%struct.qib_devdata* %84, i32 %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @EXTStatus, align 4
  %89 = load i32, i32* @GPIOIn, align 4
  %90 = call i32 @SYM_FIELD(i32 %87, i32 %88, i32 %89)
  ret i32 %90
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @SYM_LSB(i32, i32) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @qib_read_kreg64(%struct.qib_devdata*, i32) #1

declare dso_local i32 @SYM_FIELD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
