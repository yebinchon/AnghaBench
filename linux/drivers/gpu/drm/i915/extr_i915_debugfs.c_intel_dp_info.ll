; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_intel_dp_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_intel_dp_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.intel_connector = type { %struct.TYPE_4__, i32, %struct.TYPE_3__, %struct.intel_encoder* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.intel_encoder = type { i32 }
%struct.intel_dp = type { i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"\09DPCD rev: %x\0A\00", align 1
@DP_DPCD_REV = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"\09audio support: %s\0A\00", align 1
@DRM_MODE_CONNECTOR_eDP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"\09HDCP version: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.intel_connector*)* @intel_dp_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_dp_info(%struct.seq_file* %0, %struct.intel_connector* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.intel_connector*, align 8
  %5 = alloca %struct.intel_encoder*, align 8
  %6 = alloca %struct.intel_dp*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.intel_connector* %1, %struct.intel_connector** %4, align 8
  %7 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %8 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %7, i32 0, i32 3
  %9 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  store %struct.intel_encoder* %9, %struct.intel_encoder** %5, align 8
  %10 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %11 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %10, i32 0, i32 0
  %12 = call %struct.intel_dp* @enc_to_intel_dp(i32* %11)
  store %struct.intel_dp* %12, %struct.intel_dp** %6, align 8
  %13 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %14 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %15 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @DP_DPCD_REV, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @seq_printf(%struct.seq_file* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %22 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %23 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @yesno(i32 %24)
  %26 = call i32 @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %28 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DRM_MODE_CONNECTOR_eDP, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %2
  %34 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %35 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %36 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %35, i32 0, i32 1
  %37 = call i32 @intel_panel_info(%struct.seq_file* %34, i32* %36)
  br label %38

38:                                               ; preds = %33, %2
  %39 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %40 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %41 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %44 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %47 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %46, i32 0, i32 0
  %48 = call i32 @drm_dp_downstream_debug(%struct.seq_file* %39, i32* %42, i32 %45, i32* %47)
  %49 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %50 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %38
  %55 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %56 = call i32 @seq_puts(%struct.seq_file* %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %57 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %58 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %59 = call i32 @intel_hdcp_info(%struct.seq_file* %57, %struct.intel_connector* %58)
  br label %60

60:                                               ; preds = %54, %38
  ret void
}

declare dso_local %struct.intel_dp* @enc_to_intel_dp(i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @yesno(i32) #1

declare dso_local i32 @intel_panel_info(%struct.seq_file*, i32*) #1

declare dso_local i32 @drm_dp_downstream_debug(%struct.seq_file*, i32*, i32, i32*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @intel_hdcp_info(%struct.seq_file*, %struct.intel_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
