; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_resource.c_c4iw_rqtpool_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_resource.c_c4iw_rqtpool_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_rdev = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"addr 0x%x size %d\0A\00", align 1
@MIN_RQT_SHIFT = common dso_local global i32 0, align 4
@destroy_rqtpool = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c4iw_rqtpool_free(%struct.c4iw_rdev* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.c4iw_rdev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.c4iw_rdev* %0, %struct.c4iw_rdev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i64, i64* %5, align 8
  %8 = load i32, i32* %6, align 4
  %9 = shl i32 %8, 6
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %7, i32 %9)
  %11 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %4, align 8
  %12 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i32, i32* %6, align 4
  %16 = shl i32 %15, 6
  %17 = load i32, i32* @MIN_RQT_SHIFT, align 4
  %18 = shl i32 1, %17
  %19 = call i64 @roundup(i32 %16, i32 %18)
  %20 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %4, align 8
  %21 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = sub nsw i64 %25, %19
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %23, align 4
  %28 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %4, align 8
  %29 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %4, align 8
  %33 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = shl i32 %36, 6
  %38 = call i32 @gen_pool_free(i32 %34, i64 %35, i32 %37)
  %39 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %4, align 8
  %40 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %39, i32 0, i32 0
  %41 = load i32, i32* @destroy_rqtpool, align 4
  %42 = call i32 @kref_put(i32* %40, i32 %41)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @roundup(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @gen_pool_free(i32, i64, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
