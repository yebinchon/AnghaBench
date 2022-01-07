; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-space-map-disk.c_dm_sm_disk_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-space-map-disk.c_dm_sm_disk_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_space_map = type { i32 }
%struct.dm_transaction_manager = type { i32 }
%struct.sm_disk = type { %struct.dm_space_map, i32, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dm_space_map* @dm_sm_disk_create(%struct.dm_transaction_manager* %0, i32 %1) #0 {
  %3 = alloca %struct.dm_space_map*, align 8
  %4 = alloca %struct.dm_transaction_manager*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sm_disk*, align 8
  store %struct.dm_transaction_manager* %0, %struct.dm_transaction_manager** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.sm_disk* @kmalloc(i32 24, i32 %8)
  store %struct.sm_disk* %9, %struct.sm_disk** %7, align 8
  %10 = load %struct.sm_disk*, %struct.sm_disk** %7, align 8
  %11 = icmp ne %struct.sm_disk* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.dm_space_map* @ERR_PTR(i32 %14)
  store %struct.dm_space_map* %15, %struct.dm_space_map** %3, align 8
  br label %54

16:                                               ; preds = %2
  %17 = load %struct.sm_disk*, %struct.sm_disk** %7, align 8
  %18 = getelementptr inbounds %struct.sm_disk, %struct.sm_disk* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.sm_disk*, %struct.sm_disk** %7, align 8
  %20 = getelementptr inbounds %struct.sm_disk, %struct.sm_disk* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load %struct.sm_disk*, %struct.sm_disk** %7, align 8
  %22 = getelementptr inbounds %struct.sm_disk, %struct.sm_disk* %21, i32 0, i32 0
  %23 = call i32 @memcpy(%struct.dm_space_map* %22, i32* @ops, i32 4)
  %24 = load %struct.sm_disk*, %struct.sm_disk** %7, align 8
  %25 = getelementptr inbounds %struct.sm_disk, %struct.sm_disk* %24, i32 0, i32 1
  %26 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %4, align 8
  %27 = call i32 @sm_ll_new_disk(i32* %25, %struct.dm_transaction_manager* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %16
  br label %49

31:                                               ; preds = %16
  %32 = load %struct.sm_disk*, %struct.sm_disk** %7, align 8
  %33 = getelementptr inbounds %struct.sm_disk, %struct.sm_disk* %32, i32 0, i32 1
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @sm_ll_extend(i32* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %49

39:                                               ; preds = %31
  %40 = load %struct.sm_disk*, %struct.sm_disk** %7, align 8
  %41 = getelementptr inbounds %struct.sm_disk, %struct.sm_disk* %40, i32 0, i32 0
  %42 = call i32 @sm_disk_commit(%struct.dm_space_map* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %49

46:                                               ; preds = %39
  %47 = load %struct.sm_disk*, %struct.sm_disk** %7, align 8
  %48 = getelementptr inbounds %struct.sm_disk, %struct.sm_disk* %47, i32 0, i32 0
  store %struct.dm_space_map* %48, %struct.dm_space_map** %3, align 8
  br label %54

49:                                               ; preds = %45, %38, %30
  %50 = load %struct.sm_disk*, %struct.sm_disk** %7, align 8
  %51 = call i32 @kfree(%struct.sm_disk* %50)
  %52 = load i32, i32* %6, align 4
  %53 = call %struct.dm_space_map* @ERR_PTR(i32 %52)
  store %struct.dm_space_map* %53, %struct.dm_space_map** %3, align 8
  br label %54

54:                                               ; preds = %49, %46, %12
  %55 = load %struct.dm_space_map*, %struct.dm_space_map** %3, align 8
  ret %struct.dm_space_map* %55
}

declare dso_local %struct.sm_disk* @kmalloc(i32, i32) #1

declare dso_local %struct.dm_space_map* @ERR_PTR(i32) #1

declare dso_local i32 @memcpy(%struct.dm_space_map*, i32*, i32) #1

declare dso_local i32 @sm_ll_new_disk(i32*, %struct.dm_transaction_manager*) #1

declare dso_local i32 @sm_ll_extend(i32*, i32) #1

declare dso_local i32 @sm_disk_commit(%struct.dm_space_map*) #1

declare dso_local i32 @kfree(%struct.sm_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
