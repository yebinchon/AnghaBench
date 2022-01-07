; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_intel_engine_setup_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_intel_engine_setup_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ENGINE_PHYSICAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_engine_cs*)* @intel_engine_setup_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_engine_setup_common(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %3, align 8
  %5 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %6 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %5, i32 0, i32 3
  %7 = call i32 @init_llist_head(i32* %6)
  %8 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %9 = call i32 @init_status_page(%struct.intel_engine_cs* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %45

14:                                               ; preds = %1
  %15 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %16 = load i32, i32* @ENGINE_PHYSICAL, align 4
  %17 = call i32 @intel_engine_init_active(%struct.intel_engine_cs* %15, i32 %16)
  %18 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %19 = call i32 @intel_engine_init_breadcrumbs(%struct.intel_engine_cs* %18)
  %20 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %21 = call i32 @intel_engine_init_execlists(%struct.intel_engine_cs* %20)
  %22 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %23 = call i32 @intel_engine_init_hangcheck(%struct.intel_engine_cs* %22)
  %24 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %25 = call i32 @intel_engine_init_cmd_parser(%struct.intel_engine_cs* %24)
  %26 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %27 = call i32 @intel_engine_init__pm(%struct.intel_engine_cs* %26)
  %28 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %29 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %28, i32 0, i32 2
  %30 = call i32 @intel_engine_pool_init(i32* %29)
  %31 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %32 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.TYPE_2__* @RUNTIME_INFO(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @intel_sseu_from_device_info(i32* %35)
  %37 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %38 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %40 = call i32 @intel_engine_init_workarounds(%struct.intel_engine_cs* %39)
  %41 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %42 = call i32 @intel_engine_init_whitelist(%struct.intel_engine_cs* %41)
  %43 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %44 = call i32 @intel_engine_init_ctx_wa(%struct.intel_engine_cs* %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %14, %12
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @init_llist_head(i32*) #1

declare dso_local i32 @init_status_page(%struct.intel_engine_cs*) #1

declare dso_local i32 @intel_engine_init_active(%struct.intel_engine_cs*, i32) #1

declare dso_local i32 @intel_engine_init_breadcrumbs(%struct.intel_engine_cs*) #1

declare dso_local i32 @intel_engine_init_execlists(%struct.intel_engine_cs*) #1

declare dso_local i32 @intel_engine_init_hangcheck(%struct.intel_engine_cs*) #1

declare dso_local i32 @intel_engine_init_cmd_parser(%struct.intel_engine_cs*) #1

declare dso_local i32 @intel_engine_init__pm(%struct.intel_engine_cs*) #1

declare dso_local i32 @intel_engine_pool_init(i32*) #1

declare dso_local i32 @intel_sseu_from_device_info(i32*) #1

declare dso_local %struct.TYPE_2__* @RUNTIME_INFO(i32) #1

declare dso_local i32 @intel_engine_init_workarounds(%struct.intel_engine_cs*) #1

declare dso_local i32 @intel_engine_init_whitelist(%struct.intel_engine_cs*) #1

declare dso_local i32 @intel_engine_init_ctx_wa(%struct.intel_engine_cs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
