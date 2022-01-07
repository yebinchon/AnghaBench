; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_intel_engine_init_execlists.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_intel_engine_init_execlists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { %struct.intel_engine_execlists }
%struct.intel_engine_execlists = type { i32, i32, i32, i32, i32, i32 }

@EXECLIST_MAX_PORTS = common dso_local global i64 0, align 8
@INT_MIN = common dso_local global i32 0, align 4
@RB_ROOT_CACHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_engine_init_execlists(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca %struct.intel_engine_cs*, align 8
  %3 = alloca %struct.intel_engine_execlists*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %2, align 8
  %4 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %5 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %4, i32 0, i32 0
  store %struct.intel_engine_execlists* %5, %struct.intel_engine_execlists** %3, align 8
  %6 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %3, align 8
  %7 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %6, i32 0, i32 0
  store i32 1, i32* %7, align 4
  %8 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %3, align 8
  %9 = call i64 @execlists_num_ports(%struct.intel_engine_execlists* %8)
  %10 = call i32 @is_power_of_2(i64 %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @GEM_BUG_ON(i32 %13)
  %15 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %3, align 8
  %16 = call i64 @execlists_num_ports(%struct.intel_engine_execlists* %15)
  %17 = load i64, i64* @EXECLIST_MAX_PORTS, align 8
  %18 = icmp sgt i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @GEM_BUG_ON(i32 %19)
  %21 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %3, align 8
  %22 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @memset(i32 %23, i32 0, i32 4)
  %25 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %3, align 8
  %26 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @memset(i32 %27, i32 0, i32 4)
  %29 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %3, align 8
  %30 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @INT_MIN, align 4
  %32 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %3, align 8
  %33 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @RB_ROOT_CACHED, align 4
  %35 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %3, align 8
  %36 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  ret void
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @is_power_of_2(i64) #1

declare dso_local i64 @execlists_num_ports(%struct.intel_engine_execlists*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
