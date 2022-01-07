; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_io.c_bch_count_io_errors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_io.c_bch_count_io_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@IO_ERROR_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s: IO error on %s%s\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c", recovering.\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"%s: too many IO errors %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bch_count_io_errors(%struct.cache* %0, i64 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.cache*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cache* %0, %struct.cache** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %14 = load %struct.cache*, %struct.cache** %5, align 8
  %15 = getelementptr inbounds %struct.cache, %struct.cache* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %71

20:                                               ; preds = %4
  %21 = load %struct.cache*, %struct.cache** %5, align 8
  %22 = getelementptr inbounds %struct.cache, %struct.cache* %21, i32 0, i32 3
  %23 = call i32 @atomic_inc_return(i32* %22)
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %69, %20
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.cache*, %struct.cache** %5, align 8
  %27 = getelementptr inbounds %struct.cache, %struct.cache* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ugt i32 %25, %30
  br i1 %31, label %32, label %70

32:                                               ; preds = %24
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.cache*, %struct.cache** %5, align 8
  %36 = getelementptr inbounds %struct.cache, %struct.cache* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sub i32 %34, %39
  store i32 %40, i32* %12, align 4
  %41 = load %struct.cache*, %struct.cache** %5, align 8
  %42 = getelementptr inbounds %struct.cache, %struct.cache* %41, i32 0, i32 3
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @atomic_cmpxchg(i32* %42, i32 %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %69

49:                                               ; preds = %32
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %9, align 4
  %51 = load %struct.cache*, %struct.cache** %5, align 8
  %52 = getelementptr inbounds %struct.cache, %struct.cache* %51, i32 0, i32 2
  %53 = call i32 @atomic_read(i32* %52)
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %64, %49
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %10, align 4
  %57 = mul nsw i32 %56, 127
  %58 = sdiv i32 %57, 128
  store i32 %58, i32* %12, align 4
  %59 = load %struct.cache*, %struct.cache** %5, align 8
  %60 = getelementptr inbounds %struct.cache, %struct.cache* %59, i32 0, i32 2
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @atomic_cmpxchg(i32* %60, i32 %61, i32 %62)
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %54
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %54, label %68

68:                                               ; preds = %64
  br label %69

69:                                               ; preds = %68, %32
  br label %24

70:                                               ; preds = %24
  br label %71

71:                                               ; preds = %70, %4
  %72 = load i64, i64* %6, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %110

74:                                               ; preds = %71
  %75 = load i32, i32* @IO_ERROR_SHIFT, align 4
  %76 = shl i32 1, %75
  %77 = load %struct.cache*, %struct.cache** %5, align 8
  %78 = getelementptr inbounds %struct.cache, %struct.cache* %77, i32 0, i32 2
  %79 = call i32 @atomic_add_return(i32 %76, i32* %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* @IO_ERROR_SHIFT, align 4
  %81 = load i32, i32* %13, align 4
  %82 = lshr i32 %81, %80
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = load %struct.cache*, %struct.cache** %5, align 8
  %85 = getelementptr inbounds %struct.cache, %struct.cache* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ult i32 %83, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %74
  %91 = load %struct.cache*, %struct.cache** %5, align 8
  %92 = getelementptr inbounds %struct.cache, %struct.cache* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %99 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %93, i8* %94, i8* %98)
  br label %109

100:                                              ; preds = %74
  %101 = load %struct.cache*, %struct.cache** %5, align 8
  %102 = getelementptr inbounds %struct.cache, %struct.cache* %101, i32 0, i32 1
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load %struct.cache*, %struct.cache** %5, align 8
  %105 = getelementptr inbounds %struct.cache, %struct.cache* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = call i32 @bch_cache_set_error(%struct.TYPE_2__* %103, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %106, i8* %107)
  br label %109

109:                                              ; preds = %100, %90
  br label %110

110:                                              ; preds = %109, %71
  ret void
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_add_return(i32, i32*) #1

declare dso_local i32 @pr_err(i8*, i32, i8*, i8*) #1

declare dso_local i32 @bch_cache_set_error(%struct.TYPE_2__*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
