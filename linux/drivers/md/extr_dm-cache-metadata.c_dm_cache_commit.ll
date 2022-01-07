; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c_dm_cache_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c_dm_cache_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_metadata = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@set_clean_shutdown = common dso_local global i32 0, align 4
@clear_clean_shutdown = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_cache_commit(%struct.dm_cache_metadata* %0, i32 %1) #0 {
  %3 = alloca %struct.dm_cache_metadata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dm_cache_metadata* %0, %struct.dm_cache_metadata** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @set_clean_shutdown, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @clear_clean_shutdown, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  store i32 %16, i32* %6, align 4
  %17 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %18 = call i32 @WRITE_LOCK(%struct.dm_cache_metadata* %17)
  %19 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %20 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %34

24:                                               ; preds = %15
  %25 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @__commit_transaction(%struct.dm_cache_metadata* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %34

31:                                               ; preds = %24
  %32 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %33 = call i32 @__begin_transaction(%struct.dm_cache_metadata* %32)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %31, %30, %23
  %35 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %36 = call i32 @WRITE_UNLOCK(%struct.dm_cache_metadata* %35)
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @WRITE_LOCK(%struct.dm_cache_metadata*) #1

declare dso_local i32 @__commit_transaction(%struct.dm_cache_metadata*, i32) #1

declare dso_local i32 @__begin_transaction(%struct.dm_cache_metadata*) #1

declare dso_local i32 @WRITE_UNLOCK(%struct.dm_cache_metadata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
