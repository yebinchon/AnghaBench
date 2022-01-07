; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_6120_quiet_serdes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_6120_quiet_serdes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { %struct.qib_devdata* }
%struct.qib_devdata = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }

@QLOGIC_IB_IBCC_LINKINITCMD_DISABLE = common dso_local global i32 0, align 4
@QLOGIC_IB_C_LINKENABLE = common dso_local global i32 0, align 4
@kr_control = common dso_local global i32 0, align 4
@QLOGIC_IB_C_FREEZEMODE = common dso_local global i32 0, align 4
@kr_hwdiagctrl = common dso_local global i32 0, align 4
@HwDiagCtrl = common dso_local global i32 0, align 4
@CounterWrEnable = common dso_local global i32 0, align 4
@cr_ibsymbolerr = common dso_local global i32 0, align 4
@cr_iblinkerrrecov = common dso_local global i32 0, align 4
@kr_serdes_cfg0 = common dso_local global i32 0, align 4
@SerdesCfg0 = common dso_local global i32 0, align 4
@TxIdeEnX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*)* @qib_6120_quiet_serdes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_6120_quiet_serdes(%struct.qib_pportdata* %0) #0 {
  %2 = alloca %struct.qib_pportdata*, align 8
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %2, align 8
  %6 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %7 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %6, i32 0, i32 0
  %8 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  store %struct.qib_devdata* %8, %struct.qib_devdata** %3, align 8
  %9 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %10 = load i32, i32* @QLOGIC_IB_IBCC_LINKINITCMD_DISABLE, align 4
  %11 = call i32 @qib_set_ib_6120_lstate(%struct.qib_pportdata* %9, i32 0, i32 %10)
  %12 = load i32, i32* @QLOGIC_IB_C_LINKENABLE, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %15 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %19 = load i32, i32* @kr_control, align 4
  %20 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %21 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @QLOGIC_IB_C_FREEZEMODE, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @qib_write_kreg(%struct.qib_devdata* %18, i32 %19, i32 %24)
  %26 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %27 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %46, label %32

32:                                               ; preds = %1
  %33 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %34 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %32
  %40 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %41 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %164

46:                                               ; preds = %39, %32, %1
  %47 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %48 = load i32, i32* @kr_hwdiagctrl, align 4
  %49 = call i32 @qib_read_kreg64(%struct.qib_devdata* %47, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %51 = load i32, i32* @kr_hwdiagctrl, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @HwDiagCtrl, align 4
  %54 = load i32, i32* @CounterWrEnable, align 4
  %55 = call i32 @SYM_MASK(i32 %53, i32 %54)
  %56 = or i32 %52, %55
  %57 = call i32 @qib_write_kreg(%struct.qib_devdata* %50, i32 %51, i32 %56)
  %58 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %59 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %46
  %65 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %66 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %108

71:                                               ; preds = %64, %46
  %72 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %73 = load i32, i32* @cr_ibsymbolerr, align 4
  %74 = call i32 @read_6120_creg32(%struct.qib_devdata* %72, i32 %73)
  store i32 %74, i32* %4, align 4
  %75 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %76 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %71
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %85 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %83, %88
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = sub nsw i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %81, %71
  %95 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %96 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = sub nsw i64 %101, %99
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %4, align 4
  %104 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %105 = load i32, i32* @cr_ibsymbolerr, align 4
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @write_6120_creg(%struct.qib_devdata* %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %94, %64
  %109 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %110 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %109, i32 0, i32 1
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %108
  %116 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %117 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %116, i32 0, i32 1
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %159

122:                                              ; preds = %115, %108
  %123 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %124 = load i32, i32* @cr_iblinkerrrecov, align 4
  %125 = call i32 @read_6120_creg32(%struct.qib_devdata* %123, i32 %124)
  store i32 %125, i32* %4, align 4
  %126 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %127 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %126, i32 0, i32 1
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %122
  %133 = load i32, i32* %4, align 4
  %134 = sext i32 %133 to i64
  %135 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %136 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %135, i32 0, i32 1
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = sub nsw i64 %134, %139
  %141 = load i32, i32* %4, align 4
  %142 = sext i32 %141 to i64
  %143 = sub nsw i64 %142, %140
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %4, align 4
  br label %145

145:                                              ; preds = %132, %122
  %146 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %147 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %146, i32 0, i32 1
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = sub nsw i64 %152, %150
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %4, align 4
  %155 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %156 = load i32, i32* @cr_iblinkerrrecov, align 4
  %157 = load i32, i32* %4, align 4
  %158 = call i32 @write_6120_creg(%struct.qib_devdata* %155, i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %145, %115
  %160 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %161 = load i32, i32* @kr_hwdiagctrl, align 4
  %162 = load i32, i32* %5, align 4
  %163 = call i32 @qib_write_kreg(%struct.qib_devdata* %160, i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %159, %39
  %165 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %166 = load i32, i32* @kr_serdes_cfg0, align 4
  %167 = call i32 @qib_read_kreg64(%struct.qib_devdata* %165, i32 %166)
  store i32 %167, i32* %4, align 4
  %168 = load i32, i32* @SerdesCfg0, align 4
  %169 = load i32, i32* @TxIdeEnX, align 4
  %170 = call i32 @SYM_MASK(i32 %168, i32 %169)
  %171 = load i32, i32* %4, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %4, align 4
  %173 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %174 = load i32, i32* @kr_serdes_cfg0, align 4
  %175 = load i32, i32* %4, align 4
  %176 = call i32 @qib_write_kreg(%struct.qib_devdata* %173, i32 %174, i32 %175)
  ret void
}

declare dso_local i32 @qib_set_ib_6120_lstate(%struct.qib_pportdata*, i32, i32) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @qib_read_kreg64(%struct.qib_devdata*, i32) #1

declare dso_local i32 @SYM_MASK(i32, i32) #1

declare dso_local i32 @read_6120_creg32(%struct.qib_devdata*, i32) #1

declare dso_local i32 @write_6120_creg(%struct.qib_devdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
