; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_intel_hdcp_capable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_intel_hdcp_capable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.intel_hdcp_shim* }
%struct.intel_hdcp_shim = type { i32 (%struct.intel_digital_port*, i32*)* }
%struct.intel_digital_port = type opaque
%struct.intel_digital_port.0 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_hdcp_capable(%struct.intel_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_connector*, align 8
  %4 = alloca %struct.intel_digital_port.0*, align 8
  %5 = alloca %struct.intel_hdcp_shim*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [5 x i32], align 16
  store %struct.intel_connector* %0, %struct.intel_connector** %3, align 8
  %8 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %9 = call %struct.intel_digital_port.0* @conn_to_dig_port(%struct.intel_connector* %8)
  store %struct.intel_digital_port.0* %9, %struct.intel_digital_port.0** %4, align 8
  %10 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %11 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.intel_hdcp_shim*, %struct.intel_hdcp_shim** %12, align 8
  store %struct.intel_hdcp_shim* %13, %struct.intel_hdcp_shim** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.intel_hdcp_shim*, %struct.intel_hdcp_shim** %5, align 8
  %15 = icmp ne %struct.intel_hdcp_shim* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %40

18:                                               ; preds = %1
  %19 = load %struct.intel_hdcp_shim*, %struct.intel_hdcp_shim** %5, align 8
  %20 = getelementptr inbounds %struct.intel_hdcp_shim, %struct.intel_hdcp_shim* %19, i32 0, i32 0
  %21 = load i32 (%struct.intel_digital_port*, i32*)*, i32 (%struct.intel_digital_port*, i32*)** %20, align 8
  %22 = icmp ne i32 (%struct.intel_digital_port*, i32*)* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.intel_hdcp_shim*, %struct.intel_hdcp_shim** %5, align 8
  %25 = getelementptr inbounds %struct.intel_hdcp_shim, %struct.intel_hdcp_shim* %24, i32 0, i32 0
  %26 = load i32 (%struct.intel_digital_port*, i32*)*, i32 (%struct.intel_digital_port*, i32*)** %25, align 8
  %27 = load %struct.intel_digital_port.0*, %struct.intel_digital_port.0** %4, align 8
  %28 = bitcast %struct.intel_digital_port.0* %27 to %struct.intel_digital_port*
  %29 = call i32 %26(%struct.intel_digital_port* %28, i32* %6)
  br label %38

30:                                               ; preds = %18
  %31 = load %struct.intel_digital_port.0*, %struct.intel_digital_port.0** %4, align 8
  %32 = load %struct.intel_hdcp_shim*, %struct.intel_hdcp_shim** %5, align 8
  %33 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %34 = call i32 @intel_hdcp_read_valid_bksv(%struct.intel_digital_port.0* %31, %struct.intel_hdcp_shim* %32, i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  store i32 1, i32* %6, align 4
  br label %37

37:                                               ; preds = %36, %30
  br label %38

38:                                               ; preds = %37, %23
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %16
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.intel_digital_port.0* @conn_to_dig_port(%struct.intel_connector*) #1

declare dso_local i32 @intel_hdcp_read_valid_bksv(%struct.intel_digital_port.0*, %struct.intel_hdcp_shim*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
