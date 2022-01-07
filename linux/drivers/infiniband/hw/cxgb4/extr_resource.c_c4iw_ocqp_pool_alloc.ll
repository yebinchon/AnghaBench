; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_resource.c_c4iw_ocqp_pool_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_resource.c_c4iw_ocqp_pool_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_rdev = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [19 x i8] c"addr 0x%x size %d\0A\00", align 1
@MIN_OCQP_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c4iw_ocqp_pool_alloc(%struct.c4iw_rdev* %0, i32 %1) #0 {
  %3 = alloca %struct.c4iw_rdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.c4iw_rdev* %0, %struct.c4iw_rdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %7 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @gen_pool_alloc(i32 %8, i32 %9)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %58

17:                                               ; preds = %2
  %18 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %19 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @MIN_OCQP_SHIFT, align 4
  %24 = shl i32 1, %23
  %25 = call i64 @roundup(i32 %22, i32 %24)
  %26 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %27 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, %25
  store i64 %31, i64* %29, align 8
  %32 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %33 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %38 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %36, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %17
  %44 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %45 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %50 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i64 %48, i64* %52, align 8
  br label %53

53:                                               ; preds = %43, %17
  %54 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %55 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  br label %58

58:                                               ; preds = %53, %2
  %59 = load i64, i64* %5, align 8
  %60 = trunc i64 %59 to i32
  ret i32 %60
}

declare dso_local i64 @gen_pool_alloc(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @roundup(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
