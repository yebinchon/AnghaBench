; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_uncore.c___intel_wait_for_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_uncore.c___intel_wait_for_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore = type { i32 }

@FW_REG_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__intel_wait_for_register(%struct.intel_uncore* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.intel_uncore*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.intel_uncore* %0, %struct.intel_uncore** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %18 = load %struct.intel_uncore*, %struct.intel_uncore** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @FW_REG_READ, align 4
  %21 = call i32 @intel_uncore_forcewake_for_reg(%struct.intel_uncore* %18, i32 %19, i32 %20)
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %13, align 4
  %23 = call i32 @might_sleep_if(i32 %22)
  %24 = load %struct.intel_uncore*, %struct.intel_uncore** %8, align 8
  %25 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %24, i32 0, i32 0
  %26 = call i32 @spin_lock_irq(i32* %25)
  %27 = load %struct.intel_uncore*, %struct.intel_uncore** %8, align 8
  %28 = load i32, i32* %15, align 4
  %29 = call i32 @intel_uncore_forcewake_get__locked(%struct.intel_uncore* %27, i32 %28)
  %30 = load %struct.intel_uncore*, %struct.intel_uncore** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @__intel_wait_for_register_fw(%struct.intel_uncore* %30, i32 %31, i32 %32, i32 %33, i32 %34, i32 0, i32* %16)
  store i32 %35, i32* %17, align 4
  %36 = load %struct.intel_uncore*, %struct.intel_uncore** %8, align 8
  %37 = load i32, i32* %15, align 4
  %38 = call i32 @intel_uncore_forcewake_put__locked(%struct.intel_uncore* %36, i32 %37)
  %39 = load %struct.intel_uncore*, %struct.intel_uncore** %8, align 8
  %40 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock_irq(i32* %40)
  %42 = load i32, i32* %17, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %7
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  %48 = load %struct.intel_uncore*, %struct.intel_uncore** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @intel_uncore_read_notrace(%struct.intel_uncore* %48, i32 %49)
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %10, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* %11, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %13, align 4
  %58 = mul i32 %57, 1000
  %59 = call i32 @__wait_for(i32 %50, i32 %56, i32 %58, i32 10, i32 1000)
  store i32 %59, i32* %17, align 4
  br label %60

60:                                               ; preds = %47, %44, %7
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %16, align 4
  %63 = call i32 @trace_i915_reg_rw(i32 0, i32 %61, i32 %62, i32 4, i32 1)
  %64 = load i32*, i32** %14, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* %16, align 4
  %68 = load i32*, i32** %14, align 8
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %66, %60
  %70 = load i32, i32* %17, align 4
  ret i32 %70
}

declare dso_local i32 @intel_uncore_forcewake_for_reg(%struct.intel_uncore*, i32, i32) #1

declare dso_local i32 @might_sleep_if(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @intel_uncore_forcewake_get__locked(%struct.intel_uncore*, i32) #1

declare dso_local i32 @__intel_wait_for_register_fw(%struct.intel_uncore*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @intel_uncore_forcewake_put__locked(%struct.intel_uncore*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @__wait_for(i32, i32, i32, i32, i32) #1

declare dso_local i32 @intel_uncore_read_notrace(%struct.intel_uncore*, i32) #1

declare dso_local i32 @trace_i915_reg_rw(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
