; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_puda.c_i40iw_puda_get_next_send_wqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_puda.c_i40iw_puda_get_next_send_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_qp_uk = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.i40iw_qp_uk*, i64*)* @i40iw_puda_get_next_send_wqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @i40iw_puda_get_next_send_wqe(%struct.i40iw_qp_uk* %0, i64* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.i40iw_qp_uk*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.i40iw_qp_uk* %0, %struct.i40iw_qp_uk** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %4, align 8
  %9 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @I40IW_RING_GETCURRENT_HEAD(i32 %10)
  %12 = load i64*, i64** %5, align 8
  store i64 %11, i64* %12, align 8
  %13 = load i64*, i64** %5, align 8
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %2
  %17 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %4, align 8
  %18 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %4, align 8
  %24 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  br label %25

25:                                               ; preds = %16, %2
  %26 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %4, align 8
  %27 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @I40IW_RING_MOVE_HEAD(i32 %28, i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32*, i32** %6, align 8
  store i32* %34, i32** %3, align 8
  br label %45

35:                                               ; preds = %25
  %36 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %4, align 8
  %37 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i64*, i64** %5, align 8
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %6, align 8
  %44 = load i32*, i32** %6, align 8
  store i32* %44, i32** %3, align 8
  br label %45

45:                                               ; preds = %35, %33
  %46 = load i32*, i32** %3, align 8
  ret i32* %46
}

declare dso_local i64 @I40IW_RING_GETCURRENT_HEAD(i32) #1

declare dso_local i32 @I40IW_RING_MOVE_HEAD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
