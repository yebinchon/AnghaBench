; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_free_qp_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_free_qp_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { %struct.TYPE_5__, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.i40iw_qp = type { i32*, %struct.TYPE_6__, i32, i32, %struct.i40iw_pbl }
%struct.TYPE_6__ = type { i32*, i32 }
%struct.i40iw_pbl = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40iw_free_qp_resources(%struct.i40iw_device* %0, %struct.i40iw_qp* %1, i64 %2) #0 {
  %4 = alloca %struct.i40iw_device*, align 8
  %5 = alloca %struct.i40iw_qp*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.i40iw_pbl*, align 8
  store %struct.i40iw_device* %0, %struct.i40iw_device** %4, align 8
  store %struct.i40iw_qp* %1, %struct.i40iw_qp** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.i40iw_qp*, %struct.i40iw_qp** %5, align 8
  %9 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %8, i32 0, i32 4
  store %struct.i40iw_pbl* %9, %struct.i40iw_pbl** %7, align 8
  %10 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %11 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.i40iw_qp*, %struct.i40iw_qp** %5, align 8
  %15 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %14, i32 0, i32 3
  %16 = call i32 @i40iw_ieq_cleanup_qp(i32 %13, i32* %15)
  %17 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %18 = load %struct.i40iw_qp*, %struct.i40iw_qp** %5, align 8
  %19 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %18, i32 0, i32 3
  %20 = call i32 @i40iw_dealloc_push_page(%struct.i40iw_device* %17, i32* %19)
  %21 = load i64, i64* %6, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %25 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %26 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @i40iw_free_resource(%struct.i40iw_device* %24, i32 %27, i64 %28)
  br label %30

30:                                               ; preds = %23, %3
  %31 = load %struct.i40iw_pbl*, %struct.i40iw_pbl** %7, align 8
  %32 = getelementptr inbounds %struct.i40iw_pbl, %struct.i40iw_pbl* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %37 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.i40iw_pbl*, %struct.i40iw_pbl** %7, align 8
  %40 = getelementptr inbounds %struct.i40iw_pbl, %struct.i40iw_pbl* %39, i32 0, i32 0
  %41 = call i32 @i40iw_free_pble(i32 %38, i32* %40)
  br label %42

42:                                               ; preds = %35, %30
  %43 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %44 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.i40iw_qp*, %struct.i40iw_qp** %5, align 8
  %48 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %47, i32 0, i32 2
  %49 = call i32 @i40iw_free_dma_mem(i32 %46, i32* %48)
  %50 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %51 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.i40iw_qp*, %struct.i40iw_qp** %5, align 8
  %55 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = call i32 @i40iw_free_dma_mem(i32 %53, i32* %56)
  %58 = load %struct.i40iw_qp*, %struct.i40iw_qp** %5, align 8
  %59 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @kfree(i32* %61)
  %63 = load %struct.i40iw_qp*, %struct.i40iw_qp** %5, align 8
  %64 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  %66 = load %struct.i40iw_qp*, %struct.i40iw_qp** %5, align 8
  %67 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @kfree(i32* %68)
  ret void
}

declare dso_local i32 @i40iw_ieq_cleanup_qp(i32, i32*) #1

declare dso_local i32 @i40iw_dealloc_push_page(%struct.i40iw_device*, i32*) #1

declare dso_local i32 @i40iw_free_resource(%struct.i40iw_device*, i32, i64) #1

declare dso_local i32 @i40iw_free_pble(i32, i32*) #1

declare dso_local i32 @i40iw_free_dma_mem(i32, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
