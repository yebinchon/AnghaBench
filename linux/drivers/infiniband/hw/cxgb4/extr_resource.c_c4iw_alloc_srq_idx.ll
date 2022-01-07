; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_resource.c_c4iw_alloc_srq_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_resource.c_c4iw_alloc_srq_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_rdev = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c4iw_alloc_srq_idx(%struct.c4iw_rdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.c4iw_rdev*, align 8
  %4 = alloca i32, align 4
  store %struct.c4iw_rdev* %0, %struct.c4iw_rdev** %3, align 8
  %5 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %6 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = call i32 @c4iw_id_alloc(i32* %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %10 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %28

15:                                               ; preds = %1
  %16 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %17 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %23 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = call i32 @mutex_unlock(i32* %24)
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %62

28:                                               ; preds = %1
  %29 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %30 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %32, align 8
  %35 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %36 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %41 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %39, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %28
  %47 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %48 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %53 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  store i64 %51, i64* %55, align 8
  br label %56

56:                                               ; preds = %46, %28
  %57 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %58 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %56, %15
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @c4iw_id_alloc(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
