; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_pma_get_portsamplescontrol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_pma_get_portsamplescontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pma_mad = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.ib_device = type { i32 }
%struct.ib_pma_portsamplescontrol = type { i64, i32, i32*, i32, i8*, i8*, i32, i32, i32 }
%struct.qib_ibdev = type { i32 }
%struct.qib_devdata = type { i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)* }
%struct.qib_pportdata = type { i32 }
%struct.qib_ibport = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32*, i32, i32, i32 }
%struct.ib_smp = type { i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@QIB_IB_CFG_PMA_TICKS = common dso_local global i32 0, align 4
@QIBPORTCNTR_PSSTAT = common dso_local global i32 0, align 4
@COUNTER_MASK0_9 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pma_mad*, %struct.ib_device*, i64)* @pma_get_portsamplescontrol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pma_get_portsamplescontrol(%struct.ib_pma_mad* %0, %struct.ib_device* %1, i64 %2) #0 {
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
  store %struct.ib_pma_mad* %0, %struct.ib_pma_mad** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %15 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.ib_pma_portsamplescontrol*
  store %struct.ib_pma_portsamplescontrol* %17, %struct.ib_pma_portsamplescontrol** %7, align 8
  %18 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %19 = call %struct.qib_ibdev* @to_idev(%struct.ib_device* %18)
  store %struct.qib_ibdev* %19, %struct.qib_ibdev** %8, align 8
  %20 = load %struct.qib_ibdev*, %struct.qib_ibdev** %8, align 8
  %21 = call %struct.qib_devdata* @dd_from_dev(%struct.qib_ibdev* %20)
  store %struct.qib_devdata* %21, %struct.qib_devdata** %9, align 8
  %22 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %22, i64 %23)
  store %struct.qib_ibport* %24, %struct.qib_ibport** %10, align 8
  %25 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %26 = call %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport* %25)
  store %struct.qib_pportdata* %26, %struct.qib_pportdata** %11, align 8
  %27 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %28 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %13, align 8
  %30 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %31 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @memset(i64 %32, i32 0, i32 8)
  %34 = load i64, i64* %13, align 8
  %35 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %36 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %38 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %3
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %42, %3
  %47 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %48 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %49 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %47
  store i32 %52, i32* %50, align 8
  br label %156

53:                                               ; preds = %42
  %54 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %55 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %12, align 8
  %58 = call i32 @spin_lock_irqsave(i32* %56, i64 %57)
  %59 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %60 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %59, i32 0, i32 1
  %61 = load i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)** %60, align 8
  %62 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %63 = load i32, i32* @QIB_IB_CFG_PMA_TICKS, align 4
  %64 = call i32 %61(%struct.qib_pportdata* %62, i32 %63)
  %65 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %66 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %65, i32 0, i32 8
  store i32 %64, i32* %66, align 8
  %67 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %68 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %67, i32 0, i32 0
  %69 = load i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)** %68, align 8
  %70 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %71 = load i32, i32* @QIBPORTCNTR_PSSTAT, align 4
  %72 = call i32 %69(%struct.qib_pportdata* %70, i32 %71)
  %73 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %74 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %73, i32 0, i32 7
  store i32 %72, i32* %74, align 4
  %75 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %76 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %75, i32 0, i32 1
  store i32 4, i32* %76, align 8
  %77 = load i32, i32* @COUNTER_MASK0_9, align 4
  %78 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %79 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 8
  %80 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %81 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = call i8* @cpu_to_be32(i32 %83)
  %85 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %86 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %85, i32 0, i32 5
  store i8* %84, i8** %86, align 8
  %87 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %88 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @cpu_to_be32(i32 %90)
  %92 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %93 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %92, i32 0, i32 4
  store i8* %91, i8** %93, align 8
  %94 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %95 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @cpu_to_be16(i32 %97)
  %99 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %100 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 8
  %101 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %102 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %108 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  store i32 %106, i32* %110, align 4
  %111 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %112 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %118 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  store i32 %116, i32* %120, align 4
  %121 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %122 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %128 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 2
  store i32 %126, i32* %130, align 4
  %131 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %132 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 3
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %138 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 3
  store i32 %136, i32* %140, align 4
  %141 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %142 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 4
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.ib_pma_portsamplescontrol*, %struct.ib_pma_portsamplescontrol** %7, align 8
  %148 = getelementptr inbounds %struct.ib_pma_portsamplescontrol, %struct.ib_pma_portsamplescontrol* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 4
  store i32 %146, i32* %150, align 4
  %151 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %152 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i64, i64* %12, align 8
  %155 = call i32 @spin_unlock_irqrestore(i32* %153, i64 %154)
  br label %156

156:                                              ; preds = %53, %46
  %157 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %158 = bitcast %struct.ib_pma_mad* %157 to %struct.ib_smp*
  %159 = call i32 @reply(%struct.ib_smp* %158)
  ret i32 %159
}

declare dso_local %struct.qib_ibdev* @to_idev(%struct.ib_device*) #1

declare dso_local %struct.qib_devdata* @dd_from_dev(%struct.qib_ibdev*) #1

declare dso_local %struct.qib_ibport* @to_iport(%struct.ib_device*, i64) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @reply(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
