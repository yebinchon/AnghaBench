; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_get_opa_led_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_get_opa_led_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_smp = type { i32 }
%struct.ib_device = type { i32 }
%struct.hfi1_devdata = type { %struct.hfi1_pportdata* }
%struct.hfi1_pportdata = type { i32 }
%struct.opa_led_info = type { i32 }
%struct.ib_mad_hdr = type { i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@OPA_LED_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32)* @__subn_get_opa_led_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__subn_get_opa_led_info(%struct.opa_smp* %0, i32 %1, i32* %2, %struct.ib_device* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.opa_smp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ib_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.hfi1_devdata*, align 8
  %17 = alloca %struct.hfi1_pportdata*, align 8
  %18 = alloca %struct.opa_led_info*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.opa_smp* %0, %struct.opa_smp** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store %struct.ib_device* %3, %struct.ib_device** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %21 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %22 = call %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device* %21)
  store %struct.hfi1_devdata* %22, %struct.hfi1_devdata** %16, align 8
  %23 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %16, align 8
  %24 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %23, i32 0, i32 0
  %25 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %24, align 8
  store %struct.hfi1_pportdata* %25, %struct.hfi1_pportdata** %17, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = bitcast i32* %26 to %struct.opa_led_info*
  store %struct.opa_led_info* %27, %struct.opa_led_info** %18, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @OPA_AM_NPORT(i32 %28)
  store i32 %29, i32* %19, align 4
  %30 = load i32, i32* %19, align 4
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %36, label %32

32:                                               ; preds = %7
  %33 = load i32, i32* %15, align 4
  %34 = call i64 @smp_length_check(i32 4, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %32, %7
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
  br label %72

45:                                               ; preds = %32
  %46 = call i32 (...) @smp_rmb()
  %47 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %17, align 8
  %48 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %47, i32 0, i32 0
  %49 = call i32 @atomic_read(i32* %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %20, align 4
  %54 = load i32, i32* %20, align 4
  %55 = load i32, i32* @OPA_LED_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = call i32 @cpu_to_be32(i32 %56)
  %58 = load %struct.opa_led_info*, %struct.opa_led_info** %18, align 8
  %59 = getelementptr inbounds %struct.opa_led_info, %struct.opa_led_info* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load i32*, i32** %14, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %45
  %63 = load i32*, i32** %14, align 8
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = add i64 %65, 4
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 4
  br label %68

68:                                               ; preds = %62, %45
  %69 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %70 = bitcast %struct.opa_smp* %69 to %struct.ib_mad_hdr*
  %71 = call i32 @reply(%struct.ib_mad_hdr* %70)
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %68, %36
  %73 = load i32, i32* %8, align 4
  ret i32 %73
}

declare dso_local %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device*) #1

declare dso_local i32 @OPA_AM_NPORT(i32) #1

declare dso_local i64 @smp_length_check(i32, i32) #1

declare dso_local i32 @reply(%struct.ib_mad_hdr*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
