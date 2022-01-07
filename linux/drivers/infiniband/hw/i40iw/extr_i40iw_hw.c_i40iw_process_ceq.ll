; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hw.c_i40iw_process_ceq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hw.c_i40iw_process_ceq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { %struct.i40iw_sc_dev }
%struct.i40iw_sc_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.i40iw_sc_cq* (%struct.i40iw_sc_dev*, %struct.i40iw_sc_ceq*)* }
%struct.i40iw_sc_cq = type { i64 }
%struct.i40iw_sc_ceq = type { i32 }
%struct.i40iw_ceq = type { %struct.i40iw_sc_ceq }

@I40IW_CQ_TYPE_CQP = common dso_local global i64 0, align 8
@I40IW_CQ_TYPE_IWARP = common dso_local global i64 0, align 8
@I40IW_CQ_TYPE_ILQ = common dso_local global i64 0, align 8
@I40IW_CQ_TYPE_IEQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40iw_process_ceq(%struct.i40iw_device* %0, %struct.i40iw_ceq* %1) #0 {
  %3 = alloca %struct.i40iw_device*, align 8
  %4 = alloca %struct.i40iw_ceq*, align 8
  %5 = alloca %struct.i40iw_sc_dev*, align 8
  %6 = alloca %struct.i40iw_sc_ceq*, align 8
  %7 = alloca %struct.i40iw_sc_cq*, align 8
  %8 = alloca i32, align 4
  store %struct.i40iw_device* %0, %struct.i40iw_device** %3, align 8
  store %struct.i40iw_ceq* %1, %struct.i40iw_ceq** %4, align 8
  %9 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %10 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %9, i32 0, i32 0
  store %struct.i40iw_sc_dev* %10, %struct.i40iw_sc_dev** %5, align 8
  store i32 1, i32* %8, align 4
  %11 = load %struct.i40iw_ceq*, %struct.i40iw_ceq** %4, align 8
  %12 = getelementptr inbounds %struct.i40iw_ceq, %struct.i40iw_ceq* %11, i32 0, i32 0
  store %struct.i40iw_sc_ceq* %12, %struct.i40iw_sc_ceq** %6, align 8
  br label %13

13:                                               ; preds = %65, %2
  %14 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %5, align 8
  %15 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.i40iw_sc_cq* (%struct.i40iw_sc_dev*, %struct.i40iw_sc_ceq*)*, %struct.i40iw_sc_cq* (%struct.i40iw_sc_dev*, %struct.i40iw_sc_ceq*)** %17, align 8
  %19 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %5, align 8
  %20 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %6, align 8
  %21 = call %struct.i40iw_sc_cq* %18(%struct.i40iw_sc_dev* %19, %struct.i40iw_sc_ceq* %20)
  store %struct.i40iw_sc_cq* %21, %struct.i40iw_sc_cq** %7, align 8
  %22 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %7, align 8
  %23 = icmp ne %struct.i40iw_sc_cq* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %13
  br label %66

25:                                               ; preds = %13
  %26 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %7, align 8
  %27 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @I40IW_CQ_TYPE_CQP, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %33 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @i40iw_cqp_ce_handler(%struct.i40iw_device* %32, %struct.i40iw_sc_cq* %33, i32 %34)
  br label %64

36:                                               ; preds = %25
  %37 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %7, align 8
  %38 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @I40IW_CQ_TYPE_IWARP, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %44 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %7, align 8
  %45 = call i32 @i40iw_iwarp_ce_handler(%struct.i40iw_device* %43, %struct.i40iw_sc_cq* %44)
  br label %63

46:                                               ; preds = %36
  %47 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %7, align 8
  %48 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @I40IW_CQ_TYPE_ILQ, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %7, align 8
  %54 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @I40IW_CQ_TYPE_IEQ, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52, %46
  %59 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %60 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %7, align 8
  %61 = call i32 @i40iw_puda_ce_handler(%struct.i40iw_device* %59, %struct.i40iw_sc_cq* %60)
  br label %62

62:                                               ; preds = %58, %52
  br label %63

63:                                               ; preds = %62, %42
  br label %64

64:                                               ; preds = %63, %31
  br label %65

65:                                               ; preds = %64
  br i1 true, label %13, label %66

66:                                               ; preds = %65, %24
  ret void
}

declare dso_local i32 @i40iw_cqp_ce_handler(%struct.i40iw_device*, %struct.i40iw_sc_cq*, i32) #1

declare dso_local i32 @i40iw_iwarp_ce_handler(%struct.i40iw_device*, %struct.i40iw_sc_cq*) #1

declare dso_local i32 @i40iw_puda_ce_handler(%struct.i40iw_device*, %struct.i40iw_sc_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
