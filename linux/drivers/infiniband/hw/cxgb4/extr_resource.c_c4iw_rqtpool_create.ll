; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_resource.c_c4iw_rqtpool_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_resource.c_c4iw_rqtpool_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_rdev = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }

@MIN_RQT_SHIFT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@T4_RQT_ENTRY_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to add RQT chunk (%x/%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to add all RQT chunks (%x/%x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"added RQT chunk (%x/%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c4iw_rqtpool_create(%struct.c4iw_rdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.c4iw_rdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.c4iw_rdev* %0, %struct.c4iw_rdev** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @MIN_RQT_SHIFT, align 4
  %9 = call i32 @gen_pool_create(i32 %8, i32 -1)
  %10 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %11 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %13 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %96

19:                                               ; preds = %1
  %20 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %21 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* @T4_RQT_ENTRY_SIZE, align 4
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %28, %19
  %31 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %32 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %4, align 4
  %40 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %41 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 %46, %47
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %5, align 4
  %51 = add i32 %49, %50
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %94, %30
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %95

56:                                               ; preds = %52
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %4, align 4
  %59 = sub i32 %57, %58
  %60 = add i32 %59, 1
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @min(i32 %60, i32 %61)
  store i32 %62, i32* %5, align 4
  %63 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %64 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i64 @gen_pool_add(i32 %65, i32 %66, i32 %67, i32 -1)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %56
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @MIN_RQT_SHIFT, align 4
  %76 = shl i32 1024, %75
  %77 = icmp ule i32 %74, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %70
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %4, align 4
  %82 = sub i32 %80, %81
  %83 = call i32 @pr_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %82)
  store i32 0, i32* %2, align 4
  br label %96

84:                                               ; preds = %70
  %85 = load i32, i32* %5, align 4
  %86 = lshr i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %94

87:                                               ; preds = %56
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %88, i32 %89)
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %4, align 4
  %93 = add i32 %92, %91
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %87, %84
  br label %52

95:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %78, %16
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @gen_pool_create(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @gen_pool_add(i32, i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
