; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb3/extr_cxio_resource.c_cxio_init_qpid_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb3/extr_cxio_resource.c_cxio_init_qpid_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxio_rdev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@T3_MAX_NUM_QP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxio_rdev*)* @cxio_init_qpid_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxio_init_qpid_fifo(%struct.cxio_rdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxio_rdev*, align 8
  %4 = alloca i32, align 4
  store %struct.cxio_rdev* %0, %struct.cxio_rdev** %3, align 8
  %5 = load %struct.cxio_rdev*, %struct.cxio_rdev** %3, align 8
  %6 = getelementptr inbounds %struct.cxio_rdev, %struct.cxio_rdev* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = call i32 @spin_lock_init(i32* %8)
  %10 = load %struct.cxio_rdev*, %struct.cxio_rdev** %3, align 8
  %11 = getelementptr inbounds %struct.cxio_rdev, %struct.cxio_rdev* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* @T3_MAX_NUM_QP, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i64 @kfifo_alloc(i32* %13, i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %48

24:                                               ; preds = %1
  store i32 16, i32* %4, align 4
  br label %25

25:                                               ; preds = %44, %24
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @T3_MAX_NUM_QP, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.cxio_rdev*, %struct.cxio_rdev** %3, align 8
  %32 = getelementptr inbounds %struct.cxio_rdev, %struct.cxio_rdev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %29
  %37 = load %struct.cxio_rdev*, %struct.cxio_rdev** %3, align 8
  %38 = getelementptr inbounds %struct.cxio_rdev, %struct.cxio_rdev* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = bitcast i32* %4 to i8*
  %42 = call i32 @kfifo_in(i32* %40, i8* %41, i32 4)
  br label %43

43:                                               ; preds = %36, %29
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %25

47:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %21
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @kfifo_alloc(i32*, i32, i32) #1

declare dso_local i32 @kfifo_in(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
