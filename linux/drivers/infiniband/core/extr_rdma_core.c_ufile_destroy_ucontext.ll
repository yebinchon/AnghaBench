; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rdma_core.c_ufile_destroy_ucontext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rdma_core.c_ufile_destroy_ucontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_uverbs_file = type { %struct.ib_ucontext* }
%struct.ib_ucontext = type { i32, i32, %struct.ib_device* }
%struct.ib_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.ib_ucontext*)*, i32 (%struct.ib_ucontext*)* }

@RDMA_REMOVE_DRIVER_REMOVE = common dso_local global i32 0, align 4
@RDMACG_RESOURCE_HCA_HANDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_uverbs_file*, i32)* @ufile_destroy_ucontext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufile_destroy_ucontext(%struct.ib_uverbs_file* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_uverbs_file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_ucontext*, align 8
  %6 = alloca %struct.ib_device*, align 8
  store %struct.ib_uverbs_file* %0, %struct.ib_uverbs_file** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %3, align 8
  %8 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %7, i32 0, i32 0
  %9 = load %struct.ib_ucontext*, %struct.ib_ucontext** %8, align 8
  store %struct.ib_ucontext* %9, %struct.ib_ucontext** %5, align 8
  %10 = load %struct.ib_ucontext*, %struct.ib_ucontext** %5, align 8
  %11 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %10, i32 0, i32 2
  %12 = load %struct.ib_device*, %struct.ib_device** %11, align 8
  store %struct.ib_device* %12, %struct.ib_device** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @RDMA_REMOVE_DRIVER_REMOVE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %2
  %17 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %3, align 8
  %18 = call i32 @uverbs_user_mmap_disassociate(%struct.ib_uverbs_file* %17)
  %19 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %20 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32 (%struct.ib_ucontext*)*, i32 (%struct.ib_ucontext*)** %21, align 8
  %23 = icmp ne i32 (%struct.ib_ucontext*)* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %16
  %25 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %26 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32 (%struct.ib_ucontext*)*, i32 (%struct.ib_ucontext*)** %27, align 8
  %29 = load %struct.ib_ucontext*, %struct.ib_ucontext** %5, align 8
  %30 = call i32 %28(%struct.ib_ucontext* %29)
  br label %31

31:                                               ; preds = %24, %16
  br label %32

32:                                               ; preds = %31, %2
  %33 = load %struct.ib_ucontext*, %struct.ib_ucontext** %5, align 8
  %34 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %33, i32 0, i32 1
  %35 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %36 = load i32, i32* @RDMACG_RESOURCE_HCA_HANDLE, align 4
  %37 = call i32 @ib_rdmacg_uncharge(i32* %34, %struct.ib_device* %35, i32 %36)
  %38 = load %struct.ib_ucontext*, %struct.ib_ucontext** %5, align 8
  %39 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %38, i32 0, i32 0
  %40 = call i32 @rdma_restrack_del(i32* %39)
  %41 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %42 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.ib_ucontext*)*, i32 (%struct.ib_ucontext*)** %43, align 8
  %45 = load %struct.ib_ucontext*, %struct.ib_ucontext** %5, align 8
  %46 = call i32 %44(%struct.ib_ucontext* %45)
  %47 = load %struct.ib_ucontext*, %struct.ib_ucontext** %5, align 8
  %48 = call i32 @kfree(%struct.ib_ucontext* %47)
  %49 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %3, align 8
  %50 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %49, i32 0, i32 0
  store %struct.ib_ucontext* null, %struct.ib_ucontext** %50, align 8
  ret void
}

declare dso_local i32 @uverbs_user_mmap_disassociate(%struct.ib_uverbs_file*) #1

declare dso_local i32 @ib_rdmacg_uncharge(i32*, %struct.ib_device*, i32) #1

declare dso_local i32 @rdma_restrack_del(i32*) #1

declare dso_local i32 @kfree(%struct.ib_ucontext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
