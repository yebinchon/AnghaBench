; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_timeline.c___mock_hwsp_record.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_timeline.c___mock_hwsp_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mock_hwsp_freelist = type { i32, i32* }
%struct.intel_timeline = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mock_hwsp_freelist*, i32, %struct.intel_timeline*)* @__mock_hwsp_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mock_hwsp_record(%struct.mock_hwsp_freelist* %0, i32 %1, %struct.intel_timeline* %2) #0 {
  %4 = alloca %struct.mock_hwsp_freelist*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_timeline*, align 8
  store %struct.mock_hwsp_freelist* %0, %struct.mock_hwsp_freelist** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.intel_timeline* %2, %struct.intel_timeline** %6, align 8
  %7 = load %struct.mock_hwsp_freelist*, %struct.mock_hwsp_freelist** %4, align 8
  %8 = getelementptr inbounds %struct.mock_hwsp_freelist, %struct.mock_hwsp_freelist* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load %struct.intel_timeline*, %struct.intel_timeline** %6, align 8
  %14 = call %struct.intel_timeline* @xchg(i32* %12, %struct.intel_timeline* %13)
  store %struct.intel_timeline* %14, %struct.intel_timeline** %6, align 8
  %15 = load %struct.intel_timeline*, %struct.intel_timeline** %6, align 8
  %16 = icmp ne %struct.intel_timeline* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load %struct.mock_hwsp_freelist*, %struct.mock_hwsp_freelist** %4, align 8
  %19 = getelementptr inbounds %struct.mock_hwsp_freelist, %struct.mock_hwsp_freelist* %18, i32 0, i32 0
  %20 = load %struct.intel_timeline*, %struct.intel_timeline** %6, align 8
  %21 = call i32 @hwsp_cacheline(%struct.intel_timeline* %20)
  %22 = call i32 @radix_tree_delete(i32* %19, i32 %21)
  %23 = load %struct.intel_timeline*, %struct.intel_timeline** %6, align 8
  %24 = call i32 @intel_timeline_put(%struct.intel_timeline* %23)
  br label %25

25:                                               ; preds = %17, %3
  ret void
}

declare dso_local %struct.intel_timeline* @xchg(i32*, %struct.intel_timeline*) #1

declare dso_local i32 @radix_tree_delete(i32*, i32) #1

declare dso_local i32 @hwsp_cacheline(%struct.intel_timeline*) #1

declare dso_local i32 @intel_timeline_put(%struct.intel_timeline*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
