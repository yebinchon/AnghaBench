; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_7220_quiet_serdes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_7220_quiet_serdes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { %struct.qib_devdata*, %struct.TYPE_3__*, i32, i32 }
%struct.qib_devdata = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i64, i64, i64, i64, i64, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64 }

@QLOGIC_IB_C_LINKENABLE = common dso_local global i32 0, align 4
@kr_control = common dso_local global i32 0, align 4
@QLOGIC_IB_C_FREEZEMODE = common dso_local global i32 0, align 4
@kr_hwdiagctrl = common dso_local global i32 0, align 4
@HwDiagCtrl = common dso_local global i32 0, align 4
@CounterWrEnable = common dso_local global i32 0, align 4
@cr_ibsymbolerr = common dso_local global i32 0, align 4
@cr_iblinkerrrecov = common dso_local global i32 0, align 4
@QLOGIC_IB_IBCC_LINKINITCMD_DISABLE = common dso_local global i32 0, align 4
@QIBL_IB_AUTONEG_INPROG = common dso_local global i32 0, align 4
@kr_xgxs_cfg = common dso_local global i32 0, align 4
@QLOGIC_IB_XGXS_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*)* @qib_7220_quiet_serdes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_7220_quiet_serdes(%struct.qib_pportdata* %0) #0 {
  %2 = alloca %struct.qib_pportdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.qib_devdata*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %2, align 8
  %7 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %8 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %7, i32 0, i32 0
  %9 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  store %struct.qib_devdata* %9, %struct.qib_devdata** %4, align 8
  %10 = load i32, i32* @QLOGIC_IB_C_LINKENABLE, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %13 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %17 = load i32, i32* @kr_control, align 4
  %18 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %19 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @QLOGIC_IB_C_FREEZEMODE, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @qib_write_kreg(%struct.qib_devdata* %16, i32 %17, i32 %22)
  %24 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %25 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 8
  store i64 0, i64* %27, align 8
  %28 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %29 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 7
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %1
  %36 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %37 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 7
  %40 = call i32 @del_timer_sync(%struct.TYPE_4__* %39)
  br label %41

41:                                               ; preds = %35, %1
  %42 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %43 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %62, label %48

48:                                               ; preds = %41
  %49 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %50 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %48
  %56 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %57 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %180

