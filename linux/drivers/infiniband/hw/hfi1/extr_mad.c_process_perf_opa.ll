; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_process_perf_opa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_process_perf_opa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.opa_mad = type { i32 }
%struct.opa_pma_mad = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }
%struct.ib_mad_hdr = type { i32 }

@OPA_SM_CLASS_VERSION = common dso_local global i64 0, align 8
@IB_SMP_UNSUP_VERSION = common dso_local global i32 0, align 4
@IB_SMP_UNSUP_METH_ATTR = common dso_local global i32 0, align 4
@IB_MAD_RESULT_SUCCESS = common dso_local global i32 0, align 4
@IB_SMP_UNSUP_METHOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.opa_mad*, %struct.opa_mad*, i32*)* @process_perf_opa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_perf_opa(%struct.ib_device* %0, i32 %1, %struct.opa_mad* %2, %struct.opa_mad* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.opa_mad*, align 8
  %10 = alloca %struct.opa_mad*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.opa_pma_mad*, align 8
  %13 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.opa_mad* %2, %struct.opa_mad** %9, align 8
  store %struct.opa_mad* %3, %struct.opa_mad** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.opa_mad*, %struct.opa_mad** %10, align 8
  %15 = bitcast %struct.opa_mad* %14 to %struct.opa_pma_mad*
  store %struct.opa_pma_mad* %15, %struct.opa_pma_mad** %12, align 8
  %16 = load %struct.opa_mad*, %struct.opa_mad** %10, align 8
  %17 = load %struct.opa_mad*, %struct.opa_mad** %9, align 8
  %18 = bitcast %struct.opa_mad* %16 to i8*
  %19 = bitcast %struct.opa_mad* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 4, i1 false)
  %20 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %12, align 8
  %21 = getelementptr inbounds %struct.opa_pma_mad, %struct.opa_pma_mad* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @OPA_SM_CLASS_VERSION, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %5
  %27 = load i32, i32* @IB_SMP_UNSUP_VERSION, align 4
  %28 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %12, align 8
  %29 = getelementptr inbounds %struct.opa_pma_mad, %struct.opa_pma_mad* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %27
  store i32 %32, i32* %30, align 4
  %33 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %12, align 8
  %34 = bitcast %struct.opa_pma_mad* %33 to %struct.ib_mad_hdr*
  %35 = call i32 @reply(%struct.ib_mad_hdr* %34)
  store i32 %35, i32* %6, align 4
  br label %129

36:                                               ; preds = %5
  %37 = load i32*, i32** %11, align 8
  store i32 24, i32* %37, align 4
  %38 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %12, align 8
  %39 = getelementptr inbounds %struct.opa_pma_mad, %struct.opa_pma_mad* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %117 [
    i32 137, label %42
    i32 135, label %87
    i32 134, label %115
    i32 136, label %115
  ]

42:                                               ; preds = %36
  %43 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %12, align 8
  %44 = getelementptr inbounds %struct.opa_pma_mad, %struct.opa_pma_mad* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %76 [
    i32 133, label %47
    i32 128, label %52
    i32 131, label %58
    i32 129, label %64
    i32 130, label %70
  ]

47:                                               ; preds = %42
  %48 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %12, align 8
  %49 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @pma_get_opa_classportinfo(%struct.opa_pma_mad* %48, %struct.ib_device* %49, i32* %50)
  store i32 %51, i32* %13, align 4
  br label %86

52:                                               ; preds = %42
  %53 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %12, align 8
  %54 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @pma_get_opa_portstatus(%struct.opa_pma_mad* %53, %struct.ib_device* %54, i32 %55, i32* %56)
  store i32 %57, i32* %13, align 4
  br label %86

58:                                               ; preds = %42
  %59 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %12, align 8
  %60 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 @pma_get_opa_datacounters(%struct.opa_pma_mad* %59, %struct.ib_device* %60, i32 %61, i32* %62)
  store i32 %63, i32* %13, align 4
  br label %86

64:                                               ; preds = %42
  %65 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %12, align 8
  %66 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 @pma_get_opa_porterrors(%struct.opa_pma_mad* %65, %struct.ib_device* %66, i32 %67, i32* %68)
  store i32 %69, i32* %13, align 4
  br label %86

