; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-space-map-common.c_metadata_ll_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-space-map-common.c_metadata_ll_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ll_disk = type { i32, i32, i32 }
%struct.dm_block = type { i32 }

@index_validator = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ll_disk*)* @metadata_ll_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @metadata_ll_commit(%struct.ll_disk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ll_disk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_block*, align 8
  store %struct.ll_disk* %0, %struct.ll_disk** %3, align 8
  %7 = load %struct.ll_disk*, %struct.ll_disk** %3, align 8
  %8 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ll_disk*, %struct.ll_disk** %3, align 8
  %11 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dm_tm_shadow_block(i32 %9, i32 %12, i32* @index_validator, %struct.dm_block** %6, i32* %5)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %33

18:                                               ; preds = %1
  %19 = load %struct.dm_block*, %struct.dm_block** %6, align 8
  %20 = call i32 @dm_block_data(%struct.dm_block* %19)
  %21 = load %struct.ll_disk*, %struct.ll_disk** %3, align 8
  %22 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %21, i32 0, i32 2
  %23 = call i32 @memcpy(i32 %20, i32* %22, i32 4)
  %24 = load %struct.dm_block*, %struct.dm_block** %6, align 8
  %25 = call i32 @dm_block_location(%struct.dm_block* %24)
  %26 = load %struct.ll_disk*, %struct.ll_disk** %3, align 8
  %27 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ll_disk*, %struct.ll_disk** %3, align 8
  %29 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dm_block*, %struct.dm_block** %6, align 8
  %32 = call i32 @dm_tm_unlock(i32 %30, %struct.dm_block* %31)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %18, %16
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @dm_tm_shadow_block(i32, i32, i32*, %struct.dm_block**, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @dm_block_data(%struct.dm_block*) #1

declare dso_local i32 @dm_block_location(%struct.dm_block*) #1

declare dso_local i32 @dm_tm_unlock(i32, %struct.dm_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
