; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c___remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c___remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_metadata = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_cache_metadata*, i32)* @__remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__remove(%struct.dm_cache_metadata* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_cache_metadata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dm_cache_metadata* %0, %struct.dm_cache_metadata** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i32 @pack_value(i32 0, i32 0)
  store i32 %8, i32* %7, align 4
  %9 = call i32 @__dm_bless_for_disk(i32* %7)
  %10 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %11 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %10, i32 0, i32 2
  %12 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %13 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @from_cblock(i32 %15)
  %17 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %18 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %17, i32 0, i32 1
  %19 = call i32 @dm_array_set_value(i32* %11, i32 %14, i32 %16, i32* %7, i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %27

24:                                               ; preds = %2
  %25 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %26 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %24, %22
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @pack_value(i32, i32) #1

declare dso_local i32 @__dm_bless_for_disk(i32*) #1

declare dso_local i32 @dm_array_set_value(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @from_cblock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
