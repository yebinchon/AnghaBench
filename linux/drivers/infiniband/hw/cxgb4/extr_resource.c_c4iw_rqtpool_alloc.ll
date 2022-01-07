; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_resource.c_c4iw_rqtpool_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_resource.c_c4iw_rqtpool_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_rdev = type { %struct.TYPE_6__, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"addr 0x%x size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%s: Out of RQT memory\0A\00", align 1
@MIN_RQT_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c4iw_rqtpool_alloc(%struct.c4iw_rdev* %0, i32 %1) #0 {
  %3 = alloca %struct.c4iw_rdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.c4iw_rdev* %0, %struct.c4iw_rdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %7 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = shl i32 %9, 6
  %11 = call i64 @gen_pool_alloc(i32 %8, i32 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* %4, align 4
  %15 = shl i32 %14, 6
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %15)
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %21 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pci_name(i32 %23)
  %25 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %19, %2
  %27 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %28 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load i64, i64* %5, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %70

33:                                               ; preds = %26
  %34 = load i32, i32* %4, align 4
  %35 = shl i32 %34, 6
  %36 = load i32, i32* @MIN_RQT_SHIFT, align 4
  %37 = shl i32 1, %36
  %38 = call i64 @roundup(i32 %35, i32 %37)
  %39 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %40 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, %38
  store i64 %44, i64* %42, align 8
  %45 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %46 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %51 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %49, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %33
  %57 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %58 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %63 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i64 %61, i64* %65, align 8
  br label %66

66:                                               ; preds = %56, %33
  %67 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %68 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %67, i32 0, i32 1
  %69 = call i32 @kref_get(i32* %68)
  br label %77

70:                                               ; preds = %26
  %71 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %72 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %70, %66
  %78 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %79 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load i64, i64* %5, align 8
  %83 = trunc i64 %82 to i32
  ret i32 %83
}

declare dso_local i64 @gen_pool_alloc(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, i32) #1

declare dso_local i32 @pci_name(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @roundup(i32, i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
