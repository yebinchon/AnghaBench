; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_destroy_aeq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_destroy_aeq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { i64, i32, i32, %struct.i40iw_aeq, %struct.i40iw_sc_dev }
%struct.i40iw_aeq = type { i32, i32 }
%struct.i40iw_sc_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*)*, i32 (i32*, i32, i32)* }

@I40IW_ERR_NOT_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"destroy aeq failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_device*)* @i40iw_destroy_aeq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_destroy_aeq(%struct.i40iw_device* %0) #0 {
  %2 = alloca %struct.i40iw_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40iw_sc_dev*, align 8
  %5 = alloca %struct.i40iw_aeq*, align 8
  store %struct.i40iw_device* %0, %struct.i40iw_device** %2, align 8
  %6 = load i32, i32* @I40IW_ERR_NOT_READY, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %8 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %7, i32 0, i32 4
  store %struct.i40iw_sc_dev* %8, %struct.i40iw_sc_dev** %4, align 8
  %9 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %10 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %9, i32 0, i32 3
  store %struct.i40iw_aeq* %10, %struct.i40iw_aeq** %5, align 8
  %11 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %12 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %1
  %16 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %17 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %18 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %21 = bitcast %struct.i40iw_device* %20 to i8*
  %22 = call i32 @i40iw_disable_irq(%struct.i40iw_sc_dev* %16, i32 %19, i8* %21)
  br label %23

23:                                               ; preds = %15, %1
  %24 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %25 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %55

29:                                               ; preds = %23
  %30 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %31 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %33, align 8
  %35 = load %struct.i40iw_aeq*, %struct.i40iw_aeq** %5, align 8
  %36 = getelementptr inbounds %struct.i40iw_aeq, %struct.i40iw_aeq* %35, i32 0, i32 1
  %37 = call i32 %34(i32* %36, i32 0, i32 1)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %29
  %40 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %41 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (i32*)*, i32 (i32*)** %43, align 8
  %45 = load %struct.i40iw_aeq*, %struct.i40iw_aeq** %5, align 8
  %46 = getelementptr inbounds %struct.i40iw_aeq, %struct.i40iw_aeq* %45, i32 0, i32 1
  %47 = call i32 %44(i32* %46)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %39, %29
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %51, %48
  br label %55

55:                                               ; preds = %54, %28
  %56 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %57 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.i40iw_aeq*, %struct.i40iw_aeq** %5, align 8
  %60 = getelementptr inbounds %struct.i40iw_aeq, %struct.i40iw_aeq* %59, i32 0, i32 0
  %61 = call i32 @i40iw_free_dma_mem(i32 %58, i32* %60)
  ret void
}

declare dso_local i32 @i40iw_disable_irq(%struct.i40iw_sc_dev*, i32, i8*) #1

declare dso_local i32 @i40iw_pr_err(i8*, i32) #1

declare dso_local i32 @i40iw_free_dma_mem(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
