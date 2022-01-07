; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb3/extr_cxio_resource.c_cxio_hal_rqtpool_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb3/extr_cxio_resource.c_cxio_hal_rqtpool_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxio_rdev = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@MIN_RQT_SHIFT = common dso_local global i32 0, align 4
@RQT_CHUNK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxio_hal_rqtpool_create(%struct.cxio_rdev* %0) #0 {
  %2 = alloca %struct.cxio_rdev*, align 8
  %3 = alloca i64, align 8
  store %struct.cxio_rdev* %0, %struct.cxio_rdev** %2, align 8
  %4 = load i32, i32* @MIN_RQT_SHIFT, align 4
  %5 = call i64 @gen_pool_create(i32 %4, i32 -1)
  %6 = load %struct.cxio_rdev*, %struct.cxio_rdev** %2, align 8
  %7 = getelementptr inbounds %struct.cxio_rdev, %struct.cxio_rdev* %6, i32 0, i32 0
  store i64 %5, i64* %7, align 8
  %8 = load %struct.cxio_rdev*, %struct.cxio_rdev** %2, align 8
  %9 = getelementptr inbounds %struct.cxio_rdev, %struct.cxio_rdev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %1
  %13 = load %struct.cxio_rdev*, %struct.cxio_rdev** %2, align 8
  %14 = getelementptr inbounds %struct.cxio_rdev, %struct.cxio_rdev* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %3, align 8
  br label %17

17:                                               ; preds = %35, %12
  %18 = load i64, i64* %3, align 8
  %19 = load %struct.cxio_rdev*, %struct.cxio_rdev** %2, align 8
  %20 = getelementptr inbounds %struct.cxio_rdev, %struct.cxio_rdev* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @RQT_CHUNK, align 4
  %24 = sub nsw i32 %22, %23
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = icmp ule i64 %18, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %17
  %29 = load %struct.cxio_rdev*, %struct.cxio_rdev** %2, align 8
  %30 = getelementptr inbounds %struct.cxio_rdev, %struct.cxio_rdev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %3, align 8
  %33 = load i32, i32* @RQT_CHUNK, align 4
  %34 = call i32 @gen_pool_add(i64 %31, i64 %32, i32 %33, i32 -1)
  br label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @RQT_CHUNK, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %3, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %3, align 8
  br label %17

40:                                               ; preds = %17
  br label %41

41:                                               ; preds = %40, %1
  %42 = load %struct.cxio_rdev*, %struct.cxio_rdev** %2, align 8
  %43 = getelementptr inbounds %struct.cxio_rdev, %struct.cxio_rdev* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  br label %50

50:                                               ; preds = %47, %46
  %51 = phi i32 [ 0, %46 ], [ %49, %47 ]
  ret i32 %51
}

declare dso_local i64 @gen_pool_create(i32, i32) #1

declare dso_local i32 @gen_pool_add(i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
