; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_destroy_cqp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_destroy_cqp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { %struct.i40iw_cqp, %struct.i40iw_sc_dev }
%struct.i40iw_cqp = type { i32*, i32*, i32 }
%struct.i40iw_sc_dev = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_device*, i32)* @i40iw_destroy_cqp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_destroy_cqp(%struct.i40iw_device* %0, i32 %1) #0 {
  %3 = alloca %struct.i40iw_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40iw_sc_dev*, align 8
  %6 = alloca %struct.i40iw_cqp*, align 8
  store %struct.i40iw_device* %0, %struct.i40iw_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %8 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %7, i32 0, i32 1
  store %struct.i40iw_sc_dev* %8, %struct.i40iw_sc_dev** %5, align 8
  %9 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %10 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %9, i32 0, i32 0
  store %struct.i40iw_cqp* %10, %struct.i40iw_cqp** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %5, align 8
  %15 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (i32)*, i32 (i32)** %17, align 8
  %19 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %5, align 8
  %20 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 %18(i32 %21)
  br label %23

23:                                               ; preds = %13, %2
  %24 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %25 = call i32 @i40iw_cleanup_pending_cqp_op(%struct.i40iw_device* %24)
  %26 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %5, align 8
  %27 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.i40iw_cqp*, %struct.i40iw_cqp** %6, align 8
  %30 = getelementptr inbounds %struct.i40iw_cqp, %struct.i40iw_cqp* %29, i32 0, i32 2
  %31 = call i32 @i40iw_free_dma_mem(i32 %28, i32* %30)
  %32 = load %struct.i40iw_cqp*, %struct.i40iw_cqp** %6, align 8
  %33 = getelementptr inbounds %struct.i40iw_cqp, %struct.i40iw_cqp* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @kfree(i32* %34)
  %36 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %37 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.i40iw_cqp, %struct.i40iw_cqp* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  %39 = load %struct.i40iw_cqp*, %struct.i40iw_cqp** %6, align 8
  %40 = getelementptr inbounds %struct.i40iw_cqp, %struct.i40iw_cqp* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @kfree(i32* %41)
  %43 = load %struct.i40iw_cqp*, %struct.i40iw_cqp** %6, align 8
  %44 = getelementptr inbounds %struct.i40iw_cqp, %struct.i40iw_cqp* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  ret void
}

declare dso_local i32 @i40iw_cleanup_pending_cqp_op(%struct.i40iw_device*) #1

declare dso_local i32 @i40iw_free_dma_mem(i32, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
