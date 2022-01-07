; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy.c_dm_cache_policy_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy.c_dm_cache_policy_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_policy_type = type { i32, i64, i32 }

@.str = private unnamed_addr constant [44 x i8] c"hint size must be 0 or 4 but %llu supplied.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@register_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"attempt to register policy under duplicate name %s\00", align 1
@register_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_cache_policy_register(%struct.dm_cache_policy_type* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_cache_policy_type*, align 8
  %4 = alloca i32, align 4
  store %struct.dm_cache_policy_type* %0, %struct.dm_cache_policy_type** %3, align 8
  %5 = load %struct.dm_cache_policy_type*, %struct.dm_cache_policy_type** %3, align 8
  %6 = getelementptr inbounds %struct.dm_cache_policy_type, %struct.dm_cache_policy_type* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.dm_cache_policy_type*, %struct.dm_cache_policy_type** %3, align 8
  %11 = getelementptr inbounds %struct.dm_cache_policy_type, %struct.dm_cache_policy_type* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 4
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = load %struct.dm_cache_policy_type*, %struct.dm_cache_policy_type** %3, align 8
  %16 = getelementptr inbounds %struct.dm_cache_policy_type, %struct.dm_cache_policy_type* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = call i32 @DMWARN(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %43

22:                                               ; preds = %9, %1
  %23 = call i32 @spin_lock(i32* @register_lock)
  %24 = load %struct.dm_cache_policy_type*, %struct.dm_cache_policy_type** %3, align 8
  %25 = getelementptr inbounds %struct.dm_cache_policy_type, %struct.dm_cache_policy_type* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @__find_policy(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load %struct.dm_cache_policy_type*, %struct.dm_cache_policy_type** %3, align 8
  %31 = getelementptr inbounds %struct.dm_cache_policy_type, %struct.dm_cache_policy_type* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @DMWARN(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %40

36:                                               ; preds = %22
  %37 = load %struct.dm_cache_policy_type*, %struct.dm_cache_policy_type** %3, align 8
  %38 = getelementptr inbounds %struct.dm_cache_policy_type, %struct.dm_cache_policy_type* %37, i32 0, i32 2
  %39 = call i32 @list_add(i32* %38, i32* @register_list)
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %36, %29
  %41 = call i32 @spin_unlock(i32* @register_lock)
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %14
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @DMWARN(i8*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @__find_policy(i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
