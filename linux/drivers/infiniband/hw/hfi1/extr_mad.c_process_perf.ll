; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_process_perf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_process_perf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_mad = type { i32 }
%struct.ib_pma_mad = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.ib_class_port_info = type { i32 }
%struct.ib_mad_hdr = type { i32 }

@IB_MAD_RESULT_FAILURE = common dso_local global i32 0, align 4
@IB_SMP_UNSUP_VERSION = common dso_local global i32 0, align 4
@IB_PMA_CLASS_CAP_EXT_WIDTH = common dso_local global i32 0, align 4
@IB_SMP_UNSUP_METH_ATTR = common dso_local global i32 0, align 4
@IB_MAD_RESULT_SUCCESS = common dso_local global i32 0, align 4
@IB_SMP_UNSUP_METHOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.ib_mad*, %struct.ib_mad*)* @process_perf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_perf(%struct.ib_device* %0, i32 %1, %struct.ib_mad* %2, %struct.ib_mad* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_mad*, align 8
  %9 = alloca %struct.ib_mad*, align 8
  %10 = alloca %struct.ib_pma_mad*, align 8
  %11 = alloca %struct.ib_class_port_info*, align 8
  %12 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ib_mad* %2, %struct.ib_mad** %8, align 8
  store %struct.ib_mad* %3, %struct.ib_mad** %9, align 8
  %13 = load %struct.ib_mad*, %struct.ib_mad** %9, align 8
  %14 = bitcast %struct.ib_mad* %13 to %struct.ib_pma_mad*
  store %struct.ib_pma_mad* %14, %struct.ib_pma_mad** %10, align 8
  %15 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %10, align 8
  %16 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %15, i32 0, i32 1
  %17 = bitcast i32* %16 to %struct.ib_class_port_info*
  store %struct.ib_class_port_info* %17, %struct.ib_class_port_info** %11, align 8
  %18 = load i32, i32* @IB_MAD_RESULT_FAILURE, align 4
  store i32 %18, i32* %12, align 4
  %19 = load %struct.ib_mad*, %struct.ib_mad** %9, align 8
  %20 = load %struct.ib_mad*, %struct.ib_mad** %8, align 8
  %21 = bitcast %struct.ib_mad* %19 to i8*
  %22 = bitcast %struct.ib_mad* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  %23 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %10, align 8
  %24 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %39

28:                                               ; preds = %4
  %29 = load i32, i32* @IB_SMP_UNSUP_VERSION, align 4
  %30 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %10, align 8
  %31 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %29
  store i32 %34, i32* %32, align 4
  %35 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %10, align 8
  %36 = bitcast %struct.ib_pma_mad* %35 to %struct.ib_mad_hdr*
  %37 = call i32 @reply(%struct.ib_mad_hdr* %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %5, align 4
  br label %108

39:                                               ; preds = %4
  %40 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %10, align 8
  %41 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %96 [
    i32 134, label %44
    i32 132, label %77
    i32 131, label %94
    i32 133, label %94
  ]

44:                                               ; preds = %39
  %45 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %10, align 8
  %46 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %66 [
    i32 129, label %49
    i32 128, label %54
    i32 130, label %59
  ]

49:                                               ; preds = %44
  %50 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %10, align 8
  %51 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @pma_get_ib_portcounters(%struct.ib_pma_mad* %50, %struct.ib_device* %51, i32 %52)
  store i32 %53, i32* %12, align 4
  br label %76

54:                                               ; preds = %44
  %55 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %10, align 8
  %56 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @pma_get_ib_portcounters_ext(%struct.ib_pma_mad* %55, %struct.ib_device* %56, i32 %57)
  store i32 %58, i32* %12, align 4
  br label %76

59:                                               ; preds = %44
  %60 = load i32, i32* @IB_PMA_CLASS_CAP_EXT_WIDTH, align 4
  %61 = load %struct.ib_class_port_info*, %struct.ib_class_port_info** %11, align 8
  %62 = getelementptr inbounds %struct.ib_class_port_info, %struct.ib_class_port_info* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %10, align 8
  %64 = bitcast %struct.ib_pma_mad* %63 to %struct.ib_mad_hdr*
  %65 = call i32 @reply(%struct.ib_mad_hdr* %64)
  store i32 %65, i32* %12, align 4
  br label %76

66:                                               ; preds = %44
  %67 = load i32, i32* @IB_SMP_UNSUP_METH_ATTR, align 4
  %68 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %10, align 8
  %69 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %67
  store i32 %72, i32* %70, align 4
  %73 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %10, align 8
  %74 = bitcast %struct.ib_pma_mad* %73 to %struct.ib_mad_hdr*
  %75 = call i32 @reply(%struct.ib_mad_hdr* %74)
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %66, %59, %54, %49
  br label %106

77:                                               ; preds = %39
  %78 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %10, align 8
  %79 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %77
  %84 = load i32, i32* @IB_SMP_UNSUP_METH_ATTR, align 4
  %85 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %10, align 8
  %86 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %84
  store i32 %89, i32* %87, align 4
  %90 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %10, align 8
  %91 = bitcast %struct.ib_pma_mad* %90 to %struct.ib_mad_hdr*
  %92 = call i32 @reply(%struct.ib_mad_hdr* %91)
  store i32 %92, i32* %12, align 4
  br label %93

93:                                               ; preds = %83, %77
  br label %106

94:                                               ; preds = %39, %39
  %95 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %95, i32* %12, align 4
  br label %106

96:                                               ; preds = %39
  %97 = load i32, i32* @IB_SMP_UNSUP_METHOD, align 4
  %98 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %10, align 8
  %99 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %97
  store i32 %102, i32* %100, align 4
  %103 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %10, align 8
  %104 = bitcast %struct.ib_pma_mad* %103 to %struct.ib_mad_hdr*
  %105 = call i32 @reply(%struct.ib_mad_hdr* %104)
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %96, %94, %93, %76
  %107 = load i32, i32* %12, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %106, %28
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @reply(%struct.ib_mad_hdr*) #2

declare dso_local i32 @pma_get_ib_portcounters(%struct.ib_pma_mad*, %struct.ib_device*, i32) #2

declare dso_local i32 @pma_get_ib_portcounters_ext(%struct.ib_pma_mad*, %struct.ib_device*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
