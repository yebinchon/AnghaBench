; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_get_opa_bct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_get_opa_bct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_smp = type { i32 }
%struct.ib_device = type { i32 }
%struct.hfi1_devdata = type { %struct.hfi1_pportdata* }
%struct.hfi1_pportdata = type { i32 }
%struct.buffer_control = type { i32 }
%struct.ib_mad_hdr = type { i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@FM_TBL_BUFFER_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32)* @__subn_get_opa_bct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__subn_get_opa_bct(%struct.opa_smp* %0, i32 %1, i32* %2, %struct.ib_device* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.opa_smp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ib_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.hfi1_devdata*, align 8
  %18 = alloca %struct.hfi1_pportdata*, align 8
  %19 = alloca %struct.buffer_control*, align 8
  %20 = alloca i32, align 4
  store %struct.opa_smp* %0, %struct.opa_smp** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store %struct.ib_device* %3, %struct.ib_device** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @OPA_AM_NPORT(i32 %21)
  store i32 %22, i32* %16, align 4
  %23 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %24 = call %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device* %23)
  store %struct.hfi1_devdata* %24, %struct.hfi1_devdata** %17, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = bitcast i32* %25 to %struct.buffer_control*
  store %struct.buffer_control* %26, %struct.buffer_control** %19, align 8
  store i32 4, i32* %20, align 4
  %27 = load i32, i32* %16, align 4
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %34, label %29

29:                                               ; preds = %7
  %30 = load i32, i32* %20, align 4
  %31 = load i32, i32* %15, align 4
  %32 = call i64 @smp_length_check(i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29, %7
  %35 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %36 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %37 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %41 = bitcast %struct.opa_smp* %40 to %struct.ib_mad_hdr*
  %42 = call i32 @reply(%struct.ib_mad_hdr* %41)
  store i32 %42, i32* %8, align 4
  br label %69

43:                                               ; preds = %29
  %44 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %17, align 8
  %45 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %44, i32 0, i32 0
  %46 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %45, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %46, i64 %49
  store %struct.hfi1_pportdata* %50, %struct.hfi1_pportdata** %18, align 8
  %51 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %18, align 8
  %52 = load i32, i32* @FM_TBL_BUFFER_CONTROL, align 4
  %53 = load %struct.buffer_control*, %struct.buffer_control** %19, align 8
  %54 = call i32 @fm_get_table(%struct.hfi1_pportdata* %51, i32 %52, %struct.buffer_control* %53)
  %55 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %17, align 8
  %56 = load %struct.buffer_control*, %struct.buffer_control** %19, align 8
  %57 = call i32 @trace_bct_get(%struct.hfi1_devdata* %55, %struct.buffer_control* %56)
  %58 = load i32*, i32** %14, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %43
  %61 = load i32, i32* %20, align 4
  %62 = load i32*, i32** %14, align 8
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, %61
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %60, %43
  %66 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %67 = bitcast %struct.opa_smp* %66 to %struct.ib_mad_hdr*
  %68 = call i32 @reply(%struct.ib_mad_hdr* %67)
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %65, %34
  %70 = load i32, i32* %8, align 4
  ret i32 %70
}

declare dso_local i32 @OPA_AM_NPORT(i32) #1

declare dso_local %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device*) #1

declare dso_local i64 @smp_length_check(i32, i32) #1

declare dso_local i32 @reply(%struct.ib_mad_hdr*) #1

declare dso_local i32 @fm_get_table(%struct.hfi1_pportdata*, i32, %struct.buffer_control*) #1

declare dso_local i32 @trace_bct_get(%struct.hfi1_devdata*, %struct.buffer_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
