; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_hangcheck.c___igt_atomic_reset_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_hangcheck.c___igt_atomic_reset_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tasklet_struct }
%struct.tasklet_struct = type { i32 }
%struct.igt_atomic_section = type { i32, i32 (...)*, i32 (...)* }

@.str = private unnamed_addr constant [35 x i8] c"i915_reset_engine(%s:%s) under %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"i915_reset_engine(%s:%s) failed under %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_engine_cs*, %struct.igt_atomic_section*, i8*)* @__igt_atomic_reset_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__igt_atomic_reset_engine(%struct.intel_engine_cs* %0, %struct.igt_atomic_section* %1, i8* %2) #0 {
  %4 = alloca %struct.intel_engine_cs*, align 8
  %5 = alloca %struct.igt_atomic_section*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tasklet_struct*, align 8
  %8 = alloca i32, align 4
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %4, align 8
  store %struct.igt_atomic_section* %1, %struct.igt_atomic_section** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %10 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.tasklet_struct* %11, %struct.tasklet_struct** %7, align 8
  %12 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %13 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.igt_atomic_section*, %struct.igt_atomic_section** %5, align 8
  %17 = getelementptr inbounds %struct.igt_atomic_section, %struct.igt_atomic_section* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @GEM_TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %14, i8* %15, i32 %18)
  %20 = load %struct.tasklet_struct*, %struct.tasklet_struct** %7, align 8
  %21 = call i32 @tasklet_disable_nosync(%struct.tasklet_struct* %20)
  %22 = load %struct.igt_atomic_section*, %struct.igt_atomic_section** %5, align 8
  %23 = getelementptr inbounds %struct.igt_atomic_section, %struct.igt_atomic_section* %22, i32 0, i32 2
  %24 = load i32 (...)*, i32 (...)** %23, align 8
  %25 = call i32 (...) %24()
  %26 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %27 = call i32 @intel_engine_reset(%struct.intel_engine_cs* %26, i32* null)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.igt_atomic_section*, %struct.igt_atomic_section** %5, align 8
  %29 = getelementptr inbounds %struct.igt_atomic_section, %struct.igt_atomic_section* %28, i32 0, i32 1
  %30 = load i32 (...)*, i32 (...)** %29, align 8
  %31 = call i32 (...) %30()
  %32 = load %struct.tasklet_struct*, %struct.tasklet_struct** %7, align 8
  %33 = call i32 @tasklet_enable(%struct.tasklet_struct* %32)
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %3
  %37 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %38 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.igt_atomic_section*, %struct.igt_atomic_section** %5, align 8
  %42 = getelementptr inbounds %struct.igt_atomic_section, %struct.igt_atomic_section* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %39, i8* %40, i32 %43)
  br label %45

45:                                               ; preds = %36, %3
  %46 = load i32, i32* %8, align 4
  ret i32 %46
}

declare dso_local i32 @GEM_TRACE(i8*, i32, i8*, i32) #1

declare dso_local i32 @tasklet_disable_nosync(%struct.tasklet_struct*) #1

declare dso_local i32 @intel_engine_reset(%struct.intel_engine_cs*, i32*) #1

declare dso_local i32 @tasklet_enable(%struct.tasklet_struct*) #1

declare dso_local i32 @pr_err(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
