; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_transport.c_cleanup_bank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_transport.c_cleanup_bank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf_etr_bank_data = type { i32, %struct.adf_etr_ring_data*, %struct.adf_accel_dev* }
%struct.adf_etr_ring_data = type { i32 }
%struct.adf_accel_dev = type { %struct.adf_hw_device_data* }
%struct.adf_hw_device_data = type { i32 }

@ADF_ETR_MAX_RINGS_PER_BANK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adf_etr_bank_data*)* @cleanup_bank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_bank(%struct.adf_etr_bank_data* %0) #0 {
  %2 = alloca %struct.adf_etr_bank_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.adf_accel_dev*, align 8
  %5 = alloca %struct.adf_hw_device_data*, align 8
  %6 = alloca %struct.adf_etr_ring_data*, align 8
  store %struct.adf_etr_bank_data* %0, %struct.adf_etr_bank_data** %2, align 8
  store i64 0, i64* %3, align 8
  br label %7

7:                                                ; preds = %49, %1
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @ADF_ETR_MAX_RINGS_PER_BANK, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %52

11:                                               ; preds = %7
  %12 = load %struct.adf_etr_bank_data*, %struct.adf_etr_bank_data** %2, align 8
  %13 = getelementptr inbounds %struct.adf_etr_bank_data, %struct.adf_etr_bank_data* %12, i32 0, i32 2
  %14 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %13, align 8
  store %struct.adf_accel_dev* %14, %struct.adf_accel_dev** %4, align 8
  %15 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %4, align 8
  %16 = getelementptr inbounds %struct.adf_accel_dev, %struct.adf_accel_dev* %15, i32 0, i32 0
  %17 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %16, align 8
  store %struct.adf_hw_device_data* %17, %struct.adf_hw_device_data** %5, align 8
  %18 = load %struct.adf_etr_bank_data*, %struct.adf_etr_bank_data** %2, align 8
  %19 = getelementptr inbounds %struct.adf_etr_bank_data, %struct.adf_etr_bank_data* %18, i32 0, i32 1
  %20 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %19, align 8
  %21 = load i64, i64* %3, align 8
  %22 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %20, i64 %21
  store %struct.adf_etr_ring_data* %22, %struct.adf_etr_ring_data** %6, align 8
  %23 = load %struct.adf_etr_bank_data*, %struct.adf_etr_bank_data** %2, align 8
  %24 = getelementptr inbounds %struct.adf_etr_bank_data, %struct.adf_etr_bank_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* %3, align 8
  %27 = trunc i64 %26 to i32
  %28 = shl i32 1, %27
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %11
  %32 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %6, align 8
  %33 = call i32 @adf_cleanup_ring(%struct.adf_etr_ring_data* %32)
  br label %34

34:                                               ; preds = %31, %11
  %35 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %5, align 8
  %36 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %3, align 8
  %39 = trunc i64 %38 to i32
  %40 = shl i32 1, %39
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %6, align 8
  %45 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @kfree(i32 %46)
  br label %48

48:                                               ; preds = %43, %34
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %3, align 8
  br label %7

52:                                               ; preds = %7
  %53 = load %struct.adf_etr_bank_data*, %struct.adf_etr_bank_data** %2, align 8
  %54 = call i32 @adf_bank_debugfs_rm(%struct.adf_etr_bank_data* %53)
  %55 = load %struct.adf_etr_bank_data*, %struct.adf_etr_bank_data** %2, align 8
  %56 = call i32 @memset(%struct.adf_etr_bank_data* %55, i32 0, i32 24)
  ret void
}

declare dso_local i32 @adf_cleanup_ring(%struct.adf_etr_ring_data*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @adf_bank_debugfs_rm(%struct.adf_etr_bank_data*) #1

declare dso_local i32 @memset(%struct.adf_etr_bank_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
