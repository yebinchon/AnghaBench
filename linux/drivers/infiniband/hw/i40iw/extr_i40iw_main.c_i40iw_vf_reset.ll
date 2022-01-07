; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_vf_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_vf_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_info = type { i32 }
%struct.i40e_client = type { i32 }
%struct.i40iw_handler = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.i40iw_sc_dev }
%struct.i40iw_sc_dev = type { i32, %struct.i40iw_vfdev**, i64 }
%struct.i40iw_vfdev = type { i64, i32, i32 }
%struct.i40iw_hmc_fcn_info = type { i32, i32, i64 }
%struct.i40iw_virt_mem = type { i32, %struct.i40iw_vfdev* }
%struct.i40iw_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@I40IW_MAX_PE_ENABLED_VF_COUNT = common dso_local global i32 0, align 4
@I40IW_HMC_IW_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_info*, %struct.i40e_client*, i64)* @i40iw_vf_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_vf_reset(%struct.i40e_info* %0, %struct.i40e_client* %1, i64 %2) #0 {
  %4 = alloca %struct.i40e_info*, align 8
  %5 = alloca %struct.i40e_client*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.i40iw_handler*, align 8
  %8 = alloca %struct.i40iw_sc_dev*, align 8
  %9 = alloca %struct.i40iw_hmc_fcn_info, align 8
  %10 = alloca %struct.i40iw_virt_mem, align 8
  %11 = alloca %struct.i40iw_vfdev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.i40iw_device*, align 8
  store %struct.i40e_info* %0, %struct.i40e_info** %4, align 8
  store %struct.i40e_client* %1, %struct.i40e_client** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load %struct.i40e_info*, %struct.i40e_info** %4, align 8
  %16 = call %struct.i40iw_handler* @i40iw_find_i40e_handler(%struct.i40e_info* %15)
  store %struct.i40iw_handler* %16, %struct.i40iw_handler** %7, align 8
  %17 = load %struct.i40iw_handler*, %struct.i40iw_handler** %7, align 8
  %18 = icmp ne %struct.i40iw_handler* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %111

20:                                               ; preds = %3
  %21 = load %struct.i40iw_handler*, %struct.i40iw_handler** %7, align 8
  %22 = getelementptr inbounds %struct.i40iw_handler, %struct.i40iw_handler* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store %struct.i40iw_sc_dev* %23, %struct.i40iw_sc_dev** %8, align 8
  %24 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %8, align 8
  %25 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.i40iw_device*
  store %struct.i40iw_device* %27, %struct.i40iw_device** %14, align 8
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %108, %20
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @I40IW_MAX_PE_ENABLED_VF_COUNT, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %111

32:                                               ; preds = %28
  %33 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %8, align 8
  %34 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %33, i32 0, i32 1
  %35 = load %struct.i40iw_vfdev**, %struct.i40iw_vfdev*** %34, align 8
  %36 = load i32, i32* %12, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %35, i64 %37
  %39 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %38, align 8
  %40 = icmp ne %struct.i40iw_vfdev* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %32
  %42 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %8, align 8
  %43 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %42, i32 0, i32 1
  %44 = load %struct.i40iw_vfdev**, %struct.i40iw_vfdev*** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %44, i64 %46
  %48 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %47, align 8
  %49 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %41, %32
  br label %108

54:                                               ; preds = %41
  %55 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %8, align 8
  %56 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %55, i32 0, i32 1
  %57 = load %struct.i40iw_vfdev**, %struct.i40iw_vfdev*** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %57, i64 %59
  %61 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %60, align 8
  store %struct.i40iw_vfdev* %61, %struct.i40iw_vfdev** %11, align 8
  %62 = load %struct.i40iw_device*, %struct.i40iw_device** %14, align 8
  %63 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %13, align 8
  %68 = call i32 @spin_lock_irqsave(i32* %66, i64 %67)
  %69 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %8, align 8
  %70 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %69, i32 0, i32 1
  %71 = load %struct.i40iw_vfdev**, %struct.i40iw_vfdev*** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %71, i64 %73
  store %struct.i40iw_vfdev* null, %struct.i40iw_vfdev** %74, align 8
  %75 = load %struct.i40iw_device*, %struct.i40iw_device** %14, align 8
  %76 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64, i64* %13, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  %82 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %8, align 8
  %83 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %11, align 8
  %84 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %83, i32 0, i32 2
  %85 = call i32 @i40iw_del_hmc_objects(%struct.i40iw_sc_dev* %82, i32* %84, i32 0, i32 0)
  %86 = call i32 @memset(%struct.i40iw_hmc_fcn_info* %9, i32 0, i32 16)
  %87 = load i64, i64* %6, align 8
  %88 = getelementptr inbounds %struct.i40iw_hmc_fcn_info, %struct.i40iw_hmc_fcn_info* %9, i32 0, i32 2
  store i64 %87, i64* %88, align 8
  %89 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %11, align 8
  %90 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds %struct.i40iw_hmc_fcn_info, %struct.i40iw_hmc_fcn_info* %9, i32 0, i32 1
  store i32 %91, i32* %92, align 4
  %93 = getelementptr inbounds %struct.i40iw_hmc_fcn_info, %struct.i40iw_hmc_fcn_info* %9, i32 0, i32 0
  store i32 1, i32* %93, align 8
  %94 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %8, align 8
  %95 = call i32 @i40iw_cqp_manage_hmc_fcn_cmd(%struct.i40iw_sc_dev* %94, %struct.i40iw_hmc_fcn_info* %9)
  %96 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %11, align 8
  %97 = getelementptr inbounds %struct.i40iw_virt_mem, %struct.i40iw_virt_mem* %10, i32 0, i32 1
  store %struct.i40iw_vfdev* %96, %struct.i40iw_vfdev** %97, align 8
  %98 = load i32, i32* @I40IW_HMC_IW_MAX, align 4
  %99 = sext i32 %98 to i64
  %100 = mul i64 4, %99
  %101 = add i64 16, %100
  %102 = trunc i64 %101 to i32
  %103 = getelementptr inbounds %struct.i40iw_virt_mem, %struct.i40iw_virt_mem* %10, i32 0, i32 0
  store i32 %102, i32* %103, align 8
  %104 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %8, align 8
  %105 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @i40iw_free_virt_mem(i32 %106, %struct.i40iw_virt_mem* %10)
  br label %111

108:                                              ; preds = %53
  %109 = load i32, i32* %12, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %12, align 4
  br label %28

111:                                              ; preds = %19, %54, %28
  ret void
}

declare dso_local %struct.i40iw_handler* @i40iw_find_i40e_handler(%struct.i40e_info*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @i40iw_del_hmc_objects(%struct.i40iw_sc_dev*, i32*, i32, i32) #1

declare dso_local i32 @memset(%struct.i40iw_hmc_fcn_info*, i32, i32) #1

declare dso_local i32 @i40iw_cqp_manage_hmc_fcn_cmd(%struct.i40iw_sc_dev*, %struct.i40iw_hmc_fcn_info*) #1

declare dso_local i32 @i40iw_free_virt_mem(i32, %struct.i40iw_virt_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
