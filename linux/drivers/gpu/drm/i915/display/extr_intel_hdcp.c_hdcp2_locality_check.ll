; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_hdcp2_locality_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_hdcp2_locality_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { %struct.intel_hdcp }
%struct.intel_hdcp = type { %struct.intel_hdcp_shim* }
%struct.intel_hdcp_shim = type { i32 (%struct.intel_digital_port*, %struct.hdcp2_lc_init*, i32)*, i32 (%struct.intel_digital_port.0*, i32, %struct.hdcp2_lc_send_lprime*, i32)* }
%struct.intel_digital_port = type opaque
%struct.hdcp2_lc_init = type opaque
%struct.intel_digital_port.0 = type opaque
%struct.hdcp2_lc_send_lprime = type opaque
%struct.intel_digital_port.1 = type { i32 }
%union.anon = type { %struct.hdcp2_lc_init.2 }
%struct.hdcp2_lc_init.2 = type { i32 }
%struct.hdcp2_lc_send_lprime.3 = type { i32 }

@HDCP2_LC_RETRY_CNT = common dso_local global i32 0, align 4
@HDCP_2_2_LC_SEND_LPRIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_connector*)* @hdcp2_locality_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdcp2_locality_check(%struct.intel_connector* %0) #0 {
  %2 = alloca %struct.intel_connector*, align 8
  %3 = alloca %struct.intel_digital_port.1*, align 8
  %4 = alloca %struct.intel_hdcp*, align 8
  %5 = alloca %union.anon, align 4
  %6 = alloca %struct.intel_hdcp_shim*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_connector* %0, %struct.intel_connector** %2, align 8
  %10 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %11 = call %struct.intel_digital_port.1* @conn_to_dig_port(%struct.intel_connector* %10)
  store %struct.intel_digital_port.1* %11, %struct.intel_digital_port.1** %3, align 8
  %12 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %13 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %12, i32 0, i32 0
  store %struct.intel_hdcp* %13, %struct.intel_hdcp** %4, align 8
  %14 = load %struct.intel_hdcp*, %struct.intel_hdcp** %4, align 8
  %15 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %14, i32 0, i32 0
  %16 = load %struct.intel_hdcp_shim*, %struct.intel_hdcp_shim** %15, align 8
  store %struct.intel_hdcp_shim* %16, %struct.intel_hdcp_shim** %6, align 8
  %17 = load i32, i32* @HDCP2_LC_RETRY_CNT, align 4
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %62, %1
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %65

22:                                               ; preds = %18
  %23 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %24 = bitcast %union.anon* %5 to %struct.hdcp2_lc_init.2*
  %25 = call i32 @hdcp2_prepare_lc_init(%struct.intel_connector* %23, %struct.hdcp2_lc_init.2* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %62

29:                                               ; preds = %22
  %30 = load %struct.intel_hdcp_shim*, %struct.intel_hdcp_shim** %6, align 8
  %31 = getelementptr inbounds %struct.intel_hdcp_shim, %struct.intel_hdcp_shim* %30, i32 0, i32 0
  %32 = load i32 (%struct.intel_digital_port*, %struct.hdcp2_lc_init*, i32)*, i32 (%struct.intel_digital_port*, %struct.hdcp2_lc_init*, i32)** %31, align 8
  %33 = load %struct.intel_digital_port.1*, %struct.intel_digital_port.1** %3, align 8
  %34 = bitcast %struct.intel_digital_port.1* %33 to %struct.intel_digital_port*
  %35 = bitcast %union.anon* %5 to %struct.hdcp2_lc_init.2*
  %36 = bitcast %struct.hdcp2_lc_init.2* %35 to %struct.hdcp2_lc_init*
  %37 = call i32 %32(%struct.intel_digital_port* %34, %struct.hdcp2_lc_init* %36, i32 4)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %62

41:                                               ; preds = %29
  %42 = load %struct.intel_hdcp_shim*, %struct.intel_hdcp_shim** %6, align 8
  %43 = getelementptr inbounds %struct.intel_hdcp_shim, %struct.intel_hdcp_shim* %42, i32 0, i32 1
  %44 = load i32 (%struct.intel_digital_port.0*, i32, %struct.hdcp2_lc_send_lprime*, i32)*, i32 (%struct.intel_digital_port.0*, i32, %struct.hdcp2_lc_send_lprime*, i32)** %43, align 8
  %45 = load %struct.intel_digital_port.1*, %struct.intel_digital_port.1** %3, align 8
  %46 = bitcast %struct.intel_digital_port.1* %45 to %struct.intel_digital_port.0*
  %47 = load i32, i32* @HDCP_2_2_LC_SEND_LPRIME, align 4
  %48 = bitcast %union.anon* %5 to %struct.hdcp2_lc_send_lprime.3*
  %49 = bitcast %struct.hdcp2_lc_send_lprime.3* %48 to %struct.hdcp2_lc_send_lprime*
  %50 = call i32 %44(%struct.intel_digital_port.0* %46, i32 %47, %struct.hdcp2_lc_send_lprime* %49, i32 4)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  br label %62

54:                                               ; preds = %41
  %55 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %56 = bitcast %union.anon* %5 to %struct.hdcp2_lc_send_lprime.3*
  %57 = call i32 @hdcp2_verify_lprime(%struct.intel_connector* %55, %struct.hdcp2_lc_send_lprime.3* %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  br label %65

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %53, %40, %28
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %18

65:                                               ; preds = %60, %18
  %66 = load i32, i32* %8, align 4
  ret i32 %66
}

declare dso_local %struct.intel_digital_port.1* @conn_to_dig_port(%struct.intel_connector*) #1

declare dso_local i32 @hdcp2_prepare_lc_init(%struct.intel_connector*, %struct.hdcp2_lc_init.2*) #1

declare dso_local i32 @hdcp2_verify_lprime(%struct.intel_connector*, %struct.hdcp2_lc_send_lprime.3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
