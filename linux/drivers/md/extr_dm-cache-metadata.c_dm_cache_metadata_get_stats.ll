; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c_dm_cache_metadata_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c_dm_cache_metadata_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_metadata = type { %struct.dm_cache_statistics }
%struct.dm_cache_statistics = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_cache_metadata_get_stats(%struct.dm_cache_metadata* %0, %struct.dm_cache_statistics* %1) #0 {
  %3 = alloca %struct.dm_cache_metadata*, align 8
  %4 = alloca %struct.dm_cache_statistics*, align 8
  store %struct.dm_cache_metadata* %0, %struct.dm_cache_metadata** %3, align 8
  store %struct.dm_cache_statistics* %1, %struct.dm_cache_statistics** %4, align 8
  %5 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %6 = call i32 @READ_LOCK_VOID(%struct.dm_cache_metadata* %5)
  %7 = load %struct.dm_cache_statistics*, %struct.dm_cache_statistics** %4, align 8
  %8 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %9 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %8, i32 0, i32 0
  %10 = bitcast %struct.dm_cache_statistics* %7 to i8*
  %11 = bitcast %struct.dm_cache_statistics* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 4, i1 false)
  %12 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %13 = call i32 @READ_UNLOCK(%struct.dm_cache_metadata* %12)
  ret void
}

declare dso_local i32 @READ_LOCK_VOID(%struct.dm_cache_metadata*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @READ_UNLOCK(%struct.dm_cache_metadata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
