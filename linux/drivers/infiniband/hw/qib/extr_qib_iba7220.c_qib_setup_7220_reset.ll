; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_setup_7220_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_setup_7220_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32, i32*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, i64, i64 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Resetting InfiniPath unit %u\0A\00", align 1
@QIB_INITTED = common dso_local global i32 0, align 4
@QIB_PRESENT = common dso_local global i32 0, align 4
@QLOGIC_IB_C_RESET = common dso_local global i32 0, align 4
@kr_control = common dso_local global i64 0, align 8
@kr_revision = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"Reset failed to setup PCIe or interrupts; continuing anyway\0A\00", align 1
@IBA7220_IBC_IBTA_1_2_MASK = common dso_local global i32 0, align 4
@QIBL_IB_FORCE_NOTIFY = common dso_local global i32 0, align 4
@QIBL_IB_AUTONEG_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*)* @qib_setup_7220_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_setup_7220_reset(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  %10 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %11 = call i32 @qib_pcie_getcmd(%struct.qib_devdata* %10, i32* %6, i32* %7, i32* %8)
  %12 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %13 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %14 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %18 = call i32 @qib_7220_set_intr_state(%struct.qib_devdata* %17, i32 0)
  %19 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %20 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %19, i32 0, i32 3
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %26 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %25, i32 0, i32 3
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %32 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %31, i32 0, i32 3
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* @QIB_INITTED, align 4
  %38 = load i32, i32* @QIB_PRESENT, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %42 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %46 = call i32 @qib_int_counter(%struct.qib_devdata* %45)
  %47 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %48 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 8
  %49 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %50 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @QLOGIC_IB_C_RESET, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %56 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %55, i32 0, i32 6
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* @kr_control, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = call i32 @writeq(i32 %54, i32* %59)
  %61 = call i32 (...) @mb()
  store i32 1, i32* %4, align 4
  br label %62

62:                                               ; preds = %96, %1
  %63 = load i32, i32* %4, align 4
  %64 = icmp sle i32 %63, 5
  br i1 %64, label %65, label %99

65:                                               ; preds = %62
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 1, %66
  %68 = mul nsw i32 %67, 2000
  %69 = add nsw i32 1000, %68
  %70 = call i32 @msleep(i32 %69)
  %71 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @qib_pcie_reenable(%struct.qib_devdata* %71, i32 %72, i32 %73, i32 %74)
  %76 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %77 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %76, i32 0, i32 6
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @kr_revision, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = call i32 @readq(i32* %80)
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* %3, align 4
  %83 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %84 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %82, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %65
  %88 = load i32, i32* @QIB_PRESENT, align 4
  %89 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %90 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %94 = call i32 @qib_reinit_intr(%struct.qib_devdata* %93)
  store i32 %94, i32* %5, align 4
  br label %100

95:                                               ; preds = %65
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %4, align 4
  br label %62

99:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %99, %87
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %162

103:                                              ; preds = %100
  %104 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %105 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %106 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @qib_pcie_params(%struct.qib_devdata* %104, i32 %107, i32* null)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %103
  %111 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %112 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %111, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  br label %113

113:                                              ; preds = %110, %103
  %114 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %115 = load i64, i64* @kr_control, align 8
  %116 = call i32 @qib_write_kreg(%struct.qib_devdata* %114, i64 %115, i64 0)
  %117 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %118 = call i32 @qib_7220_init_hwerrors(%struct.qib_devdata* %117)
  %119 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %120 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %119, i32 0, i32 3
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @IBA7220_IBC_IBTA_1_2_MASK, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %113
  %130 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %131 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %130, i32 0, i32 4
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  store i32 1, i32* %133, align 4
  br label %134

134:                                              ; preds = %129, %113
  %135 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %136 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %135, i32 0, i32 3
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i64, i64* %9, align 8
  %140 = call i32 @spin_lock_irqsave(i32* %138, i64 %139)
  %141 = load i32, i32* @QIBL_IB_FORCE_NOTIFY, align 4
  %142 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %143 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %142, i32 0, i32 3
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %141
  store i32 %147, i32* %145, align 4
  %148 = load i32, i32* @QIBL_IB_AUTONEG_FAILED, align 4
  %149 = xor i32 %148, -1
  %150 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %151 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %150, i32 0, i32 3
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %154, %149
  store i32 %155, i32* %153, align 4
  %156 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %157 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %156, i32 0, i32 3
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i64, i64* %9, align 8
  %161 = call i32 @spin_unlock_irqrestore(i32* %159, i64 %160)
  br label %162

162:                                              ; preds = %134, %100
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @qib_pcie_getcmd(%struct.qib_devdata*, i32*, i32*, i32*) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*, ...) #1

declare dso_local i32 @qib_7220_set_intr_state(%struct.qib_devdata*, i32) #1

declare dso_local i32 @qib_int_counter(%struct.qib_devdata*) #1

declare dso_local i32 @writeq(i32, i32*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qib_pcie_reenable(%struct.qib_devdata*, i32, i32, i32) #1

declare dso_local i32 @readq(i32*) #1

declare dso_local i32 @qib_reinit_intr(%struct.qib_devdata*) #1

declare dso_local i64 @qib_pcie_params(%struct.qib_devdata*, i32, i32*) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i64, i64) #1

declare dso_local i32 @qib_7220_init_hwerrors(%struct.qib_devdata*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
