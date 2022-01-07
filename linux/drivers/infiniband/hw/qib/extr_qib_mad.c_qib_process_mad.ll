; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_qib_process_mad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_qib_process_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_wc = type { i32 }
%struct.ib_grh = type { i32 }
%struct.ib_mad_hdr = type { i32 }
%struct.qib_ibport = type { i32 }
%struct.qib_pportdata = type { i32 }
%struct.ib_mad = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IB_MAD_RESULT_FAILURE = common dso_local global i32 0, align 4
@qib_cc_table_size = common dso_local global i32 0, align 4
@IB_MAD_RESULT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_process_mad(%struct.ib_device* %0, i32 %1, i32 %2, %struct.ib_wc* %3, %struct.ib_grh* %4, %struct.ib_mad_hdr* %5, i64 %6, %struct.ib_mad_hdr* %7, i64* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.ib_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ib_wc*, align 8
  %16 = alloca %struct.ib_grh*, align 8
  %17 = alloca %struct.ib_mad_hdr*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.ib_mad_hdr*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.qib_ibport*, align 8
  %24 = alloca %struct.qib_pportdata*, align 8
  %25 = alloca %struct.ib_mad*, align 8
  %26 = alloca %struct.ib_mad*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store %struct.ib_wc* %3, %struct.ib_wc** %15, align 8
  store %struct.ib_grh* %4, %struct.ib_grh** %16, align 8
  store %struct.ib_mad_hdr* %5, %struct.ib_mad_hdr** %17, align 8
  store i64 %6, i64* %18, align 8
  store %struct.ib_mad_hdr* %7, %struct.ib_mad_hdr** %19, align 8
  store i64* %8, i64** %20, align 8
  store i32* %9, i32** %21, align 8
  %27 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %28 = load i32, i32* %14, align 4
  %29 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %27, i32 %28)
  store %struct.qib_ibport* %29, %struct.qib_ibport** %23, align 8
  %30 = load %struct.qib_ibport*, %struct.qib_ibport** %23, align 8
  %31 = call %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport* %30)
  store %struct.qib_pportdata* %31, %struct.qib_pportdata** %24, align 8
  %32 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %17, align 8
  %33 = bitcast %struct.ib_mad_hdr* %32 to %struct.ib_mad*
  store %struct.ib_mad* %33, %struct.ib_mad** %25, align 8
  %34 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %19, align 8
  %35 = bitcast %struct.ib_mad_hdr* %34 to %struct.ib_mad*
  store %struct.ib_mad* %35, %struct.ib_mad** %26, align 8
  %36 = load i64, i64* %18, align 8
  %37 = icmp ne i64 %36, 4
  br i1 %37, label %42, label %38

38:                                               ; preds = %10
  %39 = load i64*, i64** %20, align 8
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 4
  br label %42

42:                                               ; preds = %38, %10
  %43 = phi i1 [ true, %10 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  %45 = call i64 @WARN_ON_ONCE(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @IB_MAD_RESULT_FAILURE, align 4
  store i32 %48, i32* %11, align 4
  br label %89

49:                                               ; preds = %42
  %50 = load %struct.ib_mad*, %struct.ib_mad** %25, align 8
  %51 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %84 [
    i32 129, label %54
    i32 128, label %54
    i32 130, label %61
    i32 131, label %67
  ]

54:                                               ; preds = %49, %49
  %55 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load %struct.ib_mad*, %struct.ib_mad** %25, align 8
  %59 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %60 = call i32 @process_subn(%struct.ib_device* %55, i32 %56, i32 %57, %struct.ib_mad* %58, %struct.ib_mad* %59)
  store i32 %60, i32* %22, align 4
  br label %87

61:                                               ; preds = %49
  %62 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %63 = load i32, i32* %14, align 4
  %64 = load %struct.ib_mad*, %struct.ib_mad** %25, align 8
  %65 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %66 = call i32 @process_perf(%struct.ib_device* %62, i32 %63, %struct.ib_mad* %64, %struct.ib_mad* %65)
  store i32 %66, i32* %22, align 4
  br label %87

67:                                               ; preds = %49
  %68 = load %struct.qib_pportdata*, %struct.qib_pportdata** %24, align 8
  %69 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* @qib_cc_table_size, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %72, %67
  %76 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %76, i32* %22, align 4
  br label %87

77:                                               ; preds = %72
  %78 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load %struct.ib_mad*, %struct.ib_mad** %25, align 8
  %82 = load %struct.ib_mad*, %struct.ib_mad** %26, align 8
  %83 = call i32 @process_cc(%struct.ib_device* %78, i32 %79, i32 %80, %struct.ib_mad* %81, %struct.ib_mad* %82)
  store i32 %83, i32* %22, align 4
  br label %87

84:                                               ; preds = %49
  %85 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %85, i32* %22, align 4
  br label %86

86:                                               ; preds = %84
  br label %87

87:                                               ; preds = %86, %77, %75, %61, %54
  %88 = load i32, i32* %22, align 4
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %87, %47
  %90 = load i32, i32* %11, align 4
  ret i32 %90
}

declare dso_local %struct.qib_ibport* @to_iport(%struct.ib_device*, i32) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @process_subn(%struct.ib_device*, i32, i32, %struct.ib_mad*, %struct.ib_mad*) #1

declare dso_local i32 @process_perf(%struct.ib_device*, i32, %struct.ib_mad*, %struct.ib_mad*) #1

declare dso_local i32 @process_cc(%struct.ib_device*, i32, i32, %struct.ib_mad*, %struct.ib_mad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
