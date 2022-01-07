; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_subn_set_vl_arb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_subn_set_vl_arb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_smp = type { i32, i32, i32 }
%struct.ib_device = type { i32 }
%struct.qib_pportdata = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.qib_pportdata*, i32, i32)* }

@IB_VL_VL0 = common dso_local global i64 0, align 8
@IB_SMP_UNSUP_METHOD = common dso_local global i32 0, align 4
@IB_VLARB_LOWPRI_0_31 = common dso_local global i32 0, align 4
@QIB_IB_TBL_VL_LOW_ARB = common dso_local global i32 0, align 4
@IB_VLARB_HIGHPRI_0_31 = common dso_local global i32 0, align 4
@QIB_IB_TBL_VL_HIGH_ARB = common dso_local global i32 0, align 4
@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_smp*, %struct.ib_device*, i32)* @subn_set_vl_arb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subn_set_vl_arb(%struct.ib_smp* %0, %struct.ib_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_smp*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qib_pportdata*, align 8
  store %struct.ib_smp* %0, %struct.ib_smp** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %10 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @be32_to_cpu(i32 %11)
  %13 = ashr i32 %12, 16
  store i32 %13, i32* %7, align 4
  %14 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @to_iport(%struct.ib_device* %14, i32 %15)
  %17 = call %struct.qib_pportdata* @ppd_from_ibp(i32 %16)
  store %struct.qib_pportdata* %17, %struct.qib_pportdata** %8, align 8
  %18 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %19 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IB_VL_VL0, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load i32, i32* @IB_SMP_UNSUP_METHOD, align 4
  %25 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %26 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %69

29:                                               ; preds = %3
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @IB_VLARB_LOWPRI_0_31, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %35 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.qib_pportdata*, i32, i32)*, i32 (%struct.qib_pportdata*, i32, i32)** %37, align 8
  %39 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %40 = load i32, i32* @QIB_IB_TBL_VL_LOW_ARB, align 4
  %41 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %42 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 %38(%struct.qib_pportdata* %39, i32 %40, i32 %43)
  br label %68

45:                                               ; preds = %29
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @IB_VLARB_HIGHPRI_0_31, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %51 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32 (%struct.qib_pportdata*, i32, i32)*, i32 (%struct.qib_pportdata*, i32, i32)** %53, align 8
  %55 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %56 = load i32, i32* @QIB_IB_TBL_VL_HIGH_ARB, align 4
  %57 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %58 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 %54(%struct.qib_pportdata* %55, i32 %56, i32 %59)
  br label %67

61:                                               ; preds = %45
  %62 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %63 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %64 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %61, %49
  br label %68

68:                                               ; preds = %67, %33
  br label %69

69:                                               ; preds = %68, %23
  %70 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %71 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @subn_get_vl_arb(%struct.ib_smp* %70, %struct.ib_device* %71, i32 %72)
  ret i32 %73
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(i32) #1

declare dso_local i32 @to_iport(%struct.ib_device*, i32) #1

declare dso_local i32 @subn_get_vl_arb(%struct.ib_smp*, %struct.ib_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
