; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_get_opa_sl_to_sc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_get_opa_sl_to_sc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_smp = type { i32 }
%struct.ib_device = type { i32 }
%struct.hfi1_ibport = type { i32* }
%struct.ib_mad_hdr = type { i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opa_smp*, i64, i32*, %struct.ib_device*, i32, i64*, i64)* @__subn_get_opa_sl_to_sc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__subn_get_opa_sl_to_sc(%struct.opa_smp* %0, i64 %1, i32* %2, %struct.ib_device* %3, i32 %4, i64* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.opa_smp*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ib_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.hfi1_ibport*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.opa_smp* %0, %struct.opa_smp** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32* %2, i32** %11, align 8
  store %struct.ib_device* %3, %struct.ib_device** %12, align 8
  store i32 %4, i32* %13, align 4
  store i64* %5, i64** %14, align 8
  store i64 %6, i64* %15, align 8
  %20 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %21 = load i32, i32* %13, align 4
  %22 = call %struct.hfi1_ibport* @to_iport(%struct.ib_device* %20, i32 %21)
  store %struct.hfi1_ibport* %22, %struct.hfi1_ibport** %16, align 8
  %23 = load i32*, i32** %11, align 8
  store i32* %23, i32** %17, align 8
  %24 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %16, align 8
  %25 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @ARRAY_SIZE(i32* %26)
  %28 = zext i32 %27 to i64
  store i64 %28, i64* %18, align 8
  %29 = load i64, i64* %10, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %7
  %32 = load i64, i64* %18, align 8
  %33 = load i64, i64* %15, align 8
  %34 = call i64 @smp_length_check(i64 %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31, %7
  %37 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %38 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %39 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %43 = bitcast %struct.opa_smp* %42 to %struct.ib_mad_hdr*
  %44 = call i32 @reply(%struct.ib_mad_hdr* %43)
  store i32 %44, i32* %8, align 4
  br label %78

45:                                               ; preds = %31
  store i32 0, i32* %19, align 4
  br label %46

46:                                               ; preds = %63, %45
  %47 = load i32, i32* %19, align 4
  %48 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %16, align 8
  %49 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @ARRAY_SIZE(i32* %50)
  %52 = icmp ult i32 %47, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %46
  %54 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %16, align 8
  %55 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %19, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %17, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %17, align 8
  store i32 %60, i32* %61, align 4
  br label %63

63:                                               ; preds = %53
  %64 = load i32, i32* %19, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %19, align 4
  br label %46

66:                                               ; preds = %46
  %67 = load i64*, i64** %14, align 8
  %68 = icmp ne i64* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i64, i64* %18, align 8
  %71 = load i64*, i64** %14, align 8
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %72, %70
  store i64 %73, i64* %71, align 8
  br label %74

74:                                               ; preds = %69, %66
  %75 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %76 = bitcast %struct.opa_smp* %75 to %struct.ib_mad_hdr*
  %77 = call i32 @reply(%struct.ib_mad_hdr* %76)
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %74, %36
  %79 = load i32, i32* %8, align 4
  ret i32 %79
}

declare dso_local %struct.hfi1_ibport* @to_iport(%struct.ib_device*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @smp_length_check(i64, i64) #1

declare dso_local i32 @reply(%struct.ib_mad_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
