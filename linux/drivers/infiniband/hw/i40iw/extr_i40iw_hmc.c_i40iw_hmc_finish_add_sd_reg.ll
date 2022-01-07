; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hmc.c_i40iw_hmc_finish_add_sd_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hmc.c_i40iw_hmc_finish_add_sd_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { i32 }
%struct.i40iw_hmc_create_obj_info = type { i64, i64, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@I40IW_ERR_INVALID_HMC_OBJ_INDEX = common dso_local global i32 0, align 4
@I40IW_ERR_INVALID_HMC_OBJ_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_dev*, %struct.i40iw_hmc_create_obj_info*)* @i40iw_hmc_finish_add_sd_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_hmc_finish_add_sd_reg(%struct.i40iw_sc_dev* %0, %struct.i40iw_hmc_create_obj_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40iw_sc_dev*, align 8
  %5 = alloca %struct.i40iw_hmc_create_obj_info*, align 8
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %4, align 8
  store %struct.i40iw_hmc_create_obj_info* %1, %struct.i40iw_hmc_create_obj_info** %5, align 8
  %6 = load %struct.i40iw_hmc_create_obj_info*, %struct.i40iw_hmc_create_obj_info** %5, align 8
  %7 = getelementptr inbounds %struct.i40iw_hmc_create_obj_info, %struct.i40iw_hmc_create_obj_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.i40iw_hmc_create_obj_info*, %struct.i40iw_hmc_create_obj_info** %5, align 8
  %10 = getelementptr inbounds %struct.i40iw_hmc_create_obj_info, %struct.i40iw_hmc_create_obj_info* %9, i32 0, i32 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = load %struct.i40iw_hmc_create_obj_info*, %struct.i40iw_hmc_create_obj_info** %5, align 8
  %15 = getelementptr inbounds %struct.i40iw_hmc_create_obj_info, %struct.i40iw_hmc_create_obj_info* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %8, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @I40IW_ERR_INVALID_HMC_OBJ_INDEX, align 4
  store i32 %22, i32* %3, align 4
  br label %67

23:                                               ; preds = %2
  %24 = load %struct.i40iw_hmc_create_obj_info*, %struct.i40iw_hmc_create_obj_info** %5, align 8
  %25 = getelementptr inbounds %struct.i40iw_hmc_create_obj_info, %struct.i40iw_hmc_create_obj_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.i40iw_hmc_create_obj_info*, %struct.i40iw_hmc_create_obj_info** %5, align 8
  %28 = getelementptr inbounds %struct.i40iw_hmc_create_obj_info, %struct.i40iw_hmc_create_obj_info* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = load %struct.i40iw_hmc_create_obj_info*, %struct.i40iw_hmc_create_obj_info** %5, align 8
  %32 = getelementptr inbounds %struct.i40iw_hmc_create_obj_info, %struct.i40iw_hmc_create_obj_info* %31, i32 0, i32 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load %struct.i40iw_hmc_create_obj_info*, %struct.i40iw_hmc_create_obj_info** %5, align 8
  %37 = getelementptr inbounds %struct.i40iw_hmc_create_obj_info, %struct.i40iw_hmc_create_obj_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %30, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %23
  %44 = load i32, i32* @I40IW_ERR_INVALID_HMC_OBJ_COUNT, align 4
  store i32 %44, i32* %3, align 4
  br label %67

45:                                               ; preds = %23
  %46 = load %struct.i40iw_hmc_create_obj_info*, %struct.i40iw_hmc_create_obj_info** %5, align 8
  %47 = getelementptr inbounds %struct.i40iw_hmc_create_obj_info, %struct.i40iw_hmc_create_obj_info* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %67

51:                                               ; preds = %45
  %52 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %53 = load %struct.i40iw_hmc_create_obj_info*, %struct.i40iw_hmc_create_obj_info** %5, align 8
  %54 = getelementptr inbounds %struct.i40iw_hmc_create_obj_info, %struct.i40iw_hmc_create_obj_info* %53, i32 0, i32 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load %struct.i40iw_hmc_create_obj_info*, %struct.i40iw_hmc_create_obj_info** %5, align 8
  %57 = getelementptr inbounds %struct.i40iw_hmc_create_obj_info, %struct.i40iw_hmc_create_obj_info* %56, i32 0, i32 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.i40iw_hmc_create_obj_info*, %struct.i40iw_hmc_create_obj_info** %5, align 8
  %64 = getelementptr inbounds %struct.i40iw_hmc_create_obj_info, %struct.i40iw_hmc_create_obj_info* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @i40iw_hmc_sd_grp(%struct.i40iw_sc_dev* %52, %struct.TYPE_4__* %55, i32 %62, i32 %65, i32 1)
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %51, %50, %43, %21
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @i40iw_hmc_sd_grp(%struct.i40iw_sc_dev*, %struct.TYPE_4__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
