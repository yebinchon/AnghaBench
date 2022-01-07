; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_process_perf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_process_perf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_mad = type { i32 }
%struct.ib_pma_mad = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.ib_smp = type { i32 }

@IB_SMP_UNSUP_VERSION = common dso_local global i32 0, align 4
@IB_SMP_UNSUP_METH_ATTR = common dso_local global i32 0, align 4
@IB_MAD_RESULT_SUCCESS = common dso_local global i32 0, align 4
@IB_SMP_UNSUP_METHOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.ib_mad*, %struct.ib_mad*)* @process_perf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_perf(%struct.ib_device* %0, i32 %1, %struct.ib_mad* %2, %struct.ib_mad* %3) #0 {
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_mad*, align 8
  %8 = alloca %struct.ib_mad*, align 8
  %9 = alloca %struct.ib_pma_mad*, align 8
  %10 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_mad* %2, %struct.ib_mad** %7, align 8
  store %struct.ib_mad* %3, %struct.ib_mad** %8, align 8
  %11 = load %struct.ib_mad*, %struct.ib_mad** %8, align 8
  %12 = bitcast %struct.ib_mad* %11 to %struct.ib_pma_mad*
  store %struct.ib_pma_mad* %12, %struct.ib_pma_mad** %9, align 8
  %13 = load %struct.ib_mad*, %struct.ib_mad** %8, align 8
  %14 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %15 = bitcast %struct.ib_mad* %13 to i8*
  %16 = bitcast %struct.ib_mad* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 4, i1 false)
  %17 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %18 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %32

22:                                               ; preds = %4
  %23 = load i32, i32* @IB_SMP_UNSUP_VERSION, align 4
  %24 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %25 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %23
  store i32 %28, i32* %26, align 4
  %29 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %30 = bitcast %struct.ib_pma_mad* %29 to %struct.ib_smp*
  %31 = call i32 @reply(%struct.ib_smp* %30)
  store i32 %31, i32* %10, align 4
  br label %134

32:                                               ; preds = %4
  %33 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %34 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %123 [
    i32 138, label %37
    i32 136, label %86
    i32 135, label %121
    i32 137, label %121
  ]

37:                                               ; preds = %32
  %38 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %39 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %76 [
    i32 134, label %42
    i32 130, label %46
    i32 129, label %51
    i32 128, label %56
    i32 133, label %61
    i32 131, label %66
    i32 132, label %71
  ]

42:                                               ; preds = %37
  %43 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %44 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %45 = call i32 @pma_get_classportinfo(%struct.ib_pma_mad* %43, %struct.ib_device* %44)
  store i32 %45, i32* %10, align 4
  br label %134

46:                                               ; preds = %37
  %47 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %48 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @pma_get_portsamplescontrol(%struct.ib_pma_mad* %47, %struct.ib_device* %48, i32 %49)
  store i32 %50, i32* %10, align 4
  br label %134

51:                                               ; preds = %37
  %52 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %53 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @pma_get_portsamplesresult(%struct.ib_pma_mad* %52, %struct.ib_device* %53, i32 %54)
  store i32 %55, i32* %10, align 4
  br label %134

56:                                               ; preds = %37
  %57 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %58 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @pma_get_portsamplesresult_ext(%struct.ib_pma_mad* %57, %struct.ib_device* %58, i32 %59)
  store i32 %60, i32* %10, align 4
  br label %134

61:                                               ; preds = %37
  %62 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %63 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @pma_get_portcounters(%struct.ib_pma_mad* %62, %struct.ib_device* %63, i32 %64)
  store i32 %65, i32* %10, align 4
  br label %134

66:                                               ; preds = %37
  %67 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %68 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @pma_get_portcounters_ext(%struct.ib_pma_mad* %67, %struct.ib_device* %68, i32 %69)
  store i32 %70, i32* %10, align 4
  br label %134

71:                                               ; preds = %37
  %72 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %73 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @pma_get_portcounters_cong(%struct.ib_pma_mad* %72, %struct.ib_device* %73, i32 %74)
  store i32 %75, i32* %10, align 4
  br label %134

