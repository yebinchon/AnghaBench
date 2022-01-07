; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_hfi1_process_opa_mad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_hfi1_process_opa_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_wc = type { i32 }
%struct.ib_grh = type { i32 }
%struct.opa_mad = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hfi1_ibport = type { i32 }

@LIM_MGMT_P_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"failed to find limited mgmt pkey, defaulting 0x%x\0A\00", align 1
@IB_MAD_RESULT_FAILURE = common dso_local global i32 0, align 4
@IB_MAD_RESULT_SUCCESS = common dso_local global i32 0, align 4
@IB_MAD_RESULT_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, i32, %struct.ib_wc*, %struct.ib_grh*, %struct.opa_mad*, %struct.opa_mad*, i64*, i64*)* @hfi1_process_opa_mad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfi1_process_opa_mad(%struct.ib_device* %0, i32 %1, i32 %2, %struct.ib_wc* %3, %struct.ib_grh* %4, %struct.opa_mad* %5, %struct.opa_mad* %6, i64* %7, i64* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.ib_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ib_wc*, align 8
  %15 = alloca %struct.ib_grh*, align 8
  %16 = alloca %struct.opa_mad*, align 8
  %17 = alloca %struct.opa_mad*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.hfi1_ibport*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store %struct.ib_wc* %3, %struct.ib_wc** %14, align 8
  store %struct.ib_grh* %4, %struct.ib_grh** %15, align 8
  store %struct.opa_mad* %5, %struct.opa_mad** %16, align 8
  store %struct.opa_mad* %6, %struct.opa_mad** %17, align 8
  store i64* %7, i64** %18, align 8
  store i64* %8, i64** %19, align 8
  store i32 0, i32* %22, align 4
  %25 = load %struct.ib_wc*, %struct.ib_wc** %14, align 8
  %26 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = sub i64 %28, 4
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %23, align 4
  %31 = load %struct.ib_device*, %struct.ib_device** %11, align 8
  %32 = load i32, i32* %13, align 4
  %33 = call %struct.hfi1_ibport* @to_iport(%struct.ib_device* %31, i32 %32)
  store %struct.hfi1_ibport* %33, %struct.hfi1_ibport** %24, align 8
  %34 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %24, align 8
  %35 = load i32, i32* @LIM_MGMT_P_KEY, align 4
  %36 = call i32 @hfi1_lookup_pkey_idx(%struct.hfi1_ibport* %34, i32 %35)
  store i32 %36, i32* %21, align 4
  %37 = load i32, i32* %21, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %9
  %40 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %24, align 8
  %41 = call i32 @hfi1_get_pkey(%struct.hfi1_ibport* %40, i32 1)
  %42 = call i32 @pr_warn(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %41)
  store i32 1, i32* %21, align 4
  br label %43

43:                                               ; preds = %39, %9
  %44 = load i32, i32* %21, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64*, i64** %19, align 8
  store i64 %45, i64* %46, align 8
  %47 = load %struct.opa_mad*, %struct.opa_mad** %16, align 8
  %48 = getelementptr inbounds %struct.opa_mad, %struct.opa_mad* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %90 [
    i32 129, label %51
    i32 128, label %51
    i32 130, label %75
  ]

51:                                               ; preds = %43, %43
  %52 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %24, align 8
  %53 = load %struct.opa_mad*, %struct.opa_mad** %16, align 8
  %54 = load %struct.ib_wc*, %struct.ib_wc** %14, align 8
  %55 = call i32 @is_local_mad(%struct.hfi1_ibport* %52, %struct.opa_mad* %53, %struct.ib_wc* %54)
  store i32 %55, i32* %22, align 4
  %56 = load i32, i32* %22, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %51
  %59 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %24, align 8
  %60 = load %struct.ib_wc*, %struct.ib_wc** %14, align 8
  %61 = call i32 @opa_local_smp_check(%struct.hfi1_ibport* %59, %struct.ib_wc* %60)
  store i32 %61, i32* %20, align 4
  %62 = load i32, i32* %20, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* @IB_MAD_RESULT_FAILURE, align 4
  store i32 %65, i32* %10, align 4
  br label %117

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %51
  %68 = load %struct.ib_device*, %struct.ib_device** %11, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.opa_mad*, %struct.opa_mad** %16, align 8
  %72 = load %struct.opa_mad*, %struct.opa_mad** %17, align 8
  %73 = load i32, i32* %22, align 4
  %74 = call i32 @process_subn_opa(%struct.ib_device* %68, i32 %69, i32 %70, %struct.opa_mad* %71, %struct.opa_mad* %72, i32* %23, i32 %73)
  store i32 %74, i32* %20, align 4
  br label %93

75:                                               ; preds = %43
  %76 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %24, align 8
  %77 = load %struct.opa_mad*, %struct.opa_mad** %16, align 8
  %78 = load %struct.ib_wc*, %struct.ib_wc** %14, align 8
  %79 = call i32 @hfi1_pkey_validation_pma(%struct.hfi1_ibport* %76, %struct.opa_mad* %77, %struct.ib_wc* %78)
  store i32 %79, i32* %20, align 4
  %80 = load i32, i32* %20, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32, i32* @IB_MAD_RESULT_FAILURE, align 4
  store i32 %83, i32* %10, align 4
  br label %117

84:                                               ; preds = %75
  %85 = load %struct.ib_device*, %struct.ib_device** %11, align 8
  %86 = load i32, i32* %13, align 4
  %87 = load %struct.opa_mad*, %struct.opa_mad** %16, align 8
  %88 = load %struct.opa_mad*, %struct.opa_mad** %17, align 8
  %89 = call i32 @process_perf_opa(%struct.ib_device* %85, i32 %86, %struct.opa_mad* %87, %struct.opa_mad* %88, i32* %23)
  store i32 %89, i32* %20, align 4
  br label %93

90:                                               ; preds = %43
  %91 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %91, i32* %20, align 4
  br label %92

92:                                               ; preds = %90
  br label %93

93:                                               ; preds = %92, %84, %67
  %94 = load i32, i32* %20, align 4
  %95 = load i32, i32* @IB_MAD_RESULT_REPLY, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load i32, i32* %23, align 4
  %100 = call i64 @round_up(i32 %99, i32 8)
  %101 = load i64*, i64** %18, align 8
  store i64 %100, i64* %101, align 8
  br label %115

102:                                              ; preds = %93
  %103 = load i32, i32* %20, align 4
  %104 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %102
  %108 = load %struct.ib_wc*, %struct.ib_wc** %14, align 8
  %109 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = sub i64 %111, 4
  %113 = load i64*, i64** %18, align 8
  store i64 %112, i64* %113, align 8
  br label %114

114:                                              ; preds = %107, %102
  br label %115

115:                                              ; preds = %114, %98
  %116 = load i32, i32* %20, align 4
  store i32 %116, i32* %10, align 4
  br label %117

117:                                              ; preds = %115, %82, %64
  %118 = load i32, i32* %10, align 4
  ret i32 %118
}

declare dso_local %struct.hfi1_ibport* @to_iport(%struct.ib_device*, i32) #1

declare dso_local i32 @hfi1_lookup_pkey_idx(%struct.hfi1_ibport*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @hfi1_get_pkey(%struct.hfi1_ibport*, i32) #1

declare dso_local i32 @is_local_mad(%struct.hfi1_ibport*, %struct.opa_mad*, %struct.ib_wc*) #1

declare dso_local i32 @opa_local_smp_check(%struct.hfi1_ibport*, %struct.ib_wc*) #1

declare dso_local i32 @process_subn_opa(%struct.ib_device*, i32, i32, %struct.opa_mad*, %struct.opa_mad*, i32*, i32) #1

declare dso_local i32 @hfi1_pkey_validation_pma(%struct.hfi1_ibport*, %struct.opa_mad*, %struct.ib_wc*) #1

declare dso_local i32 @process_perf_opa(%struct.ib_device*, i32, %struct.opa_mad*, %struct.opa_mad*, i32*) #1

declare dso_local i64 @round_up(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
