; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dm_process_bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dm_process_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.mapped_device = type { i32, %struct.dm_target* }
%struct.dm_target = type { i32 }
%struct.dm_table = type { i32 }
%struct.bio = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BLK_QC_T_NONE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@DM_TYPE_NVME_BIO_BASED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mapped_device*, %struct.dm_table*, %struct.bio*)* @dm_process_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_process_bio(%struct.mapped_device* %0, %struct.dm_table* %1, %struct.bio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mapped_device*, align 8
  %6 = alloca %struct.dm_table*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_target*, align 8
  store %struct.mapped_device* %0, %struct.mapped_device** %5, align 8
  store %struct.dm_table* %1, %struct.dm_table** %6, align 8
  store %struct.bio* %2, %struct.bio** %7, align 8
  %10 = load i32, i32* @BLK_QC_T_NONE, align 4
  store i32 %10, i32* %8, align 4
  %11 = load %struct.mapped_device*, %struct.mapped_device** %5, align 8
  %12 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %11, i32 0, i32 1
  %13 = load %struct.dm_target*, %struct.dm_target** %12, align 8
  store %struct.dm_target* %13, %struct.dm_target** %9, align 8
  %14 = load %struct.dm_table*, %struct.dm_table** %6, align 8
  %15 = icmp ne %struct.dm_table* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.bio*, %struct.bio** %7, align 8
  %22 = call i32 @bio_io_error(%struct.bio* %21)
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %4, align 4
  br label %79

24:                                               ; preds = %3
  %25 = load %struct.dm_target*, %struct.dm_target** %9, align 8
  %26 = icmp ne %struct.dm_target* %25, null
  br i1 %26, label %45, label %27

27:                                               ; preds = %24
  %28 = load %struct.dm_table*, %struct.dm_table** %6, align 8
  %29 = load %struct.bio*, %struct.bio** %7, align 8
  %30 = getelementptr inbounds %struct.bio, %struct.bio* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.dm_target* @dm_table_find_target(%struct.dm_table* %28, i32 %32)
  store %struct.dm_target* %33, %struct.dm_target** %9, align 8
  %34 = load %struct.dm_target*, %struct.dm_target** %9, align 8
  %35 = icmp ne %struct.dm_target* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %27
  %41 = load %struct.bio*, %struct.bio** %7, align 8
  %42 = call i32 @bio_io_error(%struct.bio* %41)
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %79

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %44, %24
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load %struct.mapped_device*, %struct.mapped_device** %5, align 8
  %52 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @blk_queue_split(i32 %53, %struct.bio** %7)
  %55 = load %struct.bio*, %struct.bio** %7, align 8
  %56 = call i32 @is_abnormal_io(%struct.bio* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %50
  %59 = load %struct.mapped_device*, %struct.mapped_device** %5, align 8
  %60 = load %struct.dm_target*, %struct.dm_target** %9, align 8
  %61 = call i32 @dm_queue_split(%struct.mapped_device* %59, %struct.dm_target* %60, %struct.bio** %7)
  br label %62

62:                                               ; preds = %58, %50
  br label %63

63:                                               ; preds = %62, %45
  %64 = load %struct.mapped_device*, %struct.mapped_device** %5, align 8
  %65 = call i64 @dm_get_md_type(%struct.mapped_device* %64)
  %66 = load i64, i64* @DM_TYPE_NVME_BIO_BASED, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.mapped_device*, %struct.mapped_device** %5, align 8
  %70 = load %struct.dm_table*, %struct.dm_table** %6, align 8
  %71 = load %struct.bio*, %struct.bio** %7, align 8
  %72 = load %struct.dm_target*, %struct.dm_target** %9, align 8
  %73 = call i32 @__process_bio(%struct.mapped_device* %69, %struct.dm_table* %70, %struct.bio* %71, %struct.dm_target* %72)
  store i32 %73, i32* %4, align 4
  br label %79

74:                                               ; preds = %63
  %75 = load %struct.mapped_device*, %struct.mapped_device** %5, align 8
  %76 = load %struct.dm_table*, %struct.dm_table** %6, align 8
  %77 = load %struct.bio*, %struct.bio** %7, align 8
  %78 = call i32 @__split_and_process_bio(%struct.mapped_device* %75, %struct.dm_table* %76, %struct.bio* %77)
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %74, %68, %40, %20
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bio_io_error(%struct.bio*) #1

declare dso_local %struct.dm_target* @dm_table_find_target(%struct.dm_table*, i32) #1

declare dso_local i32 @blk_queue_split(i32, %struct.bio**) #1

declare dso_local i32 @is_abnormal_io(%struct.bio*) #1

declare dso_local i32 @dm_queue_split(%struct.mapped_device*, %struct.dm_target*, %struct.bio**) #1

declare dso_local i64 @dm_get_md_type(%struct.mapped_device*) #1

declare dso_local i32 @__process_bio(%struct.mapped_device*, %struct.dm_table*, %struct.bio*, %struct.dm_target*) #1

declare dso_local i32 @__split_and_process_bio(%struct.mapped_device*, %struct.dm_table*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
