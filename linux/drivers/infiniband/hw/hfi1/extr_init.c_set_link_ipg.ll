; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_set_link_ipg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_set_link_ipg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { i32, %struct.TYPE_4__*, %struct.hfi1_devdata* }
%struct.TYPE_4__ = type { i64 }
%struct.hfi1_devdata = type { i32 }
%struct.cc_state = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@OPA_MAX_SLS = common dso_local global i32 0, align 4
@SEND_STATIC_RATE_CONTROL_CSR_SRC_RELOAD_SMASK = common dso_local global i64 0, align 8
@SEND_STATIC_RATE_CONTROL_CSR_SRC_RELOAD_SHIFT = common dso_local global i64 0, align 8
@SEND_STATIC_RATE_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_link_ipg(%struct.hfi1_pportdata* %0) #0 {
  %2 = alloca %struct.hfi1_pportdata*, align 8
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca %struct.cc_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %2, align 8
  %15 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %16 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %15, i32 0, i32 2
  %17 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %16, align 8
  store %struct.hfi1_devdata* %17, %struct.hfi1_devdata** %3, align 8
  store i64 0, i64* %8, align 8
  %18 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %19 = call %struct.cc_state* @get_cc_state(%struct.hfi1_pportdata* %18)
  store %struct.cc_state* %19, %struct.cc_state** %4, align 8
  %20 = load %struct.cc_state*, %struct.cc_state** %4, align 8
  %21 = icmp ne %struct.cc_state* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %92

23:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %43, %23
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @OPA_MAX_SLS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %24
  %29 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %30 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %14, align 8
  %37 = load i64, i64* %14, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i64, i64* %14, align 8
  store i64 %41, i64* %8, align 8
  br label %42

42:                                               ; preds = %40, %28
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %24

46:                                               ; preds = %24
  %47 = load %struct.cc_state*, %struct.cc_state** %4, align 8
  %48 = getelementptr inbounds %struct.cc_state, %struct.cc_state* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i64, i64* %7, align 8
  store i64 %55, i64* %8, align 8
  br label %56

56:                                               ; preds = %54, %46
  %57 = load %struct.cc_state*, %struct.cc_state** %4, align 8
  %58 = getelementptr inbounds %struct.cc_state, %struct.cc_state* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %6, align 8
  %65 = load i64, i64* %6, align 8
  %66 = and i64 %65, 49152
  %67 = ashr i64 %66, 14
  store i64 %67, i64* %9, align 8
  %68 = load i64, i64* %6, align 8
  %69 = and i64 %68, 16383
  store i64 %69, i64* %10, align 8
  %70 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %71 = call i64 @active_egress_rate(%struct.hfi1_pportdata* %70)
  store i64 %71, i64* %12, align 8
  %72 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %73 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i64, i64* %12, align 8
  %76 = call i64 @egress_cycles(i32 %74, i64 %75)
  store i64 %76, i64* %13, align 8
  %77 = load i64, i64* %13, align 8
  %78 = load i64, i64* %9, align 8
  %79 = ashr i64 %77, %78
  %80 = load i64, i64* %10, align 8
  %81 = mul nsw i64 %79, %80
  store i64 %81, i64* %11, align 8
  %82 = load i64, i64* @SEND_STATIC_RATE_CONTROL_CSR_SRC_RELOAD_SMASK, align 8
  %83 = load i64, i64* %11, align 8
  %84 = and i64 %83, %82
  store i64 %84, i64* %11, align 8
  %85 = load i64, i64* @SEND_STATIC_RATE_CONTROL_CSR_SRC_RELOAD_SHIFT, align 8
  %86 = load i64, i64* %11, align 8
  %87 = shl i64 %86, %85
  store i64 %87, i64* %11, align 8
  %88 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %89 = load i32, i32* @SEND_STATIC_RATE_CONTROL, align 4
  %90 = load i64, i64* %11, align 8
  %91 = call i32 @write_csr(%struct.hfi1_devdata* %88, i32 %89, i64 %90)
  br label %92

92:                                               ; preds = %56, %22
  ret void
}

declare dso_local %struct.cc_state* @get_cc_state(%struct.hfi1_pportdata*) #1

declare dso_local i64 @active_egress_rate(%struct.hfi1_pportdata*) #1

declare dso_local i64 @egress_cycles(i32, i64) #1

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
