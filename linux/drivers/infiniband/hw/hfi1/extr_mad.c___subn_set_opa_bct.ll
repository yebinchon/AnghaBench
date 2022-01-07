; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_set_opa_bct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_set_opa_bct.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32)* @__subn_set_opa_bct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__subn_set_opa_bct(%struct.opa_smp* %0, i32 %1, i32* %2, %struct.ib_device* %3, i32 %4, i32* %5, i32 %6) #0 {
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
  store %struct.opa_smp* %0, %struct.opa_smp** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store %struct.ib_device* %3, %struct.ib_device** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @OPA_AM_NPORT(i32 %20)
  store i32 %21, i32* %16, align 4
  %22 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %23 = call %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device* %22)
  store %struct.hfi1_devdata* %23, %struct.hfi1_devdata** %17, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = bitcast i32* %24 to %struct.buffer_control*
  store %struct.buffer_control* %25, %struct.buffer_control** %19, align 8
  %26 = load i32, i32* %16, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %32, label %28

28:                                               ; preds = %7
  %29 = load i32, i32* %15, align 4
  %30 = call i64 @smp_length_check(i32 4, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %28, %7
  %33 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %34 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %35 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %39 = bitcast %struct.opa_smp* %38 to %struct.ib_mad_hdr*
  %40 = call i32 @reply(%struct.ib_mad_hdr* %39)
  store i32 %40, i32* %8, align 4
  br label %75

41:                                               ; preds = %28
  %42 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %17, align 8
  %43 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %42, i32 0, i32 0
  %44 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %43, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %44, i64 %47
  store %struct.hfi1_pportdata* %48, %struct.hfi1_pportdata** %18, align 8
  %49 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %17, align 8
  %50 = load %struct.buffer_control*, %struct.buffer_control** %19, align 8
  %51 = call i32 @trace_bct_set(%struct.hfi1_devdata* %49, %struct.buffer_control* %50)
  %52 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %18, align 8
  %53 = load i32, i32* @FM_TBL_BUFFER_CONTROL, align 4
  %54 = load %struct.buffer_control*, %struct.buffer_control** %19, align 8
  %55 = call i64 @fm_set_table(%struct.hfi1_pportdata* %52, i32 %53, %struct.buffer_control* %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %41
  %58 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %59 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %60 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %64 = bitcast %struct.opa_smp* %63 to %struct.ib_mad_hdr*
  %65 = call i32 @reply(%struct.ib_mad_hdr* %64)
  store i32 %65, i32* %8, align 4
  br label %75

66:                                               ; preds = %41
  %67 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i32*, i32** %11, align 8
  %70 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %71 = load i32, i32* %13, align 4
  %72 = load i32*, i32** %14, align 8
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @__subn_get_opa_bct(%struct.opa_smp* %67, i32 %68, i32* %69, %struct.ib_device* %70, i32 %71, i32* %72, i32 %73)
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %66, %57, %32
  %76 = load i32, i32* %8, align 4
  ret i32 %76
}

declare dso_local i32 @OPA_AM_NPORT(i32) #1

declare dso_local %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device*) #1

declare dso_local i64 @smp_length_check(i32, i32) #1

declare dso_local i32 @reply(%struct.ib_mad_hdr*) #1

declare dso_local i32 @trace_bct_set(%struct.hfi1_devdata*, %struct.buffer_control*) #1

declare dso_local i64 @fm_set_table(%struct.hfi1_pportdata*, i32, %struct.buffer_control*) #1

declare dso_local i32 @__subn_get_opa_bct(%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
