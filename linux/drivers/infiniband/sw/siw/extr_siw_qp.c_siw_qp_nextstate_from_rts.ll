; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp.c_siw_qp_nextstate_from_rts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp.c_siw_qp_nextstate_from_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_qp = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.siw_qp_attrs = type { i32 }
%struct.TYPE_4__ = type { i32 }

@SIW_WR_IDLE = common dso_local global i32 0, align 4
@TERM_ERROR_LAYER_RDMAP = common dso_local global i32 0, align 4
@RDMAP_ETYPE_CATASTROPHIC = common dso_local global i32 0, align 4
@RDMAP_ECODE_UNSPECIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.siw_qp*, %struct.siw_qp_attrs*)* @siw_qp_nextstate_from_rts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siw_qp_nextstate_from_rts(%struct.siw_qp* %0, %struct.siw_qp_attrs* %1) #0 {
  %3 = alloca %struct.siw_qp*, align 8
  %4 = alloca %struct.siw_qp_attrs*, align 8
  %5 = alloca i32, align 4
  store %struct.siw_qp* %0, %struct.siw_qp** %3, align 8
  store %struct.siw_qp_attrs* %1, %struct.siw_qp_attrs** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.siw_qp_attrs*, %struct.siw_qp_attrs** %4, align 8
  %7 = getelementptr inbounds %struct.siw_qp_attrs, %struct.siw_qp_attrs* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %46 [
    i32 130, label %9
    i32 128, label %29
    i32 129, label %38
  ]

9:                                                ; preds = %2
  %10 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %11 = call %struct.TYPE_4__* @tx_wqe(%struct.siw_qp* %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SIW_WR_IDLE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %18 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 130, i32* %19, align 4
  br label %26

20:                                               ; preds = %9
  %21 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %22 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 129, i32* %23, align 4
  %24 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %25 = call i32 @siw_sq_flush(%struct.siw_qp* %24)
  br label %26

26:                                               ; preds = %20, %16
  %27 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %28 = call i32 @siw_rq_flush(%struct.siw_qp* %27)
  store i32 1, i32* %5, align 4
  br label %47

29:                                               ; preds = %2
  %30 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %31 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 128, i32* %32, align 4
  %33 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %34 = load i32, i32* @TERM_ERROR_LAYER_RDMAP, align 4
  %35 = load i32, i32* @RDMAP_ETYPE_CATASTROPHIC, align 4
  %36 = load i32, i32* @RDMAP_ECODE_UNSPECIFIED, align 4
  %37 = call i32 @siw_init_terminate(%struct.siw_qp* %33, i32 %34, i32 %35, i32 %36, i32 1)
  store i32 1, i32* %5, align 4
  br label %47

38:                                               ; preds = %2
  %39 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %40 = call i32 @siw_sq_flush(%struct.siw_qp* %39)
  %41 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %42 = call i32 @siw_rq_flush(%struct.siw_qp* %41)
  %43 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %44 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 129, i32* %45, align 4
  store i32 1, i32* %5, align 4
  br label %47

46:                                               ; preds = %2
  br label %47

47:                                               ; preds = %46, %38, %29, %26
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local %struct.TYPE_4__* @tx_wqe(%struct.siw_qp*) #1

declare dso_local i32 @siw_sq_flush(%struct.siw_qp*) #1

declare dso_local i32 @siw_rq_flush(%struct.siw_qp*) #1

declare dso_local i32 @siw_init_terminate(%struct.siw_qp*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
