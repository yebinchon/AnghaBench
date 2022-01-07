; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_pble.c_i40iw_free_pble.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_pble.c_i40iw_free_pble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_hmc_pble_rsrc = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.gen_pool* }
%struct.gen_pool = type { i32 }
%struct.i40iw_pble_alloc = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@I40IW_LEVEL_2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40iw_free_pble(%struct.i40iw_hmc_pble_rsrc* %0, %struct.i40iw_pble_alloc* %1) #0 {
  %3 = alloca %struct.i40iw_hmc_pble_rsrc*, align 8
  %4 = alloca %struct.i40iw_pble_alloc*, align 8
  %5 = alloca %struct.gen_pool*, align 8
  store %struct.i40iw_hmc_pble_rsrc* %0, %struct.i40iw_hmc_pble_rsrc** %3, align 8
  store %struct.i40iw_pble_alloc* %1, %struct.i40iw_pble_alloc** %4, align 8
  %6 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %3, align 8
  %7 = getelementptr inbounds %struct.i40iw_hmc_pble_rsrc, %struct.i40iw_hmc_pble_rsrc* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.gen_pool*, %struct.gen_pool** %8, align 8
  store %struct.gen_pool* %9, %struct.gen_pool** %5, align 8
  %10 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %4, align 8
  %11 = getelementptr inbounds %struct.i40iw_pble_alloc, %struct.i40iw_pble_alloc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @I40IW_LEVEL_2, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %3, align 8
  %17 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %4, align 8
  %18 = call i32 @free_lvl2(%struct.i40iw_hmc_pble_rsrc* %16, %struct.i40iw_pble_alloc* %17)
  br label %31

19:                                               ; preds = %2
  %20 = load %struct.gen_pool*, %struct.gen_pool** %5, align 8
  %21 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %4, align 8
  %22 = getelementptr inbounds %struct.i40iw_pble_alloc, %struct.i40iw_pble_alloc* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %4, align 8
  %26 = getelementptr inbounds %struct.i40iw_pble_alloc, %struct.i40iw_pble_alloc* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = shl i32 %28, 3
  %30 = call i32 @gen_pool_free(%struct.gen_pool* %20, i32 %24, i32 %29)
  br label %31

31:                                               ; preds = %19, %15
  %32 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %3, align 8
  %33 = getelementptr inbounds %struct.i40iw_hmc_pble_rsrc, %struct.i40iw_hmc_pble_rsrc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  ret void
}

declare dso_local i32 @free_lvl2(%struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_pble_alloc*) #1

declare dso_local i32 @gen_pool_free(%struct.gen_pool*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
