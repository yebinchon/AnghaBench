; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-queue-length.c_ql_add_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-queue-length.c_ql_add_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path_selector = type { %struct.selector* }
%struct.selector = type { i32, i32 }
%struct.dm_path = type { %struct.path_info* }
%struct.path_info = type { i32, i32, i32, %struct.dm_path* }

@QL_MIN_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"queue-length ps: incorrect number of arguments\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%u%c\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"queue-length ps: invalid repeat count\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"repeat_count > 1 is deprecated, using 1 instead\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"queue-length ps: Error allocating path information\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path_selector*, %struct.dm_path*, i32, i8**, i8**)* @ql_add_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_add_path(%struct.path_selector* %0, %struct.dm_path* %1, i32 %2, i8** %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.path_selector*, align 8
  %8 = alloca %struct.dm_path*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.selector*, align 8
  %13 = alloca %struct.path_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i64, align 8
  store %struct.path_selector* %0, %struct.path_selector** %7, align 8
  store %struct.dm_path* %1, %struct.dm_path** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  %17 = load %struct.path_selector*, %struct.path_selector** %7, align 8
  %18 = getelementptr inbounds %struct.path_selector, %struct.path_selector* %17, i32 0, i32 0
  %19 = load %struct.selector*, %struct.selector** %18, align 8
  store %struct.selector* %19, %struct.selector** %12, align 8
  %20 = load i32, i32* @QL_MIN_IO, align 4
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  %24 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8** %24, align 8
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %80

27:                                               ; preds = %5
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load i8**, i8*** %10, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @sscanf(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %14, i8* %15)
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8** %37, align 8
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %80

40:                                               ; preds = %30, %27
  %41 = load i32, i32* %14, align 4
  %42 = icmp ugt i32 %41, 1
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 @DMWARN_LIMIT(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  br label %45

45:                                               ; preds = %43, %40
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.path_info* @kmalloc(i32 24, i32 %46)
  store %struct.path_info* %47, %struct.path_info** %13, align 8
  %48 = load %struct.path_info*, %struct.path_info** %13, align 8
  %49 = icmp ne %struct.path_info* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i8** %51, align 8
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %80

54:                                               ; preds = %45
  %55 = load %struct.dm_path*, %struct.dm_path** %8, align 8
  %56 = load %struct.path_info*, %struct.path_info** %13, align 8
  %57 = getelementptr inbounds %struct.path_info, %struct.path_info* %56, i32 0, i32 3
  store %struct.dm_path* %55, %struct.dm_path** %57, align 8
  %58 = load i32, i32* %14, align 4
  %59 = load %struct.path_info*, %struct.path_info** %13, align 8
  %60 = getelementptr inbounds %struct.path_info, %struct.path_info* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.path_info*, %struct.path_info** %13, align 8
  %62 = getelementptr inbounds %struct.path_info, %struct.path_info* %61, i32 0, i32 2
  %63 = call i32 @atomic_set(i32* %62, i32 0)
  %64 = load %struct.path_info*, %struct.path_info** %13, align 8
  %65 = load %struct.dm_path*, %struct.dm_path** %8, align 8
  %66 = getelementptr inbounds %struct.dm_path, %struct.dm_path* %65, i32 0, i32 0
  store %struct.path_info* %64, %struct.path_info** %66, align 8
  %67 = load %struct.selector*, %struct.selector** %12, align 8
  %68 = getelementptr inbounds %struct.selector, %struct.selector* %67, i32 0, i32 0
  %69 = load i64, i64* %16, align 8
  %70 = call i32 @spin_lock_irqsave(i32* %68, i64 %69)
  %71 = load %struct.path_info*, %struct.path_info** %13, align 8
  %72 = getelementptr inbounds %struct.path_info, %struct.path_info* %71, i32 0, i32 1
  %73 = load %struct.selector*, %struct.selector** %12, align 8
  %74 = getelementptr inbounds %struct.selector, %struct.selector* %73, i32 0, i32 1
  %75 = call i32 @list_add_tail(i32* %72, i32* %74)
  %76 = load %struct.selector*, %struct.selector** %12, align 8
  %77 = getelementptr inbounds %struct.selector, %struct.selector* %76, i32 0, i32 0
  %78 = load i64, i64* %16, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %54, %50, %36, %23
  %81 = load i32, i32* %6, align 4
  ret i32 %81
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
