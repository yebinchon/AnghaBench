; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-space-map-common.c_sm_ll_open_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-space-map-common.c_sm_ll_open_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ll_disk = type { i32 (%struct.ll_disk*)*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32 }
%struct.dm_transaction_manager = type { i32 }
%struct.disk_sm_root = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"sm_metadata root too small\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@metadata_ll_load_ie = common dso_local global i32 0, align 4
@metadata_ll_save_ie = common dso_local global i32 0, align 4
@metadata_ll_init_index = common dso_local global i32 0, align 4
@metadata_ll_max_entries = common dso_local global i32 0, align 4
@metadata_ll_commit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sm_ll_open_metadata(%struct.ll_disk* %0, %struct.dm_transaction_manager* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ll_disk*, align 8
  %7 = alloca %struct.dm_transaction_manager*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.disk_sm_root, align 4
  store %struct.ll_disk* %0, %struct.ll_disk** %6, align 8
  store %struct.dm_transaction_manager* %1, %struct.dm_transaction_manager** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = icmp ult i64 %12, 16
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = call i32 @DMERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %71

18:                                               ; preds = %4
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @memcpy(%struct.disk_sm_root* %11, i8* %19, i32 16)
  %21 = load %struct.ll_disk*, %struct.ll_disk** %6, align 8
  %22 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %7, align 8
  %23 = call i32 @sm_ll_init(%struct.ll_disk* %21, %struct.dm_transaction_manager* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %5, align 4
  br label %71

28:                                               ; preds = %18
  %29 = load i32, i32* @metadata_ll_load_ie, align 4
  %30 = load %struct.ll_disk*, %struct.ll_disk** %6, align 8
  %31 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %30, i32 0, i32 9
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @metadata_ll_save_ie, align 4
  %33 = load %struct.ll_disk*, %struct.ll_disk** %6, align 8
  %34 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %33, i32 0, i32 8
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @metadata_ll_init_index, align 4
  %36 = load %struct.ll_disk*, %struct.ll_disk** %6, align 8
  %37 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %36, i32 0, i32 7
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ll_disk*, %struct.ll_disk** %6, align 8
  %39 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %38, i32 0, i32 0
  store i32 (%struct.ll_disk*)* @metadata_ll_open, i32 (%struct.ll_disk*)** %39, align 8
  %40 = load i32, i32* @metadata_ll_max_entries, align 4
  %41 = load %struct.ll_disk*, %struct.ll_disk** %6, align 8
  %42 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @metadata_ll_commit, align 4
  %44 = load %struct.ll_disk*, %struct.ll_disk** %6, align 8
  %45 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 8
  %46 = getelementptr inbounds %struct.disk_sm_root, %struct.disk_sm_root* %11, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @le64_to_cpu(i32 %47)
  %49 = load %struct.ll_disk*, %struct.ll_disk** %6, align 8
  %50 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %49, i32 0, i32 4
  store i8* %48, i8** %50, align 8
  %51 = getelementptr inbounds %struct.disk_sm_root, %struct.disk_sm_root* %11, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @le64_to_cpu(i32 %52)
  %54 = load %struct.ll_disk*, %struct.ll_disk** %6, align 8
  %55 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = getelementptr inbounds %struct.disk_sm_root, %struct.disk_sm_root* %11, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @le64_to_cpu(i32 %57)
  %59 = load %struct.ll_disk*, %struct.ll_disk** %6, align 8
  %60 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = getelementptr inbounds %struct.disk_sm_root, %struct.disk_sm_root* %11, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @le64_to_cpu(i32 %62)
  %64 = load %struct.ll_disk*, %struct.ll_disk** %6, align 8
  %65 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load %struct.ll_disk*, %struct.ll_disk** %6, align 8
  %67 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %66, i32 0, i32 0
  %68 = load i32 (%struct.ll_disk*)*, i32 (%struct.ll_disk*)** %67, align 8
  %69 = load %struct.ll_disk*, %struct.ll_disk** %6, align 8
  %70 = call i32 %68(%struct.ll_disk* %69)
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %28, %26, %14
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @memcpy(%struct.disk_sm_root*, i8*, i32) #1

declare dso_local i32 @sm_ll_init(%struct.ll_disk*, %struct.dm_transaction_manager*) #1

declare dso_local i32 @metadata_ll_open(%struct.ll_disk*) #1

declare dso_local i8* @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
