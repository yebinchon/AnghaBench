; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_hdcp2_session_key_exchange.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_hdcp2_session_key_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { %struct.intel_hdcp }
%struct.intel_hdcp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.intel_digital_port*, %struct.hdcp2_ske_send_eks*, i32)* }
%struct.intel_digital_port = type { i32 }
%struct.hdcp2_ske_send_eks = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_connector*)* @hdcp2_session_key_exchange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdcp2_session_key_exchange(%struct.intel_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_connector*, align 8
  %4 = alloca %struct.intel_digital_port*, align 8
  %5 = alloca %struct.intel_hdcp*, align 8
  %6 = alloca %struct.hdcp2_ske_send_eks, align 4
  %7 = alloca i32, align 4
  store %struct.intel_connector* %0, %struct.intel_connector** %3, align 8
  %8 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %9 = call %struct.intel_digital_port* @conn_to_dig_port(%struct.intel_connector* %8)
  store %struct.intel_digital_port* %9, %struct.intel_digital_port** %4, align 8
  %10 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %11 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %10, i32 0, i32 0
  store %struct.intel_hdcp* %11, %struct.intel_hdcp** %5, align 8
  %12 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %13 = call i32 @hdcp2_prepare_skey(%struct.intel_connector* %12, %struct.hdcp2_ske_send_eks* %6)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %2, align 4
  br label %31

18:                                               ; preds = %1
  %19 = load %struct.intel_hdcp*, %struct.intel_hdcp** %5, align 8
  %20 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.intel_digital_port*, %struct.hdcp2_ske_send_eks*, i32)*, i32 (%struct.intel_digital_port*, %struct.hdcp2_ske_send_eks*, i32)** %22, align 8
  %24 = load %struct.intel_digital_port*, %struct.intel_digital_port** %4, align 8
  %25 = call i32 %23(%struct.intel_digital_port* %24, %struct.hdcp2_ske_send_eks* %6, i32 4)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %2, align 4
  br label %31

30:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %28, %16
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.intel_digital_port* @conn_to_dig_port(%struct.intel_connector*) #1

declare dso_local i32 @hdcp2_prepare_skey(%struct.intel_connector*, %struct.hdcp2_ske_send_eks*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
