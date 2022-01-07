; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_pma_get_portsamplesresult_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_pma_get_portsamplesresult_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pma_mad = type { i64 }
%struct.ib_device = type { i32 }
%struct.ib_pma_portsamplesresult_ext = type { i32*, i32, i8*, i8* }
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pma_mad*, %struct.ib_device*, i64)* @pma_get_portsamplesresult_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pma_get_portsamplesresult_ext(%struct.ib_pma_mad* %0, %struct.ib_device* %1, i64 %2) #0 {
  %4 = alloca %struct.ib_pma_mad*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ib_pma_portsamplesresult_ext*, align 8
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
  %18 = inttoptr i64 %17 to %struct.ib_pma_portsamplesresult_ext*
  store %struct.ib_pma_portsamplesresult_ext* %18, %struct.ib_pma_portsamplesresult_ext** %7, align 8
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
  %42 = load %struct.ib_pma_portsamplesresult_ext*, %struct.ib_pma_portsamplesresult_ext** %7, align 8
  %43 = getelementptr inbounds %struct.ib_pma_portsamplesresult_ext, %struct.ib_pma_portsamplesresult_ext* %42, i32 0, i32 3
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
  %53 = load %struct.ib_pma_portsamplesresult_ext*, %struct.ib_pma_portsamplesresult_ext** %7, align 8
  %54 = getelementptr inbounds %struct.ib_pma_portsamplesresult_ext, %struct.ib_pma_portsamplesresult_ext* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  br label %91

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
  %64 = load %struct.ib_pma_portsamplesresult_ext*, %struct.ib_pma_portsamplesresult_ext** %7, align 8
  %65 = getelementptr inbounds %struct.ib_pma_portsamplesresult_ext, %struct.ib_pma_portsamplesresult_ext* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = call i32 @cpu_to_be32(i32 -2147483648)
  %67 = load %struct.ib_pma_portsamplesresult_ext*, %struct.ib_pma_portsamplesresult_ext** %7, align 8
  %68 = getelementptr inbounds %struct.ib_pma_portsamplesresult_ext, %struct.ib_pma_portsamplesresult_ext* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* @IB_PMA_SAMPLE_STATUS_DONE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %55
  %73 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %74 = call i32 @cache_hw_sample_counters(%struct.qib_pportdata* %73)
  %75 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %76 = call i32 @xmit_wait_get_value_delta(%struct.qib_pportdata* %75)
  %77 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %78 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 8
  %80 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %81 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %80, i32 0, i32 1
  %82 = load i32 (%struct.qib_pportdata*, i32, i32)*, i32 (%struct.qib_pportdata*, i32, i32)** %81, align 8
  %83 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %84 = load i32, i32* @QIB_CONG_TIMER_PSINTERVAL, align 4
  %85 = call i32 %82(%struct.qib_pportdata* %83, i32 %84, i32 0)
  %86 = load i64, i64* @IB_PMA_CONG_HW_CONTROL_TIMER, align 8
  %87 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %88 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i64 %86, i64* %89, align 8
  br label %90

90:                                               ; preds = %72, %55
  br label %91

91:                                               ; preds = %90, %50
  store i32 0, i32* %14, align 4
  br label %92

92:                                               ; preds = %118, %91
  %93 = load i32, i32* %14, align 4
  %94 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %95 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @ARRAY_SIZE(i32* %97)
  %99 = icmp slt i32 %93, %98
  br i1 %99, label %100, label %121

100:                                              ; preds = %92
  %101 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %102 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %103 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @get_cache_hw_sample_counters(%struct.qib_pportdata* %101, i32 %109)
  %111 = call i32 @cpu_to_be64(i32 %110)
  %112 = load %struct.ib_pma_portsamplesresult_ext*, %struct.ib_pma_portsamplesresult_ext** %7, align 8
  %113 = getelementptr inbounds %struct.ib_pma_portsamplesresult_ext, %struct.ib_pma_portsamplesresult_ext* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %14, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %111, i32* %117, align 4
  br label %118

118:                                              ; preds = %100
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %14, align 4
  br label %92

121:                                              ; preds = %92
  %122 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %123 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i64, i64* %12, align 8
  %126 = call i32 @spin_unlock_irqrestore(i32* %124, i64 %125)
  %127 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %128 = bitcast %struct.ib_pma_mad* %127 to %struct.ib_smp*
  %129 = call i32 @reply(%struct.ib_smp* %128)
  ret i32 %129
}

declare dso_local %struct.qib_ibdev* @to_idev(%struct.ib_device*) #1

declare dso_local %struct.qib_devdata* @dd_from_dev(%struct.qib_ibdev*) #1

declare dso_local %struct.qib_ibport* @to_iport(%struct.ib_device*, i64) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @cpu_to_be16(i64) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @cache_hw_sample_counters(%struct.qib_pportdata*) #1

declare dso_local i32 @xmit_wait_get_value_delta(%struct.qib_pportdata*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @get_cache_hw_sample_counters(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @reply(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
