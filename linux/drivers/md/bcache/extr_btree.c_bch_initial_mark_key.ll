; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_bch_initial_mark_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_bch_initial_mark_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_set = type { i32 }
%struct.bkey = type { i32 }
%struct.bucket = type { i64, i32 }

@ZERO_KEY = common dso_local global i32 0, align 4
@BTREE_PRIO = common dso_local global i64 0, align 8
@INITIAL_PRIO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bch_initial_mark_key(%struct.cache_set* %0, i32 %1, %struct.bkey* %2) #0 {
  %4 = alloca %struct.cache_set*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bkey*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bucket*, align 8
  store %struct.cache_set* %0, %struct.cache_set** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.bkey* %2, %struct.bkey** %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %62, %3
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.bkey*, %struct.bkey** %6, align 8
  %12 = call i32 @KEY_PTRS(%struct.bkey* %11)
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %14, label %65

14:                                               ; preds = %9
  %15 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %16 = load %struct.bkey*, %struct.bkey** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @ptr_available(%struct.cache_set* %15, %struct.bkey* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %61

20:                                               ; preds = %14
  %21 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %22 = load %struct.bkey*, %struct.bkey** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @ptr_stale(%struct.cache_set* %21, %struct.bkey* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %61, label %26

26:                                               ; preds = %20
  %27 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %28 = load %struct.bkey*, %struct.bkey** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call %struct.bucket* @PTR_BUCKET(%struct.cache_set* %27, %struct.bkey* %28, i32 %29)
  store %struct.bucket* %30, %struct.bucket** %8, align 8
  %31 = load %struct.bkey*, %struct.bkey** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @PTR_GEN(%struct.bkey* %31, i32 %32)
  %34 = load %struct.bucket*, %struct.bucket** %8, align 8
  %35 = getelementptr inbounds %struct.bucket, %struct.bucket* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %26
  %39 = load %struct.bkey*, %struct.bkey** %6, align 8
  %40 = call i64 @bkey_cmp(%struct.bkey* %39, i32* @ZERO_KEY)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i64, i64* @BTREE_PRIO, align 8
  %44 = load %struct.bucket*, %struct.bucket** %8, align 8
  %45 = getelementptr inbounds %struct.bucket, %struct.bucket* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %60

46:                                               ; preds = %38, %26
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %46
  %50 = load %struct.bucket*, %struct.bucket** %8, align 8
  %51 = getelementptr inbounds %struct.bucket, %struct.bucket* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @BTREE_PRIO, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i64, i64* @INITIAL_PRIO, align 8
  %57 = load %struct.bucket*, %struct.bucket** %8, align 8
  %58 = getelementptr inbounds %struct.bucket, %struct.bucket* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %55, %49, %46
  br label %60

60:                                               ; preds = %59, %42
  br label %61

61:                                               ; preds = %60, %20, %14
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %9

65:                                               ; preds = %9
  %66 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.bkey*, %struct.bkey** %6, align 8
  %69 = call i32 @__bch_btree_mark_key(%struct.cache_set* %66, i32 %67, %struct.bkey* %68)
  ret void
}

declare dso_local i32 @KEY_PTRS(%struct.bkey*) #1

declare dso_local i64 @ptr_available(%struct.cache_set*, %struct.bkey*, i32) #1

declare dso_local i32 @ptr_stale(%struct.cache_set*, %struct.bkey*, i32) #1

declare dso_local %struct.bucket* @PTR_BUCKET(%struct.cache_set*, %struct.bkey*, i32) #1

declare dso_local i32 @PTR_GEN(%struct.bkey*, i32) #1

declare dso_local i64 @bkey_cmp(%struct.bkey*, i32*) #1

declare dso_local i32 @__bch_btree_mark_key(%struct.cache_set*, i32, %struct.bkey*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
