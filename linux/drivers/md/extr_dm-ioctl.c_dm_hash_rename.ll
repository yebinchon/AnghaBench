; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-ioctl.c_dm_hash_rename.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-ioctl.c_dm_hash_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32 }
%struct.dm_ioctl = type { i32, i8*, i32 }
%struct.hash_cell = type { i8*, %struct.mapped_device* }
%struct.dm_table = type { i32 }

@DM_UUID_FLAG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@_hash_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"Unable to change %s on mapped device %s to one that already exists: %s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"uuid\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Unable to rename non-existent device, %s to %s%s\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"uuid \00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [82 x i8] c"Unable to change uuid of mapped device %s to %s because uuid is already set to %s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@DM_UEVENT_GENERATED_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mapped_device* (%struct.dm_ioctl*, i8*)* @dm_hash_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mapped_device* @dm_hash_rename(%struct.dm_ioctl* %0, i8* %1) #0 {
  %3 = alloca %struct.mapped_device*, align 8
  %4 = alloca %struct.dm_ioctl*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hash_cell*, align 8
  %9 = alloca %struct.dm_table*, align 8
  %10 = alloca %struct.mapped_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dm_ioctl* %0, %struct.dm_ioctl** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %7, align 8
  %13 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %14 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @DM_UUID_FLAG, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 1, i32 0
  store i32 %20, i32* %11, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kstrdup(i8* %21, i32 %22)
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.mapped_device* @ERR_PTR(i32 %28)
  store %struct.mapped_device* %29, %struct.mapped_device** %3, align 8
  br label %163

30:                                               ; preds = %2
  %31 = call i32 @down_write(i32* @_hash_lock)
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i8*, i8** %5, align 8
  %36 = call %struct.hash_cell* @__get_uuid_cell(i8* %35)
  store %struct.hash_cell* %36, %struct.hash_cell** %8, align 8
  br label %40

37:                                               ; preds = %30
  %38 = load i8*, i8** %5, align 8
  %39 = call %struct.hash_cell* @__get_name_cell(i8* %38)
  store %struct.hash_cell* %39, %struct.hash_cell** %8, align 8
  br label %40

40:                                               ; preds = %37, %34
  %41 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %42 = icmp ne %struct.hash_cell* %41, null
  br i1 %42, label %43, label %63

43:                                               ; preds = %40
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %48 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %49 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @DMWARN(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i8* %47, i8* %50, i8* %51)
  %53 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %54 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %53, i32 0, i32 1
  %55 = load %struct.mapped_device*, %struct.mapped_device** %54, align 8
  %56 = call i32 @dm_put(%struct.mapped_device* %55)
  %57 = call i32 @up_write(i32* @_hash_lock)
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @kfree(i8* %58)
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  %62 = call %struct.mapped_device* @ERR_PTR(i32 %61)
  store %struct.mapped_device* %62, %struct.mapped_device** %3, align 8
  br label %163

63:                                               ; preds = %40
  %64 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %65 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call %struct.hash_cell* @__get_name_cell(i8* %66)
  store %struct.hash_cell* %67, %struct.hash_cell** %8, align 8
  %68 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %69 = icmp ne %struct.hash_cell* %68, null
  br i1 %69, label %86, label %70

70:                                               ; preds = %63
  %71 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %72 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %78 = load i8*, i8** %5, align 8
  %79 = call i32 @DMWARN(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* %73, i8* %77, i8* %78)
  %80 = call i32 @up_write(i32* @_hash_lock)
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @kfree(i8* %81)
  %83 = load i32, i32* @ENXIO, align 4
  %84 = sub nsw i32 0, %83
  %85 = call %struct.mapped_device* @ERR_PTR(i32 %84)
  store %struct.mapped_device* %85, %struct.mapped_device** %3, align 8
  br label %163

86:                                               ; preds = %63
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %113

89:                                               ; preds = %86
  %90 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %91 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %113

