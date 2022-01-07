; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hw.c_i40iw_puda_ce_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hw.c_i40iw_puda_ce_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { i32 }
%struct.i40iw_sc_cq = type { i32 }
%struct.i40iw_sc_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.i40iw_sc_cq*)* }

@I40IW_ERR_QUEUE_EMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"puda  status = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"puda compl_err  =0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_device*, %struct.i40iw_sc_cq*)* @i40iw_puda_ce_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_puda_ce_handler(%struct.i40iw_device* %0, %struct.i40iw_sc_cq* %1) #0 {
  %3 = alloca %struct.i40iw_device*, align 8
  %4 = alloca %struct.i40iw_sc_cq*, align 8
  %5 = alloca %struct.i40iw_sc_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i40iw_device* %0, %struct.i40iw_device** %3, align 8
  store %struct.i40iw_sc_cq* %1, %struct.i40iw_sc_cq** %4, align 8
  %8 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %9 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %8, i32 0, i32 0
  %10 = bitcast i32* %9 to %struct.i40iw_sc_dev*
  store %struct.i40iw_sc_dev* %10, %struct.i40iw_sc_dev** %5, align 8
  br label %11

11:                                               ; preds = %32, %2
  %12 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %5, align 8
  %13 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %4, align 8
  %14 = call i32 @i40iw_puda_poll_completion(%struct.i40iw_sc_dev* %12, %struct.i40iw_sc_cq* %13, i32* %7)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @I40IW_ERR_QUEUE_EMPTY, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %33

19:                                               ; preds = %11
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %33

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %33

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31
  br i1 true, label %11, label %33

33:                                               ; preds = %32, %28, %22, %18
  %34 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %5, align 8
  %35 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.i40iw_sc_cq*)*, i32 (%struct.i40iw_sc_cq*)** %37, align 8
  %39 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %4, align 8
  %40 = call i32 %38(%struct.i40iw_sc_cq* %39)
  ret void
}

declare dso_local i32 @i40iw_puda_poll_completion(%struct.i40iw_sc_dev*, %struct.i40iw_sc_cq*, i32*) #1

declare dso_local i32 @i40iw_pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
