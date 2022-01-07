; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_snapshot_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_snapshot_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i32, %struct.dm_snapshot* }
%struct.dm_snapshot = type { i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dm_origin = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.mapped_device = type { i32 }

@_origins_lock = common dso_local global i32 0, align 4
@RUNNING_MERGE = common dso_local global i32 0, align 4
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*)* @snapshot_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snapshot_resume(%struct.dm_target* %0) #0 {
  %2 = alloca %struct.dm_target*, align 8
  %3 = alloca %struct.dm_snapshot*, align 8
  %4 = alloca %struct.dm_snapshot*, align 8
  %5 = alloca %struct.dm_snapshot*, align 8
  %6 = alloca %struct.dm_snapshot*, align 8
  %7 = alloca %struct.dm_origin*, align 8
  %8 = alloca %struct.mapped_device*, align 8
  %9 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %2, align 8
  %10 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %11 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %10, i32 0, i32 1
  %12 = load %struct.dm_snapshot*, %struct.dm_snapshot** %11, align 8
  store %struct.dm_snapshot* %12, %struct.dm_snapshot** %3, align 8
  store %struct.dm_snapshot* null, %struct.dm_snapshot** %4, align 8
  store %struct.dm_snapshot* null, %struct.dm_snapshot** %5, align 8
  store %struct.dm_snapshot* null, %struct.dm_snapshot** %6, align 8
  store %struct.mapped_device* null, %struct.mapped_device** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = call i32 @down_read(i32* @_origins_lock)
  %14 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %15 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %14, i32 0, i32 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.dm_origin* @__lookup_dm_origin(i32 %18)
  store %struct.dm_origin* %19, %struct.dm_origin** %7, align 8
  %20 = load %struct.dm_origin*, %struct.dm_origin** %7, align 8
  %21 = icmp ne %struct.dm_origin* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.dm_origin*, %struct.dm_origin** %7, align 8
  %24 = getelementptr inbounds %struct.dm_origin, %struct.dm_origin* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.mapped_device* @dm_table_get_md(i32 %27)
  store %struct.mapped_device* %28, %struct.mapped_device** %8, align 8
  br label %29

29:                                               ; preds = %22, %1
  %30 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %31 = icmp ne %struct.mapped_device* %30, null
  br i1 %31, label %45, label %32

32:                                               ; preds = %29
  %33 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %34 = call i32 @__find_snapshots_sharing_cow(%struct.dm_snapshot* %33, %struct.dm_snapshot** null, %struct.dm_snapshot** null, %struct.dm_snapshot** %6)
  %35 = load %struct.dm_snapshot*, %struct.dm_snapshot** %6, align 8
  %36 = icmp ne %struct.dm_snapshot* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.dm_snapshot*, %struct.dm_snapshot** %6, align 8
  %39 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %38, i32 0, i32 3
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.mapped_device* @dm_table_get_md(i32 %42)
  store %struct.mapped_device* %43, %struct.mapped_device** %8, align 8
  br label %44

44:                                               ; preds = %37, %32
  br label %45

45:                                               ; preds = %44, %29
  %46 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %47 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %48 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call %struct.mapped_device* @dm_table_get_md(i32 %49)
  %51 = icmp eq %struct.mapped_device* %46, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store %struct.mapped_device* null, %struct.mapped_device** %8, align 8
  br label %53

