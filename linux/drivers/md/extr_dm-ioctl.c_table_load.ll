; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-ioctl.c_table_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-ioctl.c_table_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dm_ioctl = type { i32, i32 }
%struct.hash_cell = type { %struct.dm_table*, %struct.mapped_device* }
%struct.dm_table = type { i32 }
%struct.mapped_device = type { i32 }
%struct.target_type = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"can't replace immutable target type %s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DM_TYPE_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"unable to set up device queue for new table.\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"can't change device type (old=%u vs new=%u) after initial table load.\00", align 1
@_hash_lock = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"device has been removed from the dev hash table.\00", align 1
@DM_INACTIVE_PRESENT_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dm_ioctl*, i64)* @table_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @table_load(%struct.file* %0, %struct.dm_ioctl* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.dm_ioctl*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hash_cell*, align 8
  %10 = alloca %struct.dm_table*, align 8
  %11 = alloca %struct.dm_table*, align 8
  %12 = alloca %struct.mapped_device*, align 8
  %13 = alloca %struct.target_type*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.dm_ioctl* %1, %struct.dm_ioctl** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.dm_table* null, %struct.dm_table** %11, align 8
  %14 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %15 = call %struct.mapped_device* @find_device(%struct.dm_ioctl* %14)
  store %struct.mapped_device* %15, %struct.mapped_device** %12, align 8
  %16 = load %struct.mapped_device*, %struct.mapped_device** %12, align 8
  %17 = icmp ne %struct.mapped_device* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENXIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %158

21:                                               ; preds = %3
  %22 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %23 = call i32 @get_mode(%struct.dm_ioctl* %22)
  %24 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %25 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mapped_device*, %struct.mapped_device** %12, align 8
  %28 = call i32 @dm_table_create(%struct.dm_table** %10, i32 %23, i32 %26, %struct.mapped_device* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %154

32:                                               ; preds = %21
  %33 = load %struct.mapped_device*, %struct.mapped_device** %12, align 8
  %34 = call i32 @dm_lock_md_type(%struct.mapped_device* %33)
  %35 = load %struct.dm_table*, %struct.dm_table** %10, align 8
  %36 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @populate_table(%struct.dm_table* %35, %struct.dm_ioctl* %36, i64 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %148

42:                                               ; preds = %32
  %43 = load %struct.mapped_device*, %struct.mapped_device** %12, align 8
  %44 = call %struct.target_type* @dm_get_immutable_target_type(%struct.mapped_device* %43)
  store %struct.target_type* %44, %struct.target_type** %13, align 8
  %45 = load %struct.target_type*, %struct.target_type** %13, align 8
  %46 = icmp ne %struct.target_type* %45, null
  br i1 %46, label %47, label %63

47:                                               ; preds = %42
  %48 = load %struct.target_type*, %struct.target_type** %13, align 8
  %49 = load %struct.dm_table*, %struct.dm_table** %10, align 8
  %50 = call %struct.target_type* @dm_table_get_immutable_target_type(%struct.dm_table* %49)
  %51 = icmp ne %struct.target_type* %48, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = load %struct.dm_table*, %struct.dm_table** %10, align 8
  %54 = call i32 @dm_table_get_wildcard_target(%struct.dm_table* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %52
  %57 = load %struct.target_type*, %struct.target_type** %13, align 8
  %58 = getelementptr inbounds %struct.target_type, %struct.target_type* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %8, align 4
  br label %148

63:                                               ; preds = %52, %47, %42
  %64 = load %struct.mapped_device*, %struct.mapped_device** %12, align 8
  %65 = call i64 @dm_get_md_type(%struct.mapped_device* %64)
  %66 = load i64, i64* @DM_TYPE_NONE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %63
  %69 = load %struct.mapped_device*, %struct.mapped_device** %12, align 8
  %70 = load %struct.dm_table*, %struct.dm_table** %10, align 8
  %71 = call i32 @dm_table_get_type(%struct.dm_table* %70)
  %72 = call i32 @dm_set_md_type(%struct.mapped_device* %69, i32 %71)
  %73 = load %struct.mapped_device*, %struct.mapped_device** %12, align 8
  %74 = load %struct.dm_table*, %struct.dm_table** %10, align 8
  %75 = call i32 @dm_setup_md_queue(%struct.mapped_device* %73, %struct.dm_table* %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %68
  %79 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %148

80:                                               ; preds = %68
  br label %97

81:                                               ; preds = %63
  %82 = load %struct.mapped_device*, %struct.mapped_device** %12, align 8
  %83 = call i64 @dm_get_md_type(%struct.mapped_device* %82)
  %84 = load %struct.dm_table*, %struct.dm_table** %10, align 8
  %85 = call i32 @dm_table_get_type(%struct.dm_table* %84)
  %86 = call i32 @is_valid_type(i64 %83, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %81
  %89 = load %struct.mapped_device*, %struct.mapped_device** %12, align 8
  %90 = call i64 @dm_get_md_type(%struct.mapped_device* %89)
  %91 = load %struct.dm_table*, %struct.dm_table** %10, align 8
  %92 = call i32 @dm_table_get_type(%struct.dm_table* %91)
  %93 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i64 %90, i32 %92)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %8, align 4
  br label %148

96:                                               ; preds = %81
  br label %97

97:                                               ; preds = %96, %80
  %98 = load %struct.mapped_device*, %struct.mapped_device** %12, align 8
  %99 = call i32 @dm_unlock_md_type(%struct.mapped_device* %98)
  %100 = call i32 @down_write(i32* @_hash_lock)
  %101 = load %struct.mapped_device*, %struct.mapped_device** %12, align 8
  %102 = call %struct.hash_cell* @dm_get_mdptr(%struct.mapped_device* %101)
  store %struct.hash_cell* %102, %struct.hash_cell** %9, align 8
  %103 = load %struct.hash_cell*, %struct.hash_cell** %9, align 8
  %104 = icmp ne %struct.hash_cell* %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %97
  %106 = load %struct.hash_cell*, %struct.hash_cell** %9, align 8
  %107 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %106, i32 0, i32 1
  %108 = load %struct.mapped_device*, %struct.mapped_device** %107, align 8
  %109 = load %struct.mapped_device*, %struct.mapped_device** %12, align 8
  %110 = icmp ne %struct.mapped_device* %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %105, %97
  %112 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %113 = call i32 @up_write(i32* @_hash_lock)
  %114 = load i32, i32* @ENXIO, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %8, align 4
  br label %151

116:                                              ; preds = %105
  %117 = load %struct.hash_cell*, %struct.hash_cell** %9, align 8
  %118 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %117, i32 0, i32 0
  %119 = load %struct.dm_table*, %struct.dm_table** %118, align 8
  %120 = icmp ne %struct.dm_table* %119, null
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load %struct.hash_cell*, %struct.hash_cell** %9, align 8
  %123 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %122, i32 0, i32 0
  %124 = load %struct.dm_table*, %struct.dm_table** %123, align 8
  store %struct.dm_table* %124, %struct.dm_table** %11, align 8
  br label %125

125:                                              ; preds = %121, %116
  %126 = load %struct.dm_table*, %struct.dm_table** %10, align 8
  %127 = load %struct.hash_cell*, %struct.hash_cell** %9, align 8
  %128 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %127, i32 0, i32 0
  store %struct.dm_table* %126, %struct.dm_table** %128, align 8
  %129 = call i32 @up_write(i32* @_hash_lock)
  %130 = load i32, i32* @DM_INACTIVE_PRESENT_FLAG, align 4
  %131 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %132 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 4
  %135 = load %struct.mapped_device*, %struct.mapped_device** %12, align 8
  %136 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %137 = call i32 @__dev_status(%struct.mapped_device* %135, %struct.dm_ioctl* %136)
  %138 = load %struct.dm_table*, %struct.dm_table** %11, align 8
  %139 = icmp ne %struct.dm_table* %138, null
  br i1 %139, label %140, label %145

140:                                              ; preds = %125
  %141 = load %struct.mapped_device*, %struct.mapped_device** %12, align 8
  %142 = call i32 @dm_sync_table(%struct.mapped_device* %141)
  %143 = load %struct.dm_table*, %struct.dm_table** %11, align 8
  %144 = call i32 @dm_table_destroy(%struct.dm_table* %143)
  br label %145

145:                                              ; preds = %140, %125
  %146 = load %struct.mapped_device*, %struct.mapped_device** %12, align 8
  %147 = call i32 @dm_put(%struct.mapped_device* %146)
  store i32 0, i32* %4, align 4
  br label %158

148:                                              ; preds = %88, %78, %56, %41
  %149 = load %struct.mapped_device*, %struct.mapped_device** %12, align 8
  %150 = call i32 @dm_unlock_md_type(%struct.mapped_device* %149)
  br label %151

151:                                              ; preds = %148, %111
  %152 = load %struct.dm_table*, %struct.dm_table** %10, align 8
  %153 = call i32 @dm_table_destroy(%struct.dm_table* %152)
  br label %154

154:                                              ; preds = %151, %31
  %155 = load %struct.mapped_device*, %struct.mapped_device** %12, align 8
  %156 = call i32 @dm_put(%struct.mapped_device* %155)
  %157 = load i32, i32* %8, align 4
  store i32 %157, i32* %4, align 4
  br label %158

158:                                              ; preds = %154, %145, %18
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local %struct.mapped_device* @find_device(%struct.dm_ioctl*) #1

declare dso_local i32 @dm_table_create(%struct.dm_table**, i32, i32, %struct.mapped_device*) #1

declare dso_local i32 @get_mode(%struct.dm_ioctl*) #1

declare dso_local i32 @dm_lock_md_type(%struct.mapped_device*) #1

declare dso_local i32 @populate_table(%struct.dm_table*, %struct.dm_ioctl*, i64) #1

declare dso_local %struct.target_type* @dm_get_immutable_target_type(%struct.mapped_device*) #1

declare dso_local %struct.target_type* @dm_table_get_immutable_target_type(%struct.dm_table*) #1

declare dso_local i32 @dm_table_get_wildcard_target(%struct.dm_table*) #1

declare dso_local i32 @DMWARN(i8*, ...) #1

declare dso_local i64 @dm_get_md_type(%struct.mapped_device*) #1

declare dso_local i32 @dm_set_md_type(%struct.mapped_device*, i32) #1

declare dso_local i32 @dm_table_get_type(%struct.dm_table*) #1

declare dso_local i32 @dm_setup_md_queue(%struct.mapped_device*, %struct.dm_table*) #1

declare dso_local i32 @is_valid_type(i64, i32) #1

declare dso_local i32 @dm_unlock_md_type(%struct.mapped_device*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.hash_cell* @dm_get_mdptr(%struct.mapped_device*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @__dev_status(%struct.mapped_device*, %struct.dm_ioctl*) #1

declare dso_local i32 @dm_sync_table(%struct.mapped_device*) #1

declare dso_local i32 @dm_table_destroy(%struct.dm_table*) #1

declare dso_local i32 @dm_put(%struct.mapped_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
