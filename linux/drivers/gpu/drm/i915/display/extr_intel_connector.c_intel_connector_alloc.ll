; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_connector.c_intel_connector_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_connector.c_intel_connector_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.intel_connector* @intel_connector_alloc() #0 {
  %1 = alloca %struct.intel_connector*, align 8
  %2 = alloca %struct.intel_connector*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.intel_connector* @kzalloc(i32 4, i32 %3)
  store %struct.intel_connector* %4, %struct.intel_connector** %2, align 8
  %5 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %6 = icmp ne %struct.intel_connector* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.intel_connector* null, %struct.intel_connector** %1, align 8
  br label %17

8:                                                ; preds = %0
  %9 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %10 = call i64 @intel_connector_init(%struct.intel_connector* %9)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %14 = call i32 @kfree(%struct.intel_connector* %13)
  store %struct.intel_connector* null, %struct.intel_connector** %1, align 8
  br label %17

15:                                               ; preds = %8
  %16 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  store %struct.intel_connector* %16, %struct.intel_connector** %1, align 8
  br label %17

17:                                               ; preds = %15, %12, %7
  %18 = load %struct.intel_connector*, %struct.intel_connector** %1, align 8
  ret %struct.intel_connector* %18
}

declare dso_local %struct.intel_connector* @kzalloc(i32, i32) #1

declare dso_local i64 @intel_connector_init(%struct.intel_connector*) #1

declare dso_local i32 @kfree(%struct.intel_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