53:                                               ; preds = %52, %45
  %54 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %55 = icmp ne %struct.mapped_device* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %58 = call i64 @dm_hold(%struct.mapped_device* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store %struct.mapped_device* null, %struct.mapped_device** %8, align 8
  br label %61

61:                                               ; preds = %60, %56
  br label %62

62:                                               ; preds = %61, %53
  %63 = call i32 @up_read(i32* @_origins_lock)
  %64 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %65 = icmp ne %struct.mapped_device* %64, null
  br i1 %65, label %66, label %81

66:                                               ; preds = %62
  %67 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %68 = call i32 @dm_internal_suspend_fast(%struct.mapped_device* %67)
  %69 = load %struct.dm_snapshot*, %struct.dm_snapshot** %6, align 8
  %70 = icmp ne %struct.dm_snapshot* %69, null
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load i32, i32* @RUNNING_MERGE, align 4
  %73 = load %struct.dm_snapshot*, %struct.dm_snapshot** %6, align 8
  %74 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %73, i32 0, i32 2
  %75 = call i64 @test_bit(i32 %72, i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  store i32 1, i32* %9, align 4
  %78 = load %struct.dm_snapshot*, %struct.dm_snapshot** %6, align 8
  %79 = call i32 @stop_merge(%struct.dm_snapshot* %78)
  br label %80

80:                                               ; preds = %77, %71, %66
  br label %81

81:                                               ; preds = %80, %62
  %82 = call i32 @down_read(i32* @_origins_lock)
  %83 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %84 = call i32 @__find_snapshots_sharing_cow(%struct.dm_snapshot* %83, %struct.dm_snapshot** %4, %struct.dm_snapshot** %5, %struct.dm_snapshot** null)
  %85 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %86 = icmp ne %struct.dm_snapshot* %85, null
  br i1 %86, label %87, label %107

87:                                               ; preds = %81
  %88 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %89 = icmp ne %struct.dm_snapshot* %88, null
  br i1 %89, label %90, label %107

90:                                               ; preds = %87
  %91 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %92 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %91, i32 0, i32 1
  %93 = call i32 @down_write(i32* %92)
  %94 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %95 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %94, i32 0, i32 1
  %96 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %97 = call i32 @down_write_nested(i32* %95, i32 %96)
  %98 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %99 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %100 = call i32 @__handover_exceptions(%struct.dm_snapshot* %98, %struct.dm_snapshot* %99)
  %101 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %102 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %101, i32 0, i32 1
  %103 = call i32 @up_write(i32* %102)
  %104 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %105 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %104, i32 0, i32 1
  %106 = call i32 @up_write(i32* %105)
  br label %107

107:                                              ; preds = %90, %87, %81
  %108 = call i32 @up_read(i32* @_origins_lock)
  %109 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %110 = icmp ne %struct.mapped_device* %109, null
  br i1 %110, label %111, label %122

111:                                              ; preds = %107
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load %struct.dm_snapshot*, %struct.dm_snapshot** %6, align 8
  %116 = call i32 @start_merge(%struct.dm_snapshot* %115)
  br label %117

117:                                              ; preds = %114, %111
  %118 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %119 = call i32 @dm_internal_resume_fast(%struct.mapped_device* %118)
  %120 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %121 = call i32 @dm_put(%struct.mapped_device* %120)
  br label %122

122:                                              ; preds = %117, %107
  %123 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %124 = call i32 @reregister_snapshot(%struct.dm_snapshot* %123)
  %125 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %126 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %125, i32 0, i32 1
  %127 = call i32 @down_write(i32* %126)
  %128 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %129 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %128, i32 0, i32 0
  store i32 1, i32* %129, align 8
  %130 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %131 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %130, i32 0, i32 1
  %132 = call i32 @up_write(i32* %131)
  ret void
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.dm_origin* @__lookup_dm_origin(i32) #1

declare dso_local %struct.mapped_device* @dm_table_get_md(i32) #1

declare dso_local i32 @__find_snapshots_sharing_cow(%struct.dm_snapshot*, %struct.dm_snapshot**, %struct.dm_snapshot**, %struct.dm_snapshot**) #1

declare dso_local i64 @dm_hold(%struct.mapped_device*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @dm_internal_suspend_fast(%struct.mapped_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @stop_merge(%struct.dm_snapshot*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @down_write_nested(i32*, i32) #1

declare dso_local i32 @__handover_exceptions(%struct.dm_snapshot*, %struct.dm_snapshot*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @start_merge(%struct.dm_snapshot*) #1

declare dso_local i32 @dm_internal_resume_fast(%struct.mapped_device*) #1

declare dso_local i32 @dm_put(%struct.mapped_device*) #1

declare dso_local i32 @reregister_snapshot(%struct.dm_snapshot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
