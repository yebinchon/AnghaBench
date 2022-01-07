; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c_dm_clone_metadata_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c_dm_clone_metadata_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_clone_metadata = type { i32, i32, i32, i32, i64, i32, i32, i32, i8*, i8*, %struct.block_device* }
%struct.block_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Failed to allocate memory for dm-clone metadata\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Failed to allocate memory for region bitmap\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to load on-disk region map\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dm_clone_metadata* @dm_clone_metadata_open(%struct.block_device* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.dm_clone_metadata*, align 8
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_clone_metadata*, align 8
  store %struct.block_device* %0, %struct.block_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.dm_clone_metadata* @kzalloc(i32 64, i32 %10)
  store %struct.dm_clone_metadata* %11, %struct.dm_clone_metadata** %9, align 8
  %12 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %9, align 8
  %13 = icmp ne %struct.dm_clone_metadata* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = call i32 @DMERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.dm_clone_metadata* @ERR_PTR(i32 %17)
  store %struct.dm_clone_metadata* %18, %struct.dm_clone_metadata** %4, align 8
  br label %118

19:                                               ; preds = %3
  %20 = load %struct.block_device*, %struct.block_device** %5, align 8
  %21 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %9, align 8
  %22 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %21, i32 0, i32 10
  store %struct.block_device* %20, %struct.block_device** %22, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %9, align 8
  %25 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %24, i32 0, i32 9
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %9, align 8
  %28 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %27, i32 0, i32 8
  store i8* %26, i8** %28, align 8
  %29 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %9, align 8
  %30 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %29, i32 0, i32 9
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %9, align 8
  %33 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %32, i32 0, i32 8
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @dm_sector_div_up(i8* %31, i8* %34)
  %36 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %9, align 8
  %37 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %9, align 8
  %39 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @BITS_TO_LONGS(i32 %40)
  %42 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %9, align 8
  %43 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %42, i32 0, i32 7
  store i32 %41, i32* %43, align 8
  %44 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %9, align 8
  %45 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %44, i32 0, i32 6
  %46 = call i32 @init_rwsem(i32* %45)
  %47 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %9, align 8
  %48 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %47, i32 0, i32 5
  %49 = call i32 @spin_lock_init(i32* %48)
  %50 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %9, align 8
  %51 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %50, i32 0, i32 4
  store i64 0, i64* %51, align 8
  %52 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %9, align 8
  %53 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  %54 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %9, align 8
  %55 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %54, i32 0, i32 1
  store i32 0, i32* %55, align 4
  %56 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %9, align 8
  %57 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @bitmap_size(i32 %58)
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i32 @kvmalloc(i32 %59, i32 %60)
  %62 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %9, align 8
  %63 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %9, align 8
  %65 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %19
  %69 = call i32 @DMERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %8, align 4
  br label %113

72:                                               ; preds = %19
  %73 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %9, align 8
  %74 = call i32 @__create_persistent_data_structures(%struct.dm_clone_metadata* %73, i32 1)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %108

78:                                               ; preds = %72
  %79 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %9, align 8
  %80 = call i32 @__load_bitset_in_core(%struct.dm_clone_metadata* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = call i32 @DMERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %105

85:                                               ; preds = %78
  %86 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %9, align 8
  %87 = call i32 @dirty_map_init(%struct.dm_clone_metadata* %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %105

91:                                               ; preds = %85
  %92 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %9, align 8
  %93 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %9, align 8
  %96 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @bitmap_full(i32 %94, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %91
  %101 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %9, align 8
  %102 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %101, i32 0, i32 1
  store i32 1, i32* %102, align 4
  br label %103

103:                                              ; preds = %100, %91
  %104 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %9, align 8
  store %struct.dm_clone_metadata* %104, %struct.dm_clone_metadata** %4, align 8
  br label %118

105:                                              ; preds = %90, %83
  %106 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %9, align 8
  %107 = call i32 @__destroy_persistent_data_structures(%struct.dm_clone_metadata* %106)
  br label %108

108:                                              ; preds = %105, %77
  %109 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %9, align 8
  %110 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @kvfree(i32 %111)
  br label %113

113:                                              ; preds = %108, %68
  %114 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %9, align 8
  %115 = call i32 @kfree(%struct.dm_clone_metadata* %114)
  %116 = load i32, i32* %8, align 4
  %117 = call %struct.dm_clone_metadata* @ERR_PTR(i32 %116)
  store %struct.dm_clone_metadata* %117, %struct.dm_clone_metadata** %4, align 8
  br label %118

118:                                              ; preds = %113, %103, %14
  %119 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %4, align 8
  ret %struct.dm_clone_metadata* %119
}

declare dso_local %struct.dm_clone_metadata* @kzalloc(i32, i32) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local %struct.dm_clone_metadata* @ERR_PTR(i32) #1

declare dso_local i32 @dm_sector_div_up(i8*, i8*) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kvmalloc(i32, i32) #1

declare dso_local i32 @bitmap_size(i32) #1

declare dso_local i32 @__create_persistent_data_structures(%struct.dm_clone_metadata*, i32) #1

declare dso_local i32 @__load_bitset_in_core(%struct.dm_clone_metadata*) #1

declare dso_local i32 @dirty_map_init(%struct.dm_clone_metadata*) #1

declare dso_local i64 @bitmap_full(i32, i32) #1

declare dso_local i32 @__destroy_persistent_data_structures(%struct.dm_clone_metadata*) #1

declare dso_local i32 @kvfree(i32) #1

declare dso_local i32 @kfree(%struct.dm_clone_metadata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
