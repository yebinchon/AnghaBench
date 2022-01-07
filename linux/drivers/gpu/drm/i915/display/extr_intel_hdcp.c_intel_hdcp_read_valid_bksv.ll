; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_intel_hdcp_read_valid_bksv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_intel_hdcp_read_valid_bksv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { i32 }
%struct.intel_hdcp_shim = type { i32 (%struct.intel_digital_port.0*, i32*)* }
%struct.intel_digital_port.0 = type opaque

@.str = private unnamed_addr constant [17 x i8] c"Bksv is invalid\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_digital_port*, %struct.intel_hdcp_shim*, i32*)* @intel_hdcp_read_valid_bksv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_hdcp_read_valid_bksv(%struct.intel_digital_port* %0, %struct.intel_hdcp_shim* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_digital_port*, align 8
  %6 = alloca %struct.intel_hdcp_shim*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %5, align 8
  store %struct.intel_hdcp_shim* %1, %struct.intel_hdcp_shim** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 2, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %33, %3
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %11
  %16 = load %struct.intel_hdcp_shim*, %struct.intel_hdcp_shim** %6, align 8
  %17 = getelementptr inbounds %struct.intel_hdcp_shim, %struct.intel_hdcp_shim* %16, i32 0, i32 0
  %18 = load i32 (%struct.intel_digital_port.0*, i32*)*, i32 (%struct.intel_digital_port.0*, i32*)** %17, align 8
  %19 = load %struct.intel_digital_port*, %struct.intel_digital_port** %5, align 8
  %20 = bitcast %struct.intel_digital_port* %19 to %struct.intel_digital_port.0*
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 %18(%struct.intel_digital_port.0* %20, i32* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %45

27:                                               ; preds = %15
  %28 = load i32*, i32** %7, align 8
  %29 = call i64 @intel_hdcp_is_ksv_valid(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %36

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %11

36:                                               ; preds = %31, %11
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %45

44:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %40, %25
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i64 @intel_hdcp_is_ksv_valid(i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
