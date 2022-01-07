; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_transport_debug.c_adf_bank_debugfs_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_transport_debug.c_adf_bank_debugfs_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf_etr_bank_data = type { i32, i32, i32, %struct.adf_accel_dev* }
%struct.adf_accel_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.dentry* }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"bank_%02d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@adf_bank_debug_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adf_bank_debugfs_add(%struct.adf_etr_bank_data* %0) #0 {
  %2 = alloca %struct.adf_etr_bank_data*, align 8
  %3 = alloca %struct.adf_accel_dev*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca [8 x i8], align 1
  store %struct.adf_etr_bank_data* %0, %struct.adf_etr_bank_data** %2, align 8
  %6 = load %struct.adf_etr_bank_data*, %struct.adf_etr_bank_data** %2, align 8
  %7 = getelementptr inbounds %struct.adf_etr_bank_data, %struct.adf_etr_bank_data* %6, i32 0, i32 3
  %8 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %7, align 8
  store %struct.adf_accel_dev* %8, %struct.adf_accel_dev** %3, align 8
  %9 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %3, align 8
  %10 = getelementptr inbounds %struct.adf_accel_dev, %struct.adf_accel_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.dentry*, %struct.dentry** %12, align 8
  store %struct.dentry* %13, %struct.dentry** %4, align 8
  %14 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %15 = load %struct.adf_etr_bank_data*, %struct.adf_etr_bank_data** %2, align 8
  %16 = getelementptr inbounds %struct.adf_etr_bank_data, %struct.adf_etr_bank_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @snprintf(i8* %14, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %20 = load %struct.dentry*, %struct.dentry** %4, align 8
  %21 = call i32 @debugfs_create_dir(i8* %19, %struct.dentry* %20)
  %22 = load %struct.adf_etr_bank_data*, %struct.adf_etr_bank_data** %2, align 8
  %23 = getelementptr inbounds %struct.adf_etr_bank_data, %struct.adf_etr_bank_data* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @S_IRUSR, align 4
  %25 = load %struct.adf_etr_bank_data*, %struct.adf_etr_bank_data** %2, align 8
  %26 = getelementptr inbounds %struct.adf_etr_bank_data, %struct.adf_etr_bank_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.adf_etr_bank_data*, %struct.adf_etr_bank_data** %2, align 8
  %29 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %27, %struct.adf_etr_bank_data* %28, i32* @adf_bank_debug_fops)
  %30 = load %struct.adf_etr_bank_data*, %struct.adf_etr_bank_data** %2, align 8
  %31 = getelementptr inbounds %struct.adf_etr_bank_data, %struct.adf_etr_bank_data* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  ret i32 0
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.adf_etr_bank_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
