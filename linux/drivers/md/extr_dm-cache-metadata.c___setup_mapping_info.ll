; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c___setup_mapping_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c___setup_mapping_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_metadata = type { i32, i32, i64, i32 }
%struct.dm_btree_value_type = type { i32, i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_cache_metadata*)* @__setup_mapping_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__setup_mapping_info(%struct.dm_cache_metadata* %0) #0 {
  %2 = alloca %struct.dm_cache_metadata*, align 8
  %3 = alloca %struct.dm_btree_value_type, align 8
  store %struct.dm_cache_metadata* %0, %struct.dm_cache_metadata** %2, align 8
  %4 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %3, i32 0, i32 4
  store i32* null, i32** %4, align 8
  %5 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %3, i32 0, i32 0
  store i32 4, i32* %5, align 8
  %6 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %3, i32 0, i32 3
  store i32* null, i32** %6, align 8
  %7 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %3, i32 0, i32 2
  store i32* null, i32** %7, align 8
  %8 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %3, i32 0, i32 1
  store i32* null, i32** %8, align 8
  %9 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %2, align 8
  %10 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %9, i32 0, i32 3
  %11 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %2, align 8
  %12 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @dm_array_info_init(i32* %10, i32 %13, %struct.dm_btree_value_type* %3)
  %15 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %2, align 8
  %16 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %3, i32 0, i32 0
  store i32 4, i32* %20, align 8
  %21 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %2, align 8
  %22 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %21, i32 0, i32 1
  %23 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %2, align 8
  %24 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dm_array_info_init(i32* %22, i32 %25, %struct.dm_btree_value_type* %3)
  br label %27

27:                                               ; preds = %19, %1
  ret void
}

declare dso_local i32 @dm_array_info_init(i32*, i32, %struct.dm_btree_value_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
