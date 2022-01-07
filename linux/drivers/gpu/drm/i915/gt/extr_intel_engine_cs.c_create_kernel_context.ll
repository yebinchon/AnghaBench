; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_create_kernel_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_create_kernel_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_context = type { i32 }
%struct.intel_engine_cs = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SZ_4K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_context* (%struct.intel_engine_cs*)* @create_kernel_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_context* @create_kernel_context(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca %struct.intel_context*, align 8
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca %struct.intel_context*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %3, align 8
  %6 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %7 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %12 = call %struct.intel_context* @intel_context_create(i32 %10, %struct.intel_engine_cs* %11)
  store %struct.intel_context* %12, %struct.intel_context** %4, align 8
  %13 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %14 = call i64 @IS_ERR(%struct.intel_context* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  store %struct.intel_context* %17, %struct.intel_context** %2, align 8
  br label %34

18:                                               ; preds = %1
  %19 = load i32, i32* @SZ_4K, align 4
  %20 = call i32 @__intel_context_ring_size(i32 %19)
  %21 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %22 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %24 = call i32 @intel_context_pin(%struct.intel_context* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  %29 = call i32 @intel_context_put(%struct.intel_context* %28)
  %30 = load i32, i32* %5, align 4
  %31 = call %struct.intel_context* @ERR_PTR(i32 %30)
  store %struct.intel_context* %31, %struct.intel_context** %2, align 8
  br label %34

32:                                               ; preds = %18
  %33 = load %struct.intel_context*, %struct.intel_context** %4, align 8
  store %struct.intel_context* %33, %struct.intel_context** %2, align 8
  br label %34

34:                                               ; preds = %32, %27, %16
  %35 = load %struct.intel_context*, %struct.intel_context** %2, align 8
  ret %struct.intel_context* %35
}

declare dso_local %struct.intel_context* @intel_context_create(i32, %struct.intel_engine_cs*) #1

declare dso_local i64 @IS_ERR(%struct.intel_context*) #1

declare dso_local i32 @__intel_context_ring_size(i32) #1

declare dso_local i32 @intel_context_pin(%struct.intel_context*) #1

declare dso_local i32 @intel_context_put(%struct.intel_context*) #1

declare dso_local %struct.intel_context* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
