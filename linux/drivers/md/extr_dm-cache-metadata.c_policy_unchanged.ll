; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c_policy_unchanged.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c_policy_unchanged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_metadata = type { i32*, i64, i32 }
%struct.dm_cache_policy = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_cache_metadata*, %struct.dm_cache_policy*)* @policy_unchanged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @policy_unchanged(%struct.dm_cache_metadata* %0, %struct.dm_cache_policy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_cache_metadata*, align 8
  %5 = alloca %struct.dm_cache_policy*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.dm_cache_metadata* %0, %struct.dm_cache_metadata** %4, align 8
  store %struct.dm_cache_policy* %1, %struct.dm_cache_policy** %5, align 8
  %9 = load %struct.dm_cache_policy*, %struct.dm_cache_policy** %5, align 8
  %10 = call i8* @dm_cache_policy_get_name(%struct.dm_cache_policy* %9)
  store i8* %10, i8** %6, align 8
  %11 = load %struct.dm_cache_policy*, %struct.dm_cache_policy** %5, align 8
  %12 = call i32* @dm_cache_policy_get_version(%struct.dm_cache_policy* %11)
  store i32* %12, i32** %7, align 8
  %13 = load %struct.dm_cache_policy*, %struct.dm_cache_policy** %5, align 8
  %14 = call i64 @dm_cache_policy_get_hint_size(%struct.dm_cache_policy* %13)
  store i64 %14, i64* %8, align 8
  %15 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %16 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @strncmp(i32 %17, i8* %18, i32 4)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %41

22:                                               ; preds = %2
  %23 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %24 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %41

33:                                               ; preds = %22
  %34 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %35 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %41

40:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %39, %32, %21
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i8* @dm_cache_policy_get_name(%struct.dm_cache_policy*) #1

declare dso_local i32* @dm_cache_policy_get_version(%struct.dm_cache_policy*) #1

declare dso_local i64 @dm_cache_policy_get_hint_size(%struct.dm_cache_policy*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
