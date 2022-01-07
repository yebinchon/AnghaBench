; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_intel_ring_submission_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_intel_ring_submission_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_ring_submission_setup(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_engine_cs*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %3, align 8
  %4 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %5 = call i32 @setup_common(%struct.intel_engine_cs* %4)
  %6 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %7 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %21 [
    i32 130, label %9
    i32 129, label %12
    i32 131, label %15
    i32 128, label %18
  ]

9:                                                ; preds = %1
  %10 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %11 = call i32 @setup_rcs(%struct.intel_engine_cs* %10)
  br label %28

12:                                               ; preds = %1
  %13 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %14 = call i32 @setup_vcs(%struct.intel_engine_cs* %13)
  br label %28

15:                                               ; preds = %1
  %16 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %17 = call i32 @setup_bcs(%struct.intel_engine_cs* %16)
  br label %28

18:                                               ; preds = %1
  %19 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %20 = call i32 @setup_vecs(%struct.intel_engine_cs* %19)
  br label %28

21:                                               ; preds = %1
  %22 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %23 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @MISSING_CASE(i32 %24)
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %29

28:                                               ; preds = %18, %15, %12, %9
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %21
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @setup_common(%struct.intel_engine_cs*) #1

declare dso_local i32 @setup_rcs(%struct.intel_engine_cs*) #1

declare dso_local i32 @setup_vcs(%struct.intel_engine_cs*) #1

declare dso_local i32 @setup_bcs(%struct.intel_engine_cs*) #1

declare dso_local i32 @setup_vecs(%struct.intel_engine_cs*) #1

declare dso_local i32 @MISSING_CASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
