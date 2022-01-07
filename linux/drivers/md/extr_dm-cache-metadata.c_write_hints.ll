; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c_write_hints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c_write_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_metadata = type { i64, i32, i64, i32, i32, i32 }
%struct.dm_cache_policy = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@get_hint = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_cache_metadata*, %struct.dm_cache_policy*)* @write_hints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_hints(%struct.dm_cache_metadata* %0, %struct.dm_cache_policy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_cache_metadata*, align 8
  %5 = alloca %struct.dm_cache_policy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store %struct.dm_cache_metadata* %0, %struct.dm_cache_metadata** %4, align 8
  store %struct.dm_cache_policy* %1, %struct.dm_cache_policy** %5, align 8
  %10 = load %struct.dm_cache_policy*, %struct.dm_cache_policy** %5, align 8
  %11 = call i8* @dm_cache_policy_get_name(%struct.dm_cache_policy* %10)
  store i8* %11, i8** %8, align 8
  %12 = load %struct.dm_cache_policy*, %struct.dm_cache_policy** %5, align 8
  %13 = call i32* @dm_cache_policy_get_version(%struct.dm_cache_policy* %12)
  store i32* %13, i32** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = sext i32 %20 to i64
  %22 = icmp ugt i64 %21, 3
  br i1 %22, label %23, label %26

23:                                               ; preds = %18, %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %74

26:                                               ; preds = %18
  %27 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %28 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @strncpy(i32 %29, i8* %30, i32 4)
  %32 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %33 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @memcpy(i32 %34, i32* %35, i32 4)
  %37 = load %struct.dm_cache_policy*, %struct.dm_cache_policy** %5, align 8
  %38 = call i64 @dm_cache_policy_get_hint_size(%struct.dm_cache_policy* %37)
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %74

42:                                               ; preds = %26
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %45 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %47 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %42
  %51 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %52 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %51, i32 0, i32 3
  %53 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %54 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @dm_array_del(i32* %52, i64 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %74

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61, %42
  %63 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %64 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %63, i32 0, i32 3
  %65 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %66 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %65, i32 0, i32 2
  %67 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %4, align 8
  %68 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @from_cblock(i32 %69)
  %71 = load i32, i32* @get_hint, align 4
  %72 = load %struct.dm_cache_policy*, %struct.dm_cache_policy** %5, align 8
  %73 = call i32 @dm_array_new(i32* %64, i64* %66, i32 %70, i32 %71, %struct.dm_cache_policy* %72)
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %62, %59, %41, %23
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i8* @dm_cache_policy_get_name(%struct.dm_cache_policy*) #1

declare dso_local i32* @dm_cache_policy_get_version(%struct.dm_cache_policy*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @dm_cache_policy_get_hint_size(%struct.dm_cache_policy*) #1

declare dso_local i32 @dm_array_del(i32*, i64) #1

declare dso_local i32 @dm_array_new(i32*, i64*, i32, i32, %struct.dm_cache_policy*) #1

declare dso_local i32 @from_cblock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
