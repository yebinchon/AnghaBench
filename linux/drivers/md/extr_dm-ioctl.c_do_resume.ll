; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-ioctl.c_do_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-ioctl.c_do_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_ioctl = type { i32, i32 }
%struct.hash_cell = type { %struct.dm_table*, %struct.mapped_device* }
%struct.dm_table = type { i32 }
%struct.mapped_device = type { i32 }

@DM_SUSPEND_LOCKFS_FLAG = common dso_local global i32 0, align 4
@_hash_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"device doesn't appear to be in the dev hash table.\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@DM_INACTIVE_PRESENT_FLAG = common dso_local global i32 0, align 4
@DM_SKIP_LOCKFS_FLAG = common dso_local global i32 0, align 4
@DM_NOFLUSH_FLAG = common dso_local global i32 0, align 4
@DM_SUSPEND_NOFLUSH_FLAG = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@DM_UEVENT_GENERATED_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_ioctl*)* @do_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_resume(%struct.dm_ioctl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_ioctl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hash_cell*, align 8
  %7 = alloca %struct.mapped_device*, align 8
  %8 = alloca %struct.dm_table*, align 8
  %9 = alloca %struct.dm_table*, align 8
  store %struct.dm_ioctl* %0, %struct.dm_ioctl** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load i32, i32* @DM_SUSPEND_LOCKFS_FLAG, align 4
  store i32 %10, i32* %5, align 4
  store %struct.dm_table* null, %struct.dm_table** %9, align 8
  %11 = call i32 @down_write(i32* @_hash_lock)
  %12 = load %struct.dm_ioctl*, %struct.dm_ioctl** %3, align 8
  %13 = call %struct.hash_cell* @__find_device_hash_cell(%struct.dm_ioctl* %12)
  store %struct.hash_cell* %13, %struct.hash_cell** %6, align 8
  %14 = load %struct.hash_cell*, %struct.hash_cell** %6, align 8
  %15 = icmp ne %struct.hash_cell* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = call i32 @DMDEBUG_LIMIT(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @up_write(i32* @_hash_lock)
  %19 = load i32, i32* @ENXIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %142

21:                                               ; preds = %1
  %22 = load %struct.hash_cell*, %struct.hash_cell** %6, align 8
  %23 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %22, i32 0, i32 1
  %24 = load %struct.mapped_device*, %struct.mapped_device** %23, align 8
  store %struct.mapped_device* %24, %struct.mapped_device** %7, align 8
  %25 = load %struct.hash_cell*, %struct.hash_cell** %6, align 8
  %26 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %25, i32 0, i32 0
  %27 = load %struct.dm_table*, %struct.dm_table** %26, align 8
  store %struct.dm_table* %27, %struct.dm_table** %8, align 8
  %28 = load %struct.hash_cell*, %struct.hash_cell** %6, align 8
  %29 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %28, i32 0, i32 0
  store %struct.dm_table* null, %struct.dm_table** %29, align 8
  %30 = load i32, i32* @DM_INACTIVE_PRESENT_FLAG, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.dm_ioctl*, %struct.dm_ioctl** %3, align 8
  %33 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = call i32 @up_write(i32* @_hash_lock)
  %37 = load %struct.dm_table*, %struct.dm_table** %8, align 8
  %38 = icmp ne %struct.dm_table* %37, null
  br i1 %38, label %39, label %101

39:                                               ; preds = %21
  %40 = load %struct.dm_ioctl*, %struct.dm_ioctl** %3, align 8
  %41 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DM_SKIP_LOCKFS_FLAG, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load i32, i32* @DM_SUSPEND_LOCKFS_FLAG, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %46, %39
  %52 = load %struct.dm_ioctl*, %struct.dm_ioctl** %3, align 8
  %53 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @DM_NOFLUSH_FLAG, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i32, i32* @DM_SUSPEND_NOFLUSH_FLAG, align 4
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %58, %51
  %63 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %64 = call i64 @dm_suspended_md(%struct.mapped_device* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @dm_suspend(%struct.mapped_device* %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %62
  %71 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %72 = load %struct.dm_table*, %struct.dm_table** %8, align 8
  %73 = call %struct.dm_table* @dm_swap_table(%struct.mapped_device* %71, %struct.dm_table* %72)
  store %struct.dm_table* %73, %struct.dm_table** %9, align 8
  %74 = load %struct.dm_table*, %struct.dm_table** %9, align 8
  %75 = call i64 @IS_ERR(%struct.dm_table* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %70
  %78 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %79 = call i32 @dm_sync_table(%struct.mapped_device* %78)
  %80 = load %struct.dm_table*, %struct.dm_table** %8, align 8
  %81 = call i32 @dm_table_destroy(%struct.dm_table* %80)
  %82 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %83 = call i32 @dm_put(%struct.mapped_device* %82)
  %84 = load %struct.dm_table*, %struct.dm_table** %9, align 8
  %85 = call i32 @PTR_ERR(%struct.dm_table* %84)
  store i32 %85, i32* %2, align 4
  br label %142

86:                                               ; preds = %70
  %87 = load %struct.dm_table*, %struct.dm_table** %8, align 8
  %88 = call i32 @dm_table_get_mode(%struct.dm_table* %87)
  %89 = load i32, i32* @FMODE_WRITE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %94 = call i32 @dm_disk(%struct.mapped_device* %93)
  %95 = call i32 @set_disk_ro(i32 %94, i32 0)
  br label %100

96:                                               ; preds = %86
  %97 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %98 = call i32 @dm_disk(%struct.mapped_device* %97)
  %99 = call i32 @set_disk_ro(i32 %98, i32 1)
  br label %100

100:                                              ; preds = %96, %92
  br label %101

101:                                              ; preds = %100, %21
  %102 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %103 = call i64 @dm_suspended_md(%struct.mapped_device* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %125

105:                                              ; preds = %101
  %106 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %107 = call i32 @dm_resume(%struct.mapped_device* %106)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %124, label %110

110:                                              ; preds = %105
  %111 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %112 = load i32, i32* @KOBJ_CHANGE, align 4
  %113 = load %struct.dm_ioctl*, %struct.dm_ioctl** %3, align 8
  %114 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @dm_kobject_uevent(%struct.mapped_device* %111, i32 %112, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %110
  %119 = load i32, i32* @DM_UEVENT_GENERATED_FLAG, align 4
  %120 = load %struct.dm_ioctl*, %struct.dm_ioctl** %3, align 8
  %121 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %118, %110, %105
  br label %125

125:                                              ; preds = %124, %101
  %126 = load %struct.dm_table*, %struct.dm_table** %9, align 8
  %127 = icmp ne %struct.dm_table* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load %struct.dm_table*, %struct.dm_table** %9, align 8
  %130 = call i32 @dm_table_destroy(%struct.dm_table* %129)
  br label %131

131:                                              ; preds = %128, %125
  %132 = load i32, i32* %4, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %131
  %135 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %136 = load %struct.dm_ioctl*, %struct.dm_ioctl** %3, align 8
  %137 = call i32 @__dev_status(%struct.mapped_device* %135, %struct.dm_ioctl* %136)
  br label %138

138:                                              ; preds = %134, %131
  %139 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %140 = call i32 @dm_put(%struct.mapped_device* %139)
  %141 = load i32, i32* %4, align 4
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %138, %77, %16
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.hash_cell* @__find_device_hash_cell(%struct.dm_ioctl*) #1

declare dso_local i32 @DMDEBUG_LIMIT(i8*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i64 @dm_suspended_md(%struct.mapped_device*) #1

declare dso_local i32 @dm_suspend(%struct.mapped_device*, i32) #1

declare dso_local %struct.dm_table* @dm_swap_table(%struct.mapped_device*, %struct.dm_table*) #1

declare dso_local i64 @IS_ERR(%struct.dm_table*) #1

declare dso_local i32 @dm_sync_table(%struct.mapped_device*) #1

declare dso_local i32 @dm_table_destroy(%struct.dm_table*) #1

declare dso_local i32 @dm_put(%struct.mapped_device*) #1

declare dso_local i32 @PTR_ERR(%struct.dm_table*) #1

declare dso_local i32 @dm_table_get_mode(%struct.dm_table*) #1

declare dso_local i32 @set_disk_ro(i32, i32) #1

declare dso_local i32 @dm_disk(%struct.mapped_device*) #1

declare dso_local i32 @dm_resume(%struct.mapped_device*) #1

declare dso_local i32 @dm_kobject_uevent(%struct.mapped_device*, i32, i32) #1

declare dso_local i32 @__dev_status(%struct.mapped_device*, %struct.dm_ioctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