62:                                               ; preds = %55, %48, %41
  %63 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %64 = load i32, i32* @kr_hwdiagctrl, align 4
  %65 = call i32 @qib_read_kreg64(%struct.qib_devdata* %63, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %67 = load i32, i32* @kr_hwdiagctrl, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @HwDiagCtrl, align 4
  %70 = load i32, i32* @CounterWrEnable, align 4
  %71 = call i32 @SYM_MASK(i32 %69, i32 %70)
  %72 = or i32 %68, %71
  %73 = call i32 @qib_write_kreg(%struct.qib_devdata* %66, i32 %67, i32 %72)
  %74 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %75 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %74, i32 0, i32 1
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %62
  %81 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %82 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %81, i32 0, i32 1
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %124

87:                                               ; preds = %80, %62
  %88 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %89 = load i32, i32* @cr_ibsymbolerr, align 4
  %90 = call i32 @read_7220_creg32(%struct.qib_devdata* %88, i32 %89)
  store i32 %90, i32* %3, align 4
  %91 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %92 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %91, i32 0, i32 1
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %87
  %98 = load i32, i32* %3, align 4
  %99 = sext i32 %98 to i64
  %100 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %101 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %100, i32 0, i32 1
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 6
  %104 = load i64, i64* %103, align 8
  %105 = sub nsw i64 %99, %104
  %106 = load i32, i32* %3, align 4
  %107 = sext i32 %106 to i64
  %108 = sub nsw i64 %107, %105
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %97, %87
  %111 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %112 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %111, i32 0, i32 1
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* %3, align 4
  %117 = sext i32 %116 to i64
  %118 = sub nsw i64 %117, %115
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %3, align 4
  %120 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %121 = load i32, i32* @cr_ibsymbolerr, align 4
  %122 = load i32, i32* %3, align 4
  %123 = call i32 @write_7220_creg(%struct.qib_devdata* %120, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %110, %80
  %125 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %126 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %125, i32 0, i32 1
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %138, label %131

131:                                              ; preds = %124
  %132 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %133 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %132, i32 0, i32 1
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %175

138:                                              ; preds = %131, %124
  %139 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %140 = load i32, i32* @cr_iblinkerrrecov, align 4
  %141 = call i32 @read_7220_creg32(%struct.qib_devdata* %139, i32 %140)
  store i32 %141, i32* %3, align 4
  %142 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %143 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %142, i32 0, i32 1
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %161

148:                                              ; preds = %138
  %149 = load i32, i32* %3, align 4
  %150 = sext i32 %149 to i64
  %151 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %152 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %151, i32 0, i32 1
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = sub nsw i64 %150, %155
  %157 = load i32, i32* %3, align 4
  %158 = sext i32 %157 to i64
  %159 = sub nsw i64 %158, %156
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %148, %138
  %162 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %163 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %162, i32 0, i32 1
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load i32, i32* %3, align 4
  %168 = sext i32 %167 to i64
  %169 = sub nsw i64 %168, %166
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %3, align 4
  %171 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %172 = load i32, i32* @cr_iblinkerrrecov, align 4
  %173 = load i32, i32* %3, align 4
  %174 = call i32 @write_7220_creg(%struct.qib_devdata* %171, i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %161, %131
  %176 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %177 = load i32, i32* @kr_hwdiagctrl, align 4
  %178 = load i32, i32* %6, align 4
  %179 = call i32 @qib_write_kreg(%struct.qib_devdata* %176, i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %175, %55
  %181 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %182 = load i32, i32* @QLOGIC_IB_IBCC_LINKINITCMD_DISABLE, align 4
  %183 = call i32 @qib_set_ib_7220_lstate(%struct.qib_pportdata* %181, i32 0, i32 %182)
  %184 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %185 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %184, i32 0, i32 2
  %186 = load i64, i64* %5, align 8
  %187 = call i32 @spin_lock_irqsave(i32* %185, i64 %186)
  %188 = load i32, i32* @QIBL_IB_AUTONEG_INPROG, align 4
  %189 = xor i32 %188, -1
  %190 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %191 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = and i32 %192, %189
  store i32 %193, i32* %191, align 4
  %194 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %195 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %194, i32 0, i32 2
  %196 = load i64, i64* %5, align 8
  %197 = call i32 @spin_unlock_irqrestore(i32* %195, i64 %196)
  %198 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %199 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %198, i32 0, i32 1
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 1
  %202 = call i32 @wake_up(i32* %201)
  %203 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %204 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %203, i32 0, i32 1
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 0
  %207 = call i32 @cancel_delayed_work_sync(i32* %206)
  %208 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %209 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %208, i32 0, i32 0
  %210 = load %struct.qib_devdata*, %struct.qib_devdata** %209, align 8
  %211 = call i32 @shutdown_7220_relock_poll(%struct.qib_devdata* %210)
  %212 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %213 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %212, i32 0, i32 0
  %214 = load %struct.qib_devdata*, %struct.qib_devdata** %213, align 8
  %215 = load i32, i32* @kr_xgxs_cfg, align 4
  %216 = call i32 @qib_read_kreg64(%struct.qib_devdata* %214, i32 %215)
  store i32 %216, i32* %3, align 4
  %217 = load i32, i32* @QLOGIC_IB_XGXS_RESET, align 4
  %218 = load i32, i32* %3, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %3, align 4
  %220 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %221 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %220, i32 0, i32 0
  %222 = load %struct.qib_devdata*, %struct.qib_devdata** %221, align 8
  %223 = load i32, i32* @kr_xgxs_cfg, align 4
  %224 = load i32, i32* %3, align 4
  %225 = call i32 @qib_write_kreg(%struct.qib_devdata* %222, i32 %223, i32 %224)
  ret void
}

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @del_timer_sync(%struct.TYPE_4__*) #1

declare dso_local i32 @qib_read_kreg64(%struct.qib_devdata*, i32) #1

declare dso_local i32 @SYM_MASK(i32, i32) #1

declare dso_local i32 @read_7220_creg32(%struct.qib_devdata*, i32) #1

declare dso_local i32 @write_7220_creg(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @qib_set_ib_7220_lstate(%struct.qib_pportdata*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @shutdown_7220_relock_poll(%struct.qib_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
