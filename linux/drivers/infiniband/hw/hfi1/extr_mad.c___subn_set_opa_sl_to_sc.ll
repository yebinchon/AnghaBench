; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_set_opa_sl_to_sc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_set_opa_sl_to_sc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_smp = type { i32 }
%struct.ib_device = type { i32 }
%struct.hfi1_ibport = type { i64* }
%struct.ib_mad_hdr = type { i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opa_smp*, i64, i64*, %struct.ib_device*, i64, i64*, i64)* @__subn_set_opa_sl_to_sc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__subn_set_opa_sl_to_sc(%struct.opa_smp* %0, i64 %1, i64* %2, %struct.ib_device* %3, i64 %4, i64* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.opa_smp*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.ib_device*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.hfi1_ibport*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.opa_smp* %0, %struct.opa_smp** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64* %2, i64** %11, align 8
  store %struct.ib_device* %3, %struct.ib_device** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64* %5, i64** %14, align 8
  store i64 %6, i64* %15, align 8
  %21 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %22 = load i64, i64* %13, align 8
  %23 = call %struct.hfi1_ibport* @to_iport(%struct.ib_device* %21, i64 %22)
  store %struct.hfi1_ibport* %23, %struct.hfi1_ibport** %16, align 8
  %24 = load i64*, i64** %11, align 8
  store i64* %24, i64** %17, align 8
  %25 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %16, align 8
  %26 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = call i32 @ARRAY_SIZE(i64* %27)
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %18, align 8
  %30 = load i64, i64* %10, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %7
  %33 = load i64, i64* %18, align 8
  %34 = load i64, i64* %15, align 8
  %35 = call i64 @smp_length_check(i64 %33, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32, %7
  %38 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %39 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %40 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %44 = bitcast %struct.opa_smp* %43 to %struct.ib_mad_hdr*
  %45 = call i32 @reply(%struct.ib_mad_hdr* %44)
  store i32 %45, i32* %8, align 4
  br label %91

46:                                               ; preds = %32
  store i32 0, i32* %19, align 4
  br label %47

47:                                               ; preds = %79, %46
  %48 = load i32, i32* %19, align 4
  %49 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %16, align 8
  %50 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = call i32 @ARRAY_SIZE(i64* %51)
  %53 = icmp slt i32 %48, %52
  br i1 %53, label %54, label %82

54:                                               ; preds = %47
  %55 = load i64*, i64** %17, align 8
  %56 = getelementptr inbounds i64, i64* %55, i32 1
  store i64* %56, i64** %17, align 8
  %57 = load i64, i64* %55, align 8
  store i64 %57, i64* %20, align 8
  %58 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %16, align 8
  %59 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %19, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %20, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %54
  %68 = load i64, i64* %20, align 8
  %69 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %16, align 8
  %70 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = load i32, i32* %19, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  store i64 %68, i64* %74, align 8
  %75 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %16, align 8
  %76 = load i32, i32* %19, align 4
  %77 = call i32 @hfi1_error_port_qps(%struct.hfi1_ibport* %75, i32 %76)
  br label %78

78:                                               ; preds = %67, %54
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %19, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %19, align 4
  br label %47

82:                                               ; preds = %47
  %83 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load i64*, i64** %11, align 8
  %86 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %87 = load i64, i64* %13, align 8
  %88 = load i64*, i64** %14, align 8
  %89 = load i64, i64* %15, align 8
  %90 = call i32 @__subn_get_opa_sl_to_sc(%struct.opa_smp* %83, i64 %84, i64* %85, %struct.ib_device* %86, i64 %87, i64* %88, i64 %89)
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %82, %37
  %92 = load i32, i32* %8, align 4
  ret i32 %92
}

declare dso_local %struct.hfi1_ibport* @to_iport(%struct.ib_device*, i64) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i64 @smp_length_check(i64, i64) #1

declare dso_local i32 @reply(%struct.ib_mad_hdr*) #1

declare dso_local i32 @hfi1_error_port_qps(%struct.hfi1_ibport*, i32) #1

declare dso_local i32 @__subn_get_opa_sl_to_sc(%struct.opa_smp*, i64, i64*, %struct.ib_device*, i64, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
