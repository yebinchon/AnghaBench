; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c___process_bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c___process_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32 }
%struct.dm_table = type { i32 }
%struct.bio = type { i32 }
%struct.dm_target = type { i32 }
%struct.clone_info = type { i32, i64, %struct.bio* }
%struct.dm_target_io = type { i32 }

@BLK_QC_T_NONE = common dso_local global i32 0, align 4
@REQ_PREFLUSH = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@REQ_SYNC = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mapped_device*, %struct.dm_table*, %struct.bio*, %struct.dm_target*)* @__process_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__process_bio(%struct.mapped_device* %0, %struct.dm_table* %1, %struct.bio* %2, %struct.dm_target* %3) #0 {
  %5 = alloca %struct.mapped_device*, align 8
  %6 = alloca %struct.dm_table*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.dm_target*, align 8
  %9 = alloca %struct.clone_info, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bio, align 4
  %13 = alloca %struct.dm_target_io*, align 8
  store %struct.mapped_device* %0, %struct.mapped_device** %5, align 8
  store %struct.dm_table* %1, %struct.dm_table** %6, align 8
  store %struct.bio* %2, %struct.bio** %7, align 8
  store %struct.dm_target* %3, %struct.dm_target** %8, align 8
  %14 = load i32, i32* @BLK_QC_T_NONE, align 4
  store i32 %14, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.mapped_device*, %struct.mapped_device** %5, align 8
  %16 = load %struct.dm_table*, %struct.dm_table** %6, align 8
  %17 = load %struct.bio*, %struct.bio** %7, align 8
  %18 = call i32 @init_clone_info(%struct.clone_info* %9, %struct.mapped_device* %15, %struct.dm_table* %16, %struct.bio* %17)
  %19 = load %struct.bio*, %struct.bio** %7, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @REQ_PREFLUSH, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %4
  %26 = call i32 @bio_init(%struct.bio* %12, i32* null, i32 0)
  %27 = load i32, i32* @REQ_OP_WRITE, align 4
  %28 = load i32, i32* @REQ_PREFLUSH, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @REQ_SYNC, align 4
  %31 = or i32 %29, %30
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %9, i32 0, i32 2
  store %struct.bio* %12, %struct.bio** %33, align 8
  %34 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %9, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = call i32 @__send_empty_flush(%struct.clone_info* %9)
  store i32 %35, i32* %11, align 4
  br label %52

36:                                               ; preds = %4
  %37 = load %struct.bio*, %struct.bio** %7, align 8
  %38 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %9, i32 0, i32 2
  store %struct.bio* %37, %struct.bio** %38, align 8
  %39 = load %struct.bio*, %struct.bio** %7, align 8
  %40 = call i64 @bio_sectors(%struct.bio* %39)
  %41 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %9, i32 0, i32 1
  store i64 %40, i64* %41, align 8
  %42 = load %struct.dm_target*, %struct.dm_target** %8, align 8
  %43 = call i64 @__process_abnormal_io(%struct.clone_info* %9, %struct.dm_target* %42, i32* %11)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %53

46:                                               ; preds = %36
  %47 = load %struct.dm_target*, %struct.dm_target** %8, align 8
  %48 = load i32, i32* @GFP_NOIO, align 4
  %49 = call %struct.dm_target_io* @alloc_tio(%struct.clone_info* %9, %struct.dm_target* %47, i32 0, i32 %48)
  store %struct.dm_target_io* %49, %struct.dm_target_io** %13, align 8
  %50 = load %struct.dm_target_io*, %struct.dm_target_io** %13, align 8
  %51 = call i32 @__clone_and_map_simple_bio(%struct.clone_info* %9, %struct.dm_target_io* %50, i32* null)
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %46, %25
  br label %53

53:                                               ; preds = %52, %45
  %54 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %9, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @errno_to_blk_status(i32 %56)
  %58 = call i32 @dec_pending(i32 %55, i32 %57)
  %59 = load i32, i32* %10, align 4
  ret i32 %59
}

declare dso_local i32 @init_clone_info(%struct.clone_info*, %struct.mapped_device*, %struct.dm_table*, %struct.bio*) #1

declare dso_local i32 @bio_init(%struct.bio*, i32*, i32) #1

declare dso_local i32 @__send_empty_flush(%struct.clone_info*) #1

declare dso_local i64 @bio_sectors(%struct.bio*) #1

declare dso_local i64 @__process_abnormal_io(%struct.clone_info*, %struct.dm_target*, i32*) #1

declare dso_local %struct.dm_target_io* @alloc_tio(%struct.clone_info*, %struct.dm_target*, i32, i32) #1

declare dso_local i32 @__clone_and_map_simple_bio(%struct.clone_info*, %struct.dm_target_io*, i32*) #1

declare dso_local i32 @dec_pending(i32, i32) #1

declare dso_local i32 @errno_to_blk_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
