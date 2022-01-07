; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_c62x/extr_adf_c62x_hw_data.c_adf_init_hw_data_c62x.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_c62x/extr_adf_c62x_hw_data.c_adf_init_hw_data_c62x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.adf_hw_device_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_2__* }

@c62x_class = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ADF_C62X_ETR_MAX_BANKS = common dso_local global i32 0, align 4
@ADF_C62X_MAX_ACCELERATORS = common dso_local global i32 0, align 4
@ADF_C62X_MAX_ACCELENGINES = common dso_local global i32 0, align 4
@ADF_C62X_RX_RINGS_OFFSET = common dso_local global i32 0, align 4
@ADF_C62X_TX_RINGS_MASK = common dso_local global i32 0, align 4
@adf_isr_resource_alloc = common dso_local global i32 0, align 4
@adf_isr_resource_free = common dso_local global i32 0, align 4
@adf_enable_error_correction = common dso_local global i32 0, align 4
@get_accel_mask = common dso_local global i32 0, align 4
@get_ae_mask = common dso_local global i32 0, align 4
@get_num_accels = common dso_local global i32 0, align 4
@get_num_aes = common dso_local global i32 0, align 4
@get_sram_bar_id = common dso_local global i32 0, align 4
@get_etr_bar_id = common dso_local global i32 0, align 4
@get_misc_bar_id = common dso_local global i32 0, align 4
@get_pf2vf_offset = common dso_local global i32 0, align 4
@get_vintmsk_offset = common dso_local global i32 0, align 4
@get_sku = common dso_local global i32 0, align 4
@ADF_C62X_FW = common dso_local global i32 0, align 4
@ADF_C62X_MMP = common dso_local global i32 0, align 4
@adf_init_admin_comms = common dso_local global i32 0, align 4
@adf_exit_admin_comms = common dso_local global i32 0, align 4
@adf_disable_sriov = common dso_local global i32 0, align 4
@adf_send_admin_init = common dso_local global i32 0, align 4
@adf_init_arb = common dso_local global i32 0, align 4
@adf_exit_arb = common dso_local global i32 0, align 4
@adf_get_arbiter_mapping = common dso_local global i32 0, align 4
@adf_enable_ints = common dso_local global i32 0, align 4
@adf_pf_enable_vf2pf_comms = common dso_local global i32 0, align 4
@adf_reset_flr = common dso_local global i32 0, align 4
@ADF_PFVF_COMPATIBILITY_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adf_init_hw_data_c62x(%struct.adf_hw_device_data* %0) #0 {
  %2 = alloca %struct.adf_hw_device_data*, align 8
  store %struct.adf_hw_device_data* %0, %struct.adf_hw_device_data** %2, align 8
  %3 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %4 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %3, i32 0, i32 33
  store %struct.TYPE_2__* @c62x_class, %struct.TYPE_2__** %4, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @c62x_class, i32 0, i32 0), align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @c62x_class, i32 0, i32 0), align 4
  %7 = sext i32 %5 to i64
  %8 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %9 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %8, i32 0, i32 32
  store i64 %7, i64* %9, align 8
  %10 = load i32, i32* @ADF_C62X_ETR_MAX_BANKS, align 4
  %11 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %12 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %11, i32 0, i32 31
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @ADF_C62X_MAX_ACCELERATORS, align 4
  %14 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %15 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %14, i32 0, i32 30
  store i32 %13, i32* %15, align 8
  %16 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %17 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load i32, i32* @ADF_C62X_MAX_ACCELENGINES, align 4
  %19 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %20 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %19, i32 0, i32 29
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @ADF_C62X_RX_RINGS_OFFSET, align 4
  %22 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %23 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %22, i32 0, i32 28
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @ADF_C62X_TX_RINGS_MASK, align 4
  %25 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %26 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %25, i32 0, i32 27
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @adf_isr_resource_alloc, align 4
  %28 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %29 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %28, i32 0, i32 26
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @adf_isr_resource_free, align 4
  %31 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %32 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %31, i32 0, i32 25
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @adf_enable_error_correction, align 4
  %34 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %35 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %34, i32 0, i32 24
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @get_accel_mask, align 4
  %37 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %38 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %37, i32 0, i32 23
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @get_ae_mask, align 4
  %40 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %41 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %40, i32 0, i32 22
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @get_num_accels, align 4
  %43 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %44 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %43, i32 0, i32 21
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @get_num_aes, align 4
  %46 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %47 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %46, i32 0, i32 20
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @get_sram_bar_id, align 4
  %49 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %50 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %49, i32 0, i32 19
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @get_etr_bar_id, align 4
  %52 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %53 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %52, i32 0, i32 18
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @get_misc_bar_id, align 4
  %55 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %56 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %55, i32 0, i32 17
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @get_pf2vf_offset, align 4
  %58 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %59 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %58, i32 0, i32 16
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @get_vintmsk_offset, align 4
  %61 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %62 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %61, i32 0, i32 15
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @get_sku, align 4
  %64 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %65 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %64, i32 0, i32 14
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @ADF_C62X_FW, align 4
  %67 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %68 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %67, i32 0, i32 13
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @ADF_C62X_MMP, align 4
  %70 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %71 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %70, i32 0, i32 12
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @adf_init_admin_comms, align 4
  %73 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %74 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %73, i32 0, i32 11
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @adf_exit_admin_comms, align 4
  %76 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %77 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %76, i32 0, i32 10
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @adf_disable_sriov, align 4
  %79 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %80 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %79, i32 0, i32 9
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @adf_send_admin_init, align 4
  %82 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %83 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %82, i32 0, i32 8
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* @adf_init_arb, align 4
  %85 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %86 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %85, i32 0, i32 7
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @adf_exit_arb, align 4
  %88 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %89 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %88, i32 0, i32 6
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* @adf_get_arbiter_mapping, align 4
  %91 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %92 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @adf_enable_ints, align 4
  %94 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %95 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @adf_pf_enable_vf2pf_comms, align 4
  %97 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %98 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @adf_reset_flr, align 4
  %100 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %101 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* @ADF_PFVF_COMPATIBILITY_VERSION, align 4
  %103 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %104 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
