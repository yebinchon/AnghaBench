; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_intel_hdcp_poll_ksv_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_intel_hdcp_poll_ksv_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { i32 }
%struct.intel_hdcp_shim = type { i32 (%struct.intel_digital_port.0*, i32*)* }
%struct.intel_digital_port.0 = type opaque

@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_digital_port*, %struct.intel_hdcp_shim*)* @intel_hdcp_poll_ksv_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_hdcp_poll_ksv_fifo(%struct.intel_digital_port* %0, %struct.intel_hdcp_shim* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_digital_port*, align 8
  %5 = alloca %struct.intel_hdcp_shim*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %4, align 8
  store %struct.intel_hdcp_shim* %1, %struct.intel_hdcp_shim** %5, align 8
  %9 = load %struct.intel_hdcp_shim*, %struct.intel_hdcp_shim** %5, align 8
  %10 = getelementptr inbounds %struct.intel_hdcp_shim, %struct.intel_hdcp_shim* %9, i32 0, i32 0
  %11 = load i32 (%struct.intel_digital_port.0*, i32*)*, i32 (%struct.intel_digital_port.0*, i32*)** %10, align 8
  %12 = load %struct.intel_digital_port*, %struct.intel_digital_port** %4, align 8
  %13 = bitcast %struct.intel_digital_port* %12 to %struct.intel_digital_port.0*
  %14 = call i32 %11(%struct.intel_digital_port.0* %13, i32* %8)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %17, %2
  %21 = phi i1 [ true, %2 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @__wait_for(i32 %14, i32 %22, i32 5000000, i32 1000, i32 100000)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %40

28:                                               ; preds = %20
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %40

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @ETIMEDOUT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %40

39:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %36, %31, %26
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @__wait_for(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
