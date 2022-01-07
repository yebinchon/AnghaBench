; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy.c_dm_cache_policy_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy.c_dm_cache_policy_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_policy = type { %struct.dm_cache_policy_type* }
%struct.dm_cache_policy_type = type { %struct.dm_cache_policy* (i32, i32, i32)* }

@.str = private unnamed_addr constant [20 x i8] c"unknown policy type\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dm_cache_policy* @dm_cache_policy_create(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dm_cache_policy*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dm_cache_policy*, align 8
  %11 = alloca %struct.dm_cache_policy_type*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.dm_cache_policy* null, %struct.dm_cache_policy** %10, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call %struct.dm_cache_policy_type* @get_policy(i8* %12)
  store %struct.dm_cache_policy_type* %13, %struct.dm_cache_policy_type** %11, align 8
  %14 = load %struct.dm_cache_policy_type*, %struct.dm_cache_policy_type** %11, align 8
  %15 = icmp ne %struct.dm_cache_policy_type* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %4
  %17 = call i32 @DMWARN(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.dm_cache_policy* @ERR_PTR(i32 %19)
  store %struct.dm_cache_policy* %20, %struct.dm_cache_policy** %5, align 8
  br label %42

21:                                               ; preds = %4
  %22 = load %struct.dm_cache_policy_type*, %struct.dm_cache_policy_type** %11, align 8
  %23 = getelementptr inbounds %struct.dm_cache_policy_type, %struct.dm_cache_policy_type* %22, i32 0, i32 0
  %24 = load %struct.dm_cache_policy* (i32, i32, i32)*, %struct.dm_cache_policy* (i32, i32, i32)** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call %struct.dm_cache_policy* %24(i32 %25, i32 %26, i32 %27)
  store %struct.dm_cache_policy* %28, %struct.dm_cache_policy** %10, align 8
  %29 = load %struct.dm_cache_policy*, %struct.dm_cache_policy** %10, align 8
  %30 = icmp ne %struct.dm_cache_policy* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %21
  %32 = load %struct.dm_cache_policy_type*, %struct.dm_cache_policy_type** %11, align 8
  %33 = call i32 @put_policy(%struct.dm_cache_policy_type* %32)
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.dm_cache_policy* @ERR_PTR(i32 %35)
  store %struct.dm_cache_policy* %36, %struct.dm_cache_policy** %5, align 8
  br label %42

37:                                               ; preds = %21
  %38 = load %struct.dm_cache_policy_type*, %struct.dm_cache_policy_type** %11, align 8
  %39 = load %struct.dm_cache_policy*, %struct.dm_cache_policy** %10, align 8
  %40 = getelementptr inbounds %struct.dm_cache_policy, %struct.dm_cache_policy* %39, i32 0, i32 0
  store %struct.dm_cache_policy_type* %38, %struct.dm_cache_policy_type** %40, align 8
  %41 = load %struct.dm_cache_policy*, %struct.dm_cache_policy** %10, align 8
  store %struct.dm_cache_policy* %41, %struct.dm_cache_policy** %5, align 8
  br label %42

42:                                               ; preds = %37, %31, %16
  %43 = load %struct.dm_cache_policy*, %struct.dm_cache_policy** %5, align 8
  ret %struct.dm_cache_policy* %43
}

declare dso_local %struct.dm_cache_policy_type* @get_policy(i8*) #1

declare dso_local i32 @DMWARN(i8*) #1

declare dso_local %struct.dm_cache_policy* @ERR_PTR(i32) #1

declare dso_local i32 @put_policy(%struct.dm_cache_policy_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
