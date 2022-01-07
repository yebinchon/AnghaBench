; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_deinit_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_deinit_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { i32, i32, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i64, %struct.i40iw_sc_dev, %struct.i40e_info* }
%struct.TYPE_3__ = type { i32 }
%struct.i40iw_sc_dev = type { i32 }
%struct.i40e_info = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"state = %d\0A\00", align 1
@I40IW_PUDA_RSRC_TYPE_IEQ = common dso_local global i32 0, align 4
@I40IW_PUDA_RSRC_TYPE_ILQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"bad init_state = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_device*)* @i40iw_deinit_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_deinit_device(%struct.i40iw_device* %0) #0 {
  %2 = alloca %struct.i40iw_device*, align 8
  %3 = alloca %struct.i40e_info*, align 8
  %4 = alloca %struct.i40iw_sc_dev*, align 8
  store %struct.i40iw_device* %0, %struct.i40iw_device** %2, align 8
  %5 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %6 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %5, i32 0, i32 11
  %7 = load %struct.i40e_info*, %struct.i40e_info** %6, align 8
  store %struct.i40e_info* %7, %struct.i40e_info** %3, align 8
  %8 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %9 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %8, i32 0, i32 10
  store %struct.i40iw_sc_dev* %9, %struct.i40iw_sc_dev** %4, align 8
  %10 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %11 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @i40iw_pr_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %15 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %14, i32 0, i32 9
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %20 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %19, i32 0, i32 9
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @destroy_workqueue(i64 %21)
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %25 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %113 [
    i32 128, label %27
    i32 130, label %36
    i32 129, label %48
    i32 137, label %54
    i32 139, label %57
    i32 134, label %60
    i32 133, label %68
    i32 138, label %76
    i32 135, label %79
    i32 136, label %88
    i32 132, label %91
    i32 131, label %112
  ]

27:                                               ; preds = %23
  %28 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %29 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %28, i32 0, i32 8
  store i32 0, i32* %29, align 8
  %30 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %31 = call i32 @i40iw_port_ibevent(%struct.i40iw_device* %30)
  %32 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %33 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @i40iw_destroy_rdma_device(i32 %34)
  br label %36

36:                                               ; preds = %23, %27
  %37 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %38 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %36
  %42 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %43 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %44 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @i40iw_del_macip_entry(%struct.i40iw_device* %42, i32 %45)
  br label %47

47:                                               ; preds = %41, %36
  br label %48

48:                                               ; preds = %23, %47
  %49 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %50 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %51 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @i40iw_destroy_pble_pool(%struct.i40iw_sc_dev* %49, i32 %52)
  br label %54

54:                                               ; preds = %23, %48
  %55 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %56 = call i32 @i40iw_dele_ceqs(%struct.i40iw_device* %55)
  br label %57

57:                                               ; preds = %23, %54
  %58 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %59 = call i32 @i40iw_destroy_aeq(%struct.i40iw_device* %58)
  br label %60

60:                                               ; preds = %23, %57
  %61 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %62 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %61, i32 0, i32 2
  %63 = load i32, i32* @I40IW_PUDA_RSRC_TYPE_IEQ, align 4
  %64 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %65 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @i40iw_puda_dele_resources(%struct.TYPE_3__* %62, i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %23, %60
  %69 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %70 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %69, i32 0, i32 2
  %71 = load i32, i32* @I40IW_PUDA_RSRC_TYPE_ILQ, align 4
  %72 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %73 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @i40iw_puda_dele_resources(%struct.TYPE_3__* %70, i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %23, %68
  %77 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %78 = call i32 @i40iw_destroy_ccq(%struct.i40iw_device* %77)
  br label %79

79:                                               ; preds = %23, %76
  %80 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %81 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %82 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %85 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @i40iw_del_hmc_objects(%struct.i40iw_sc_dev* %80, i32 %83, i32 1, i32 %86)
  br label %88

88:                                               ; preds = %23, %79
  %89 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %90 = call i32 @i40iw_destroy_cqp(%struct.i40iw_device* %89, i32 1)
  br label %91

91:                                               ; preds = %23, %88
  %92 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %93 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %92, i32 0, i32 3
  %94 = call i32 @i40iw_cleanup_cm_core(i32* %93)
  %95 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %96 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %91
  %101 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %102 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %101, i32 0, i32 2
  %103 = call i32 @i40iw_vsi_stats_free(%struct.TYPE_3__* %102)
  %104 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %105 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @kfree(i32 %107)
  br label %109

109:                                              ; preds = %100, %91
  %110 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %111 = call i32 @i40iw_del_init_mem(%struct.i40iw_device* %110)
  br label %118

112:                                              ; preds = %23
  br label %113

113:                                              ; preds = %23, %112
  %114 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %115 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %113, %109
  %119 = load %struct.i40e_info*, %struct.i40e_info** %3, align 8
  %120 = call i32 @i40iw_find_i40e_handler(%struct.i40e_info* %119)
  %121 = call i32 @i40iw_del_handler(i32 %120)
  %122 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %123 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @kfree(i32 %124)
  ret void
}

declare dso_local i32 @i40iw_pr_info(i8*, i32) #1

declare dso_local i32 @destroy_workqueue(i64) #1

declare dso_local i32 @i40iw_port_ibevent(%struct.i40iw_device*) #1

declare dso_local i32 @i40iw_destroy_rdma_device(i32) #1

declare dso_local i32 @i40iw_del_macip_entry(%struct.i40iw_device*, i32) #1

declare dso_local i32 @i40iw_destroy_pble_pool(%struct.i40iw_sc_dev*, i32) #1

declare dso_local i32 @i40iw_dele_ceqs(%struct.i40iw_device*) #1

declare dso_local i32 @i40iw_destroy_aeq(%struct.i40iw_device*) #1

declare dso_local i32 @i40iw_puda_dele_resources(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @i40iw_destroy_ccq(%struct.i40iw_device*) #1

declare dso_local i32 @i40iw_del_hmc_objects(%struct.i40iw_sc_dev*, i32, i32, i32) #1

declare dso_local i32 @i40iw_destroy_cqp(%struct.i40iw_device*, i32) #1

declare dso_local i32 @i40iw_cleanup_cm_core(i32*) #1

declare dso_local i32 @i40iw_vsi_stats_free(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @i40iw_del_init_mem(%struct.i40iw_device*) #1

declare dso_local i32 @i40iw_pr_err(i8*, i32) #1

declare dso_local i32 @i40iw_del_handler(i32) #1

declare dso_local i32 @i40iw_find_i40e_handler(%struct.i40e_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
