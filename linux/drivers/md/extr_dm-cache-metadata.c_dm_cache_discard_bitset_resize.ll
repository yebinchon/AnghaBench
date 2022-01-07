; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c_dm_cache_discard_bitset_resize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c_dm_cache_discard_bitset_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_metadata = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_cache_discard_bitset_resize(%struct.dm_cache_metadata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dm_cache_metadata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dm_cache_metadata* %0, %struct.dm_cache_metadata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %9 = call i32 @WRITE_LOCK(%struct.dm_cache_metadata* %8)
  %10 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %11 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %10, i32 0, i32 4
  %12 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %13 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %16 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @from_dblock(i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @from_dblock(i32 %19)
  %21 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %22 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %21, i32 0, i32 3
  %23 = call i32 @dm_bitset_resize(i32* %11, i32 %14, i32 %18, i32 %20, i32 0, i32* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %29 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %32 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %26, %3
  %34 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %35 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  %36 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %37 = call i32 @WRITE_UNLOCK(%struct.dm_cache_metadata* %36)
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local i32 @WRITE_LOCK(%struct.dm_cache_metadata*) #1

declare dso_local i32 @dm_bitset_resize(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @from_dblock(i32) #1

declare dso_local i32 @WRITE_UNLOCK(%struct.dm_cache_metadata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
