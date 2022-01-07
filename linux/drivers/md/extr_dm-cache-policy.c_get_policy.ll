; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy.c_get_policy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy.c_get_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_policy_type = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"dm-cache-%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dm_cache_policy_type* (i8*)* @get_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dm_cache_policy_type* @get_policy(i8* %0) #0 {
  %2 = alloca %struct.dm_cache_policy_type*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dm_cache_policy_type*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call %struct.dm_cache_policy_type* @get_policy_once(i8* %5)
  store %struct.dm_cache_policy_type* %6, %struct.dm_cache_policy_type** %4, align 8
  %7 = load %struct.dm_cache_policy_type*, %struct.dm_cache_policy_type** %4, align 8
  %8 = call i64 @IS_ERR(%struct.dm_cache_policy_type* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.dm_cache_policy_type* null, %struct.dm_cache_policy_type** %2, align 8
  br label %27

11:                                               ; preds = %1
  %12 = load %struct.dm_cache_policy_type*, %struct.dm_cache_policy_type** %4, align 8
  %13 = icmp ne %struct.dm_cache_policy_type* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load %struct.dm_cache_policy_type*, %struct.dm_cache_policy_type** %4, align 8
  store %struct.dm_cache_policy_type* %15, %struct.dm_cache_policy_type** %2, align 8
  br label %27

16:                                               ; preds = %11
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @request_module(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i8*, i8** %3, align 8
  %20 = call %struct.dm_cache_policy_type* @get_policy_once(i8* %19)
  store %struct.dm_cache_policy_type* %20, %struct.dm_cache_policy_type** %4, align 8
  %21 = load %struct.dm_cache_policy_type*, %struct.dm_cache_policy_type** %4, align 8
  %22 = call i64 @IS_ERR(%struct.dm_cache_policy_type* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store %struct.dm_cache_policy_type* null, %struct.dm_cache_policy_type** %2, align 8
  br label %27

25:                                               ; preds = %16
  %26 = load %struct.dm_cache_policy_type*, %struct.dm_cache_policy_type** %4, align 8
  store %struct.dm_cache_policy_type* %26, %struct.dm_cache_policy_type** %2, align 8
  br label %27

27:                                               ; preds = %25, %24, %14, %10
  %28 = load %struct.dm_cache_policy_type*, %struct.dm_cache_policy_type** %2, align 8
  ret %struct.dm_cache_policy_type* %28
}

declare dso_local %struct.dm_cache_policy_type* @get_policy_once(i8*) #1

declare dso_local i64 @IS_ERR(%struct.dm_cache_policy_type*) #1

declare dso_local i32 @request_module(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
