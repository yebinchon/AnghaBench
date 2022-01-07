; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_lock.c_drm_legacy_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_lock.c_drm_legacy_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64 (%struct.drm_device*)* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.drm_file = type { i32, %struct.drm_master* }
%struct.drm_master = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__*, i32, i32, i32, i32, %struct.drm_file* }
%struct.drm_lock = type { i64, i32 }

@entry = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@DRIVER_LEGACY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@DRM_KERNEL_CONTEXT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Process %d using kernel context %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"%d (pid %d) requests lock (0x%08x), flags = 0x%08x\0A\00", align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@drm_global_mutex = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%d %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"interrupted\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"has lock\00", align 1
@_DRM_LOCK_QUIESCENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"%d waiting for DMA quiescent\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_legacy_lock(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_lock*, align 8
  %9 = alloca %struct.drm_master*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load i32, i32* @entry, align 4
  %12 = load i32, i32* @current, align 4
  %13 = call i32 @DECLARE_WAITQUEUE(i32 %11, i32 %12)
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.drm_lock*
  store %struct.drm_lock* %15, %struct.drm_lock** %8, align 8
  %16 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %17 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %16, i32 0, i32 1
  %18 = load %struct.drm_master*, %struct.drm_master** %17, align 8
  store %struct.drm_master* %18, %struct.drm_master** %9, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %20 = load i32, i32* @DRIVER_LEGACY, align 4
  %21 = call i32 @drm_core_check_feature(%struct.drm_device* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %211

26:                                               ; preds = %3
  %27 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %28 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  %31 = load %struct.drm_lock*, %struct.drm_lock** %8, align 8
  %32 = getelementptr inbounds %struct.drm_lock, %struct.drm_lock* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DRM_KERNEL_CONTEXT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %26
  %37 = load i32, i32* @current, align 4
  %38 = call i32 @task_pid_nr(i32 %37)
  %39 = load %struct.drm_lock*, %struct.drm_lock** %8, align 8
  %40 = getelementptr inbounds %struct.drm_lock, %struct.drm_lock* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %38, i64 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %211

45:                                               ; preds = %26
  %46 = load %struct.drm_lock*, %struct.drm_lock** %8, align 8
  %47 = getelementptr inbounds %struct.drm_lock, %struct.drm_lock* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @current, align 4
  %50 = call i32 @task_pid_nr(i32 %49)
  %51 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %52 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = icmp ne %struct.TYPE_6__* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %45
  %57 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %58 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  br label %64

63:                                               ; preds = %45
  br label %64

64:                                               ; preds = %63, %56
  %65 = phi i32 [ %62, %56 ], [ -1, %63 ]
  %66 = load %struct.drm_lock*, %struct.drm_lock** %8, align 8
  %67 = getelementptr inbounds %struct.drm_lock, %struct.drm_lock* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i8*, i64, ...) @DRM_DEBUG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %48, i32 %50, i32 %65, i32 %68)
  %70 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %71 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = call i32 @add_wait_queue(i32* %72, i32* @entry)
  %74 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %75 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = call i32 @spin_lock_bh(i32* %76)
  %78 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %79 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  %83 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %84 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  %86 = call i32 @spin_unlock_bh(i32* %85)
  br label %87

87:                                               ; preds = %128, %64
  %88 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %89 = call i32 @__set_current_state(i32 %88)
  %90 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %91 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = icmp ne %struct.TYPE_6__* %93, null
  br i1 %94, label %101, label %95

95:                                               ; preds = %87
  %96 = load i32, i32* @SIGTERM, align 4
  %97 = load i32, i32* @current, align 4
  %98 = call i32 @send_sig(i32 %96, i32 %97, i32 0)
  %99 = load i32, i32* @EINTR, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %10, align 4
  br label %129

