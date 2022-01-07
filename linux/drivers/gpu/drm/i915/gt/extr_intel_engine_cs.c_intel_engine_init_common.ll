; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_intel_engine_init_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_intel_engine_init_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32, %struct.intel_context*, {}* }
%struct.intel_context = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_engine_init_common(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca %struct.intel_context*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %3, align 8
  %6 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %7 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %6, i32 0, i32 2
  %8 = bitcast {}** %7 to i32 (%struct.intel_engine_cs*)**
  %9 = load i32 (%struct.intel_engine_cs*)*, i32 (%struct.intel_engine_cs*)** %8, align 8
  %10 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %11 = call i32 %9(%struct.intel_engine_cs* %10)
  %12 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %13 = call %struct.intel_context* @create_kernel_context(%struct.intel_engine_cs* %12)
  store %struct.intel_context* %13, %struct.intel_context** %4, align 8
  %14 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %15 = call i64 @IS_ERR(%struct.intel_context* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %19 = call i32 @PTR_ERR(%struct.intel_context* %18)
  store i32 %19, i32* %2, align 4
  br label %39

20:                                               ; preds = %1
  %21 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %22 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %23 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %22, i32 0, i32 1
  store %struct.intel_context* %21, %struct.intel_context** %23, align 8
  %24 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %25 = call i32 @measure_breadcrumb_dw(%struct.intel_engine_cs* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %33

29:                                               ; preds = %20
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %32 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  store i32 0, i32* %2, align 4
  br label %39

33:                                               ; preds = %28
  %34 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %35 = call i32 @intel_context_unpin(%struct.intel_context* %34)
  %36 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %37 = call i32 @intel_context_put(%struct.intel_context* %36)
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %33, %29, %17
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.intel_context* @create_kernel_context(%struct.intel_engine_cs*) #1

declare dso_local i64 @IS_ERR(%struct.intel_context*) #1

declare dso_local i32 @PTR_ERR(%struct.intel_context*) #1

declare dso_local i32 @measure_breadcrumb_dw(%struct.intel_engine_cs*) #1

declare dso_local i32 @intel_context_unpin(%struct.intel_context*) #1

declare dso_local i32 @intel_context_put(%struct.intel_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
