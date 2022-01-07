; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_hdcp_sink_capability_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_hdcp_sink_capability_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.drm_connector* }
%struct.drm_connector = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.intel_connector = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@connector_status_connected = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s:%d HDCP version: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @i915_hdcp_sink_capability_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_hdcp_sink_capability_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca %struct.intel_connector*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  store %struct.drm_connector* %10, %struct.drm_connector** %6, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %12 = call %struct.intel_connector* @to_intel_connector(%struct.drm_connector* %11)
  store %struct.intel_connector* %12, %struct.intel_connector** %7, align 8
  %13 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %14 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @connector_status_connected, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %43

21:                                               ; preds = %2
  %22 = load %struct.intel_connector*, %struct.intel_connector** %7, align 8
  %23 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %43

30:                                               ; preds = %21
  %31 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %32 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %33 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %36 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @seq_printf(%struct.seq_file* %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %38)
  %40 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %41 = load %struct.intel_connector*, %struct.intel_connector** %7, align 8
  %42 = call i32 @intel_hdcp_info(%struct.seq_file* %40, %struct.intel_connector* %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %30, %27, %18
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.intel_connector* @to_intel_connector(%struct.drm_connector*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32) #1

declare dso_local i32 @intel_hdcp_info(%struct.seq_file*, %struct.intel_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