101:                                              ; preds = %87
  %102 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %103 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %102, i32 0, i32 0
  %104 = load %struct.drm_lock*, %struct.drm_lock** %8, align 8
  %105 = getelementptr inbounds %struct.drm_lock, %struct.drm_lock* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @drm_lock_take(%struct.TYPE_8__* %103, i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %101
  %110 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %111 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %112 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 5
  store %struct.drm_file* %110, %struct.drm_file** %113, align 8
  %114 = load i32, i32* @jiffies, align 4
  %115 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %116 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 4
  store i32 %114, i32* %117, align 4
  br label %129

118:                                              ; preds = %101
  %119 = call i32 @mutex_unlock(i32* @drm_global_mutex)
  %120 = call i32 (...) @schedule()
  %121 = call i32 @mutex_lock(i32* @drm_global_mutex)
  %122 = load i32, i32* @current, align 4
  %123 = call i64 @signal_pending(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %118
  %126 = load i32, i32* @EINTR, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %10, align 4
  br label %129

128:                                              ; preds = %118
  br label %87

129:                                              ; preds = %125, %109, %95
  %130 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %131 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 2
  %133 = call i32 @spin_lock_bh(i32* %132)
  %134 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %135 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %136, align 8
  %139 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %140 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  %142 = call i32 @spin_unlock_bh(i32* %141)
  %143 = load i32, i32* @TASK_RUNNING, align 4
  %144 = call i32 @__set_current_state(i32 %143)
  %145 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %146 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  %148 = call i32 @remove_wait_queue(i32* %147, i32* @entry)
  %149 = load %struct.drm_lock*, %struct.drm_lock** %8, align 8
  %150 = getelementptr inbounds %struct.drm_lock, %struct.drm_lock* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i32, i32* %10, align 4
  %153 = icmp ne i32 %152, 0
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)
  %156 = call i32 (i8*, i64, ...) @DRM_DEBUG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 %151, i8* %155)
  %157 = load i32, i32* %10, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %129
  %160 = load i32, i32* %10, align 4
  store i32 %160, i32* %4, align 4
  br label %211

161:                                              ; preds = %129
  %162 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %163 = call i32 @drm_is_current_master(%struct.drm_file* %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %179, label %165

165:                                              ; preds = %161
  %166 = load %struct.drm_lock*, %struct.drm_lock** %8, align 8
  %167 = getelementptr inbounds %struct.drm_lock, %struct.drm_lock* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %170 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  store i64 %168, i64* %171, align 8
  %172 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %173 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %174, align 8
  %176 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %177 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 1
  store %struct.TYPE_6__* %175, %struct.TYPE_6__** %178, align 8
  br label %179

179:                                              ; preds = %165, %161
  %180 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %181 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %180, i32 0, i32 0
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = load i64 (%struct.drm_device*)*, i64 (%struct.drm_device*)** %183, align 8
  %185 = icmp ne i64 (%struct.drm_device*)* %184, null
  br i1 %185, label %186, label %210

186:                                              ; preds = %179
  %187 = load %struct.drm_lock*, %struct.drm_lock** %8, align 8
  %188 = getelementptr inbounds %struct.drm_lock, %struct.drm_lock* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @_DRM_LOCK_QUIESCENT, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %210

193:                                              ; preds = %186
  %194 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %195 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %194, i32 0, i32 0
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = load i64 (%struct.drm_device*)*, i64 (%struct.drm_device*)** %197, align 8
  %199 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %200 = call i64 %198(%struct.drm_device* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %209

202:                                              ; preds = %193
  %203 = load %struct.drm_lock*, %struct.drm_lock** %8, align 8
  %204 = getelementptr inbounds %struct.drm_lock, %struct.drm_lock* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = call i32 (i8*, i64, ...) @DRM_DEBUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i64 %205)
  %207 = load i32, i32* @EBUSY, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %4, align 4
  br label %211

209:                                              ; preds = %193
  br label %210

210:                                              ; preds = %209, %186, %179
  store i32 0, i32* %4, align 4
  br label %211

211:                                              ; preds = %210, %202, %159, %36, %23
  %212 = load i32, i32* %4, align 4
  ret i32 %212
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i64) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i64, ...) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @send_sig(i32, i32, i32) #1

declare dso_local i64 @drm_lock_take(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @drm_is_current_master(%struct.drm_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
