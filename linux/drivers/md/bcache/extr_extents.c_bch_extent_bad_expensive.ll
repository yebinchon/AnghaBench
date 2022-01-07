; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_extents.c_bch_extent_bad_expensive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_extents.c_bch_extent_bad_expensive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.bkey = type { i32 }
%struct.bucket = type { i64, i32, i32, i32 }

@GC_MARK_METADATA = common dso_local global i64 0, align 8
@GC_MARK_DIRTY = common dso_local global i64 0, align 8
@BTREE_PRIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [86 x i8] c"inconsistent extent pointer %s:\0Abucket %zu pin %i prio %i gen %i last_gc %i mark %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btree*, %struct.bkey*, i32)* @bch_extent_bad_expensive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bch_extent_bad_expensive(%struct.btree* %0, %struct.bkey* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btree*, align 8
  %6 = alloca %struct.bkey*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bucket*, align 8
  %9 = alloca [80 x i8], align 16
  store %struct.btree* %0, %struct.btree** %5, align 8
  store %struct.bkey* %1, %struct.bkey** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.btree*, %struct.btree** %5, align 8
  %11 = getelementptr inbounds %struct.btree, %struct.btree* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = load %struct.bkey*, %struct.bkey** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.bucket* @PTR_BUCKET(%struct.TYPE_3__* %12, %struct.bkey* %13, i32 %14)
  store %struct.bucket* %15, %struct.bucket** %8, align 8
  %16 = load %struct.btree*, %struct.btree** %5, align 8
  %17 = getelementptr inbounds %struct.btree, %struct.btree* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i64 @mutex_trylock(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %61

22:                                               ; preds = %3
  %23 = load %struct.btree*, %struct.btree** %5, align 8
  %24 = getelementptr inbounds %struct.btree, %struct.btree* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %22
  %30 = load %struct.bucket*, %struct.bucket** %8, align 8
  %31 = call i64 @GC_MARK(%struct.bucket* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load %struct.bucket*, %struct.bucket** %8, align 8
  %35 = call i64 @GC_MARK(%struct.bucket* %34)
  %36 = load i64, i64* @GC_MARK_METADATA, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %47, label %38

38:                                               ; preds = %33
  %39 = load %struct.bucket*, %struct.bucket** %8, align 8
  %40 = call i64 @GC_MARK(%struct.bucket* %39)
  %41 = load i64, i64* @GC_MARK_DIRTY, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.bkey*, %struct.bkey** %6, align 8
  %45 = call i64 @KEY_DIRTY(%struct.bkey* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %33, %29
  br label %62

48:                                               ; preds = %43, %38, %22
  %49 = load %struct.bucket*, %struct.bucket** %8, align 8
  %50 = getelementptr inbounds %struct.bucket, %struct.bucket* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @BTREE_PRIO, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %62

55:                                               ; preds = %48
  %56 = load %struct.btree*, %struct.btree** %5, align 8
  %57 = getelementptr inbounds %struct.btree, %struct.btree* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  br label %61

61:                                               ; preds = %55, %3
  store i32 0, i32* %4, align 4
  br label %94

62:                                               ; preds = %54, %47
  %63 = load %struct.btree*, %struct.btree** %5, align 8
  %64 = getelementptr inbounds %struct.btree, %struct.btree* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %69 = load %struct.bkey*, %struct.bkey** %6, align 8
  %70 = call i32 @bch_extent_to_text(i8* %68, i32 80, %struct.bkey* %69)
  %71 = load %struct.btree*, %struct.btree** %5, align 8
  %72 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %73 = load %struct.btree*, %struct.btree** %5, align 8
  %74 = getelementptr inbounds %struct.btree, %struct.btree* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load %struct.bkey*, %struct.bkey** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @PTR_BUCKET_NR(%struct.TYPE_3__* %75, %struct.bkey* %76, i32 %77)
  %79 = load %struct.bucket*, %struct.bucket** %8, align 8
  %80 = getelementptr inbounds %struct.bucket, %struct.bucket* %79, i32 0, i32 3
  %81 = call i32 @atomic_read(i32* %80)
  %82 = load %struct.bucket*, %struct.bucket** %8, align 8
  %83 = getelementptr inbounds %struct.bucket, %struct.bucket* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.bucket*, %struct.bucket** %8, align 8
  %86 = getelementptr inbounds %struct.bucket, %struct.bucket* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.bucket*, %struct.bucket** %8, align 8
  %89 = getelementptr inbounds %struct.bucket, %struct.bucket* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.bucket*, %struct.bucket** %8, align 8
  %92 = call i64 @GC_MARK(%struct.bucket* %91)
  %93 = call i32 @btree_bug(%struct.btree* %71, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i8* %72, i32 %78, i32 %81, i64 %84, i32 %87, i32 %90, i64 %92)
  store i32 1, i32* %4, align 4
  br label %94

94:                                               ; preds = %62, %61
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local %struct.bucket* @PTR_BUCKET(%struct.TYPE_3__*, %struct.bkey*, i32) #1

declare dso_local i64 @mutex_trylock(i32*) #1

declare dso_local i64 @GC_MARK(%struct.bucket*) #1

declare dso_local i64 @KEY_DIRTY(%struct.bkey*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @bch_extent_to_text(i8*, i32, %struct.bkey*) #1

declare dso_local i32 @btree_bug(%struct.btree*, i8*, i8*, i32, i32, i64, i32, i32, i64) #1

declare dso_local i32 @PTR_BUCKET_NR(%struct.TYPE_3__*, %struct.bkey*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
