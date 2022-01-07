; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_mock_engine.c_mock_engine_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_mock_engine.c_mock_engine_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { %struct.intel_context*, i32 }
%struct.intel_context = type { i32 }

@ENGINE_MOCK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mock_engine_init(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca %struct.intel_context*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %3, align 8
  %5 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %6 = load i32, i32* @ENGINE_MOCK, align 4
  %7 = call i32 @intel_engine_init_active(%struct.intel_engine_cs* %5, i32 %6)
  %8 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %9 = call i32 @intel_engine_init_breadcrumbs(%struct.intel_engine_cs* %8)
  %10 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %11 = call i32 @intel_engine_init_execlists(%struct.intel_engine_cs* %10)
  %12 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %13 = call i32 @intel_engine_init__pm(%struct.intel_engine_cs* %12)
  %14 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %15 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %14, i32 0, i32 1
  %16 = call i32 @intel_engine_pool_init(i32* %15)
  %17 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %18 = call %struct.intel_context* @create_kernel_context(%struct.intel_engine_cs* %17)
  store %struct.intel_context* %18, %struct.intel_context** %4, align 8
  %19 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %20 = call i64 @IS_ERR(%struct.intel_context* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %27

23:                                               ; preds = %1
  %24 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %25 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %26 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %25, i32 0, i32 0
  store %struct.intel_context* %24, %struct.intel_context** %26, align 8
  store i32 0, i32* %2, align 4
  br label %32

27:                                               ; preds = %22
  %28 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %29 = call i32 @intel_engine_fini_breadcrumbs(%struct.intel_engine_cs* %28)
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %27, %23
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @intel_engine_init_active(%struct.intel_engine_cs*, i32) #1

declare dso_local i32 @intel_engine_init_breadcrumbs(%struct.intel_engine_cs*) #1

declare dso_local i32 @intel_engine_init_execlists(%struct.intel_engine_cs*) #1

declare dso_local i32 @intel_engine_init__pm(%struct.intel_engine_cs*) #1

declare dso_local i32 @intel_engine_pool_init(i32*) #1

declare dso_local %struct.intel_context* @create_kernel_context(%struct.intel_engine_cs*) #1

declare dso_local i64 @IS_ERR(%struct.intel_context*) #1

declare dso_local i32 @intel_engine_fini_breadcrumbs(%struct.intel_engine_cs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
