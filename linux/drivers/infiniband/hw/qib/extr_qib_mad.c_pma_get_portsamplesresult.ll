; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_pma_get_portsamplesresult.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_pma_get_portsamplesresult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pma_mad = type { i64 }
%struct.ib_device = type { i32 }
%struct.ib_pma_portsamplesresult = type { i32*, i8*, i8* }
%struct.qib_ibdev = type { i32 }
%struct.qib_devdata = type { i64 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32, i32)* }
%struct.qib_pportdata = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.qib_ibport = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32* }
%struct.ib_smp = type { i32 }

@IB_PMA_CONG_HW_CONTROL_TIMER = common dso_local global i64 0, align 8
@IB_PMA_SAMPLE_STATUS_DONE = common dso_local global i64 0, align 8
@QIBPORTCNTR_PSSTAT = common dso_local global i32 0, align 4
@QIB_CONG_TIMER_PSINTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pma_mad*, %struct.ib_device*, i64)* @pma_get_portsamplesresult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pma_get_portsamplesresult(%struct.ib_pma_mad* %0, %struct.ib_device* %1, i64 %2) #0 {
  %4 = alloca %struct.ib_pma_mad*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ib_pma_portsamplesresult*, align 8
  %8 = alloca %struct.qib_ibdev*, align 8
  %9 = alloca %struct.qib_devdata*, align 8
  %10 = alloca %struct.qib_ibport*, align 8
  %11 = alloca %struct.qib_pportdata*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.ib_pma_mad* %0, %struct.ib_pma_mad** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %16 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.ib_pma_portsamplesresult*
  store %struct.ib_pma_portsamplesresult* %18, %struct.ib_pma_portsamplesresult** %7, align 8
  %19 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %20 = call %struct.qib_ibdev* @to_idev(%struct.ib_device* %19)
  store %struct.qib_ibdev* %20, %struct.qib_ibdev** %8, align 8
  %21 = load %struct.qib_ibdev*, %struct.qib_ibdev** %8, align 8
  %22 = call %struct.qib_devdata* @dd_from_dev(%struct.qib_ibdev* %21)
  store %struct.qib_devdata* %22, %struct.qib_devdata** %9, align 8
  %23 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %23, i64 %24)
  store %struct.qib_ibport* %25, %struct.qib_ibport** %10, align 8
  %26 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %27 = call %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport* %26)
  store %struct.qib_pportdata* %27, %struct.qib_pportdata** %11, align 8
  %28 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %29 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @memset(i64 %30, i32 0, i32 8)
  %32 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %33 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i64, i64* %12, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %38 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i8* @cpu_to_be16(i64 %40)
  %42 = load %struct.ib_pma_portsamplesresult*, %struct.ib_pma_portsamplesresult** %7, align 8
  %43 = getelementptr inbounds %struct.ib_pma_portsamplesresult, %struct.ib_pma_portsamplesresult* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %45 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IB_PMA_CONG_HW_CONTROL_TIMER, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %3
  %51 = load i64, i64* @IB_PMA_SAMPLE_STATUS_DONE, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = load %struct.ib_pma_portsamplesresult*, %struct.ib_pma_portsamplesresult** %7, align 8
  %54 = getelementptr inbounds %struct.ib_pma_portsamplesresult, %struct.ib_pma_portsamplesresult* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  br label %88

55:                                               ; preds = %3
  %56 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %57 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %56, i32 0, i32 0
  %58 = load i64 (%struct.qib_pportdata*, i32)*, i64 (%struct.qib_pportdata*, i32)** %57, align 8
  %59 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %60 = load i32, i32* @QIBPORTCNTR_PSSTAT, align 4
  %61 = call i64 %58(%struct.qib_pportdata* %59, i32 %60)
  store i64 %61, i64* %13, align 8
  %62 = load i64, i64* %13, align 8
  %63 = call i8* @cpu_to_be16(i64 %62)
  %64 = load %struct.ib_pma_portsamplesresult*, %struct.ib_pma_portsamplesresult** %7, align 8
  %65 = getelementptr inbounds %struct.ib_pma_portsamplesresult, %struct.ib_pma_portsamplesresult* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load i64, i64* %13, align 8
  %67 = load i64, i64* @IB_PMA_SAMPLE_STATUS_DONE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %87

69:                                               ; preds = %55
  %70 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %71 = call i32 @cache_hw_sample_counters(%struct.qib_pportdata* %70)
  %72 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %73 = call i32 @xmit_wait_get_value_delta(%struct.qib_pportdata* %72)
  %74 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %75 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 8
  %77 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %78 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %77, i32 0, i32 1
  %79 = load i32 (%struct.qib_pportdata*, i32, i32)*, i32 (%struct.qib_pportdata*, i32, i32)** %78, align 8
  %80 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %81 = load i32, i32* @QIB_CONG_TIMER_PSINTERVAL, align 4
  %82 = call i32 %79(%struct.qib_pportdata* %80, i32 %81, i32 0)
  %83 = load i64, i64* @IB_PMA_CONG_HW_CONTROL_TIMER, align 8
  %84 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %85 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i64 %83, i64* %86, align 8
  br label %87

87:                                               ; preds = %69, %55
  br label %88

88:                                               ; preds = %87, %50
  store i32 0, i32* %14, align 4
  br label %89

89:                                               ; preds = %115, %88
  %90 = load i32, i32* %14, align 4
  %91 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %92 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @ARRAY_SIZE(i32* %94)
  %96 = icmp slt i32 %90, %95
  br i1 %96, label %97, label %118

97:                                               ; preds = %89
  %98 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %99 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %100 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @get_cache_hw_sample_counters(%struct.qib_pportdata* %98, i32 %106)
  %108 = call i32 @cpu_to_be32(i32 %107)
  %109 = load %struct.ib_pma_portsamplesresult*, %struct.ib_pma_portsamplesresult** %7, align 8
  %110 = getelementptr inbounds %struct.ib_pma_portsamplesresult, %struct.ib_pma_portsamplesresult* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %108, i32* %114, align 4
  br label %115

115:                                              ; preds = %97
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %14, align 4
  br label %89

118:                                              ; preds = %89
  %119 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %120 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load i64, i64* %12, align 8
  %123 = call i32 @spin_unlock_irqrestore(i32* %121, i64 %122)
  %124 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %125 = bitcast %struct.ib_pma_mad* %124 to %struct.ib_smp*
  %126 = call i32 @reply(%struct.ib_smp* %125)
  ret i32 %126
}

declare dso_local %struct.qib_ibdev* @to_idev(%struct.ib_device*) #1

declare dso_local %struct.qib_devdata* @dd_from_dev(%struct.qib_ibdev*) #1

declare dso_local %struct.qib_ibport* @to_iport(%struct.ib_device*, i64) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @cpu_to_be16(i64) #1

declare dso_local i32 @cache_hw_sample_counters(%struct.qib_pportdata*) #1

declare dso_local i32 @xmit_wait_get_value_delta(%struct.qib_pportdata*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @get_cache_hw_sample_counters(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @reply(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
