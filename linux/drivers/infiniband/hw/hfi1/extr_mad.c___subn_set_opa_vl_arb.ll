; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_set_opa_vl_arb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_set_opa_vl_arb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_smp = type { i32, i32 }
%struct.ib_device = type { i32 }
%struct.hfi1_pportdata = type { i32 }
%struct.ib_mad_hdr = type { i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@FM_TBL_VL_LOW_ARB = common dso_local global i32 0, align 4
@FM_TBL_VL_HIGH_ARB = common dso_local global i32 0, align 4
@IB_SMP_UNSUP_METH_ATTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"OPA SubnSet(VL Arb) AM Invalid : 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32)* @__subn_set_opa_vl_arb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__subn_set_opa_vl_arb(%struct.opa_smp* %0, i32 %1, i32* %2, %struct.ib_device* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.opa_smp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ib_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.hfi1_pportdata*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store %struct.opa_smp* %0, %struct.opa_smp** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store %struct.ib_device* %3, %struct.ib_device** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %21 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %22 = load i32, i32* %13, align 4
  %23 = call i32 @to_iport(%struct.ib_device* %21, i32 %22)
  %24 = call %struct.hfi1_pportdata* @ppd_from_ibp(i32 %23)
  store %struct.hfi1_pportdata* %24, %struct.hfi1_pportdata** %16, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @OPA_AM_NPORT(i32 %25)
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %10, align 4
  %28 = and i32 %27, 16711680
  %29 = ashr i32 %28, 16
  store i32 %29, i32* %18, align 4
  %30 = load i32*, i32** %11, align 8
  store i32* %30, i32** %19, align 8
  store i32 256, i32* %20, align 4
  %31 = load i32, i32* %17, align 4
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %38, label %33

33:                                               ; preds = %7
  %34 = load i32, i32* %20, align 4
  %35 = load i32, i32* %15, align 4
  %36 = call i64 @smp_length_check(i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33, %7
  %39 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %40 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %41 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %45 = bitcast %struct.opa_smp* %44 to %struct.ib_mad_hdr*
  %46 = call i32 @reply(%struct.ib_mad_hdr* %45)
  store i32 %46, i32* %8, align 4
  br label %85

47:                                               ; preds = %33
  %48 = load i32, i32* %18, align 4
  switch i32 %48, label %65 [
    i32 130, label %49
    i32 131, label %54
    i32 129, label %59
    i32 128, label %59
  ]

49:                                               ; preds = %47
  %50 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %16, align 8
  %51 = load i32, i32* @FM_TBL_VL_LOW_ARB, align 4
  %52 = load i32*, i32** %19, align 8
  %53 = call i32 @fm_set_table(%struct.hfi1_pportdata* %50, i32 %51, i32* %52)
  br label %76

54:                                               ; preds = %47
  %55 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %16, align 8
  %56 = load i32, i32* @FM_TBL_VL_HIGH_ARB, align 4
  %57 = load i32*, i32** %19, align 8
  %58 = call i32 @fm_set_table(%struct.hfi1_pportdata* %55, i32 %56, i32* %57)
  br label %76

59:                                               ; preds = %47, %47
  %60 = load i32, i32* @IB_SMP_UNSUP_METH_ATTR, align 4
  %61 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %62 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %76

65:                                               ; preds = %47
  %66 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %67 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @be32_to_cpu(i32 %68)
  %70 = call i32 @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %72 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %73 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %65, %59, %54, %49
  %77 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i32*, i32** %11, align 8
  %80 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %81 = load i32, i32* %13, align 4
  %82 = load i32*, i32** %14, align 8
  %83 = load i32, i32* %15, align 4
  %84 = call i32 @__subn_get_opa_vl_arb(%struct.opa_smp* %77, i32 %78, i32* %79, %struct.ib_device* %80, i32 %81, i32* %82, i32 %83)
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %76, %38
  %86 = load i32, i32* %8, align 4
  ret i32 %86
}

declare dso_local %struct.hfi1_pportdata* @ppd_from_ibp(i32) #1

declare dso_local i32 @to_iport(%struct.ib_device*, i32) #1

declare dso_local i32 @OPA_AM_NPORT(i32) #1

declare dso_local i64 @smp_length_check(i32, i32) #1

declare dso_local i32 @reply(%struct.ib_mad_hdr*) #1

declare dso_local i32 @fm_set_table(%struct.hfi1_pportdata*, i32, i32*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @__subn_get_opa_vl_arb(%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
