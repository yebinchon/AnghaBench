; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc.c_intel_guc_reset_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc.c_intel_guc_reset_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.intel_engine_cs = type { i64 }

@INTEL_GUC_ACTION_REQUEST_ENGINE_RESET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_guc_reset_engine(%struct.intel_guc* %0, %struct.intel_engine_cs* %1) #0 {
  %3 = alloca %struct.intel_guc*, align 8
  %4 = alloca %struct.intel_engine_cs*, align 8
  %5 = alloca [7 x i64], align 16
  store %struct.intel_guc* %0, %struct.intel_guc** %3, align 8
  store %struct.intel_engine_cs* %1, %struct.intel_engine_cs** %4, align 8
  %6 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %7 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @GEM_BUG_ON(i32 %11)
  %13 = load i64, i64* @INTEL_GUC_ACTION_REQUEST_ENGINE_RESET, align 8
  %14 = getelementptr inbounds [7 x i64], [7 x i64]* %5, i64 0, i64 0
  store i64 %13, i64* %14, align 16
  %15 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %16 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds [7 x i64], [7 x i64]* %5, i64 0, i64 1
  store i64 %17, i64* %18, align 8
  %19 = getelementptr inbounds [7 x i64], [7 x i64]* %5, i64 0, i64 2
  store i64 0, i64* %19, align 16
  %20 = getelementptr inbounds [7 x i64], [7 x i64]* %5, i64 0, i64 3
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds [7 x i64], [7 x i64]* %5, i64 0, i64 4
  store i64 0, i64* %21, align 16
  %22 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %23 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds [7 x i64], [7 x i64]* %5, i64 0, i64 5
  store i64 %26, i64* %27, align 8
  %28 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %29 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %30 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @intel_guc_ggtt_offset(%struct.intel_guc* %28, i32 %31)
  %33 = getelementptr inbounds [7 x i64], [7 x i64]* %5, i64 0, i64 6
  store i64 %32, i64* %33, align 16
  %34 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %35 = getelementptr inbounds [7 x i64], [7 x i64]* %5, i64 0, i64 0
  %36 = getelementptr inbounds [7 x i64], [7 x i64]* %5, i64 0, i64 0
  %37 = call i32 @ARRAY_SIZE(i64* %36)
  %38 = call i32 @intel_guc_send(%struct.intel_guc* %34, i64* %35, i32 %37)
  ret i32 %38
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i64 @intel_guc_ggtt_offset(%struct.intel_guc*, i32) #1

declare dso_local i32 @intel_guc_send(%struct.intel_guc*, i64*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
