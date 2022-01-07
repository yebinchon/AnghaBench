; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_debug.c_host1x_debug_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_debug.c_host1x_debug_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x = type { i32 }

@CONFIG_DEBUG_FS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @host1x_debug_init(%struct.host1x* %0) #0 {
  %2 = alloca %struct.host1x*, align 8
  store %struct.host1x* %0, %struct.host1x** %2, align 8
  %3 = load i32, i32* @CONFIG_DEBUG_FS, align 4
  %4 = call i64 @IS_ENABLED(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load %struct.host1x*, %struct.host1x** %2, align 8
  %8 = call i32 @host1x_debugfs_init(%struct.host1x* %7)
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @host1x_debugfs_init(%struct.host1x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
