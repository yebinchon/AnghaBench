; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_set_vl_weights.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_set_vl_weights.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i32, %struct.qib_devdata* }
%struct.qib_devdata = type { i32 }
%struct.ib_vl_weight_elem = type { i32, i32 }

@LowPriority0_0 = common dso_local global i32 0, align 4
@VirtualLane = common dso_local global i32 0, align 4
@Weight = common dso_local global i32 0, align 4
@SendCtrl_0 = common dso_local global i32 0, align 4
@IBVLArbiterEn = common dso_local global i32 0, align 4
@krp_sendctrl = common dso_local global i32 0, align 4
@kr_scratch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*, i32, %struct.ib_vl_weight_elem*)* @set_vl_weights to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_vl_weights(%struct.qib_pportdata* %0, i32 %1, %struct.ib_vl_weight_elem* %2) #0 {
  %4 = alloca %struct.qib_pportdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_vl_weight_elem*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qib_devdata*, align 8
  %10 = alloca i64, align 8
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_vl_weight_elem* %2, %struct.ib_vl_weight_elem** %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %42, %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp ult i32 %12, 16
  br i1 %13, label %14, label %49

14:                                               ; preds = %11
  %15 = load %struct.ib_vl_weight_elem*, %struct.ib_vl_weight_elem** %6, align 8
  %16 = getelementptr inbounds %struct.ib_vl_weight_elem, %struct.ib_vl_weight_elem* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @LowPriority0_0, align 4
  %19 = load i32, i32* @VirtualLane, align 4
  %20 = call i32 @SYM_RMASK(i32 %18, i32 %19)
  %21 = and i32 %17, %20
  %22 = load i32, i32* @LowPriority0_0, align 4
  %23 = load i32, i32* @VirtualLane, align 4
  %24 = call i32 @SYM_LSB(i32 %22, i32 %23)
  %25 = shl i32 %21, %24
  %26 = load %struct.ib_vl_weight_elem*, %struct.ib_vl_weight_elem** %6, align 8
  %27 = getelementptr inbounds %struct.ib_vl_weight_elem, %struct.ib_vl_weight_elem* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @LowPriority0_0, align 4
  %30 = load i32, i32* @Weight, align 4
  %31 = call i32 @SYM_RMASK(i32 %29, i32 %30)
  %32 = and i32 %28, %31
  %33 = load i32, i32* @LowPriority0_0, align 4
  %34 = load i32, i32* @Weight, align 4
  %35 = call i32 @SYM_LSB(i32 %33, i32 %34)
  %36 = shl i32 %32, %35
  %37 = or i32 %25, %36
  store i32 %37, i32* %8, align 4
  %38 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @qib_write_kreg_port(%struct.qib_pportdata* %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %14
  %43 = load i32, i32* %7, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %5, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %5, align 4
  %47 = load %struct.ib_vl_weight_elem*, %struct.ib_vl_weight_elem** %6, align 8
  %48 = getelementptr inbounds %struct.ib_vl_weight_elem, %struct.ib_vl_weight_elem* %47, i32 1
  store %struct.ib_vl_weight_elem* %48, %struct.ib_vl_weight_elem** %6, align 8
  br label %11

49:                                               ; preds = %11
  %50 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %51 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @SendCtrl_0, align 4
  %54 = load i32, i32* @IBVLArbiterEn, align 4
  %55 = call i32 @SYM_MASK(i32 %53, i32 %54)
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %86, label %58

58:                                               ; preds = %49
  %59 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %60 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %59, i32 0, i32 1
  %61 = load %struct.qib_devdata*, %struct.qib_devdata** %60, align 8
  store %struct.qib_devdata* %61, %struct.qib_devdata** %9, align 8
  %62 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %63 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %62, i32 0, i32 0
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @spin_lock_irqsave(i32* %63, i64 %64)
  %66 = load i32, i32* @SendCtrl_0, align 4
  %67 = load i32, i32* @IBVLArbiterEn, align 4
  %68 = call i32 @SYM_MASK(i32 %66, i32 %67)
  %69 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %70 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %74 = load i32, i32* @krp_sendctrl, align 4
  %75 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %76 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @qib_write_kreg_port(%struct.qib_pportdata* %73, i32 %74, i32 %77)
  %79 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %80 = load i32, i32* @kr_scratch, align 4
  %81 = call i32 @qib_write_kreg(%struct.qib_devdata* %79, i32 %80, i32 0)
  %82 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %83 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %82, i32 0, i32 0
  %84 = load i64, i64* %10, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  br label %86

86:                                               ; preds = %58, %49
  ret void
}

declare dso_local i32 @SYM_RMASK(i32, i32) #1

declare dso_local i32 @SYM_LSB(i32, i32) #1

declare dso_local i32 @qib_write_kreg_port(%struct.qib_pportdata*, i32, i32) #1

declare dso_local i32 @SYM_MASK(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
