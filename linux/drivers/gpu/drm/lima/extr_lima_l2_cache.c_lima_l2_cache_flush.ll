; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_l2_cache.c_lima_l2_cache_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_l2_cache.c_lima_l2_cache_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_ip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@LIMA_L2_CACHE_COMMAND = common dso_local global i32 0, align 4
@LIMA_L2_CACHE_COMMAND_CLEAR_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lima_l2_cache_flush(%struct.lima_ip* %0) #0 {
  %2 = alloca %struct.lima_ip*, align 8
  %3 = alloca i32, align 4
  store %struct.lima_ip* %0, %struct.lima_ip** %2, align 8
  %4 = load %struct.lima_ip*, %struct.lima_ip** %2, align 8
  %5 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load i32, i32* @LIMA_L2_CACHE_COMMAND, align 4
  %9 = load i32, i32* @LIMA_L2_CACHE_COMMAND_CLEAR_ALL, align 4
  %10 = call i32 @l2_cache_write(i32 %8, i32 %9)
  %11 = load %struct.lima_ip*, %struct.lima_ip** %2, align 8
  %12 = call i32 @lima_l2_cache_wait_idle(%struct.lima_ip* %11)
  store i32 %12, i32* %3, align 4
  %13 = load %struct.lima_ip*, %struct.lima_ip** %2, align 8
  %14 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @spin_unlock(i32* %15)
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @l2_cache_write(i32, i32) #1

declare dso_local i32 @lima_l2_cache_wait_idle(%struct.lima_ip*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
