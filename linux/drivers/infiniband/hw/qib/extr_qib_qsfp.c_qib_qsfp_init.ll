; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_qsfp.c_qib_qsfp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_qsfp.c_qib_qsfp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_qsfp_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, %struct.qib_devdata* }
%struct.qib_devdata = type { i32 (%struct.qib_devdata*, i32, i32, i32)* }
%struct.work_struct = type opaque
%struct.work_struct.0 = type opaque

@QSFP_GPIO_MOD_SEL_N = common dso_local global i32 0, align 4
@QSFP_GPIO_MOD_RST_N = common dso_local global i32 0, align 4
@QSFP_GPIO_LP_MODE = common dso_local global i32 0, align 4
@QSFP_GPIO_PORT2_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qib_qsfp_init(%struct.qib_qsfp_data* %0, void (%struct.work_struct*)* %1) #0 {
  %3 = alloca %struct.qib_qsfp_data*, align 8
  %4 = alloca void (%struct.work_struct*)*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qib_devdata*, align 8
  store %struct.qib_qsfp_data* %0, %struct.qib_qsfp_data** %3, align 8
  store void (%struct.work_struct*)* %1, void (%struct.work_struct*)** %4, align 8
  %8 = load %struct.qib_qsfp_data*, %struct.qib_qsfp_data** %3, align 8
  %9 = getelementptr inbounds %struct.qib_qsfp_data, %struct.qib_qsfp_data* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load %struct.qib_devdata*, %struct.qib_devdata** %11, align 8
  store %struct.qib_devdata* %12, %struct.qib_devdata** %7, align 8
  %13 = load %struct.qib_qsfp_data*, %struct.qib_qsfp_data** %3, align 8
  %14 = getelementptr inbounds %struct.qib_qsfp_data, %struct.qib_qsfp_data* %13, i32 0, i32 1
  %15 = load void (%struct.work_struct*)*, void (%struct.work_struct*)** %4, align 8
  %16 = bitcast void (%struct.work_struct*)* %15 to void (%struct.work_struct.0*)*
  %17 = call i32 @INIT_WORK(i32* %14, void (%struct.work_struct.0*)* %16)
  %18 = load i32, i32* @QSFP_GPIO_MOD_SEL_N, align 4
  %19 = load i32, i32* @QSFP_GPIO_MOD_RST_N, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @QSFP_GPIO_LP_MODE, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @QSFP_GPIO_MOD_RST_N, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, i32* %6, align 4
  %26 = load %struct.qib_qsfp_data*, %struct.qib_qsfp_data** %3, align 8
  %27 = getelementptr inbounds %struct.qib_qsfp_data, %struct.qib_qsfp_data* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %2
  %33 = load i32, i32* @QSFP_GPIO_PORT2_SHIFT, align 4
  %34 = load i32, i32* %5, align 4
  %35 = shl i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* @QSFP_GPIO_PORT2_SHIFT, align 4
  %37 = load i32, i32* %6, align 4
  %38 = shl i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %32, %2
  %40 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %41 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %40, i32 0, i32 0
  %42 = load i32 (%struct.qib_devdata*, i32, i32, i32)*, i32 (%struct.qib_devdata*, i32, i32, i32)** %41, align 8
  %43 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 %42(%struct.qib_devdata* %43, i32 %44, i32 %45, i32 %46)
  %48 = call i32 @udelay(i32 20)
  %49 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %50 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %49, i32 0, i32 0
  %51 = load i32 (%struct.qib_devdata*, i32, i32, i32)*, i32 (%struct.qib_devdata*, i32, i32, i32)** %50, align 8
  %52 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 %51(%struct.qib_devdata* %52, i32 %53, i32 %54, i32 %55)
  ret void
}

declare dso_local i32 @INIT_WORK(i32*, void (%struct.work_struct.0*)*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
