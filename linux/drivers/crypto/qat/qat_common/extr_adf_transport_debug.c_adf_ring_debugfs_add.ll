; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_transport_debug.c_adf_ring_debugfs_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_transport_debug.c_adf_ring_debugfs_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf_etr_ring_data = type { i32, %struct.adf_etr_ring_debug_entry*, %struct.TYPE_2__* }
%struct.adf_etr_ring_debug_entry = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ring_%02d\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@adf_ring_debug_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adf_ring_debugfs_add(%struct.adf_etr_ring_data* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adf_etr_ring_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.adf_etr_ring_debug_entry*, align 8
  %7 = alloca [8 x i8], align 1
  store %struct.adf_etr_ring_data* %0, %struct.adf_etr_ring_data** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.adf_etr_ring_debug_entry* @kzalloc(i32 8, i32 %8)
  store %struct.adf_etr_ring_debug_entry* %9, %struct.adf_etr_ring_debug_entry** %6, align 8
  %10 = load %struct.adf_etr_ring_debug_entry*, %struct.adf_etr_ring_debug_entry** %6, align 8
  %11 = icmp ne %struct.adf_etr_ring_debug_entry* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %40

15:                                               ; preds = %2
  %16 = load %struct.adf_etr_ring_debug_entry*, %struct.adf_etr_ring_debug_entry** %6, align 8
  %17 = getelementptr inbounds %struct.adf_etr_ring_debug_entry, %struct.adf_etr_ring_debug_entry* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @strlcpy(i32 %18, i8* %19, i32 4)
  %21 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %22 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %4, align 8
  %23 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @snprintf(i8* %21, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %27 = load i32, i32* @S_IRUSR, align 4
  %28 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %4, align 8
  %29 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %4, align 8
  %34 = call i32 @debugfs_create_file(i8* %26, i32 %27, i32 %32, %struct.adf_etr_ring_data* %33, i32* @adf_ring_debug_fops)
  %35 = load %struct.adf_etr_ring_debug_entry*, %struct.adf_etr_ring_debug_entry** %6, align 8
  %36 = getelementptr inbounds %struct.adf_etr_ring_debug_entry, %struct.adf_etr_ring_debug_entry* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.adf_etr_ring_debug_entry*, %struct.adf_etr_ring_debug_entry** %6, align 8
  %38 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %4, align 8
  %39 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %38, i32 0, i32 1
  store %struct.adf_etr_ring_debug_entry* %37, %struct.adf_etr_ring_debug_entry** %39, align 8
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %15, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.adf_etr_ring_debug_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.adf_etr_ring_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
