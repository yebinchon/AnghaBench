; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_qp.c_destroy_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_qp.c_destroy_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_rdev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.t4_wq = type { %struct.TYPE_7__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.c4iw_dev_ucontext = type { i32 }

@mapping = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c4iw_rdev*, %struct.t4_wq*, %struct.c4iw_dev_ucontext*, i32)* @destroy_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @destroy_qp(%struct.c4iw_rdev* %0, %struct.t4_wq* %1, %struct.c4iw_dev_ucontext* %2, i32 %3) #0 {
  %5 = alloca %struct.c4iw_rdev*, align 8
  %6 = alloca %struct.t4_wq*, align 8
  %7 = alloca %struct.c4iw_dev_ucontext*, align 8
  %8 = alloca i32, align 4
  store %struct.c4iw_rdev* %0, %struct.c4iw_rdev** %5, align 8
  store %struct.t4_wq* %1, %struct.t4_wq** %6, align 8
  store %struct.c4iw_dev_ucontext* %2, %struct.c4iw_dev_ucontext** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %5, align 8
  %10 = load %struct.t4_wq*, %struct.t4_wq** %6, align 8
  %11 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %10, i32 0, i32 1
  %12 = call i32 @dealloc_sq(%struct.c4iw_rdev* %9, %struct.TYPE_8__* %11)
  %13 = load %struct.t4_wq*, %struct.t4_wq** %6, align 8
  %14 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @kfree(i32 %16)
  %18 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %5, align 8
  %19 = load %struct.t4_wq*, %struct.t4_wq** %6, align 8
  %20 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.c4iw_dev_ucontext*, %struct.c4iw_dev_ucontext** %7, align 8
  %24 = call i32 @c4iw_put_qpid(%struct.c4iw_rdev* %18, i32 %22, %struct.c4iw_dev_ucontext* %23)
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %68

27:                                               ; preds = %4
  %28 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %5, align 8
  %29 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.t4_wq*, %struct.t4_wq** %6, align 8
  %34 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.t4_wq*, %struct.t4_wq** %6, align 8
  %38 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.t4_wq*, %struct.t4_wq** %6, align 8
  %42 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %41, i32 0, i32 0
  %43 = load i32, i32* @mapping, align 4
  %44 = call i32 @dma_unmap_addr(%struct.TYPE_7__* %42, i32 %43)
  %45 = call i32 @dma_free_coherent(i32* %32, i32 %36, i32 %40, i32 %44)
  %46 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %5, align 8
  %47 = load %struct.t4_wq*, %struct.t4_wq** %6, align 8
  %48 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.t4_wq*, %struct.t4_wq** %6, align 8
  %52 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @c4iw_rqtpool_free(%struct.c4iw_rdev* %46, i32 %50, i32 %54)
  %56 = load %struct.t4_wq*, %struct.t4_wq** %6, align 8
  %57 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @kfree(i32 %59)
  %61 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %5, align 8
  %62 = load %struct.t4_wq*, %struct.t4_wq** %6, align 8
  %63 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.c4iw_dev_ucontext*, %struct.c4iw_dev_ucontext** %7, align 8
  %67 = call i32 @c4iw_put_qpid(%struct.c4iw_rdev* %61, i32 %65, %struct.c4iw_dev_ucontext* %66)
  br label %68

68:                                               ; preds = %27, %4
  ret i32 0
}

declare dso_local i32 @dealloc_sq(%struct.c4iw_rdev*, %struct.TYPE_8__*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @c4iw_put_qpid(%struct.c4iw_rdev*, i32, %struct.c4iw_dev_ucontext*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @c4iw_rqtpool_free(%struct.c4iw_rdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
