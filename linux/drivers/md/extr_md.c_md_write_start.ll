; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_md_write_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_md_write_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i64, i32, i32 }
%struct.bio = type { i32 }

@WRITE = common dso_local global i64 0, align 8
@MD_RECOVERY_NEEDED = common dso_local global i32 0, align 4
@MD_SB_CHANGE_CLEAN = common dso_local global i32 0, align 4
@MD_SB_CHANGE_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @md_write_start(%struct.mddev* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.bio*, %struct.bio** %5, align 8
  %8 = call i64 @bio_data_dir(%struct.bio* %7)
  %9 = load i64, i64* @WRITE, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %131

12:                                               ; preds = %2
  %13 = load %struct.mddev*, %struct.mddev** %4, align 8
  %14 = getelementptr inbounds %struct.mddev, %struct.mddev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 1
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.mddev*, %struct.mddev** %4, align 8
  %20 = getelementptr inbounds %struct.mddev, %struct.mddev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %38

23:                                               ; preds = %12
  %24 = load %struct.mddev*, %struct.mddev** %4, align 8
  %25 = getelementptr inbounds %struct.mddev, %struct.mddev* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %27 = load %struct.mddev*, %struct.mddev** %4, align 8
  %28 = getelementptr inbounds %struct.mddev, %struct.mddev* %27, i32 0, i32 13
  %29 = call i32 @set_bit(i32 %26, i32* %28)
  %30 = load %struct.mddev*, %struct.mddev** %4, align 8
  %31 = getelementptr inbounds %struct.mddev, %struct.mddev* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @md_wakeup_thread(i32 %32)
  %34 = load %struct.mddev*, %struct.mddev** %4, align 8
  %35 = getelementptr inbounds %struct.mddev, %struct.mddev* %34, i32 0, i32 12
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @md_wakeup_thread(i32 %36)
  store i32 1, i32* %6, align 4
  br label %38

38:                                               ; preds = %23, %12
  %39 = call i32 (...) @rcu_read_lock()
  %40 = load %struct.mddev*, %struct.mddev** %4, align 8
  %41 = getelementptr inbounds %struct.mddev, %struct.mddev* %40, i32 0, i32 2
  %42 = call i32 @percpu_ref_get(i32* %41)
  %43 = call i32 (...) @smp_mb()
  %44 = load %struct.mddev*, %struct.mddev** %4, align 8
  %45 = getelementptr inbounds %struct.mddev, %struct.mddev* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load %struct.mddev*, %struct.mddev** %4, align 8
  %50 = getelementptr inbounds %struct.mddev, %struct.mddev* %49, i32 0, i32 1
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %38
  %52 = load %struct.mddev*, %struct.mddev** %4, align 8
  %53 = getelementptr inbounds %struct.mddev, %struct.mddev* %52, i32 0, i32 10
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load %struct.mddev*, %struct.mddev** %4, align 8
  %58 = getelementptr inbounds %struct.mddev, %struct.mddev* %57, i32 0, i32 11
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %88

61:                                               ; preds = %56, %51
  %62 = load %struct.mddev*, %struct.mddev** %4, align 8
  %63 = getelementptr inbounds %struct.mddev, %struct.mddev* %62, i32 0, i32 8
  %64 = call i32 @spin_lock(i32* %63)
  %65 = load %struct.mddev*, %struct.mddev** %4, align 8
  %66 = getelementptr inbounds %struct.mddev, %struct.mddev* %65, i32 0, i32 10
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %61
  %70 = load %struct.mddev*, %struct.mddev** %4, align 8
  %71 = getelementptr inbounds %struct.mddev, %struct.mddev* %70, i32 0, i32 10
  store i64 0, i64* %71, align 8
  %72 = load i32, i32* @MD_SB_CHANGE_CLEAN, align 4
  %73 = load %struct.mddev*, %struct.mddev** %4, align 8
  %74 = getelementptr inbounds %struct.mddev, %struct.mddev* %73, i32 0, i32 3
  %75 = call i32 @set_bit(i32 %72, i32* %74)
  %76 = load i32, i32* @MD_SB_CHANGE_PENDING, align 4
  %77 = load %struct.mddev*, %struct.mddev** %4, align 8
  %78 = getelementptr inbounds %struct.mddev, %struct.mddev* %77, i32 0, i32 3
  %79 = call i32 @set_bit(i32 %76, i32* %78)
  %80 = load %struct.mddev*, %struct.mddev** %4, align 8
  %81 = getelementptr inbounds %struct.mddev, %struct.mddev* %80, i32 0, i32 9
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @md_wakeup_thread(i32 %82)
  store i32 1, i32* %6, align 4
  br label %84

84:                                               ; preds = %69, %61
  %85 = load %struct.mddev*, %struct.mddev** %4, align 8
  %86 = getelementptr inbounds %struct.mddev, %struct.mddev* %85, i32 0, i32 8
  %87 = call i32 @spin_unlock(i32* %86)
  br label %88

88:                                               ; preds = %84, %56
  %89 = call i32 (...) @rcu_read_unlock()
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load %struct.mddev*, %struct.mddev** %4, align 8
  %94 = getelementptr inbounds %struct.mddev, %struct.mddev* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @sysfs_notify_dirent_safe(i32 %95)
  br label %97

97:                                               ; preds = %92, %88
  %98 = load %struct.mddev*, %struct.mddev** %4, align 8
  %99 = getelementptr inbounds %struct.mddev, %struct.mddev* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %97
  store i32 1, i32* %3, align 4
  br label %131

103:                                              ; preds = %97
  %104 = load %struct.mddev*, %struct.mddev** %4, align 8
  %105 = getelementptr inbounds %struct.mddev, %struct.mddev* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @MD_SB_CHANGE_PENDING, align 4
  %108 = load %struct.mddev*, %struct.mddev** %4, align 8
  %109 = getelementptr inbounds %struct.mddev, %struct.mddev* %108, i32 0, i32 3
  %110 = call i64 @test_bit(i32 %107, i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %103
  %113 = load %struct.mddev*, %struct.mddev** %4, align 8
  %114 = getelementptr inbounds %struct.mddev, %struct.mddev* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br label %117

117:                                              ; preds = %112, %103
  %118 = phi i1 [ true, %103 ], [ %116, %112 ]
  %119 = zext i1 %118 to i32
  %120 = call i32 @wait_event(i32 %106, i32 %119)
  %121 = load i32, i32* @MD_SB_CHANGE_PENDING, align 4
  %122 = load %struct.mddev*, %struct.mddev** %4, align 8
  %123 = getelementptr inbounds %struct.mddev, %struct.mddev* %122, i32 0, i32 3
  %124 = call i64 @test_bit(i32 %121, i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %117
  %127 = load %struct.mddev*, %struct.mddev** %4, align 8
  %128 = getelementptr inbounds %struct.mddev, %struct.mddev* %127, i32 0, i32 2
  %129 = call i32 @percpu_ref_put(i32* %128)
  store i32 0, i32* %3, align 4
  br label %131

130:                                              ; preds = %117
  store i32 1, i32* %3, align 4
  br label %131

131:                                              ; preds = %130, %126, %102, %11
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @percpu_ref_get(i32*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @sysfs_notify_dirent_safe(i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @percpu_ref_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
