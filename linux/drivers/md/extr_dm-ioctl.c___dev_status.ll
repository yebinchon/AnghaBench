; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-ioctl.c___dev_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-ioctl.c___dev_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32 }
%struct.dm_ioctl = type { i32, i8*, i32, i32, i32 }
%struct.gendisk = type { i32 }
%struct.dm_table = type { i32 }

@DM_SUSPEND_FLAG = common dso_local global i32 0, align 4
@DM_READONLY_FLAG = common dso_local global i32 0, align 4
@DM_ACTIVE_PRESENT_FLAG = common dso_local global i32 0, align 4
@DM_INTERNAL_SUSPEND_FLAG = common dso_local global i32 0, align 4
@DM_DEFERRED_REMOVE = common dso_local global i32 0, align 4
@DM_QUERY_INACTIVE_TABLE_FLAG = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mapped_device*, %struct.dm_ioctl*)* @__dev_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dev_status(%struct.mapped_device* %0, %struct.dm_ioctl* %1) #0 {
  %3 = alloca %struct.mapped_device*, align 8
  %4 = alloca %struct.dm_ioctl*, align 8
  %5 = alloca %struct.gendisk*, align 8
  %6 = alloca %struct.dm_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mapped_device* %0, %struct.mapped_device** %3, align 8
  store %struct.dm_ioctl* %1, %struct.dm_ioctl** %4, align 8
  %9 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %10 = call %struct.gendisk* @dm_disk(%struct.mapped_device* %9)
  store %struct.gendisk* %10, %struct.gendisk** %5, align 8
  %11 = load i32, i32* @DM_SUSPEND_FLAG, align 4
  %12 = load i32, i32* @DM_READONLY_FLAG, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @DM_ACTIVE_PRESENT_FLAG, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @DM_INTERNAL_SUSPEND_FLAG, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %20 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %24 = call i64 @dm_suspended_md(%struct.mapped_device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load i32, i32* @DM_SUSPEND_FLAG, align 4
  %28 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %29 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %26, %2
  %33 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %34 = call i64 @dm_suspended_internally_md(%struct.mapped_device* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i32, i32* @DM_INTERNAL_SUSPEND_FLAG, align 4
  %38 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %39 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %36, %32
  %43 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %44 = call i64 @dm_test_deferred_remove_flag(%struct.mapped_device* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i32, i32* @DM_DEFERRED_REMOVE, align 4
  %48 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %49 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %46, %42
  %53 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %54 = call i32 @disk_devt(%struct.gendisk* %53)
  %55 = call i32 @huge_encode_dev(i32 %54)
  %56 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %57 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %59 = call i32 @dm_open_count(%struct.mapped_device* %58)
  %60 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %61 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %63 = call i32 @dm_get_event_nr(%struct.mapped_device* %62)
  %64 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %65 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %67 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %66, i32 0, i32 1
  store i8* null, i8** %67, align 8
  %68 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %69 = call %struct.dm_table* @dm_get_live_table(%struct.mapped_device* %68, i32* %7)
  store %struct.dm_table* %69, %struct.dm_table** %6, align 8
  %70 = load %struct.dm_table*, %struct.dm_table** %6, align 8
  %71 = icmp ne %struct.dm_table* %70, null
  br i1 %71, label %72, label %100

72:                                               ; preds = %52
  %73 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %74 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @DM_QUERY_INACTIVE_TABLE_FLAG, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %94, label %79

79:                                               ; preds = %72
  %80 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %81 = call i64 @get_disk_ro(%struct.gendisk* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load i32, i32* @DM_READONLY_FLAG, align 4
  %85 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %86 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %83, %79
  %90 = load %struct.dm_table*, %struct.dm_table** %6, align 8
  %91 = call i8* @dm_table_get_num_targets(%struct.dm_table* %90)
  %92 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %93 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  br label %94

94:                                               ; preds = %89, %72
  %95 = load i32, i32* @DM_ACTIVE_PRESENT_FLAG, align 4
  %96 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %97 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %94, %52
  %101 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @dm_put_live_table(%struct.mapped_device* %101, i32 %102)
  %104 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %105 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @DM_QUERY_INACTIVE_TABLE_FLAG, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %136

110:                                              ; preds = %100
  %111 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %112 = call %struct.dm_table* @dm_get_inactive_table(%struct.mapped_device* %111, i32* %8)
  store %struct.dm_table* %112, %struct.dm_table** %6, align 8
  %113 = load %struct.dm_table*, %struct.dm_table** %6, align 8
  %114 = icmp ne %struct.dm_table* %113, null
  br i1 %114, label %115, label %132

115:                                              ; preds = %110
  %116 = load %struct.dm_table*, %struct.dm_table** %6, align 8
  %117 = call i32 @dm_table_get_mode(%struct.dm_table* %116)
  %118 = load i32, i32* @FMODE_WRITE, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %115
  %122 = load i32, i32* @DM_READONLY_FLAG, align 4
  %123 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %124 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %121, %115
  %128 = load %struct.dm_table*, %struct.dm_table** %6, align 8
  %129 = call i8* @dm_table_get_num_targets(%struct.dm_table* %128)
  %130 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %131 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  br label %132

132:                                              ; preds = %127, %110
  %133 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @dm_put_live_table(%struct.mapped_device* %133, i32 %134)
  br label %136

136:                                              ; preds = %132, %100
  ret void
}

declare dso_local %struct.gendisk* @dm_disk(%struct.mapped_device*) #1

declare dso_local i64 @dm_suspended_md(%struct.mapped_device*) #1

declare dso_local i64 @dm_suspended_internally_md(%struct.mapped_device*) #1

declare dso_local i64 @dm_test_deferred_remove_flag(%struct.mapped_device*) #1

declare dso_local i32 @huge_encode_dev(i32) #1

declare dso_local i32 @disk_devt(%struct.gendisk*) #1

declare dso_local i32 @dm_open_count(%struct.mapped_device*) #1

declare dso_local i32 @dm_get_event_nr(%struct.mapped_device*) #1

declare dso_local %struct.dm_table* @dm_get_live_table(%struct.mapped_device*, i32*) #1

declare dso_local i64 @get_disk_ro(%struct.gendisk*) #1

declare dso_local i8* @dm_table_get_num_targets(%struct.dm_table*) #1

declare dso_local i32 @dm_put_live_table(%struct.mapped_device*, i32) #1

declare dso_local %struct.dm_table* @dm_get_inactive_table(%struct.mapped_device*, i32*) #1

declare dso_local i32 @dm_table_get_mode(%struct.dm_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
