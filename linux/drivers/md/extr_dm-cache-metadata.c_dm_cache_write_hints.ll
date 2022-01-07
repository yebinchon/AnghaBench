; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c_dm_cache_write_hints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c_dm_cache_write_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_metadata = type { i32 }
%struct.dm_cache_policy = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_cache_write_hints(%struct.dm_cache_metadata* %0, %struct.dm_cache_policy* %1) #0 {
  %3 = alloca %struct.dm_cache_metadata*, align 8
  %4 = alloca %struct.dm_cache_policy*, align 8
  %5 = alloca i32, align 4
  store %struct.dm_cache_metadata* %0, %struct.dm_cache_metadata** %3, align 8
  store %struct.dm_cache_policy* %1, %struct.dm_cache_policy** %4, align 8
  %6 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %7 = call i32 @WRITE_LOCK(%struct.dm_cache_metadata* %6)
  %8 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %9 = load %struct.dm_cache_policy*, %struct.dm_cache_policy** %4, align 8
  %10 = call i32 @write_hints(%struct.dm_cache_metadata* %8, %struct.dm_cache_policy* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %12 = call i32 @WRITE_UNLOCK(%struct.dm_cache_metadata* %11)
  %13 = load i32, i32* %5, align 4
  ret i32 %13
}

declare dso_local i32 @WRITE_LOCK(%struct.dm_cache_metadata*) #1

declare dso_local i32 @write_hints(%struct.dm_cache_metadata*, %struct.dm_cache_policy*) #1

declare dso_local i32 @WRITE_UNLOCK(%struct.dm_cache_metadata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
