; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_create_cache_policy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_create_cache_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { %struct.dm_cache_policy*, i32, i32, i32 }
%struct.dm_cache_policy = type { i32 }
%struct.cache_args = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Error creating cache's policy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache*, %struct.cache_args*, i8**)* @create_cache_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_cache_policy(%struct.cache* %0, %struct.cache_args* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cache*, align 8
  %6 = alloca %struct.cache_args*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.dm_cache_policy*, align 8
  store %struct.cache* %0, %struct.cache** %5, align 8
  store %struct.cache_args* %1, %struct.cache_args** %6, align 8
  store i8** %2, i8*** %7, align 8
  %9 = load %struct.cache_args*, %struct.cache_args** %6, align 8
  %10 = getelementptr inbounds %struct.cache_args, %struct.cache_args* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.cache*, %struct.cache** %5, align 8
  %13 = getelementptr inbounds %struct.cache, %struct.cache* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.cache*, %struct.cache** %5, align 8
  %16 = getelementptr inbounds %struct.cache, %struct.cache* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.cache*, %struct.cache** %5, align 8
  %19 = getelementptr inbounds %struct.cache, %struct.cache* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.dm_cache_policy* @dm_cache_policy_create(i32 %11, i32 %14, i32 %17, i32 %20)
  store %struct.dm_cache_policy* %21, %struct.dm_cache_policy** %8, align 8
  %22 = load %struct.dm_cache_policy*, %struct.dm_cache_policy** %8, align 8
  %23 = call i64 @IS_ERR(%struct.dm_cache_policy* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8** %26, align 8
  %27 = load %struct.dm_cache_policy*, %struct.dm_cache_policy** %8, align 8
  %28 = call i32 @PTR_ERR(%struct.dm_cache_policy* %27)
  store i32 %28, i32* %4, align 4
  br label %40

29:                                               ; preds = %3
  %30 = load %struct.dm_cache_policy*, %struct.dm_cache_policy** %8, align 8
  %31 = load %struct.cache*, %struct.cache** %5, align 8
  %32 = getelementptr inbounds %struct.cache, %struct.cache* %31, i32 0, i32 0
  store %struct.dm_cache_policy* %30, %struct.dm_cache_policy** %32, align 8
  %33 = load %struct.cache*, %struct.cache** %5, align 8
  %34 = getelementptr inbounds %struct.cache, %struct.cache* %33, i32 0, i32 0
  %35 = load %struct.dm_cache_policy*, %struct.dm_cache_policy** %34, align 8
  %36 = icmp ne %struct.dm_cache_policy* %35, null
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %29, %25
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.dm_cache_policy* @dm_cache_policy_create(i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.dm_cache_policy*) #1

declare dso_local i32 @PTR_ERR(%struct.dm_cache_policy*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
