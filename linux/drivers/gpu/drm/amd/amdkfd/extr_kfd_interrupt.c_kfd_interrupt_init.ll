; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_interrupt.c_kfd_interrupt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_interrupt.c_kfd_interrupt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_dev = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@KFD_IH_NUM_ENTRIES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to allocate IH fifo\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"KFD IH\00", align 1
@WQ_HIGHPRI = common dso_local global i32 0, align 4
@interrupt_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kfd_interrupt_init(%struct.kfd_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kfd_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.kfd_dev* %0, %struct.kfd_dev** %3, align 8
  %5 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %6 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %5, i32 0, i32 5
  %7 = load i32, i32* @KFD_IH_NUM_ENTRIES, align 4
  %8 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %9 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %8, i32 0, i32 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %7, %12
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32 @kfifo_alloc(i32* %6, i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = call i32 (...) @kfd_chardev()
  %20 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %37

22:                                               ; preds = %1
  %23 = load i32, i32* @WQ_HIGHPRI, align 4
  %24 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 1)
  %25 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %26 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %28 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %27, i32 0, i32 2
  %29 = call i32 @spin_lock_init(i32* %28)
  %30 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %31 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %30, i32 0, i32 1
  %32 = load i32, i32* @interrupt_wq, align 4
  %33 = call i32 @INIT_WORK(i32* %31, i32 %32)
  %34 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %35 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = call i32 (...) @smp_wmb()
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %22, %18
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @kfifo_alloc(i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @kfd_chardev(...) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
