; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_qp.c_alloc_ird.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_qp.c_alloc_ird.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_dev = type { i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"device IRD resources exhausted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c4iw_dev*, i64)* @alloc_ird to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_ird(%struct.c4iw_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.c4iw_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.c4iw_dev* %0, %struct.c4iw_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.c4iw_dev*, %struct.c4iw_dev** %3, align 8
  %7 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %6, i32 0, i32 2
  %8 = call i32 @xa_lock_irq(i32* %7)
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.c4iw_dev*, %struct.c4iw_dev** %3, align 8
  %11 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sle i64 %9, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.c4iw_dev*, %struct.c4iw_dev** %3, align 8
  %17 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %18, %15
  store i64 %19, i64* %17, align 8
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %20, %14
  %24 = load %struct.c4iw_dev*, %struct.c4iw_dev** %3, align 8
  %25 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %24, i32 0, i32 2
  %26 = call i32 @xa_unlock_irq(i32* %25)
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load %struct.c4iw_dev*, %struct.c4iw_dev** %3, align 8
  %31 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @dev_warn(i32* %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %29, %23
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @xa_lock_irq(i32*) #1

declare dso_local i32 @xa_unlock_irq(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