70:                                               ; preds = %42
  %71 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %12, align 8
  %72 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i32*, i32** %11, align 8
  %75 = call i32 @pma_get_opa_errorinfo(%struct.opa_pma_mad* %71, %struct.ib_device* %72, i32 %73, i32* %74)
  store i32 %75, i32* %13, align 4
  br label %86

76:                                               ; preds = %42
  %77 = load i32, i32* @IB_SMP_UNSUP_METH_ATTR, align 4
  %78 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %12, align 8
  %79 = getelementptr inbounds %struct.opa_pma_mad, %struct.opa_pma_mad* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %77
  store i32 %82, i32* %80, align 4
  %83 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %12, align 8
  %84 = bitcast %struct.opa_pma_mad* %83 to %struct.ib_mad_hdr*
  %85 = call i32 @reply(%struct.ib_mad_hdr* %84)
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %76, %70, %64, %58, %52, %47
  br label %127

87:                                               ; preds = %36
  %88 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %12, align 8
  %89 = getelementptr inbounds %struct.opa_pma_mad, %struct.opa_pma_mad* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  switch i32 %91, label %104 [
    i32 132, label %92
    i32 130, label %98
  ]

92:                                               ; preds = %87
  %93 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %12, align 8
  %94 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load i32*, i32** %11, align 8
  %97 = call i32 @pma_set_opa_portstatus(%struct.opa_pma_mad* %93, %struct.ib_device* %94, i32 %95, i32* %96)
  store i32 %97, i32* %13, align 4
  br label %114

98:                                               ; preds = %87
  %99 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %12, align 8
  %100 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load i32*, i32** %11, align 8
  %103 = call i32 @pma_set_opa_errorinfo(%struct.opa_pma_mad* %99, %struct.ib_device* %100, i32 %101, i32* %102)
  store i32 %103, i32* %13, align 4
  br label %114

104:                                              ; preds = %87
  %105 = load i32, i32* @IB_SMP_UNSUP_METH_ATTR, align 4
  %106 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %12, align 8
  %107 = getelementptr inbounds %struct.opa_pma_mad, %struct.opa_pma_mad* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %105
  store i32 %110, i32* %108, align 4
  %111 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %12, align 8
  %112 = bitcast %struct.opa_pma_mad* %111 to %struct.ib_mad_hdr*
  %113 = call i32 @reply(%struct.ib_mad_hdr* %112)
  store i32 %113, i32* %13, align 4
  br label %114

114:                                              ; preds = %104, %98, %92
  br label %127

115:                                              ; preds = %36, %36
  %116 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %116, i32* %13, align 4
  br label %127

117:                                              ; preds = %36
  %118 = load i32, i32* @IB_SMP_UNSUP_METHOD, align 4
  %119 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %12, align 8
  %120 = getelementptr inbounds %struct.opa_pma_mad, %struct.opa_pma_mad* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %118
  store i32 %123, i32* %121, align 4
  %124 = load %struct.opa_pma_mad*, %struct.opa_pma_mad** %12, align 8
  %125 = bitcast %struct.opa_pma_mad* %124 to %struct.ib_mad_hdr*
  %126 = call i32 @reply(%struct.ib_mad_hdr* %125)
  store i32 %126, i32* %13, align 4
  br label %127

127:                                              ; preds = %117, %115, %114, %86
  %128 = load i32, i32* %13, align 4
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %127, %26
  %130 = load i32, i32* %6, align 4
  ret i32 %130
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @reply(%struct.ib_mad_hdr*) #2

declare dso_local i32 @pma_get_opa_classportinfo(%struct.opa_pma_mad*, %struct.ib_device*, i32*) #2

declare dso_local i32 @pma_get_opa_portstatus(%struct.opa_pma_mad*, %struct.ib_device*, i32, i32*) #2

declare dso_local i32 @pma_get_opa_datacounters(%struct.opa_pma_mad*, %struct.ib_device*, i32, i32*) #2

declare dso_local i32 @pma_get_opa_porterrors(%struct.opa_pma_mad*, %struct.ib_device*, i32, i32*) #2

declare dso_local i32 @pma_get_opa_errorinfo(%struct.opa_pma_mad*, %struct.ib_device*, i32, i32*) #2

declare dso_local i32 @pma_set_opa_portstatus(%struct.opa_pma_mad*, %struct.ib_device*, i32, i32*) #2

declare dso_local i32 @pma_set_opa_errorinfo(%struct.opa_pma_mad*, %struct.ib_device*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
