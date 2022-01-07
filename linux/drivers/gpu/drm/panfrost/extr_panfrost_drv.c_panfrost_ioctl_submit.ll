; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_drv.c_panfrost_ioctl_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_drv.c_panfrost_ioctl_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.panfrost_device* }
%struct.panfrost_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_panfrost_submit = type { i64, i64, i64 }
%struct.drm_syncobj = type { i32 }
%struct.panfrost_job = type { i64, i32, i32, i32, i64, %struct.panfrost_device*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PANFROST_JD_REQ_FS = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @panfrost_ioctl_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panfrost_ioctl_submit(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.panfrost_device*, align 8
  %9 = alloca %struct.drm_panfrost_submit*, align 8
  %10 = alloca %struct.drm_syncobj*, align 8
  %11 = alloca %struct.panfrost_job*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.panfrost_device*, %struct.panfrost_device** %14, align 8
  store %struct.panfrost_device* %15, %struct.panfrost_device** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.drm_panfrost_submit*
  store %struct.drm_panfrost_submit* %17, %struct.drm_panfrost_submit** %9, align 8
  store %struct.drm_syncobj* null, %struct.drm_syncobj** %10, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.drm_panfrost_submit*, %struct.drm_panfrost_submit** %9, align 8
  %19 = getelementptr inbounds %struct.drm_panfrost_submit, %struct.drm_panfrost_submit* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %134

25:                                               ; preds = %3
  %26 = load %struct.drm_panfrost_submit*, %struct.drm_panfrost_submit** %9, align 8
  %27 = getelementptr inbounds %struct.drm_panfrost_submit, %struct.drm_panfrost_submit* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load %struct.drm_panfrost_submit*, %struct.drm_panfrost_submit** %9, align 8
  %32 = getelementptr inbounds %struct.drm_panfrost_submit, %struct.drm_panfrost_submit* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PANFROST_JD_REQ_FS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %134

39:                                               ; preds = %30, %25
  %40 = load %struct.drm_panfrost_submit*, %struct.drm_panfrost_submit** %9, align 8
  %41 = getelementptr inbounds %struct.drm_panfrost_submit, %struct.drm_panfrost_submit* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %46 = load %struct.drm_panfrost_submit*, %struct.drm_panfrost_submit** %9, align 8
  %47 = getelementptr inbounds %struct.drm_panfrost_submit, %struct.drm_panfrost_submit* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call %struct.drm_syncobj* @drm_syncobj_find(%struct.drm_file* %45, i64 %48)
  store %struct.drm_syncobj* %49, %struct.drm_syncobj** %10, align 8
  %50 = load %struct.drm_syncobj*, %struct.drm_syncobj** %10, align 8
  %51 = icmp ne %struct.drm_syncobj* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %134

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %39
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.panfrost_job* @kzalloc(i32 48, i32 %57)
  store %struct.panfrost_job* %58, %struct.panfrost_job** %11, align 8
  %59 = load %struct.panfrost_job*, %struct.panfrost_job** %11, align 8
  %60 = icmp ne %struct.panfrost_job* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %12, align 4
  br label %126

64:                                               ; preds = %56
  %65 = load %struct.panfrost_job*, %struct.panfrost_job** %11, align 8
  %66 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %65, i32 0, i32 6
  %67 = call i32 @kref_init(i32* %66)
  %68 = load %struct.panfrost_device*, %struct.panfrost_device** %8, align 8
  %69 = load %struct.panfrost_job*, %struct.panfrost_job** %11, align 8
  %70 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %69, i32 0, i32 5
  store %struct.panfrost_device* %68, %struct.panfrost_device** %70, align 8
  %71 = load %struct.drm_panfrost_submit*, %struct.drm_panfrost_submit** %9, align 8
  %72 = getelementptr inbounds %struct.drm_panfrost_submit, %struct.drm_panfrost_submit* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.panfrost_job*, %struct.panfrost_job** %11, align 8
  %75 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %74, i32 0, i32 4
  store i64 %73, i64* %75, align 8
  %76 = load %struct.drm_panfrost_submit*, %struct.drm_panfrost_submit** %9, align 8
  %77 = getelementptr inbounds %struct.drm_panfrost_submit, %struct.drm_panfrost_submit* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.panfrost_job*, %struct.panfrost_job** %11, align 8
  %80 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load %struct.panfrost_device*, %struct.panfrost_device** %8, align 8
  %82 = call i32 @panfrost_gpu_get_latest_flush_id(%struct.panfrost_device* %81)
  %83 = load %struct.panfrost_job*, %struct.panfrost_job** %11, align 8
  %84 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 8
  %85 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %86 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.panfrost_job*, %struct.panfrost_job** %11, align 8
  %89 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %91 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %92 = load %struct.drm_panfrost_submit*, %struct.drm_panfrost_submit** %9, align 8
  %93 = load %struct.panfrost_job*, %struct.panfrost_job** %11, align 8
  %94 = call i32 @panfrost_copy_in_sync(%struct.drm_device* %90, %struct.drm_file* %91, %struct.drm_panfrost_submit* %92, %struct.panfrost_job* %93)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %64
  br label %123

98:                                               ; preds = %64
  %99 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %100 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %101 = load %struct.drm_panfrost_submit*, %struct.drm_panfrost_submit** %9, align 8
  %102 = load %struct.panfrost_job*, %struct.panfrost_job** %11, align 8
  %103 = call i32 @panfrost_lookup_bos(%struct.drm_device* %99, %struct.drm_file* %100, %struct.drm_panfrost_submit* %101, %struct.panfrost_job* %102)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  br label %123

107:                                              ; preds = %98
  %108 = load %struct.panfrost_job*, %struct.panfrost_job** %11, align 8
  %109 = call i32 @panfrost_job_push(%struct.panfrost_job* %108)
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %123

113:                                              ; preds = %107
  %114 = load %struct.drm_syncobj*, %struct.drm_syncobj** %10, align 8
  %115 = icmp ne %struct.drm_syncobj* %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = load %struct.drm_syncobj*, %struct.drm_syncobj** %10, align 8
  %118 = load %struct.panfrost_job*, %struct.panfrost_job** %11, align 8
  %119 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @drm_syncobj_replace_fence(%struct.drm_syncobj* %117, i32 %120)
  br label %122

122:                                              ; preds = %116, %113
  br label %123

123:                                              ; preds = %122, %112, %106, %97
  %124 = load %struct.panfrost_job*, %struct.panfrost_job** %11, align 8
  %125 = call i32 @panfrost_job_put(%struct.panfrost_job* %124)
  br label %126

126:                                              ; preds = %123, %61
  %127 = load %struct.drm_syncobj*, %struct.drm_syncobj** %10, align 8
  %128 = icmp ne %struct.drm_syncobj* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load %struct.drm_syncobj*, %struct.drm_syncobj** %10, align 8
  %131 = call i32 @drm_syncobj_put(%struct.drm_syncobj* %130)
  br label %132

132:                                              ; preds = %129, %126
  %133 = load i32, i32* %12, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %132, %52, %36, %22
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local %struct.drm_syncobj* @drm_syncobj_find(%struct.drm_file*, i64) #1

declare dso_local %struct.panfrost_job* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @panfrost_gpu_get_latest_flush_id(%struct.panfrost_device*) #1

declare dso_local i32 @panfrost_copy_in_sync(%struct.drm_device*, %struct.drm_file*, %struct.drm_panfrost_submit*, %struct.panfrost_job*) #1

declare dso_local i32 @panfrost_lookup_bos(%struct.drm_device*, %struct.drm_file*, %struct.drm_panfrost_submit*, %struct.panfrost_job*) #1

declare dso_local i32 @panfrost_job_push(%struct.panfrost_job*) #1

declare dso_local i32 @drm_syncobj_replace_fence(%struct.drm_syncobj*, i32) #1

declare dso_local i32 @panfrost_job_put(%struct.panfrost_job*) #1

declare dso_local i32 @drm_syncobj_put(%struct.drm_syncobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
