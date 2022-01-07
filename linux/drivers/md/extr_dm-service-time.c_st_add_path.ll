; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-service-time.c_st_add_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-service-time.c_st_add_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path_selector = type { %struct.selector* }
%struct.selector = type { i32, i32 }
%struct.dm_path = type { %struct.path_info* }
%struct.path_info = type { i32, i32, i32, i32, %struct.dm_path* }

@ST_MIN_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"service-time ps: incorrect number of arguments\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%u%c\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"service-time ps: invalid repeat count\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"repeat_count > 1 is deprecated, using 1 instead\00", align 1
@ST_MAX_RELATIVE_THROUGHPUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"service-time ps: invalid relative_throughput value\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"service-time ps: Error allocating path context\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path_selector*, %struct.dm_path*, i32, i8**, i8**)* @st_add_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_add_path(%struct.path_selector* %0, %struct.dm_path* %1, i32 %2, i8** %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.path_selector*, align 8
  %8 = alloca %struct.dm_path*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.selector*, align 8
  %13 = alloca %struct.path_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i64, align 8
  store %struct.path_selector* %0, %struct.path_selector** %7, align 8
  store %struct.dm_path* %1, %struct.dm_path** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  %18 = load %struct.path_selector*, %struct.path_selector** %7, align 8
  %19 = getelementptr inbounds %struct.path_selector, %struct.path_selector* %18, i32 0, i32 0
  %20 = load %struct.selector*, %struct.selector** %19, align 8
  store %struct.selector* %20, %struct.selector** %12, align 8
  %21 = load i32, i32* @ST_MIN_IO, align 4
  store i32 %21, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp sgt i32 %22, 2
  br i1 %23, label %24, label %28

24:                                               ; preds = %5
  %25 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8** %25, align 8
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %101

28:                                               ; preds = %5
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load i8**, i8*** %10, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @sscanf(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %14, i8* %16)
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8** %38, align 8
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %101

41:                                               ; preds = %31, %28
  %42 = load i32, i32* %14, align 4
  %43 = icmp ugt i32 %42, 1
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 @DMWARN_LIMIT(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %63

49:                                               ; preds = %46
  %50 = load i8**, i8*** %10, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @sscanf(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %15, i8* %16)
  %54 = icmp ne i32 %53, 1
  br i1 %54, label %59, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* @ST_MAX_RELATIVE_THROUGHPUT, align 4
  %58 = icmp ugt i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55, %49
  %60 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i8** %60, align 8
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %101

63:                                               ; preds = %55, %46
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call %struct.path_info* @kmalloc(i32 24, i32 %64)
  store %struct.path_info* %65, %struct.path_info** %13, align 8
  %66 = load %struct.path_info*, %struct.path_info** %13, align 8
  %67 = icmp ne %struct.path_info* %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %63
  %69 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i8** %69, align 8
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  br label %101

72:                                               ; preds = %63
  %73 = load %struct.dm_path*, %struct.dm_path** %8, align 8
  %74 = load %struct.path_info*, %struct.path_info** %13, align 8
  %75 = getelementptr inbounds %struct.path_info, %struct.path_info* %74, i32 0, i32 4
  store %struct.dm_path* %73, %struct.dm_path** %75, align 8
  %76 = load i32, i32* %14, align 4
  %77 = load %struct.path_info*, %struct.path_info** %13, align 8
  %78 = getelementptr inbounds %struct.path_info, %struct.path_info* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* %15, align 4
  %80 = load %struct.path_info*, %struct.path_info** %13, align 8
  %81 = getelementptr inbounds %struct.path_info, %struct.path_info* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.path_info*, %struct.path_info** %13, align 8
  %83 = getelementptr inbounds %struct.path_info, %struct.path_info* %82, i32 0, i32 3
  %84 = call i32 @atomic_set(i32* %83, i32 0)
  %85 = load %struct.path_info*, %struct.path_info** %13, align 8
  %86 = load %struct.dm_path*, %struct.dm_path** %8, align 8
  %87 = getelementptr inbounds %struct.dm_path, %struct.dm_path* %86, i32 0, i32 0
  store %struct.path_info* %85, %struct.path_info** %87, align 8
  %88 = load %struct.selector*, %struct.selector** %12, align 8
  %89 = getelementptr inbounds %struct.selector, %struct.selector* %88, i32 0, i32 0
  %90 = load i64, i64* %17, align 8
  %91 = call i32 @spin_lock_irqsave(i32* %89, i64 %90)
  %92 = load %struct.path_info*, %struct.path_info** %13, align 8
  %93 = getelementptr inbounds %struct.path_info, %struct.path_info* %92, i32 0, i32 2
  %94 = load %struct.selector*, %struct.selector** %12, align 8
  %95 = getelementptr inbounds %struct.selector, %struct.selector* %94, i32 0, i32 1
  %96 = call i32 @list_add_tail(i32* %93, i32* %95)
  %97 = load %struct.selector*, %struct.selector** %12, align 8
  %98 = getelementptr inbounds %struct.selector, %struct.selector* %97, i32 0, i32 0
  %99 = load i64, i64* %17, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* %98, i64 %99)
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %72, %68, %59, %37, %24
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i8*) #1

declare dso_local i32 @DMWARN_LIMIT(i8*) #1

declare dso_local %struct.path_info* @kmalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
