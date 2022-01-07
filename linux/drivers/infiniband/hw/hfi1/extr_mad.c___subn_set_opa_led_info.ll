; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_set_opa_led_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_set_opa_led_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_smp = type { i32 }
%struct.ib_device = type { i32 }
%struct.hfi1_devdata = type { i32 }
%struct.opa_led_info = type { i32 }
%struct.ib_mad_hdr = type { i32 }

@OPA_LED_MASK = common dso_local global i32 0, align 4
@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32)* @__subn_set_opa_led_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__subn_set_opa_led_info(%struct.opa_smp* %0, i32 %1, i32* %2, %struct.ib_device* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.opa_smp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ib_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.hfi1_devdata*, align 8
  %17 = alloca %struct.opa_led_info*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.opa_smp* %0, %struct.opa_smp** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store %struct.ib_device* %3, %struct.ib_device** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %20 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %21 = call %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device* %20)
  store %struct.hfi1_devdata* %21, %struct.hfi1_devdata** %16, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = bitcast i32* %22 to %struct.opa_led_info*
  store %struct.opa_led_info* %23, %struct.opa_led_info** %17, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @OPA_AM_NPORT(i32 %24)
  store i32 %25, i32* %18, align 4
  %26 = load %struct.opa_led_info*, %struct.opa_led_info** %17, align 8
  %27 = getelementptr inbounds %struct.opa_led_info, %struct.opa_led_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @be32_to_cpu(i32 %28)
  %30 = load i32, i32* @OPA_LED_MASK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %19, align 4
  %36 = load i32, i32* %18, align 4
  %37 = icmp ne i32 %36, 1
  br i1 %37, label %42, label %38

38:                                               ; preds = %7
  %39 = load i32, i32* %15, align 4
  %40 = call i64 @smp_length_check(i32 4, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %38, %7
  %43 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %44 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %45 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %49 = bitcast %struct.opa_smp* %48 to %struct.ib_mad_hdr*
  %50 = call i32 @reply(%struct.ib_mad_hdr* %49)
  store i32 %50, i32* %8, align 4
  br label %73

51:                                               ; preds = %38
  %52 = load i32, i32* %19, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %16, align 8
  %56 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @hfi1_start_led_override(i32 %57, i32 2000, i32 1500)
  br label %64

59:                                               ; preds = %51
  %60 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %16, align 8
  %61 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @shutdown_led_override(i32 %62)
  br label %64

64:                                               ; preds = %59, %54
  %65 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32*, i32** %11, align 8
  %68 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %69 = load i32, i32* %13, align 4
  %70 = load i32*, i32** %14, align 8
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @__subn_get_opa_led_info(%struct.opa_smp* %65, i32 %66, i32* %67, %struct.ib_device* %68, i32 %69, i32* %70, i32 %71)
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %64, %42
  %74 = load i32, i32* %8, align 4
  ret i32 %74
}

declare dso_local %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device*) #1

declare dso_local i32 @OPA_AM_NPORT(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @smp_length_check(i32, i32) #1

declare dso_local i32 @reply(%struct.ib_mad_hdr*) #1

declare dso_local i32 @hfi1_start_led_override(i32, i32, i32) #1

declare dso_local i32 @shutdown_led_override(i32) #1

declare dso_local i32 @__subn_get_opa_led_info(%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
