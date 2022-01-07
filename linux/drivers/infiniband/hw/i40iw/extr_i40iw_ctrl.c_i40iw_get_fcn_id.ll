; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_get_fcn_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_get_fcn_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { i32* }

@I40IW_INVALID_FCN_ID = common dso_local global i64 0, align 8
@I40IW_FIRST_NON_PF_STAT = common dso_local global i64 0, align 8
@I40IW_MAX_STATS_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.i40iw_sc_dev*)* @i40iw_get_fcn_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i40iw_get_fcn_id(%struct.i40iw_sc_dev* %0) #0 {
  %2 = alloca %struct.i40iw_sc_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %2, align 8
  %5 = load i64, i64* @I40IW_INVALID_FCN_ID, align 8
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* @I40IW_FIRST_NON_PF_STAT, align 8
  store i64 %6, i64* %4, align 8
  br label %7

7:                                                ; preds = %27, %1
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @I40IW_MAX_STATS_COUNT, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %30

11:                                               ; preds = %7
  %12 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %2, align 8
  %13 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %11
  %20 = load i64, i64* %4, align 8
  store i64 %20, i64* %3, align 8
  %21 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %2, align 8
  %22 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32 1, i32* %25, align 4
  br label %30

26:                                               ; preds = %11
  br label %27

27:                                               ; preds = %26
  %28 = load i64, i64* %4, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %4, align 8
  br label %7

30:                                               ; preds = %19, %7
  %31 = load i64, i64* %3, align 8
  ret i64 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
