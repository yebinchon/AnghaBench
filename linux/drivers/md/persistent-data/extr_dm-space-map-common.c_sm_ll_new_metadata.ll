; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-space-map-common.c_sm_ll_new_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-space-map-common.c_sm_ll_new_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ll_disk = type { i32 (%struct.ll_disk*)*, i32, i32, i64, i64, i32, i32, i32, i32, i32 }
%struct.dm_transaction_manager = type { i32 }

@metadata_ll_load_ie = common dso_local global i32 0, align 4
@metadata_ll_save_ie = common dso_local global i32 0, align 4
@metadata_ll_open = common dso_local global i32 0, align 4
@metadata_ll_max_entries = common dso_local global i32 0, align 4
@metadata_ll_commit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sm_ll_new_metadata(%struct.ll_disk* %0, %struct.dm_transaction_manager* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ll_disk*, align 8
  %5 = alloca %struct.dm_transaction_manager*, align 8
  %6 = alloca i32, align 4
  store %struct.ll_disk* %0, %struct.ll_disk** %4, align 8
  store %struct.dm_transaction_manager* %1, %struct.dm_transaction_manager** %5, align 8
  %7 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %8 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %5, align 8
  %9 = call i32 @sm_ll_init(%struct.ll_disk* %7, %struct.dm_transaction_manager* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %56

14:                                               ; preds = %2
  %15 = load i32, i32* @metadata_ll_load_ie, align 4
  %16 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %17 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %16, i32 0, i32 9
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @metadata_ll_save_ie, align 4
  %19 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %20 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %19, i32 0, i32 8
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %22 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %21, i32 0, i32 0
  store i32 (%struct.ll_disk*)* @metadata_ll_init_index, i32 (%struct.ll_disk*)** %22, align 8
  %23 = load i32, i32* @metadata_ll_open, align 4
  %24 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %25 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @metadata_ll_max_entries, align 4
  %27 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %28 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @metadata_ll_commit, align 4
  %30 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %31 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %33 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %32, i32 0, i32 4
  store i64 0, i64* %33, align 8
  %34 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %35 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %37 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %36, i32 0, i32 0
  %38 = load i32 (%struct.ll_disk*)*, i32 (%struct.ll_disk*)** %37, align 8
  %39 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %40 = call i32 %38(%struct.ll_disk* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %14
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %56

45:                                               ; preds = %14
  %46 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %47 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %46, i32 0, i32 2
  %48 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %49 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %48, i32 0, i32 1
  %50 = call i32 @dm_btree_empty(i32* %47, i32* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %56

55:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %53, %43, %12
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @sm_ll_init(%struct.ll_disk*, %struct.dm_transaction_manager*) #1

declare dso_local i32 @metadata_ll_init_index(%struct.ll_disk*) #1

declare dso_local i32 @dm_btree_empty(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
