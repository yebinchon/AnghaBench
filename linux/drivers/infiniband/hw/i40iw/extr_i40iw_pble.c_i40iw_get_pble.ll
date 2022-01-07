; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_pble.c_i40iw_get_pble.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_pble.c_i40iw_get_pble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { i32 }
%struct.i40iw_hmc_pble_rsrc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.gen_pool* }
%struct.gen_pool = type { i32 }
%struct.i40iw_pble_alloc = type { i32, i32 }

@I40IW_LEVEL_0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_get_pble(%struct.i40iw_sc_dev* %0, %struct.i40iw_hmc_pble_rsrc* %1, %struct.i40iw_pble_alloc* %2, i32 %3) #0 {
  %5 = alloca %struct.i40iw_sc_dev*, align 8
  %6 = alloca %struct.i40iw_hmc_pble_rsrc*, align 8
  %7 = alloca %struct.i40iw_pble_alloc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gen_pool*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %5, align 8
  store %struct.i40iw_hmc_pble_rsrc* %1, %struct.i40iw_hmc_pble_rsrc** %6, align 8
  store %struct.i40iw_pble_alloc* %2, %struct.i40iw_pble_alloc** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %6, align 8
  %14 = getelementptr inbounds %struct.i40iw_hmc_pble_rsrc, %struct.i40iw_hmc_pble_rsrc* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.gen_pool*, %struct.gen_pool** %15, align 8
  store %struct.gen_pool* %16, %struct.gen_pool** %9, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %7, align 8
  %19 = getelementptr inbounds %struct.i40iw_pble_alloc, %struct.i40iw_pble_alloc* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @I40IW_LEVEL_0, align 4
  %21 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %7, align 8
  %22 = getelementptr inbounds %struct.i40iw_pble_alloc, %struct.i40iw_pble_alloc* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %5, align 8
  %24 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %6, align 8
  %25 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %7, align 8
  %26 = load %struct.gen_pool*, %struct.gen_pool** %9, align 8
  %27 = call i32 @get_lvl1_lvl2_pble(%struct.i40iw_sc_dev* %23, %struct.i40iw_hmc_pble_rsrc* %24, %struct.i40iw_pble_alloc* %25, %struct.gen_pool* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %4
  br label %62

31:                                               ; preds = %4
  %32 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %7, align 8
  %33 = getelementptr inbounds %struct.i40iw_pble_alloc, %struct.i40iw_pble_alloc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 18
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %58, %31
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %37
  %42 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %5, align 8
  %43 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %6, align 8
  %44 = call i32 @add_pble_pool(%struct.i40iw_sc_dev* %42, %struct.i40iw_hmc_pble_rsrc* %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %61

48:                                               ; preds = %41
  %49 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %5, align 8
  %50 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %6, align 8
  %51 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %7, align 8
  %52 = load %struct.gen_pool*, %struct.gen_pool** %9, align 8
  %53 = call i32 @get_lvl1_lvl2_pble(%struct.i40iw_sc_dev* %49, %struct.i40iw_hmc_pble_rsrc* %50, %struct.i40iw_pble_alloc* %51, %struct.gen_pool* %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %48
  br label %61

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %12, align 4
  br label %37

61:                                               ; preds = %56, %47, %37
  br label %62

62:                                               ; preds = %61, %30
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %6, align 8
  %67 = getelementptr inbounds %struct.i40iw_hmc_pble_rsrc, %struct.i40iw_hmc_pble_rsrc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  br label %75

70:                                               ; preds = %62
  %71 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %6, align 8
  %72 = getelementptr inbounds %struct.i40iw_hmc_pble_rsrc, %struct.i40iw_hmc_pble_rsrc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %70, %65
  %76 = load i32, i32* %10, align 4
  ret i32 %76
}

declare dso_local i32 @get_lvl1_lvl2_pble(%struct.i40iw_sc_dev*, %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_pble_alloc*, %struct.gen_pool*) #1

declare dso_local i32 @add_pble_pool(%struct.i40iw_sc_dev*, %struct.i40iw_hmc_pble_rsrc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
