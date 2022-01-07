; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_lease.c_drm_mode_create_lease_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_lease.c_drm_mode_create_lease_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32, i32, %struct.file*, %struct.file* }
%struct.file = type { i32, %struct.drm_file*, i64 }
%struct.drm_mode_create_lease = type { i64, i32, i32, i32, i32 }
%struct.idr = type { i32 }
%struct.drm_master = type { i32, %struct.drm_file*, i64 }

@DRIVER_MODESET = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"recursive leasing not allowed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"no objects in lease\0A\00", align 1
@O_CLOEXEC = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"invalid flags\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"lease object lookup failed: %i\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Creating lease\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Allocating lease file\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Returning fd %d id %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"drm_mode_create_lease_ioctl succeeded\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"drm_mode_create_lease_ioctl failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mode_create_lease_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_mode_create_lease*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.idr, align 4
  %12 = alloca %struct.drm_master*, align 8
  %13 = alloca %struct.drm_master*, align 8
  %14 = alloca %struct.file*, align 8
  %15 = alloca %struct.file*, align 8
  %16 = alloca %struct.drm_file*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.file*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to %struct.drm_mode_create_lease*
  store %struct.drm_mode_create_lease* %20, %struct.drm_mode_create_lease** %8, align 8
  store i32 0, i32* %10, align 4
  %21 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %22 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %21, i32 0, i32 2
  %23 = load %struct.file*, %struct.file** %22, align 8
  %24 = bitcast %struct.file* %23 to %struct.drm_master*
  store %struct.drm_master* %24, %struct.drm_master** %12, align 8
  store %struct.drm_master* null, %struct.drm_master** %13, align 8
  store %struct.file* null, %struct.file** %14, align 8
  %25 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %26 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %25, i32 0, i32 3
  %27 = load %struct.file*, %struct.file** %26, align 8
  store %struct.file* %27, %struct.file** %15, align 8
  store i32 -1, i32* %17, align 4
  %28 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %29 = load i32, i32* @DRIVER_MODESET, align 4
  %30 = call i32 @drm_core_check_feature(%struct.drm_device* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %185

35:                                               ; preds = %3
  %36 = load %struct.drm_master*, %struct.drm_master** %12, align 8
  %37 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = call i32 (i8*, ...) @DRM_DEBUG_LEASE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %185

44:                                               ; preds = %35
  %45 = load %struct.drm_mode_create_lease*, %struct.drm_mode_create_lease** %8, align 8
  %46 = getelementptr inbounds %struct.drm_mode_create_lease, %struct.drm_mode_create_lease* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = call i32 (i8*, ...) @DRM_DEBUG_LEASE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %185

53:                                               ; preds = %44
  %54 = load %struct.drm_mode_create_lease*, %struct.drm_mode_create_lease** %8, align 8
  %55 = getelementptr inbounds %struct.drm_mode_create_lease, %struct.drm_mode_create_lease* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %53
  %59 = load %struct.drm_mode_create_lease*, %struct.drm_mode_create_lease** %8, align 8
  %60 = getelementptr inbounds %struct.drm_mode_create_lease, %struct.drm_mode_create_lease* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @O_CLOEXEC, align 4
  %63 = load i32, i32* @O_NONBLOCK, align 4
  %64 = or i32 %62, %63
  %65 = xor i32 %64, -1
  %66 = and i32 %61, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %58
  %69 = call i32 (i8*, ...) @DRM_DEBUG_LEASE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %185

72:                                               ; preds = %58, %53
  %73 = load %struct.drm_mode_create_lease*, %struct.drm_mode_create_lease** %8, align 8
  %74 = getelementptr inbounds %struct.drm_mode_create_lease, %struct.drm_mode_create_lease* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %9, align 8
  %76 = load %struct.drm_mode_create_lease*, %struct.drm_mode_create_lease** %8, align 8
  %77 = getelementptr inbounds %struct.drm_mode_create_lease, %struct.drm_mode_create_lease* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @u64_to_user_ptr(i32 %78)
  %80 = load i64, i64* %9, align 8
  %81 = call i32 @array_size(i64 %80, i32 4)
  %82 = call %struct.file* @memdup_user(i32 %79, i32 %81)
  store %struct.file* %82, %struct.file** %18, align 8
  %83 = load %struct.file*, %struct.file** %18, align 8
  %84 = call i64 @IS_ERR(%struct.file* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %72
  %87 = load %struct.file*, %struct.file** %18, align 8
  %88 = call i32 @PTR_ERR(%struct.file* %87)
  store i32 %88, i32* %4, align 4
  br label %185

89:                                               ; preds = %72
  %90 = call i32 @idr_init(%struct.idr* %11)
  %91 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %92 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %93 = load i64, i64* %9, align 8
  %94 = load %struct.file*, %struct.file** %18, align 8
  %95 = call i32 @fill_object_idr(%struct.drm_device* %91, %struct.drm_file* %92, %struct.idr* %11, i64 %93, %struct.file* %94)
  store i32 %95, i32* %10, align 4
  %96 = load %struct.file*, %struct.file** %18, align 8
  %97 = call i32 @kfree(%struct.file* %96)
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %89
  %101 = load i32, i32* %10, align 4
  %102 = call i32 (i8*, ...) @DRM_DEBUG_LEASE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  %103 = call i32 @idr_destroy(%struct.idr* %11)
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %4, align 4
  br label %185

105:                                              ; preds = %89
  %106 = load %struct.drm_mode_create_lease*, %struct.drm_mode_create_lease** %8, align 8
  %107 = getelementptr inbounds %struct.drm_mode_create_lease, %struct.drm_mode_create_lease* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @O_CLOEXEC, align 4
  %110 = load i32, i32* @O_NONBLOCK, align 4
  %111 = or i32 %109, %110
  %112 = and i32 %108, %111
  %113 = call i32 @get_unused_fd_flags(i32 %112)
  store i32 %113, i32* %17, align 4
  %114 = load i32, i32* %17, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %105
  %117 = call i32 @idr_destroy(%struct.idr* %11)
  %118 = load i32, i32* %17, align 4
  store i32 %118, i32* %4, align 4
  br label %185

119:                                              ; preds = %105
  %120 = call i32 (i8*, ...) @DRM_DEBUG_LEASE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %121 = load %struct.drm_master*, %struct.drm_master** %12, align 8
  %122 = bitcast %struct.drm_master* %121 to %struct.file*
  %123 = call %struct.file* @drm_lease_create(%struct.file* %122, %struct.idr* %11)
  %124 = bitcast %struct.file* %123 to %struct.drm_master*
  store %struct.drm_master* %124, %struct.drm_master** %13, align 8
  %125 = load %struct.drm_master*, %struct.drm_master** %13, align 8
  %126 = bitcast %struct.drm_master* %125 to %struct.file*
  %127 = call i64 @IS_ERR(%struct.file* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %119
  %130 = load %struct.drm_master*, %struct.drm_master** %13, align 8
  %131 = bitcast %struct.drm_master* %130 to %struct.file*
  %132 = call i32 @PTR_ERR(%struct.file* %131)
  store i32 %132, i32* %10, align 4
  br label %178

133:                                              ; preds = %119
  %134 = call i32 (i8*, ...) @DRM_DEBUG_LEASE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %135 = load %struct.file*, %struct.file** %15, align 8
  %136 = call %struct.file* @file_clone_open(%struct.file* %135)
  store %struct.file* %136, %struct.file** %14, align 8
  %137 = load %struct.file*, %struct.file** %14, align 8
  %138 = call i64 @IS_ERR(%struct.file* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %133
  %141 = load %struct.file*, %struct.file** %14, align 8
  %142 = call i32 @PTR_ERR(%struct.file* %141)
  store i32 %142, i32* %10, align 4
  br label %175

143:                                              ; preds = %133
  %144 = load %struct.file*, %struct.file** %14, align 8
  %145 = getelementptr inbounds %struct.file, %struct.file* %144, i32 0, i32 1
  %146 = load %struct.drm_file*, %struct.drm_file** %145, align 8
  store %struct.drm_file* %146, %struct.drm_file** %16, align 8
  %147 = load %struct.drm_file*, %struct.drm_file** %16, align 8
  %148 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %147, i32 0, i32 2
  %149 = call i32 @drm_master_put(%struct.file** %148)
  %150 = load %struct.drm_master*, %struct.drm_master** %13, align 8
  %151 = bitcast %struct.drm_master* %150 to %struct.file*
  %152 = load %struct.drm_file*, %struct.drm_file** %16, align 8
  %153 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %152, i32 0, i32 2
  store %struct.file* %151, %struct.file** %153, align 8
  %154 = load %struct.drm_file*, %struct.drm_file** %16, align 8
  %155 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %154, i32 0, i32 0
  store i32 1, i32* %155, align 8
  %156 = load %struct.drm_file*, %struct.drm_file** %16, align 8
  %157 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %156, i32 0, i32 1
  store i32 1, i32* %157, align 4
  %158 = load i32, i32* %17, align 4
  %159 = load %struct.drm_master*, %struct.drm_master** %13, align 8
  %160 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 (i8*, ...) @DRM_DEBUG_LEASE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %158, i32 %161)
  %163 = load i32, i32* %17, align 4
  %164 = load %struct.drm_mode_create_lease*, %struct.drm_mode_create_lease** %8, align 8
  %165 = getelementptr inbounds %struct.drm_mode_create_lease, %struct.drm_mode_create_lease* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 4
  %166 = load %struct.drm_master*, %struct.drm_master** %13, align 8
  %167 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.drm_mode_create_lease*, %struct.drm_mode_create_lease** %8, align 8
  %170 = getelementptr inbounds %struct.drm_mode_create_lease, %struct.drm_mode_create_lease* %169, i32 0, i32 3
  store i32 %168, i32* %170, align 8
  %171 = load i32, i32* %17, align 4
  %172 = load %struct.file*, %struct.file** %14, align 8
  %173 = call i32 @fd_install(i32 %171, %struct.file* %172)
  %174 = call i32 (i8*, ...) @DRM_DEBUG_LEASE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %185

175:                                              ; preds = %140
  %176 = bitcast %struct.drm_master** %13 to %struct.file**
  %177 = call i32 @drm_master_put(%struct.file** %176)
  br label %178

178:                                              ; preds = %175, %129
  %179 = load i32, i32* %17, align 4
  %180 = call i32 @put_unused_fd(i32 %179)
  %181 = call i32 @idr_destroy(%struct.idr* %11)
  %182 = load i32, i32* %10, align 4
  %183 = call i32 (i8*, ...) @DRM_DEBUG_LEASE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i32 %182)
  %184 = load i32, i32* %10, align 4
  store i32 %184, i32* %4, align 4
  br label %185

185:                                              ; preds = %178, %143, %116, %100, %86, %68, %49, %40, %32
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @DRM_DEBUG_LEASE(i8*, ...) #1

declare dso_local %struct.file* @memdup_user(i32, i32) #1

declare dso_local i32 @u64_to_user_ptr(i32) #1

declare dso_local i32 @array_size(i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local i32 @idr_init(%struct.idr*) #1

declare dso_local i32 @fill_object_idr(%struct.drm_device*, %struct.drm_file*, %struct.idr*, i64, %struct.file*) #1

declare dso_local i32 @kfree(%struct.file*) #1

declare dso_local i32 @idr_destroy(%struct.idr*) #1

declare dso_local i32 @get_unused_fd_flags(i32) #1

declare dso_local %struct.file* @drm_lease_create(%struct.file*, %struct.idr*) #1

declare dso_local %struct.file* @file_clone_open(%struct.file*) #1

declare dso_local i32 @drm_master_put(%struct.file**) #1

declare dso_local i32 @fd_install(i32, %struct.file*) #1

declare dso_local i32 @put_unused_fd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
