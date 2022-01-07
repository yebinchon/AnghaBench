; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c__ib_alloc_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c__ib_alloc_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32** }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ib_dev_attr_group = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@XA_FLAGS_ALLOC = common dso_local global i32 0, align 4
@ib_unregister_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_device* @_ib_alloc_device(i64 %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ib_device*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp ult i64 %5, 48
  %7 = zext i1 %6 to i32
  %8 = call i64 @WARN_ON(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.ib_device* null, %struct.ib_device** %2, align 8
  br label %65

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.ib_device* @kzalloc(i64 %12, i32 %13)
  store %struct.ib_device* %14, %struct.ib_device** %4, align 8
  %15 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %16 = icmp ne %struct.ib_device* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  store %struct.ib_device* null, %struct.ib_device** %2, align 8
  br label %65

18:                                               ; preds = %11
  %19 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %20 = call i64 @rdma_restrack_init(%struct.ib_device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %24 = call i32 @kfree(%struct.ib_device* %23)
  store %struct.ib_device* null, %struct.ib_device** %2, align 8
  br label %65

25:                                               ; preds = %18
  %26 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %27 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %26, i32 0, i32 10
  %28 = load i32**, i32*** %27, align 8
  %29 = getelementptr inbounds i32*, i32** %28, i64 0
  store i32* @ib_dev_attr_group, i32** %29, align 8
  %30 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %31 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %30, i32 0, i32 9
  %32 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %33 = call i32 @rdma_init_coredev(i32* %31, %struct.ib_device* %32, i32* @init_net)
  %34 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %35 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %34, i32 0, i32 8
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %38 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %37, i32 0, i32 7
  %39 = call i32 @spin_lock_init(i32* %38)
  %40 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %41 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %40, i32 0, i32 6
  %42 = call i32 @mutex_init(i32* %41)
  %43 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %44 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %43, i32 0, i32 5
  %45 = load i32, i32* @XA_FLAGS_ALLOC, align 4
  %46 = call i32 @xa_init_flags(i32* %44, i32 %45)
  %47 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %48 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %47, i32 0, i32 4
  %49 = call i32 @init_rwsem(i32* %48)
  %50 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %51 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %50, i32 0, i32 3
  %52 = load i32, i32* @XA_FLAGS_ALLOC, align 4
  %53 = call i32 @xa_init_flags(i32* %51, i32 %52)
  %54 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %55 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %54, i32 0, i32 2
  %56 = call i32 @mutex_init(i32* %55)
  %57 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %58 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %57, i32 0, i32 1
  %59 = call i32 @init_completion(i32* %58)
  %60 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %61 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %60, i32 0, i32 0
  %62 = load i32, i32* @ib_unregister_work, align 4
  %63 = call i32 @INIT_WORK(i32* %61, i32 %62)
  %64 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  store %struct.ib_device* %64, %struct.ib_device** %2, align 8
  br label %65

65:                                               ; preds = %25, %22, %17, %10
  %66 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  ret %struct.ib_device* %66
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.ib_device* @kzalloc(i64, i32) #1

declare dso_local i64 @rdma_restrack_init(%struct.ib_device*) #1

declare dso_local i32 @kfree(%struct.ib_device*) #1

declare dso_local i32 @rdma_init_coredev(i32*, %struct.ib_device*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @xa_init_flags(i32*, i32) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
