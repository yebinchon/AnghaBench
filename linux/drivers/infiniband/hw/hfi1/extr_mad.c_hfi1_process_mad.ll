; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_hfi1_process_mad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_hfi1_process_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ib_wc = type { i32 }
%struct.ib_grh = type { i32 }
%struct.ib_mad_hdr = type { i32 }
%struct.opa_mad = type { i32 }
%struct.ib_mad = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"invalid in_mad_size\0A\00", align 1
@IB_MAD_RESULT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_process_mad(%struct.ib_device* %0, i32 %1, i32 %2, %struct.ib_wc* %3, %struct.ib_grh* %4, %struct.ib_mad_hdr* %5, i64 %6, %struct.ib_mad_hdr* %7, i64* %8, i32* %9) #0 {
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
  %22 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %17, align 8
  %23 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %62 [
    i32 128, label %25
    i32 129, label %51
  ]

25:                                               ; preds = %10
  %26 = load i64, i64* %18, align 8
  %27 = icmp ne i64 %26, 4
  %28 = zext i1 %27 to i32
  %29 = call i32 @unlikely(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %33 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @IB_MAD_RESULT_FAILURE, align 4
  store i32 %37, i32* %11, align 4
  br label %65

38:                                               ; preds = %25
  %39 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load %struct.ib_wc*, %struct.ib_wc** %15, align 8
  %43 = load %struct.ib_grh*, %struct.ib_grh** %16, align 8
  %44 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %17, align 8
  %45 = bitcast %struct.ib_mad_hdr* %44 to %struct.opa_mad*
  %46 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %19, align 8
  %47 = bitcast %struct.ib_mad_hdr* %46 to %struct.opa_mad*
  %48 = load i64*, i64** %20, align 8
  %49 = load i32*, i32** %21, align 8
  %50 = call i32 @hfi1_process_opa_mad(%struct.ib_device* %39, i32 %40, i32 %41, %struct.ib_wc* %42, %struct.ib_grh* %43, %struct.opa_mad* %45, %struct.opa_mad* %47, i64* %48, i32* %49)
  store i32 %50, i32* %11, align 4
  br label %65

51:                                               ; preds = %10
  %52 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load %struct.ib_wc*, %struct.ib_wc** %15, align 8
  %56 = load %struct.ib_grh*, %struct.ib_grh** %16, align 8
  %57 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %17, align 8
  %58 = bitcast %struct.ib_mad_hdr* %57 to %struct.ib_mad*
  %59 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %19, align 8
  %60 = bitcast %struct.ib_mad_hdr* %59 to %struct.ib_mad*
  %61 = call i32 @hfi1_process_ib_mad(%struct.ib_device* %52, i32 %53, i32 %54, %struct.ib_wc* %55, %struct.ib_grh* %56, %struct.ib_mad* %58, %struct.ib_mad* %60)
  store i32 %61, i32* %11, align 4
  br label %65

62:                                               ; preds = %10
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* @IB_MAD_RESULT_FAILURE, align 4
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %63, %51, %38, %31
  %66 = load i32, i32* %11, align 4
  ret i32 %66
}

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @hfi1_process_opa_mad(%struct.ib_device*, i32, i32, %struct.ib_wc*, %struct.ib_grh*, %struct.opa_mad*, %struct.opa_mad*, i64*, i32*) #1

declare dso_local i32 @hfi1_process_ib_mad(%struct.ib_device*, i32, i32, %struct.ib_wc*, %struct.ib_grh*, %struct.ib_mad*, %struct.ib_mad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
