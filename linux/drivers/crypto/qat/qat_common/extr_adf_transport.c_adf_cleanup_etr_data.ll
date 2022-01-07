; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_transport.c_adf_cleanup_etr_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_transport.c_adf_cleanup_etr_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf_accel_dev = type { %struct.adf_etr_data* }
%struct.adf_etr_data = type { %struct.adf_etr_data*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adf_cleanup_etr_data(%struct.adf_accel_dev* %0) #0 {
  %2 = alloca %struct.adf_accel_dev*, align 8
  %3 = alloca %struct.adf_etr_data*, align 8
  store %struct.adf_accel_dev* %0, %struct.adf_accel_dev** %2, align 8
  %4 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %2, align 8
  %5 = getelementptr inbounds %struct.adf_accel_dev, %struct.adf_accel_dev* %4, i32 0, i32 0
  %6 = load %struct.adf_etr_data*, %struct.adf_etr_data** %5, align 8
  store %struct.adf_etr_data* %6, %struct.adf_etr_data** %3, align 8
  %7 = load %struct.adf_etr_data*, %struct.adf_etr_data** %3, align 8
  %8 = icmp ne %struct.adf_etr_data* %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %2, align 8
  %11 = call i32 @adf_cleanup_etr_handles(%struct.adf_accel_dev* %10)
  %12 = load %struct.adf_etr_data*, %struct.adf_etr_data** %3, align 8
  %13 = getelementptr inbounds %struct.adf_etr_data, %struct.adf_etr_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @debugfs_remove(i32 %14)
  %16 = load %struct.adf_etr_data*, %struct.adf_etr_data** %3, align 8
  %17 = getelementptr inbounds %struct.adf_etr_data, %struct.adf_etr_data* %16, i32 0, i32 0
  %18 = load %struct.adf_etr_data*, %struct.adf_etr_data** %17, align 8
  %19 = call i32 @kfree(%struct.adf_etr_data* %18)
  %20 = load %struct.adf_etr_data*, %struct.adf_etr_data** %3, align 8
  %21 = call i32 @kfree(%struct.adf_etr_data* %20)
  %22 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %2, align 8
  %23 = getelementptr inbounds %struct.adf_accel_dev, %struct.adf_accel_dev* %22, i32 0, i32 0
  store %struct.adf_etr_data* null, %struct.adf_etr_data** %23, align 8
  br label %24

24:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @adf_cleanup_etr_handles(%struct.adf_accel_dev*) #1

declare dso_local i32 @debugfs_remove(i32) #1

declare dso_local i32 @kfree(%struct.adf_etr_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
