; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-space-map-common.c_sm_ll_extend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-space-map-common.c_sm_ll_extend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ll_disk = type { i32, i32 (%struct.ll_disk*)*, i32 (%struct.ll_disk*, i32, %struct.disk_index_entry*)*, i32, i32 }
%struct.disk_index_entry = type opaque
%struct.dm_block = type { i32 }
%struct.disk_index_entry.0 = type { i64, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"space map too large\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@dm_sm_bitmap_validator = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sm_ll_extend(%struct.ll_disk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ll_disk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dm_block*, align 8
  %13 = alloca %struct.disk_index_entry.0, align 8
  store %struct.ll_disk* %0, %struct.ll_disk** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %15 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = add i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %20 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %23 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dm_sector_div_up(i32 %21, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %28 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dm_sector_div_up(i32 %26, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %33 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dm_sector_div_up(i32 %31, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %38 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %37, i32 0, i32 1
  %39 = load i32 (%struct.ll_disk*)*, i32 (%struct.ll_disk*)** %38, align 8
  %40 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %41 = call i32 %39(%struct.ll_disk* %40)
  %42 = icmp ugt i32 %36, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %2
  %44 = call i32 @DMERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %97

47:                                               ; preds = %2
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %50 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %93, %47
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %96

56:                                               ; preds = %52
  %57 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %58 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dm_tm_new_block(i32 %59, i32* @dm_sm_bitmap_validator, %struct.dm_block** %12)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %97

65:                                               ; preds = %56
  %66 = load %struct.dm_block*, %struct.dm_block** %12, align 8
  %67 = call i32 @dm_block_location(%struct.dm_block* %66)
  %68 = call i32 @cpu_to_le64(i32 %67)
  %69 = getelementptr inbounds %struct.disk_index_entry.0, %struct.disk_index_entry.0* %13, i32 0, i32 2
  store i32 %68, i32* %69, align 4
  %70 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %71 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.dm_block*, %struct.dm_block** %12, align 8
  %74 = call i32 @dm_tm_unlock(i32 %72, %struct.dm_block* %73)
  %75 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %76 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @cpu_to_le32(i32 %77)
  %79 = getelementptr inbounds %struct.disk_index_entry.0, %struct.disk_index_entry.0* %13, i32 0, i32 1
  store i32 %78, i32* %79, align 8
  %80 = getelementptr inbounds %struct.disk_index_entry.0, %struct.disk_index_entry.0* %13, i32 0, i32 0
  store i64 0, i64* %80, align 8
  %81 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %82 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %81, i32 0, i32 2
  %83 = load i32 (%struct.ll_disk*, i32, %struct.disk_index_entry*)*, i32 (%struct.ll_disk*, i32, %struct.disk_index_entry*)** %82, align 8
  %84 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %85 = load i32, i32* %7, align 4
  %86 = bitcast %struct.disk_index_entry.0* %13 to %struct.disk_index_entry*
  %87 = call i32 %83(%struct.ll_disk* %84, i32 %85, %struct.disk_index_entry* %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %65
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %3, align 4
  br label %97

92:                                               ; preds = %65
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %7, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %52

96:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %90, %63, %43
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @dm_sector_div_up(i32, i32) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @dm_tm_new_block(i32, i32*, %struct.dm_block**) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @dm_block_location(%struct.dm_block*) #1

declare dso_local i32 @dm_tm_unlock(i32, %struct.dm_block*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
