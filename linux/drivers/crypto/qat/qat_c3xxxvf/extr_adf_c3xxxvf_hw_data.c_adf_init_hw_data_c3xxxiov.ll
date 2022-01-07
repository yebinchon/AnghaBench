; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_c3xxxvf/extr_adf_c3xxxvf_hw_data.c_adf_init_hw_data_c3xxxiov.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_c3xxxvf/extr_adf_c3xxxvf_hw_data.c_adf_init_hw_data_c3xxxiov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.adf_hw_device_data = type { i32, %struct.TYPE_2__*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }

@c3xxxiov_class = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ADF_C3XXXIOV_ETR_MAX_BANKS = common dso_local global i32 0, align 4
@ADF_C3XXXIOV_MAX_ACCELERATORS = common dso_local global i32 0, align 4
@ADF_C3XXXIOV_MAX_ACCELENGINES = common dso_local global i32 0, align 4
@ADF_C3XXXIOV_RX_RINGS_OFFSET = common dso_local global i32 0, align 4
@ADF_C3XXXIOV_TX_RINGS_MASK = common dso_local global i32 0, align 4
@adf_vf_isr_resource_alloc = common dso_local global i32 0, align 4
@adf_vf_isr_resource_free = common dso_local global i32 0, align 4
@adf_vf_void_noop = common dso_local global i8* null, align 8
@adf_vf_int_noop = common dso_local global i8* null, align 8
@adf_vf2pf_init = common dso_local global i32 0, align 4
@adf_vf2pf_shutdown = common dso_local global i32 0, align 4
@get_accel_mask = common dso_local global i32 0, align 4
@get_ae_mask = common dso_local global i32 0, align 4
@get_num_accels = common dso_local global i32 0, align 4
@get_num_aes = common dso_local global i32 0, align 4
@get_etr_bar_id = common dso_local global i32 0, align 4
@get_misc_bar_id = common dso_local global i32 0, align 4
@get_pf2vf_offset = common dso_local global i32 0, align 4
@get_vintmsk_offset = common dso_local global i32 0, align 4
@get_sku = common dso_local global i32 0, align 4
@adf_enable_vf2pf_comms = common dso_local global i32 0, align 4
@ADF_PFVF_COMPATIBILITY_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adf_init_hw_data_c3xxxiov(%struct.adf_hw_device_data* %0) #0 {
  %2 = alloca %struct.adf_hw_device_data*, align 8
  store %struct.adf_hw_device_data* %0, %struct.adf_hw_device_data** %2, align 8
  %3 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %4 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %3, i32 0, i32 1
  store %struct.TYPE_2__* @c3xxxiov_class, %struct.TYPE_2__** %4, align 8
  %5 = load i32, i32* @ADF_C3XXXIOV_ETR_MAX_BANKS, align 4
  %6 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %7 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %6, i32 0, i32 27
  store i32 %5, i32* %7, align 8
  %8 = load i32, i32* @ADF_C3XXXIOV_MAX_ACCELERATORS, align 4
  %9 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %10 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %9, i32 0, i32 26
  store i32 %8, i32* %10, align 4
  %11 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %12 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load i32, i32* @ADF_C3XXXIOV_MAX_ACCELENGINES, align 4
  %14 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %15 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %14, i32 0, i32 25
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @ADF_C3XXXIOV_RX_RINGS_OFFSET, align 4
  %17 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %18 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %17, i32 0, i32 24
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @ADF_C3XXXIOV_TX_RINGS_MASK, align 4
  %20 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %21 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %20, i32 0, i32 23
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @adf_vf_isr_resource_alloc, align 4
  %23 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %24 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %23, i32 0, i32 22
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @adf_vf_isr_resource_free, align 4
  %26 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %27 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %26, i32 0, i32 21
  store i32 %25, i32* %27, align 8
  %28 = load i8*, i8** @adf_vf_void_noop, align 8
  %29 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %30 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %29, i32 0, i32 20
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** @adf_vf_int_noop, align 8
  %32 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %33 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %32, i32 0, i32 19
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** @adf_vf_void_noop, align 8
  %35 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %36 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %35, i32 0, i32 18
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* @adf_vf2pf_init, align 4
  %38 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %39 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %38, i32 0, i32 17
  store i32 %37, i32* %39, align 8
  %40 = load i8*, i8** @adf_vf_int_noop, align 8
  %41 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %42 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %41, i32 0, i32 16
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** @adf_vf_void_noop, align 8
  %44 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %45 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %44, i32 0, i32 15
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* @adf_vf2pf_shutdown, align 4
  %47 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %48 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %47, i32 0, i32 14
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @get_accel_mask, align 4
  %50 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %51 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %50, i32 0, i32 13
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @get_ae_mask, align 4
  %53 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %54 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %53, i32 0, i32 12
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @get_num_accels, align 4
  %56 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %57 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %56, i32 0, i32 11
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @get_num_aes, align 4
  %59 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %60 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %59, i32 0, i32 10
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @get_etr_bar_id, align 4
  %62 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %63 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %62, i32 0, i32 9
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @get_misc_bar_id, align 4
  %65 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %66 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %65, i32 0, i32 8
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @get_pf2vf_offset, align 4
  %68 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %69 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %68, i32 0, i32 7
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @get_vintmsk_offset, align 4
  %71 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %72 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @get_sku, align 4
  %74 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %75 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %74, i32 0, i32 5
  store i32 %73, i32* %75, align 8
  %76 = load i8*, i8** @adf_vf_void_noop, align 8
  %77 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %78 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* @adf_enable_vf2pf_comms, align 4
  %80 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %81 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @ADF_PFVF_COMPATIBILITY_VERSION, align 4
  %83 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %84 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %86 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  %91 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %92 = call i32 @adf_devmgr_update_class_index(%struct.adf_hw_device_data* %91)
  ret void
}

declare dso_local i32 @adf_devmgr_update_class_index(%struct.adf_hw_device_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
