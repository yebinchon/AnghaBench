; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_chardev.c_kfd_ioctl_create_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_chardev.c_kfd_ioctl_create_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kfd_process = type { i32, i32, i32 }
%struct.kfd_ioctl_create_queue_args = type { i32, i32, i32, i32, i32, i32 }
%struct.kfd_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.kfd_process_device = type { i32 }
%struct.queue_properties = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Creating queue ioctl\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Looking for gpu id 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Could not find gpu id 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Creating queue for PASID %d on gpu 0x%x\0A\00", align 1
@KFD_MMAP_TYPE_DOORBELL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Queue id %d was created successfully\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Ring buffer address == 0x%016llX\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Read ptr address    == 0x%016llX\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Write ptr address   == 0x%016llX\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kfd_process*, i8*)* @kfd_ioctl_create_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kfd_ioctl_create_queue(%struct.file* %0, %struct.kfd_process* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.kfd_process*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.kfd_ioctl_create_queue_args*, align 8
  %9 = alloca %struct.kfd_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.kfd_process_device*, align 8
  %13 = alloca %struct.queue_properties, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.kfd_process* %1, %struct.kfd_process** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.kfd_ioctl_create_queue_args*
  store %struct.kfd_ioctl_create_queue_args* %15, %struct.kfd_ioctl_create_queue_args** %8, align 8
  store i32 0, i32* %10, align 4
  %16 = call i32 @memset(%struct.queue_properties* %13, i32 0, i32 4)
  %17 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.kfd_ioctl_create_queue_args*, %struct.kfd_ioctl_create_queue_args** %8, align 8
  %19 = call i32 @set_queue_properties_from_user(%struct.queue_properties* %13, %struct.kfd_ioctl_create_queue_args* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  br label %131

24:                                               ; preds = %3
  %25 = load %struct.kfd_ioctl_create_queue_args*, %struct.kfd_ioctl_create_queue_args** %8, align 8
  %26 = getelementptr inbounds %struct.kfd_ioctl_create_queue_args, %struct.kfd_ioctl_create_queue_args* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load %struct.kfd_ioctl_create_queue_args*, %struct.kfd_ioctl_create_queue_args** %8, align 8
  %30 = getelementptr inbounds %struct.kfd_ioctl_create_queue_args, %struct.kfd_ioctl_create_queue_args* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.kfd_dev* @kfd_device_by_id(i32 %31)
  store %struct.kfd_dev* %32, %struct.kfd_dev** %9, align 8
  %33 = load %struct.kfd_dev*, %struct.kfd_dev** %9, align 8
  %34 = icmp ne %struct.kfd_dev* %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %24
  %36 = load %struct.kfd_ioctl_create_queue_args*, %struct.kfd_ioctl_create_queue_args** %8, align 8
  %37 = getelementptr inbounds %struct.kfd_ioctl_create_queue_args, %struct.kfd_ioctl_create_queue_args* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %131

42:                                               ; preds = %24
  %43 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %44 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %43, i32 0, i32 0
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.kfd_dev*, %struct.kfd_dev** %9, align 8
  %47 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %48 = call %struct.kfd_process_device* @kfd_bind_process_to_device(%struct.kfd_dev* %46, %struct.kfd_process* %47)
  store %struct.kfd_process_device* %48, %struct.kfd_process_device** %12, align 8
  %49 = load %struct.kfd_process_device*, %struct.kfd_process_device** %12, align 8
  %50 = call i64 @IS_ERR(%struct.kfd_process_device* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = load i32, i32* @ESRCH, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %10, align 4
  br label %126

55:                                               ; preds = %42
  %56 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %57 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.kfd_dev*, %struct.kfd_dev** %9, align 8
  %60 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %58, i32 %61)
  %63 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %64 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %63, i32 0, i32 1
  %65 = load %struct.kfd_dev*, %struct.kfd_dev** %9, align 8
  %66 = load %struct.file*, %struct.file** %5, align 8
  %67 = call i32 @pqm_create_queue(i32* %64, %struct.kfd_dev* %65, %struct.file* %66, %struct.queue_properties* %13, i32* %11)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %55
  br label %125

71:                                               ; preds = %55
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.kfd_ioctl_create_queue_args*, %struct.kfd_ioctl_create_queue_args** %8, align 8
  %74 = getelementptr inbounds %struct.kfd_ioctl_create_queue_args, %struct.kfd_ioctl_create_queue_args* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @KFD_MMAP_TYPE_DOORBELL, align 4
  %76 = load %struct.kfd_ioctl_create_queue_args*, %struct.kfd_ioctl_create_queue_args** %8, align 8
  %77 = getelementptr inbounds %struct.kfd_ioctl_create_queue_args, %struct.kfd_ioctl_create_queue_args* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 4
  %78 = load %struct.kfd_ioctl_create_queue_args*, %struct.kfd_ioctl_create_queue_args** %8, align 8
  %79 = getelementptr inbounds %struct.kfd_ioctl_create_queue_args, %struct.kfd_ioctl_create_queue_args* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @KFD_MMAP_GPU_ID(i32 %80)
  %82 = load %struct.kfd_ioctl_create_queue_args*, %struct.kfd_ioctl_create_queue_args** %8, align 8
  %83 = getelementptr inbounds %struct.kfd_ioctl_create_queue_args, %struct.kfd_ioctl_create_queue_args* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* @PAGE_SHIFT, align 4
  %87 = load %struct.kfd_ioctl_create_queue_args*, %struct.kfd_ioctl_create_queue_args** %8, align 8
  %88 = getelementptr inbounds %struct.kfd_ioctl_create_queue_args, %struct.kfd_ioctl_create_queue_args* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load %struct.kfd_dev*, %struct.kfd_dev** %9, align 8
  %92 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @KFD_IS_SOC15(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %71
  %99 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %13, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.kfd_ioctl_create_queue_args*, %struct.kfd_ioctl_create_queue_args** %8, align 8
  %102 = getelementptr inbounds %struct.kfd_ioctl_create_queue_args, %struct.kfd_ioctl_create_queue_args* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %98, %71
  %106 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %107 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %106, i32 0, i32 0
  %108 = call i32 @mutex_unlock(i32* %107)
  %109 = load %struct.kfd_ioctl_create_queue_args*, %struct.kfd_ioctl_create_queue_args** %8, align 8
  %110 = getelementptr inbounds %struct.kfd_ioctl_create_queue_args, %struct.kfd_ioctl_create_queue_args* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %111)
  %113 = load %struct.kfd_ioctl_create_queue_args*, %struct.kfd_ioctl_create_queue_args** %8, align 8
  %114 = getelementptr inbounds %struct.kfd_ioctl_create_queue_args, %struct.kfd_ioctl_create_queue_args* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %115)
  %117 = load %struct.kfd_ioctl_create_queue_args*, %struct.kfd_ioctl_create_queue_args** %8, align 8
  %118 = getelementptr inbounds %struct.kfd_ioctl_create_queue_args, %struct.kfd_ioctl_create_queue_args* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %119)
  %121 = load %struct.kfd_ioctl_create_queue_args*, %struct.kfd_ioctl_create_queue_args** %8, align 8
  %122 = getelementptr inbounds %struct.kfd_ioctl_create_queue_args, %struct.kfd_ioctl_create_queue_args* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %123)
  store i32 0, i32* %4, align 4
  br label %131

125:                                              ; preds = %70
  br label %126

126:                                              ; preds = %125, %52
  %127 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %128 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %127, i32 0, i32 0
  %129 = call i32 @mutex_unlock(i32* %128)
  %130 = load i32, i32* %10, align 4
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %126, %105, %35, %22
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @memset(%struct.queue_properties*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @set_queue_properties_from_user(%struct.queue_properties*, %struct.kfd_ioctl_create_queue_args*) #1

declare dso_local %struct.kfd_dev* @kfd_device_by_id(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.kfd_process_device* @kfd_bind_process_to_device(%struct.kfd_dev*, %struct.kfd_process*) #1

declare dso_local i64 @IS_ERR(%struct.kfd_process_device*) #1

declare dso_local i32 @pqm_create_queue(i32*, %struct.kfd_dev*, %struct.file*, %struct.queue_properties*, i32*) #1

declare dso_local i32 @KFD_MMAP_GPU_ID(i32) #1

declare dso_local i64 @KFD_IS_SOC15(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
