; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/selftests/extr_mock_timeline.c_mock_timeline_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/selftests/extr_mock_timeline.c_mock_timeline_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_timeline = type { i32, i32, i32, i32, i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mock_timeline_init(%struct.intel_timeline* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_timeline*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_timeline* %0, %struct.intel_timeline** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.intel_timeline*, %struct.intel_timeline** %3, align 8
  %6 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %5, i32 0, i32 6
  store i32* null, i32** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.intel_timeline*, %struct.intel_timeline** %3, align 8
  %9 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %8, i32 0, i32 5
  store i32 %7, i32* %9, align 4
  %10 = load %struct.intel_timeline*, %struct.intel_timeline** %3, align 8
  %11 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %10, i32 0, i32 3
  %12 = call i32 @mutex_init(i32* %11)
  %13 = load %struct.intel_timeline*, %struct.intel_timeline** %3, align 8
  %14 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %13, i32 0, i32 4
  %15 = load %struct.intel_timeline*, %struct.intel_timeline** %3, align 8
  %16 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %15, i32 0, i32 3
  %17 = call i32 @INIT_ACTIVE_REQUEST(i32* %14, i32* %16)
  %18 = load %struct.intel_timeline*, %struct.intel_timeline** %3, align 8
  %19 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %18, i32 0, i32 2
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.intel_timeline*, %struct.intel_timeline** %3, align 8
  %22 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %21, i32 0, i32 1
  %23 = call i32 @i915_syncmap_init(i32* %22)
  %24 = load %struct.intel_timeline*, %struct.intel_timeline** %3, align 8
  %25 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %24, i32 0, i32 0
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_ACTIVE_REQUEST(i32*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @i915_syncmap_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
