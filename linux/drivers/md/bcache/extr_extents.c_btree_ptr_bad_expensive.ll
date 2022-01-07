; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_extents.c_btree_ptr_bad_expensive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_extents.c_btree_ptr_bad_expensive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.bkey = type { i32 }
%struct.bucket = type { i64, i32, i32, i32 }

@BTREE_PRIO = common dso_local global i64 0, align 8
@GC_MARK_METADATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [85 x i8] c"inconsistent btree pointer %s: bucket %zi pin %i prio %i gen %i last_gc %i mark %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btree*, %struct.bkey*)* @btree_ptr_bad_expensive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btree_ptr_bad_expensive(%struct.btree* %0, %struct.bkey* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btree*, align 8
  %5 = alloca %struct.bkey*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [80 x i8], align 16
  %8 = alloca %struct.bucket*, align 8
  store %struct.btree* %0, %struct.btree** %4, align 8
  store %struct.bkey* %1, %struct.bkey** %5, align 8
  %9 = load %struct.btree*, %struct.btree** %4, align 8
  %10 = getelementptr inbounds %struct.btree, %struct.btree* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = call i64 @mutex_trylock(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %69

15:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %60, %15
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.bkey*, %struct.bkey** %5, align 8
  %19 = call i32 @KEY_PTRS(%struct.bkey* %18)
  %20 = icmp ult i32 %17, %19
  br i1 %20, label %21, label %63

21:                                               ; preds = %16
  %22 = load %struct.btree*, %struct.btree** %4, align 8
  %23 = getelementptr inbounds %struct.btree, %struct.btree* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load %struct.bkey*, %struct.bkey** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @ptr_available(%struct.TYPE_4__* %24, %struct.bkey* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %59

29:                                               ; preds = %21
  %30 = load %struct.btree*, %struct.btree** %4, align 8
  %31 = getelementptr inbounds %struct.btree, %struct.btree* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load %struct.bkey*, %struct.bkey** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call %struct.bucket* @PTR_BUCKET(%struct.TYPE_4__* %32, %struct.bkey* %33, i32 %34)
  store %struct.bucket* %35, %struct.bucket** %8, align 8
  %36 = load %struct.bkey*, %struct.bkey** %5, align 8
  %37 = call i64 @KEY_DIRTY(%struct.bkey* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %29
  %40 = load %struct.bucket*, %struct.bucket** %8, align 8
  %41 = getelementptr inbounds %struct.bucket, %struct.bucket* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @BTREE_PRIO, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %57, label %45

45:                                               ; preds = %39
  %46 = load %struct.btree*, %struct.btree** %4, align 8
  %47 = getelementptr inbounds %struct.btree, %struct.btree* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load %struct.bucket*, %struct.bucket** %8, align 8
  %54 = call i64 @GC_MARK(%struct.bucket* %53)
  %55 = load i64, i64* @GC_MARK_METADATA, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %52, %39, %29
  br label %70

58:                                               ; preds = %52, %45
  br label %59

59:                                               ; preds = %58, %21
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %6, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %16

63:                                               ; preds = %16
  %64 = load %struct.btree*, %struct.btree** %4, align 8
  %65 = getelementptr inbounds %struct.btree, %struct.btree* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = call i32 @mutex_unlock(i32* %67)
  br label %69

69:                                               ; preds = %63, %2
  store i32 0, i32* %3, align 4
  br label %102

70:                                               ; preds = %57
  %71 = load %struct.btree*, %struct.btree** %4, align 8
  %72 = getelementptr inbounds %struct.btree, %struct.btree* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %77 = load %struct.bkey*, %struct.bkey** %5, align 8
  %78 = call i32 @bch_extent_to_text(i8* %76, i32 80, %struct.bkey* %77)
  %79 = load %struct.btree*, %struct.btree** %4, align 8
  %80 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %81 = load %struct.btree*, %struct.btree** %4, align 8
  %82 = getelementptr inbounds %struct.btree, %struct.btree* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load %struct.bkey*, %struct.bkey** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @PTR_BUCKET_NR(%struct.TYPE_4__* %83, %struct.bkey* %84, i32 %85)
  %87 = load %struct.bucket*, %struct.bucket** %8, align 8
  %88 = getelementptr inbounds %struct.bucket, %struct.bucket* %87, i32 0, i32 3
  %89 = call i32 @atomic_read(i32* %88)
  %90 = load %struct.bucket*, %struct.bucket** %8, align 8
  %91 = getelementptr inbounds %struct.bucket, %struct.bucket* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.bucket*, %struct.bucket** %8, align 8
  %94 = getelementptr inbounds %struct.bucket, %struct.bucket* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.bucket*, %struct.bucket** %8, align 8
  %97 = getelementptr inbounds %struct.bucket, %struct.bucket* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.bucket*, %struct.bucket** %8, align 8
  %100 = call i64 @GC_MARK(%struct.bucket* %99)
  %101 = call i32 @btree_bug(%struct.btree* %79, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i8* %80, i32 %86, i32 %89, i64 %92, i32 %95, i32 %98, i64 %100)
  store i32 1, i32* %3, align 4
  br label %102

102:                                              ; preds = %70, %69
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i64 @mutex_trylock(i32*) #1

declare dso_local i32 @KEY_PTRS(%struct.bkey*) #1

declare dso_local i64 @ptr_available(%struct.TYPE_4__*, %struct.bkey*, i32) #1

declare dso_local %struct.bucket* @PTR_BUCKET(%struct.TYPE_4__*, %struct.bkey*, i32) #1

declare dso_local i64 @KEY_DIRTY(%struct.bkey*) #1

declare dso_local i64 @GC_MARK(%struct.bucket*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @bch_extent_to_text(i8*, i32, %struct.bkey*) #1

declare dso_local i32 @btree_bug(%struct.btree*, i8*, i8*, i32, i32, i64, i32, i32, i64) #1

declare dso_local i32 @PTR_BUCKET_NR(%struct.TYPE_4__*, %struct.bkey*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
