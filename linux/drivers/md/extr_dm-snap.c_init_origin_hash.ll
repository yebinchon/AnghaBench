; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_init_origin_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_init_origin_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ORIGIN_HASH_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@_origins = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"unable to allocate memory for _origins\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@_dm_origins = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"unable to allocate memory for _dm_origins\00", align 1
@_origins_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @init_origin_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_origin_hash() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @ORIGIN_HASH_SIZE, align 4
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call i64 @kmalloc_array(i32 %3, i32 4, i32 %4)
  store i64 %5, i64* @_origins, align 8
  %6 = load i64, i64* @_origins, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %0
  %9 = call i32 @DMERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %1, align 4
  br label %54

12:                                               ; preds = %0
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %23, %12
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @ORIGIN_HASH_SIZE, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = load i64, i64* @_origins, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = call i32 @INIT_LIST_HEAD(i64 %21)
  br label %23

23:                                               ; preds = %17
  %24 = load i32, i32* %2, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %2, align 4
  br label %13

26:                                               ; preds = %13
  %27 = load i32, i32* @ORIGIN_HASH_SIZE, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i64 @kmalloc_array(i32 %27, i32 4, i32 %28)
  store i64 %29, i64* @_dm_origins, align 8
  %30 = load i64, i64* @_dm_origins, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = call i32 @DMERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i64, i64* @_origins, align 8
  %35 = call i32 @kfree(i64 %34)
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %1, align 4
  br label %54

38:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %49, %38
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* @ORIGIN_HASH_SIZE, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load i64, i64* @_dm_origins, align 8
  %45 = load i32, i32* %2, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %44, %46
  %48 = call i32 @INIT_LIST_HEAD(i64 %47)
  br label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %2, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %2, align 4
  br label %39

52:                                               ; preds = %39
  %53 = call i32 @init_rwsem(i32* @_origins_lock)
  store i32 0, i32* %1, align 4
  br label %54

54:                                               ; preds = %52, %32, %8
  %55 = load i32, i32* %1, align 4
  ret i32 %55
}

declare dso_local i64 @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i64) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @init_rwsem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