76:                                               ; preds = %37
  %77 = load i32, i32* @IB_SMP_UNSUP_METH_ATTR, align 4
  %78 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %79 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %77
  store i32 %82, i32* %80, align 4
  %83 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %84 = bitcast %struct.ib_pma_mad* %83 to %struct.ib_smp*
  %85 = call i32 @reply(%struct.ib_smp* %84)
  store i32 %85, i32* %10, align 4
  br label %134

86:                                               ; preds = %32
  %87 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %88 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  switch i32 %90, label %111 [
    i32 130, label %91
    i32 133, label %96
    i32 131, label %101
    i32 132, label %106
  ]

91:                                               ; preds = %86
  %92 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %93 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @pma_set_portsamplescontrol(%struct.ib_pma_mad* %92, %struct.ib_device* %93, i32 %94)
  store i32 %95, i32* %10, align 4
  br label %134

96:                                               ; preds = %86
  %97 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %98 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @pma_set_portcounters(%struct.ib_pma_mad* %97, %struct.ib_device* %98, i32 %99)
  store i32 %100, i32* %10, align 4
  br label %134

101:                                              ; preds = %86
  %102 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %103 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @pma_set_portcounters_ext(%struct.ib_pma_mad* %102, %struct.ib_device* %103, i32 %104)
  store i32 %105, i32* %10, align 4
  br label %134

106:                                              ; preds = %86
  %107 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %108 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @pma_set_portcounters_cong(%struct.ib_pma_mad* %107, %struct.ib_device* %108, i32 %109)
  store i32 %110, i32* %10, align 4
  br label %134

111:                                              ; preds = %86
  %112 = load i32, i32* @IB_SMP_UNSUP_METH_ATTR, align 4
  %113 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %114 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %112
  store i32 %117, i32* %115, align 4
  %118 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %119 = bitcast %struct.ib_pma_mad* %118 to %struct.ib_smp*
  %120 = call i32 @reply(%struct.ib_smp* %119)
  store i32 %120, i32* %10, align 4
  br label %134

121:                                              ; preds = %32, %32
  %122 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %122, i32* %10, align 4
  br label %134

123:                                              ; preds = %32
  %124 = load i32, i32* @IB_SMP_UNSUP_METHOD, align 4
  %125 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %126 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %124
  store i32 %129, i32* %127, align 4
  %130 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %9, align 8
  %131 = bitcast %struct.ib_pma_mad* %130 to %struct.ib_smp*
  %132 = call i32 @reply(%struct.ib_smp* %131)
  store i32 %132, i32* %10, align 4
  br label %133

133:                                              ; preds = %123
  br label %134

134:                                              ; preds = %133, %121, %111, %106, %101, %96, %91, %76, %71, %66, %61, %56, %51, %46, %42, %22
  %135 = load i32, i32* %10, align 4
  ret i32 %135
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @reply(%struct.ib_smp*) #2

declare dso_local i32 @pma_get_classportinfo(%struct.ib_pma_mad*, %struct.ib_device*) #2

declare dso_local i32 @pma_get_portsamplescontrol(%struct.ib_pma_mad*, %struct.ib_device*, i32) #2

declare dso_local i32 @pma_get_portsamplesresult(%struct.ib_pma_mad*, %struct.ib_device*, i32) #2

declare dso_local i32 @pma_get_portsamplesresult_ext(%struct.ib_pma_mad*, %struct.ib_device*, i32) #2

declare dso_local i32 @pma_get_portcounters(%struct.ib_pma_mad*, %struct.ib_device*, i32) #2

declare dso_local i32 @pma_get_portcounters_ext(%struct.ib_pma_mad*, %struct.ib_device*, i32) #2

declare dso_local i32 @pma_get_portcounters_cong(%struct.ib_pma_mad*, %struct.ib_device*, i32) #2

declare dso_local i32 @pma_set_portsamplescontrol(%struct.ib_pma_mad*, %struct.ib_device*, i32) #2

declare dso_local i32 @pma_set_portcounters(%struct.ib_pma_mad*, %struct.ib_device*, i32) #2

declare dso_local i32 @pma_set_portcounters_ext(%struct.ib_pma_mad*, %struct.ib_device*, i32) #2

declare dso_local i32 @pma_set_portcounters_cong(%struct.ib_pma_mad*, %struct.ib_device*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