94:                                               ; preds = %89
  %95 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %96 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = load i8*, i8** %5, align 8
  %99 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %100 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @DMWARN(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.6, i64 0, i64 0), i8* %97, i8* %98, i8* %101)
  %103 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %104 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %103, i32 0, i32 1
  %105 = load %struct.mapped_device*, %struct.mapped_device** %104, align 8
  %106 = call i32 @dm_put(%struct.mapped_device* %105)
  %107 = call i32 @up_write(i32* @_hash_lock)
  %108 = load i8*, i8** %6, align 8
  %109 = call i32 @kfree(i8* %108)
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  %112 = call %struct.mapped_device* @ERR_PTR(i32 %111)
  store %struct.mapped_device* %112, %struct.mapped_device** %3, align 8
  br label %163

113:                                              ; preds = %89, %86
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %118 = load i8*, i8** %6, align 8
  %119 = call i32 @__set_cell_uuid(%struct.hash_cell* %117, i8* %118)
  br label %124

120:                                              ; preds = %113
  %121 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %122 = load i8*, i8** %6, align 8
  %123 = call i8* @__change_cell_name(%struct.hash_cell* %121, i8* %122)
  store i8* %123, i8** %7, align 8
  br label %124

124:                                              ; preds = %120, %116
  %125 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %126 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %125, i32 0, i32 1
  %127 = load %struct.mapped_device*, %struct.mapped_device** %126, align 8
  %128 = call %struct.dm_table* @dm_get_live_table(%struct.mapped_device* %127, i32* %12)
  store %struct.dm_table* %128, %struct.dm_table** %9, align 8
  %129 = load %struct.dm_table*, %struct.dm_table** %9, align 8
  %130 = icmp ne %struct.dm_table* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %124
  %132 = load %struct.dm_table*, %struct.dm_table** %9, align 8
  %133 = call i32 @dm_table_event(%struct.dm_table* %132)
  br label %134

134:                                              ; preds = %131, %124
  %135 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %136 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %135, i32 0, i32 1
  %137 = load %struct.mapped_device*, %struct.mapped_device** %136, align 8
  %138 = load i32, i32* %12, align 4
  %139 = call i32 @dm_put_live_table(%struct.mapped_device* %137, i32 %138)
  %140 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %141 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %140, i32 0, i32 1
  %142 = load %struct.mapped_device*, %struct.mapped_device** %141, align 8
  %143 = load i32, i32* @KOBJ_CHANGE, align 4
  %144 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %145 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @dm_kobject_uevent(%struct.mapped_device* %142, i32 %143, i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %134
  %150 = load i32, i32* @DM_UEVENT_GENERATED_FLAG, align 4
  %151 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %152 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  br label %155

155:                                              ; preds = %149, %134
  %156 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %157 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %156, i32 0, i32 1
  %158 = load %struct.mapped_device*, %struct.mapped_device** %157, align 8
  store %struct.mapped_device* %158, %struct.mapped_device** %10, align 8
  %159 = call i32 @up_write(i32* @_hash_lock)
  %160 = load i8*, i8** %7, align 8
  %161 = call i32 @kfree(i8* %160)
  %162 = load %struct.mapped_device*, %struct.mapped_device** %10, align 8
  store %struct.mapped_device* %162, %struct.mapped_device** %3, align 8
  br label %163

163:                                              ; preds = %155, %94, %70, %43, %26
  %164 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  ret %struct.mapped_device* %164
}

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local %struct.mapped_device* @ERR_PTR(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.hash_cell* @__get_uuid_cell(i8*) #1

declare dso_local %struct.hash_cell* @__get_name_cell(i8*) #1

declare dso_local i32 @DMWARN(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @dm_put(%struct.mapped_device*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @__set_cell_uuid(%struct.hash_cell*, i8*) #1

declare dso_local i8* @__change_cell_name(%struct.hash_cell*, i8*) #1

declare dso_local %struct.dm_table* @dm_get_live_table(%struct.mapped_device*, i32*) #1

declare dso_local i32 @dm_table_event(%struct.dm_table*) #1

declare dso_local i32 @dm_put_live_table(%struct.mapped_device*, i32) #1

declare dso_local i32 @dm_kobject_uevent(%struct.mapped_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
