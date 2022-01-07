; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_6120_setup_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_6120_setup_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32, i64, i64, i64 }

@.str = private unnamed_addr constant [30 x i8] c"Resetting InfiniPath unit %u\0A\00", align 1
@QIB_INITTED = common dso_local global i32 0, align 4
@QIB_PRESENT = common dso_local global i32 0, align 4
@QLOGIC_IB_C_RESET = common dso_local global i32 0, align 4
@kr_control = common dso_local global i64 0, align 8
@kr_revision = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"Reset failed to setup PCIe or interrupts; continuing anyway\0A\00", align 1
@kr_gpio_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*)* @qib_6120_setup_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_6120_setup_reset(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  %9 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %10 = call i32 @qib_pcie_getcmd(%struct.qib_devdata* %9, i32* %6, i32* %7, i32* %8)
  %11 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %12 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %13 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %17 = call i32 @qib_6120_set_intr_state(%struct.qib_devdata* %16, i32 0)
  %18 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %19 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %23 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %27 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* @QIB_INITTED, align 4
  %31 = load i32, i32* @QIB_PRESENT, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %35 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %39 = call i32 @qib_int_counter(%struct.qib_devdata* %38)
  %40 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %41 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 8
  %42 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %43 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @QLOGIC_IB_C_RESET, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %49 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %48, i32 0, i32 5
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @kr_control, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = call i32 @writeq(i32 %47, i32* %52)
  %54 = call i32 (...) @mb()
  store i32 1, i32* %4, align 4
  br label %55

55:                                               ; preds = %89, %1
  %56 = load i32, i32* %4, align 4
  %57 = icmp sle i32 %56, 5
  br i1 %57, label %58, label %92

58:                                               ; preds = %55
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 1, %59
  %61 = mul nsw i32 %60, 2000
  %62 = add nsw i32 1000, %61
  %63 = call i32 @msleep(i32 %62)
  %64 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @qib_pcie_reenable(%struct.qib_devdata* %64, i32 %65, i32 %66, i32 %67)
  %69 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %70 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %69, i32 0, i32 5
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @kr_revision, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = call i32 @readq(i32* %73)
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* %3, align 4
  %76 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %77 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %75, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %58
  %81 = load i32, i32* @QIB_PRESENT, align 4
  %82 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %83 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %87 = call i32 @qib_reinit_intr(%struct.qib_devdata* %86)
  store i32 %87, i32* %5, align 4
  br label %93

88:                                               ; preds = %58
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %4, align 4
  br label %55

92:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %92, %80
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %119

96:                                               ; preds = %93
  %97 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %98 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %99 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @qib_pcie_params(%struct.qib_devdata* %97, i32 %100, i32* null)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %105 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %104, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  br label %106

106:                                              ; preds = %103, %96
  %107 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %108 = call i32 @qib_6120_init_hwerrors(%struct.qib_devdata* %107)
  %109 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %110 = load i32, i32* @kr_gpio_mask, align 4
  %111 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %112 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %111, i32 0, i32 3
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @qib_write_kreg(%struct.qib_devdata* %109, i32 %110, i32 %115)
  %117 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %118 = call i32 @qib_6120_init_hwerrors(%struct.qib_devdata* %117)
  br label %119

119:                                              ; preds = %106, %93
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @qib_pcie_getcmd(%struct.qib_devdata*, i32*, i32*, i32*) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*, ...) #1

declare dso_local i32 @qib_6120_set_intr_state(%struct.qib_devdata*, i32) #1

declare dso_local i32 @qib_int_counter(%struct.qib_devdata*) #1

declare dso_local i32 @writeq(i32, i32*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qib_pcie_reenable(%struct.qib_devdata*, i32, i32, i32) #1

declare dso_local i32 @readq(i32*) #1

declare dso_local i32 @qib_reinit_intr(%struct.qib_devdata*) #1

declare dso_local i64 @qib_pcie_params(%struct.qib_devdata*, i32, i32*) #1

declare dso_local i32 @qib_6120_init_hwerrors(%struct.qib_devdata*) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
