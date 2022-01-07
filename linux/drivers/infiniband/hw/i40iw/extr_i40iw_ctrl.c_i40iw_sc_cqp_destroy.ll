; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_cqp_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_cqp_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_cqp = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@I40E_PFPE_CCQPHIGH = common dso_local global i32 0, align 4
@I40E_PFPE_CCQPLOW = common dso_local global i32 0, align 4
@I40E_PFPE_CCQPSTATUS = common dso_local global i32 0, align 4
@I40E_VFPE_CCQPHIGH1 = common dso_local global i32 0, align 4
@I40E_VFPE_CCQPLOW1 = common dso_local global i32 0, align 4
@I40E_VFPE_CCQPSTATUS1 = common dso_local global i32 0, align 4
@I40IW_DONE_COUNT = common dso_local global i64 0, align 8
@I40IW_ERR_TIMEOUT = common dso_local global i32 0, align 4
@I40IW_SLEEP_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_cqp*)* @i40iw_sc_cqp_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_sc_cqp_destroy(%struct.i40iw_sc_cqp* %0) #0 {
  %2 = alloca %struct.i40iw_sc_cqp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i40iw_sc_cqp* %0, %struct.i40iw_sc_cqp** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %2, align 8
  %8 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %1
  %14 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %2, align 8
  %15 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @I40E_PFPE_CCQPHIGH, align 4
  %20 = call i32 @i40iw_wr32(i32 %18, i32 %19, i32 0)
  %21 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %2, align 8
  %22 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @I40E_PFPE_CCQPLOW, align 4
  %27 = call i32 @i40iw_wr32(i32 %25, i32 %26, i32 0)
  %28 = load i32, i32* @I40E_PFPE_CCQPSTATUS, align 4
  store i32 %28, i32* %6, align 4
  br label %45

29:                                               ; preds = %1
  %30 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %2, align 8
  %31 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @I40E_VFPE_CCQPHIGH1, align 4
  %36 = call i32 @i40iw_wr32(i32 %34, i32 %35, i32 0)
  %37 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %2, align 8
  %38 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @I40E_VFPE_CCQPLOW1, align 4
  %43 = call i32 @i40iw_wr32(i32 %41, i32 %42, i32 0)
  %44 = load i32, i32* @I40E_VFPE_CCQPSTATUS1, align 4
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %29, %13
  br label %46

46:                                               ; preds = %64, %45
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  %49 = sext i32 %47 to i64
  %50 = load i64, i64* @I40IW_DONE_COUNT, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @I40IW_ERR_TIMEOUT, align 4
  store i32 %53, i32* %5, align 4
  br label %67

54:                                               ; preds = %46
  %55 = load i32, i32* @I40IW_SLEEP_COUNT, align 4
  %56 = call i32 @udelay(i32 %55)
  %57 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %2, align 8
  %58 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @i40iw_rd32(i32 %61, i32 %62)
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %54
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %46, label %67

67:                                               ; preds = %64, %52
  %68 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %2, align 8
  %69 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %2, align 8
  %74 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %73, i32 0, i32 0
  %75 = call i32 @i40iw_free_dma_mem(i32 %72, i32* %74)
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @i40iw_wr32(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @i40iw_rd32(i32, i32) #1

declare dso_local i32 @i40iw_free_dma_mem(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
