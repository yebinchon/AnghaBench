; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_pma_set_portsamplescontrol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_pma_set_portsamplescontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pma_mad = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.ib_device = type { i32 }
%struct.ib_pma_portsamplescontrol = type { i64, i32*, i32, i32, i32 }
%struct.qib_ibdev = type { i32 }
%struct.qib_devdata = type { i64 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i8*, i8*)* }
%struct.qib_pportdata = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.qib_ibport = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i8*, i8*, i32*, i32 }
%struct.ib_smp = type { i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@IB_PMA_CONG_HW_CONTROL_SAMPLE = common dso_local global i64 0, align 8
@QIBPORTCNTR_PSSTAT = common dso_local global i32 0, align 4
@IB_PMA_SAMPLE_STATUS_DONE = common dso_local global i64 0, align 8
@IB_PMA_SAMPLE_STATUS_RUNNING = common dso_local global i64 0, align 8
@IB_PMA_CONG_HW_CONTROL_TIMER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pma_mad*, %struct.ib_device*, i64)* @pma_set_portsamplescontrol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pma_set_portsamplescontrol(%struct.ib_pma_mad* %0, %struct.ib_device* %1, i64 %2) #0 {
  %4 = alloca %struct.ib_pma_mad*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ib_pma_portsamplescontrol*, align 8
  %8 = alloca %struct.qib_ibdev*, align 8
  %9 = alloca %struct.qib_devdata*, align 8
  %10 = alloca %struct.qib_ibport*, align 8
  %11 = alloca %struct.qib_pportdata*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.ib_pma_mad* %0, %struct.ib_pma_mad** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i64 %2, i64* %6, align 8
  %16 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %17 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ib_pma_portsamplescontrol*
  store %struct.ib_pma_portsamplescontrol* %19, %struct.ib_pma_portsamplescontrol** %7, align 8
  %20 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %21 = call %struct.qib_ibdev* @to_idev(%struct.ib_device* %20)
  store %struct.qib_ibdev* %21, %struct.qib_ibdev** %8, align 8
  %22 = load %struct.qib_ibdev*, %struct.qib_ibdev** %8, align 8
  %23 = call %struct.qib_devdata* @dd_from_dev(%struct.qib_ibdev* %22)
  store %struct.qib_devdata* %23, %struct.qib_devdata** %9, align 8
  %24 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %24, i64 %25)
  store %struct.qib_ibport* %26, %struct.qib_ibport** %10, align 8
  %27 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %28 = call %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport* %27)
  store %struct.qib_pportdata* %28, %struct.qib_pportdata** %11, align 8
  %29 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %30 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %3
  %35 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %36 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %34, %3
  %41 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %42 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %43 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %41
  store i32 %46, i32* %44, align 8
  %47 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %48 = bitcast %struct.ib_pma_mad* %47 to %struct.ib_smp*
  %49 = call i32 @reply(%struct.ib_smp* %48)
  store i32 %49, i32* %15, align 4
  br label %176

50:                                               ; preds = %34
  %51 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %52 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %12, align 8
  %55 = call i32 @spin_lock_irqsave(i32* %53, i64 %54)
  %56 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %57 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %14, align 8
  %60 = load i64, i64* @IB_PMA_CONG_HW_CONTROL_SAMPLE, align 8
  %61 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %62 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i64 %60, i64* %63, align 8
  %64 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %65 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %64, i32 0, i32 0
  %66 = load i64 (%struct.qib_pportdata*, i32)*, i64 (%struct.qib_pportdata*, i32)** %65, align 8
  %67 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %68 = load i32, i32* @QIBPORTCNTR_PSSTAT, align 4
  %69 = call i64 %66(%struct.qib_pportdata* %67, i32 %68)
  store i64 %69, i64* %13, align 8
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* @IB_PMA_SAMPLE_STATUS_DONE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %81, label %73

73:                                               ; preds = %50
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* @IB_PMA_SAMPLE_STATUS_RUNNING, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %166

77:                                               ; preds = %73
  %78 = load i64, i64* %14, align 8
  %79 = load i64, i64* @IB_PMA_CONG_HW_CONTROL_TIMER, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %166

81:                                               ; preds = %77, %50
  %82 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %83 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @be32_to_cpu(i32 %84)
  %86 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %87 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  store i8* %85, i8** %88, align 8
  %89 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %90 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @be32_to_cpu(i32 %91)
  %93 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %94 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  store i8* %92, i8** %95, align 8
  %96 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %97 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @be16_to_cpu(i32 %98)
  %100 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %101 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 4
  store i32 %99, i32* %102, align 8
  %103 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %104 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %109 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  store i32 %107, i32* %112, align 4
  %113 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %114 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %119 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  store i32 %117, i32* %122, align 4
  %123 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %124 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %129 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 2
  store i32 %127, i32* %132, align 4
  %133 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %134 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 3
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %139 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 3
  store i32 %137, i32* %142, align 4
  %143 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %144 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 4
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %149 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 3
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 4
  store i32 %147, i32* %152, align 4
  %153 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %154 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %153, i32 0, i32 1
  %155 = load i32 (%struct.qib_pportdata*, i8*, i8*)*, i32 (%struct.qib_pportdata*, i8*, i8*)** %154, align 8
  %156 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %157 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %158 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 2
  %160 = load i8*, i8** %159, align 8
  %161 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %162 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 %155(%struct.qib_pportdata* %156, i8* %160, i8* %164)
  br label %166

166:                                              ; preds = %81, %77, %73
  %167 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %168 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i64, i64* %12, align 8
  %171 = call i32 @spin_unlock_irqrestore(i32* %169, i64 %170)
  %172 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %173 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %174 = load i64, i64* %6, align 8
  %175 = call i32 @pma_get_portsamplescontrol(%struct.ib_pma_mad* %172, %struct.ib_device* %173, i64 %174)
  store i32 %175, i32* %15, align 4
  br label %176

176:                                              ; preds = %166, %40
  %177 = load i32, i32* %15, align 4
  ret i32 %177
}

declare dso_local %struct.qib_ibdev* @to_idev(%struct.ib_device*) #1

declare dso_local %struct.qib_devdata* @dd_from_dev(%struct.qib_ibdev*) #1

declare dso_local %struct.qib_ibport* @to_iport(%struct.ib_device*, i64) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i32 @reply(%struct.ib_smp*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pma_get_portsamplescontrol(%struct.ib_pma_mad*, %struct.ib_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
