; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_qp_ring_push_db.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_qp_ring_push_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_qp_uk = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@I40E_PFPE_WQEALLOC_WQE_DESC_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_qp_uk*, i32)* @i40iw_qp_ring_push_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_qp_ring_push_db(%struct.i40iw_qp_uk* %0, i32 %1) #0 {
  %3 = alloca %struct.i40iw_qp_uk*, align 8
  %4 = alloca i32, align 4
  store %struct.i40iw_qp_uk* %0, %struct.i40iw_qp_uk** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %3, align 8
  %6 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = ashr i32 %8, 2
  %10 = load i32, i32* @I40E_PFPE_WQEALLOC_WQE_DESC_INDEX, align 4
  %11 = call i32 @LS_32(i32 %9, i32 %10)
  %12 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %3, align 8
  %13 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %11, %14
  %16 = call i32 @set_32bit_val(i32 %7, i32 0, i32 %15)
  %17 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %3, align 8
  %18 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @I40IW_RING_GETCURRENT_HEAD(i32 %19)
  %21 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %3, align 8
  %22 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  ret void
}

declare dso_local i32 @set_32bit_val(i32, i32, i32) #1

declare dso_local i32 @LS_32(i32, i32) #1

declare dso_local i32 @I40IW_RING_GETCURRENT_HEAD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
