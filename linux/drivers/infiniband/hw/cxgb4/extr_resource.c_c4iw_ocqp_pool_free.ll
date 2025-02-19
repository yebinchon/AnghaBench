; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_resource.c_c4iw_ocqp_pool_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_resource.c_c4iw_ocqp_pool_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_rdev = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"addr 0x%x size %d\0A\00", align 1
@MIN_OCQP_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c4iw_ocqp_pool_free(%struct.c4iw_rdev* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.c4iw_rdev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.c4iw_rdev* %0, %struct.c4iw_rdev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i64, i64* %5, align 8
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %7, i32 %8)
  %10 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %4, align 8
  %11 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @MIN_OCQP_SHIFT, align 4
  %16 = shl i32 1, %15
  %17 = call i64 @roundup(i32 %14, i32 %16)
  %18 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %4, align 8
  %19 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = sub nsw i64 %23, %17
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 4
  %26 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %4, align 8
  %27 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %4, align 8
  %31 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @gen_pool_free(i32 %32, i64 %33, i32 %34)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @roundup(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @gen_pool_free(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
