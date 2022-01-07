; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy.c_get_policy_once.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy.c_get_policy_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_policy_type = type { i32 }

@register_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dm_cache_policy_type* (i8*)* @get_policy_once to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dm_cache_policy_type* @get_policy_once(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dm_cache_policy_type*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call i32 @spin_lock(i32* @register_lock)
  %5 = load i8*, i8** %2, align 8
  %6 = call %struct.dm_cache_policy_type* @__get_policy_once(i8* %5)
  store %struct.dm_cache_policy_type* %6, %struct.dm_cache_policy_type** %3, align 8
  %7 = call i32 @spin_unlock(i32* @register_lock)
  %8 = load %struct.dm_cache_policy_type*, %struct.dm_cache_policy_type** %3, align 8
  ret %struct.dm_cache_policy_type* %8
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.dm_cache_policy_type* @__get_policy_once(i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
