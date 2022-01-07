; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_uncore.c_forcewake_early_sanitize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_uncore.c_forcewake_early_sanitize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (%struct.intel_uncore.0*, i32)* }
%struct.intel_uncore.0 = type opaque

@GTFIFOCTL = common dso_local global i32 0, align 4
@GT_FIFO_CTL_BLOCK_ALL_POLICY_STALL = common dso_local global i32 0, align 4
@GT_FIFO_CTL_RC6_POLICY_STALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_uncore*, i32)* @forcewake_early_sanitize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @forcewake_early_sanitize(%struct.intel_uncore* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_uncore*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_uncore* %0, %struct.intel_uncore** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %6 = call i32 @intel_uncore_has_forcewake(%struct.intel_uncore* %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @GEM_BUG_ON(i32 %9)
  %11 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %12 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @IS_CHERRYVIEW(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %18 = load i32, i32* @GTFIFOCTL, align 4
  %19 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %20 = load i32, i32* @GTFIFOCTL, align 4
  %21 = call i32 @__raw_uncore_read32(%struct.intel_uncore* %19, i32 %20)
  %22 = load i32, i32* @GT_FIFO_CTL_BLOCK_ALL_POLICY_STALL, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @GT_FIFO_CTL_RC6_POLICY_STALL, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @__raw_uncore_write32(%struct.intel_uncore* %17, i32 %18, i32 %25)
  br label %27

27:                                               ; preds = %16, %2
  %28 = call i32 (...) @iosf_mbi_punit_acquire()
  %29 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %30 = call i32 @intel_uncore_forcewake_reset(%struct.intel_uncore* %29)
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %27
  %34 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %35 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %34, i32 0, i32 0
  %36 = call i32 @spin_lock_irq(i32* %35)
  %37 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %38 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.intel_uncore.0*, i32)*, i32 (%struct.intel_uncore.0*, i32)** %39, align 8
  %41 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %42 = bitcast %struct.intel_uncore* %41 to %struct.intel_uncore.0*
  %43 = load i32, i32* %4, align 4
  %44 = call i32 %40(%struct.intel_uncore.0* %42, i32 %43)
  %45 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %46 = call i64 @intel_uncore_has_fifo(%struct.intel_uncore* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %33
  %49 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %50 = call i32 @fifo_free_entries(%struct.intel_uncore* %49)
  %51 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %52 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %48, %33
  %54 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %55 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock_irq(i32* %55)
  br label %57

57:                                               ; preds = %53, %27
  %58 = call i32 (...) @iosf_mbi_punit_release()
  ret void
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @intel_uncore_has_forcewake(%struct.intel_uncore*) #1

declare dso_local i64 @IS_CHERRYVIEW(i32) #1

declare dso_local i32 @__raw_uncore_write32(%struct.intel_uncore*, i32, i32) #1

declare dso_local i32 @__raw_uncore_read32(%struct.intel_uncore*, i32) #1

declare dso_local i32 @iosf_mbi_punit_acquire(...) #1

declare dso_local i32 @intel_uncore_forcewake_reset(%struct.intel_uncore*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @intel_uncore_has_fifo(%struct.intel_uncore*) #1

declare dso_local i32 @fifo_free_entries(%struct.intel_uncore*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @iosf_mbi_punit_release(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
