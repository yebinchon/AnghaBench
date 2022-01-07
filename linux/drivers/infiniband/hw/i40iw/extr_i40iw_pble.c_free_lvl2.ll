; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_pble.c_free_lvl2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_pble.c_free_lvl2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_hmc_pble_rsrc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.gen_pool* }
%struct.gen_pool = type { i32 }
%struct.i40iw_pble_alloc = type { %struct.i40iw_pble_level2 }
%struct.i40iw_pble_level2 = type { i64, %struct.i40iw_pble_info*, %struct.i40iw_pble_info }
%struct.i40iw_pble_info = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_pble_alloc*)* @free_lvl2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_lvl2(%struct.i40iw_hmc_pble_rsrc* %0, %struct.i40iw_pble_alloc* %1) #0 {
  %3 = alloca %struct.i40iw_hmc_pble_rsrc*, align 8
  %4 = alloca %struct.i40iw_pble_alloc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.gen_pool*, align 8
  %7 = alloca %struct.i40iw_pble_level2*, align 8
  %8 = alloca %struct.i40iw_pble_info*, align 8
  %9 = alloca %struct.i40iw_pble_info*, align 8
  store %struct.i40iw_hmc_pble_rsrc* %0, %struct.i40iw_hmc_pble_rsrc** %3, align 8
  store %struct.i40iw_pble_alloc* %1, %struct.i40iw_pble_alloc** %4, align 8
  %10 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %4, align 8
  %11 = getelementptr inbounds %struct.i40iw_pble_alloc, %struct.i40iw_pble_alloc* %10, i32 0, i32 0
  store %struct.i40iw_pble_level2* %11, %struct.i40iw_pble_level2** %7, align 8
  %12 = load %struct.i40iw_pble_level2*, %struct.i40iw_pble_level2** %7, align 8
  %13 = getelementptr inbounds %struct.i40iw_pble_level2, %struct.i40iw_pble_level2* %12, i32 0, i32 2
  store %struct.i40iw_pble_info* %13, %struct.i40iw_pble_info** %8, align 8
  %14 = load %struct.i40iw_pble_level2*, %struct.i40iw_pble_level2** %7, align 8
  %15 = getelementptr inbounds %struct.i40iw_pble_level2, %struct.i40iw_pble_level2* %14, i32 0, i32 1
  %16 = load %struct.i40iw_pble_info*, %struct.i40iw_pble_info** %15, align 8
  store %struct.i40iw_pble_info* %16, %struct.i40iw_pble_info** %9, align 8
  %17 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %3, align 8
  %18 = getelementptr inbounds %struct.i40iw_hmc_pble_rsrc, %struct.i40iw_hmc_pble_rsrc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.gen_pool*, %struct.gen_pool** %19, align 8
  store %struct.gen_pool* %20, %struct.gen_pool** %6, align 8
  store i64 0, i64* %5, align 8
  br label %21

21:                                               ; preds = %44, %2
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.i40iw_pble_level2*, %struct.i40iw_pble_level2** %7, align 8
  %24 = getelementptr inbounds %struct.i40iw_pble_level2, %struct.i40iw_pble_level2* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %21
  %28 = load %struct.i40iw_pble_info*, %struct.i40iw_pble_info** %9, align 8
  %29 = getelementptr inbounds %struct.i40iw_pble_info, %struct.i40iw_pble_info* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load %struct.gen_pool*, %struct.gen_pool** %6, align 8
  %34 = load %struct.i40iw_pble_info*, %struct.i40iw_pble_info** %9, align 8
  %35 = getelementptr inbounds %struct.i40iw_pble_info, %struct.i40iw_pble_info* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.i40iw_pble_info*, %struct.i40iw_pble_info** %9, align 8
  %38 = getelementptr inbounds %struct.i40iw_pble_info, %struct.i40iw_pble_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = shl i32 %39, 3
  %41 = call i32 @gen_pool_free(%struct.gen_pool* %33, i64 %36, i32 %40)
  br label %43

42:                                               ; preds = %27
  br label %49

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %5, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %5, align 8
  %47 = load %struct.i40iw_pble_info*, %struct.i40iw_pble_info** %9, align 8
  %48 = getelementptr inbounds %struct.i40iw_pble_info, %struct.i40iw_pble_info* %47, i32 1
  store %struct.i40iw_pble_info* %48, %struct.i40iw_pble_info** %9, align 8
  br label %21

49:                                               ; preds = %42, %21
  %50 = load %struct.i40iw_pble_info*, %struct.i40iw_pble_info** %8, align 8
  %51 = getelementptr inbounds %struct.i40iw_pble_info, %struct.i40iw_pble_info* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load %struct.gen_pool*, %struct.gen_pool** %6, align 8
  %56 = load %struct.i40iw_pble_info*, %struct.i40iw_pble_info** %8, align 8
  %57 = getelementptr inbounds %struct.i40iw_pble_info, %struct.i40iw_pble_info* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.i40iw_pble_info*, %struct.i40iw_pble_info** %8, align 8
  %60 = getelementptr inbounds %struct.i40iw_pble_info, %struct.i40iw_pble_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = shl i32 %61, 3
  %63 = call i32 @gen_pool_free(%struct.gen_pool* %55, i64 %58, i32 %62)
  br label %64

64:                                               ; preds = %54, %49
  %65 = load %struct.i40iw_pble_level2*, %struct.i40iw_pble_level2** %7, align 8
  %66 = getelementptr inbounds %struct.i40iw_pble_level2, %struct.i40iw_pble_level2* %65, i32 0, i32 1
  %67 = load %struct.i40iw_pble_info*, %struct.i40iw_pble_info** %66, align 8
  %68 = call i32 @kfree(%struct.i40iw_pble_info* %67)
  %69 = load %struct.i40iw_pble_level2*, %struct.i40iw_pble_level2** %7, align 8
  %70 = getelementptr inbounds %struct.i40iw_pble_level2, %struct.i40iw_pble_level2* %69, i32 0, i32 1
  store %struct.i40iw_pble_info* null, %struct.i40iw_pble_info** %70, align 8
  ret void
}

declare dso_local i32 @gen_pool_free(%struct.gen_pool*, i64, i32) #1

declare dso_local i32 @kfree(%struct.i40iw_pble_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
