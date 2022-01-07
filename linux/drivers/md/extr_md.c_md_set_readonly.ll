; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_md_set_readonly.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_md_set_readonly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_2__*, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.block_device = type { i32 }

@MD_RECOVERY_FROZEN = common dso_local global i32 0, align 4
@MD_RECOVERY_RUNNING = common dso_local global i32 0, align 4
@MD_RECOVERY_INTR = common dso_local global i32 0, align 4
@MD_SB_CHANGE_PENDING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@resync_wait = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"md: %s still in use.\0A\00", align 1
@MD_RECOVERY_NEEDED = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.block_device*)* @md_set_readonly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md_set_readonly(%struct.mddev* %0, %struct.block_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store %struct.block_device* %1, %struct.block_device** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @MD_RECOVERY_FROZEN, align 4
  %9 = load %struct.mddev*, %struct.mddev** %4, align 8
  %10 = getelementptr inbounds %struct.mddev, %struct.mddev* %9, i32 0, i32 4
  %11 = call i64 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  %14 = load i32, i32* @MD_RECOVERY_FROZEN, align 4
  %15 = load %struct.mddev*, %struct.mddev** %4, align 8
  %16 = getelementptr inbounds %struct.mddev, %struct.mddev* %15, i32 0, i32 4
  %17 = call i32 @set_bit(i32 %14, i32* %16)
  %18 = load %struct.mddev*, %struct.mddev** %4, align 8
  %19 = getelementptr inbounds %struct.mddev, %struct.mddev* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @md_wakeup_thread(i32 %20)
  br label %22

22:                                               ; preds = %13, %2
  %23 = load i32, i32* @MD_RECOVERY_RUNNING, align 4
  %24 = load %struct.mddev*, %struct.mddev** %4, align 8
  %25 = getelementptr inbounds %struct.mddev, %struct.mddev* %24, i32 0, i32 4
  %26 = call i64 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load i32, i32* @MD_RECOVERY_INTR, align 4
  %30 = load %struct.mddev*, %struct.mddev** %4, align 8
  %31 = getelementptr inbounds %struct.mddev, %struct.mddev* %30, i32 0, i32 4
  %32 = call i32 @set_bit(i32 %29, i32* %31)
  br label %33

33:                                               ; preds = %28, %22
  %34 = load %struct.mddev*, %struct.mddev** %4, align 8
  %35 = getelementptr inbounds %struct.mddev, %struct.mddev* %34, i32 0, i32 7
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = icmp ne %struct.TYPE_2__* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load %struct.mddev*, %struct.mddev** %4, align 8
  %40 = getelementptr inbounds %struct.mddev, %struct.mddev* %39, i32 0, i32 7
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @wake_up_process(i32 %43)
  br label %45

45:                                               ; preds = %38, %33
  %46 = load %struct.mddev*, %struct.mddev** %4, align 8
  %47 = getelementptr inbounds %struct.mddev, %struct.mddev* %46, i32 0, i32 11
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load i32, i32* @MD_SB_CHANGE_PENDING, align 4
  %52 = load %struct.mddev*, %struct.mddev** %4, align 8
  %53 = getelementptr inbounds %struct.mddev, %struct.mddev* %52, i32 0, i32 9
  %54 = call i64 @test_bit(i32 %51, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* @EBUSY, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %178

59:                                               ; preds = %50, %45
  %60 = load %struct.mddev*, %struct.mddev** %4, align 8
  %61 = call i32 @mddev_unlock(%struct.mddev* %60)
  %62 = load i32, i32* @resync_wait, align 4
  %63 = load i32, i32* @MD_RECOVERY_RUNNING, align 4
  %64 = load %struct.mddev*, %struct.mddev** %4, align 8
  %65 = getelementptr inbounds %struct.mddev, %struct.mddev* %64, i32 0, i32 4
  %66 = call i64 @test_bit(i32 %63, i32* %65)
  %67 = icmp ne i64 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i32 @wait_event(i32 %62, i32 %69)
  %71 = load %struct.mddev*, %struct.mddev** %4, align 8
  %72 = getelementptr inbounds %struct.mddev, %struct.mddev* %71, i32 0, i32 10
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @MD_SB_CHANGE_PENDING, align 4
  %75 = load %struct.mddev*, %struct.mddev** %4, align 8
  %76 = getelementptr inbounds %struct.mddev, %struct.mddev* %75, i32 0, i32 9
  %77 = call i64 @test_bit(i32 %74, i32* %76)
  %78 = icmp ne i64 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 @wait_event(i32 %73, i32 %80)
  %82 = load %struct.mddev*, %struct.mddev** %4, align 8
  %83 = call i32 @mddev_lock_nointr(%struct.mddev* %82)
  %84 = load %struct.mddev*, %struct.mddev** %4, align 8
  %85 = getelementptr inbounds %struct.mddev, %struct.mddev* %84, i32 0, i32 1
  %86 = call i32 @mutex_lock(i32* %85)
  %87 = load %struct.mddev*, %struct.mddev** %4, align 8
  %88 = getelementptr inbounds %struct.mddev, %struct.mddev* %87, i32 0, i32 6
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %59
  %92 = load %struct.mddev*, %struct.mddev** %4, align 8
  %93 = getelementptr inbounds %struct.mddev, %struct.mddev* %92, i32 0, i32 8
  %94 = call i32 @atomic_read(i32* %93)
  %95 = load %struct.block_device*, %struct.block_device** %5, align 8
  %96 = icmp ne %struct.block_device* %95, null
  %97 = xor i1 %96, true
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = icmp sgt i32 %94, %99
  br i1 %100, label %112, label %101

101:                                              ; preds = %91, %59
  %102 = load %struct.mddev*, %struct.mddev** %4, align 8
  %103 = getelementptr inbounds %struct.mddev, %struct.mddev* %102, i32 0, i32 7
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = icmp ne %struct.TYPE_2__* %104, null
  br i1 %105, label %112, label %106

106:                                              ; preds = %101
  %107 = load i32, i32* @MD_RECOVERY_RUNNING, align 4
  %108 = load %struct.mddev*, %struct.mddev** %4, align 8
  %109 = getelementptr inbounds %struct.mddev, %struct.mddev* %108, i32 0, i32 4
  %110 = call i64 @test_bit(i32 %107, i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %134

112:                                              ; preds = %106, %101, %91
  %113 = load %struct.mddev*, %struct.mddev** %4, align 8
  %114 = call i32 @mdname(%struct.mddev* %113)
  %115 = call i32 @pr_warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %112
  %119 = load i32, i32* @MD_RECOVERY_FROZEN, align 4
  %120 = load %struct.mddev*, %struct.mddev** %4, align 8
  %121 = getelementptr inbounds %struct.mddev, %struct.mddev* %120, i32 0, i32 4
  %122 = call i32 @clear_bit(i32 %119, i32* %121)
  %123 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %124 = load %struct.mddev*, %struct.mddev** %4, align 8
  %125 = getelementptr inbounds %struct.mddev, %struct.mddev* %124, i32 0, i32 4
  %126 = call i32 @set_bit(i32 %123, i32* %125)
  %127 = load %struct.mddev*, %struct.mddev** %4, align 8
  %128 = getelementptr inbounds %struct.mddev, %struct.mddev* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @md_wakeup_thread(i32 %129)
  br label %131

131:                                              ; preds = %118, %112
  %132 = load i32, i32* @EBUSY, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %6, align 4
  br label %173

134:                                              ; preds = %106
  %135 = load %struct.mddev*, %struct.mddev** %4, align 8
  %136 = getelementptr inbounds %struct.mddev, %struct.mddev* %135, i32 0, i32 6
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %172

139:                                              ; preds = %134
  %140 = load %struct.mddev*, %struct.mddev** %4, align 8
  %141 = call i32 @__md_stop_writes(%struct.mddev* %140)
  %142 = load i32, i32* @ENXIO, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %6, align 4
  %144 = load %struct.mddev*, %struct.mddev** %4, align 8
  %145 = getelementptr inbounds %struct.mddev, %struct.mddev* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %148, label %149

148:                                              ; preds = %139
  br label %173

149:                                              ; preds = %139
  %150 = load %struct.mddev*, %struct.mddev** %4, align 8
  %151 = getelementptr inbounds %struct.mddev, %struct.mddev* %150, i32 0, i32 0
  store i32 1, i32* %151, align 8
  %152 = load %struct.mddev*, %struct.mddev** %4, align 8
  %153 = getelementptr inbounds %struct.mddev, %struct.mddev* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @set_disk_ro(i32 %154, i32 1)
  %156 = load i32, i32* @MD_RECOVERY_FROZEN, align 4
  %157 = load %struct.mddev*, %struct.mddev** %4, align 8
  %158 = getelementptr inbounds %struct.mddev, %struct.mddev* %157, i32 0, i32 4
  %159 = call i32 @clear_bit(i32 %156, i32* %158)
  %160 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %161 = load %struct.mddev*, %struct.mddev** %4, align 8
  %162 = getelementptr inbounds %struct.mddev, %struct.mddev* %161, i32 0, i32 4
  %163 = call i32 @set_bit(i32 %160, i32* %162)
  %164 = load %struct.mddev*, %struct.mddev** %4, align 8
  %165 = getelementptr inbounds %struct.mddev, %struct.mddev* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @md_wakeup_thread(i32 %166)
  %168 = load %struct.mddev*, %struct.mddev** %4, align 8
  %169 = getelementptr inbounds %struct.mddev, %struct.mddev* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @sysfs_notify_dirent_safe(i32 %170)
  store i32 0, i32* %6, align 4
  br label %172

172:                                              ; preds = %149, %134
  br label %173

173:                                              ; preds = %172, %148, %131
  %174 = load %struct.mddev*, %struct.mddev** %4, align 8
  %175 = getelementptr inbounds %struct.mddev, %struct.mddev* %174, i32 0, i32 1
  %176 = call i32 @mutex_unlock(i32* %175)
  %177 = load i32, i32* %6, align 4
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %173, %56
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local i32 @mddev_unlock(%struct.mddev*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @mddev_lock_nointr(%struct.mddev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @mdname(%struct.mddev*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @__md_stop_writes(%struct.mddev*) #1

declare dso_local i32 @set_disk_ro(i32, i32) #1

declare dso_local i32 @sysfs_notify_dirent_safe(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
