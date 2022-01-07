; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_alloc_ucontext_pd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_alloc_ucontext_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.ib_device }
%struct.ib_device = type { i32 }
%struct.ocrdma_ucontext = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.ocrdma_ucontext* }
%struct.TYPE_5__ = type { %struct.ib_device* }
%struct.ib_udata = type { i32 }
%struct.ib_pd = type { %struct.ib_device* }

@ib_pd = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*, %struct.ocrdma_ucontext*, %struct.ib_udata*)* @ocrdma_alloc_ucontext_pd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_alloc_ucontext_pd(%struct.ocrdma_dev* %0, %struct.ocrdma_ucontext* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocrdma_dev*, align 8
  %6 = alloca %struct.ocrdma_ucontext*, align 8
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.ib_device*, align 8
  %9 = alloca %struct.ib_pd*, align 8
  %10 = alloca i32, align 4
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %5, align 8
  store %struct.ocrdma_ucontext* %1, %struct.ocrdma_ucontext** %6, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  %11 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %12 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %11, i32 0, i32 0
  store %struct.ib_device* %12, %struct.ib_device** %8, align 8
  %13 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %14 = load i32, i32* @ib_pd, align 4
  %15 = call %struct.ib_pd* @rdma_zalloc_drv_obj(%struct.ib_device* %13, i32 %14)
  store %struct.ib_pd* %15, %struct.ib_pd** %9, align 8
  %16 = load %struct.ib_pd*, %struct.ib_pd** %9, align 8
  %17 = icmp ne %struct.ib_pd* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %58

21:                                               ; preds = %3
  %22 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %23 = load %struct.ib_pd*, %struct.ib_pd** %9, align 8
  %24 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %23, i32 0, i32 0
  store %struct.ib_device* %22, %struct.ib_device** %24, align 8
  %25 = load %struct.ib_pd*, %struct.ib_pd** %9, align 8
  %26 = call %struct.TYPE_6__* @get_ocrdma_pd(%struct.ib_pd* %25)
  %27 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %6, align 8
  %28 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %27, i32 0, i32 0
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %28, align 8
  %29 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %30 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %6, align 8
  %31 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %6, align 8
  %34 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %35 = call i32 @_ocrdma_alloc_pd(%struct.ocrdma_dev* %29, %struct.TYPE_6__* %32, %struct.ocrdma_ucontext* %33, %struct.ib_udata* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %21
  %39 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %6, align 8
  %40 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = call i32 @kfree(%struct.TYPE_6__* %41)
  br label %56

43:                                               ; preds = %21
  %44 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %6, align 8
  %45 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %6, align 8
  %46 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  store %struct.ocrdma_ucontext* %44, %struct.ocrdma_ucontext** %48, align 8
  %49 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %50 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %49, i32 0, i32 0
  %51 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %6, align 8
  %52 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store %struct.ib_device* %50, %struct.ib_device** %55, align 8
  br label %56

56:                                               ; preds = %43, %38
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %18
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.ib_pd* @rdma_zalloc_drv_obj(%struct.ib_device*, i32) #1

declare dso_local %struct.TYPE_6__* @get_ocrdma_pd(%struct.ib_pd*) #1

declare dso_local i32 @_ocrdma_alloc_pd(%struct.ocrdma_dev*, %struct.TYPE_6__*, %struct.ocrdma_ucontext*, %struct.ib_udata*) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
