; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-target.c_verity_alloc_most_once.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-target.c_verity_alloc_most_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_verity = type { i64, i32, %struct.dm_target* }
%struct.dm_target = type { i8* }

@INT_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"device too large to use check_at_most_once\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"failed to allocate bitset for check_at_most_once\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_verity*)* @verity_alloc_most_once to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verity_alloc_most_once(%struct.dm_verity* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_verity*, align 8
  %4 = alloca %struct.dm_target*, align 8
  store %struct.dm_verity* %0, %struct.dm_verity** %3, align 8
  %5 = load %struct.dm_verity*, %struct.dm_verity** %3, align 8
  %6 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %5, i32 0, i32 2
  %7 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  store %struct.dm_target* %7, %struct.dm_target** %4, align 8
  %8 = load %struct.dm_verity*, %struct.dm_verity** %3, align 8
  %9 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @INT_MAX, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %15 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  %16 = load i32, i32* @E2BIG, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %37

18:                                               ; preds = %1
  %19 = load %struct.dm_verity*, %struct.dm_verity** %3, align 8
  %20 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @BITS_TO_LONGS(i64 %21)
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32 @kvcalloc(i32 %22, i32 8, i32 %23)
  %25 = load %struct.dm_verity*, %struct.dm_verity** %3, align 8
  %26 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.dm_verity*, %struct.dm_verity** %3, align 8
  %28 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %18
  %32 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %33 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %32, i32 0, i32 0
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8** %33, align 8
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %37

36:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %31, %13
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @kvcalloc(i32, i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
