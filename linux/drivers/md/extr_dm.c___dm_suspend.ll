; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c___dm_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c___dm_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32, i32, i32, i32, i32 }
%struct.dm_table = type { i32 }

@DM_SUSPEND_LOCKFS_FLAG = common dso_local global i32 0, align 4
@DM_SUSPEND_NOFLUSH_FLAG = common dso_local global i32 0, align 4
@DMF_NOFLUSH_SUSPENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s: suspending with flush\0A\00", align 1
@DMF_BLOCK_IO_FOR_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mapped_device*, %struct.dm_table*, i32, i64, i32)* @__dm_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dm_suspend(%struct.mapped_device* %0, %struct.dm_table* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mapped_device*, align 8
  %8 = alloca %struct.dm_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mapped_device* %0, %struct.mapped_device** %7, align 8
  store %struct.dm_table* %1, %struct.dm_table** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @DM_SUSPEND_LOCKFS_FLAG, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @DM_SUSPEND_NOFLUSH_FLAG, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %13, align 4
  %21 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %22 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %21, i32 0, i32 4
  %23 = call i32 @lockdep_assert_held(i32* %22)
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %5
  %27 = load i32, i32* @DMF_NOFLUSH_SUSPENDING, align 4
  %28 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %29 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %28, i32 0, i32 2
  %30 = call i32 @set_bit(i32 %27, i32* %29)
  br label %35

31:                                               ; preds = %5
  %32 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %33 = call i32 @dm_device_name(%struct.mapped_device* %32)
  %34 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %31, %26
  %36 = load %struct.dm_table*, %struct.dm_table** %8, align 8
  %37 = call i32 @dm_table_presuspend_targets(%struct.dm_table* %36)
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %45 = call i32 @lock_fs(%struct.mapped_device* %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.dm_table*, %struct.dm_table** %8, align 8
  %50 = call i32 @dm_table_presuspend_undo_targets(%struct.dm_table* %49)
  %51 = load i32, i32* %14, align 4
  store i32 %51, i32* %6, align 4
  br label %124

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %40, %35
  %54 = load i32, i32* @DMF_BLOCK_IO_FOR_SUSPEND, align 4
  %55 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %56 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %55, i32 0, i32 2
  %57 = call i32 @set_bit(i32 %54, i32* %56)
  %58 = load %struct.dm_table*, %struct.dm_table** %8, align 8
  %59 = icmp ne %struct.dm_table* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %62 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %61, i32 0, i32 1
  %63 = call i32 @synchronize_srcu(i32* %62)
  br label %64

64:                                               ; preds = %60, %53
  %65 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %66 = call i64 @dm_request_based(%struct.mapped_device* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %70 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dm_stop_queue(i32 %71)
  br label %73

73:                                               ; preds = %68, %64
  %74 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %75 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @flush_workqueue(i32 %76)
  %78 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @dm_wait_for_completion(%struct.mapped_device* %78, i64 %79)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %73
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %86 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %85, i32 0, i32 2
  %87 = call i32 @set_bit(i32 %84, i32* %86)
  br label %88

88:                                               ; preds = %83, %73
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load i32, i32* @DMF_NOFLUSH_SUSPENDING, align 4
  %93 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %94 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %93, i32 0, i32 2
  %95 = call i32 @clear_bit(i32 %92, i32* %94)
  br label %96

96:                                               ; preds = %91, %88
  %97 = load %struct.dm_table*, %struct.dm_table** %8, align 8
  %98 = icmp ne %struct.dm_table* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %101 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %100, i32 0, i32 1
  %102 = call i32 @synchronize_srcu(i32* %101)
  br label %103

103:                                              ; preds = %99, %96
  %104 = load i32, i32* %14, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %103
  %107 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %108 = call i32 @dm_queue_flush(%struct.mapped_device* %107)
  %109 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %110 = call i64 @dm_request_based(%struct.mapped_device* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %106
  %113 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %114 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @dm_start_queue(i32 %115)
  br label %117

117:                                              ; preds = %112, %106
  %118 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %119 = call i32 @unlock_fs(%struct.mapped_device* %118)
  %120 = load %struct.dm_table*, %struct.dm_table** %8, align 8
  %121 = call i32 @dm_table_presuspend_undo_targets(%struct.dm_table* %120)
  br label %122

122:                                              ; preds = %117, %103
  %123 = load i32, i32* %14, align 4
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %122, %48
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @dm_device_name(%struct.mapped_device*) #1

declare dso_local i32 @dm_table_presuspend_targets(%struct.dm_table*) #1

declare dso_local i32 @lock_fs(%struct.mapped_device*) #1

declare dso_local i32 @dm_table_presuspend_undo_targets(%struct.dm_table*) #1

declare dso_local i32 @synchronize_srcu(i32*) #1

declare dso_local i64 @dm_request_based(%struct.mapped_device*) #1

declare dso_local i32 @dm_stop_queue(i32) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @dm_wait_for_completion(%struct.mapped_device*, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @dm_queue_flush(%struct.mapped_device*) #1

declare dso_local i32 @dm_start_queue(i32) #1

declare dso_local i32 @unlock_fs(%struct.mapped_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
