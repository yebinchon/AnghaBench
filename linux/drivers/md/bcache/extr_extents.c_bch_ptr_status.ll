; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_extents.c_bch_ptr_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_extents.c_bch_ptr_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_set = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.bkey = type { i32 }
%struct.cache = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"bad, length too big\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"bad, short offset\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"bad, offset past end of device\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"stale\00", align 1
@ZERO_KEY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"bad, null key\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"bad, no pointers\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"zeroed key\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.cache_set*, %struct.bkey*)* @bch_ptr_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bch_ptr_status(%struct.cache_set* %0, %struct.bkey* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cache_set*, align 8
  %5 = alloca %struct.bkey*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cache*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.cache_set* %0, %struct.cache_set** %4, align 8
  store %struct.bkey* %1, %struct.bkey** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %70, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.bkey*, %struct.bkey** %5, align 8
  %13 = call i32 @KEY_PTRS(%struct.bkey* %12)
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %73

15:                                               ; preds = %10
  %16 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %17 = load %struct.bkey*, %struct.bkey** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @ptr_available(%struct.cache_set* %16, %struct.bkey* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %69

21:                                               ; preds = %15
  %22 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %23 = load %struct.bkey*, %struct.bkey** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call %struct.cache* @PTR_CACHE(%struct.cache_set* %22, %struct.bkey* %23, i32 %24)
  store %struct.cache* %25, %struct.cache** %7, align 8
  %26 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %27 = load %struct.bkey*, %struct.bkey** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @PTR_BUCKET_NR(%struct.cache_set* %26, %struct.bkey* %27, i32 %28)
  store i64 %29, i64* %8, align 8
  %30 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %31 = load %struct.bkey*, %struct.bkey** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @PTR_OFFSET(%struct.bkey* %31, i32 %32)
  %34 = call i64 @bucket_remainder(%struct.cache_set* %30, i32 %33)
  store i64 %34, i64* %9, align 8
  %35 = load %struct.bkey*, %struct.bkey** %5, align 8
  %36 = call i64 @KEY_SIZE(%struct.bkey* %35)
  %37 = load i64, i64* %9, align 8
  %38 = add i64 %36, %37
  %39 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %40 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ugt i64 %38, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %21
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %89

45:                                               ; preds = %21
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.cache*, %struct.cache** %7, align 8
  %48 = getelementptr inbounds %struct.cache, %struct.cache* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %46, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %89

53:                                               ; preds = %45
  %54 = load i64, i64* %8, align 8
  %55 = load %struct.cache*, %struct.cache** %7, align 8
  %56 = getelementptr inbounds %struct.cache, %struct.cache* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp uge i64 %54, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %89

61:                                               ; preds = %53
  %62 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %63 = load %struct.bkey*, %struct.bkey** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i64 @ptr_stale(%struct.cache_set* %62, %struct.bkey* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %89

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68, %15
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %6, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %10

73:                                               ; preds = %10
  %74 = load %struct.bkey*, %struct.bkey** %5, align 8
  %75 = call i32 @bkey_cmp(%struct.bkey* %74, i32* @ZERO_KEY)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %89

78:                                               ; preds = %73
  %79 = load %struct.bkey*, %struct.bkey** %5, align 8
  %80 = call i32 @KEY_PTRS(%struct.bkey* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %89

83:                                               ; preds = %78
  %84 = load %struct.bkey*, %struct.bkey** %5, align 8
  %85 = call i64 @KEY_SIZE(%struct.bkey* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %89

88:                                               ; preds = %83
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %89

89:                                               ; preds = %88, %87, %82, %77, %67, %60, %52, %44
  %90 = load i8*, i8** %3, align 8
  ret i8* %90
}

declare dso_local i32 @KEY_PTRS(%struct.bkey*) #1

declare dso_local i64 @ptr_available(%struct.cache_set*, %struct.bkey*, i32) #1

declare dso_local %struct.cache* @PTR_CACHE(%struct.cache_set*, %struct.bkey*, i32) #1

declare dso_local i64 @PTR_BUCKET_NR(%struct.cache_set*, %struct.bkey*, i32) #1

declare dso_local i64 @bucket_remainder(%struct.cache_set*, i32) #1

declare dso_local i32 @PTR_OFFSET(%struct.bkey*, i32) #1

declare dso_local i64 @KEY_SIZE(%struct.bkey*) #1

declare dso_local i64 @ptr_stale(%struct.cache_set*, %struct.bkey*, i32) #1

declare dso_local i32 @bkey_cmp(%struct.bkey*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
