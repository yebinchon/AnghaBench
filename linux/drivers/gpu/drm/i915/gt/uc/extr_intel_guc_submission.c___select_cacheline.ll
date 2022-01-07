; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_submission.c___select_cacheline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_submission.c___select_cacheline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"reserved cacheline 0x%lx, next 0x%x, linesize %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.intel_guc*)* @__select_cacheline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__select_cacheline(%struct.intel_guc* %0) #0 {
  %2 = alloca %struct.intel_guc*, align 8
  %3 = alloca i64, align 8
  store %struct.intel_guc* %0, %struct.intel_guc** %2, align 8
  %4 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %5 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @offset_in_page(i32 %6)
  store i64 %7, i64* %3, align 8
  %8 = call i64 (...) @cache_line_size()
  %9 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %10 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %12, %8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %10, align 4
  %15 = load i64, i64* %3, align 8
  %16 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %17 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 (...) @cache_line_size()
  %20 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %15, i32 %18, i64 %19)
  %21 = load i64, i64* %3, align 8
  ret i64 %21
}

declare dso_local i64 @offset_in_page(i32) #1

declare dso_local i64 @cache_line_size(...) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
