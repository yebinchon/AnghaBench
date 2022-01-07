; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-space-map-common.c_metadata_ll_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-space-map-common.c_metadata_ll_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ll_disk = type { i32, i32, i32 }
%struct.dm_block = type { i32 }

@index_validator = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ll_disk*)* @metadata_ll_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @metadata_ll_open(%struct.ll_disk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ll_disk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_block*, align 8
  store %struct.ll_disk* %0, %struct.ll_disk** %3, align 8
  %6 = load %struct.ll_disk*, %struct.ll_disk** %3, align 8
  %7 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ll_disk*, %struct.ll_disk** %3, align 8
  %10 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @dm_tm_read_lock(i32 %8, i32 %11, i32* @index_validator, %struct.dm_block** %5)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %28

17:                                               ; preds = %1
  %18 = load %struct.ll_disk*, %struct.ll_disk** %3, align 8
  %19 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %18, i32 0, i32 1
  %20 = load %struct.dm_block*, %struct.dm_block** %5, align 8
  %21 = call i32 @dm_block_data(%struct.dm_block* %20)
  %22 = call i32 @memcpy(i32* %19, i32 %21, i32 4)
  %23 = load %struct.ll_disk*, %struct.ll_disk** %3, align 8
  %24 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.dm_block*, %struct.dm_block** %5, align 8
  %27 = call i32 @dm_tm_unlock(i32 %25, %struct.dm_block* %26)
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %17, %15
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @dm_tm_read_lock(i32, i32, i32*, %struct.dm_block**) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @dm_block_data(%struct.dm_block*) #1

declare dso_local i32 @dm_tm_unlock(i32, %struct.dm_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
