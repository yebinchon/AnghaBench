; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_chardev.c_kfd_ioctl_get_process_apertures.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_chardev.c_kfd_ioctl_get_process_apertures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kfd_process = type { i64, i32 }
%struct.kfd_ioctl_get_process_apertures_args = type { i64, %struct.kfd_process_device_apertures* }
%struct.kfd_process_device_apertures = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.kfd_process_device = type { i64, i64, i64, i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@kfd_device = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"get apertures for PASID %d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"node id %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"gpu id %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"lds_base %llX\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"lds_limit %llX\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"gpuvm_base %llX\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"gpuvm_limit %llX\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"scratch_base %llX\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"scratch_limit %llX\0A\00", align 1
@NUM_OF_SUPPORTED_GPUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kfd_process*, i8*)* @kfd_ioctl_get_process_apertures to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kfd_ioctl_get_process_apertures(%struct.file* %0, %struct.kfd_process* %1, i8* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.kfd_process*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.kfd_ioctl_get_process_apertures_args*, align 8
  %8 = alloca %struct.kfd_process_device_apertures*, align 8
  %9 = alloca %struct.kfd_process_device*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.kfd_process* %1, %struct.kfd_process** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.kfd_ioctl_get_process_apertures_args*
  store %struct.kfd_ioctl_get_process_apertures_args* %11, %struct.kfd_ioctl_get_process_apertures_args** %7, align 8
  %12 = load i32, i32* @kfd_device, align 4
  %13 = load %struct.kfd_process*, %struct.kfd_process** %5, align 8
  %14 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load %struct.kfd_ioctl_get_process_apertures_args*, %struct.kfd_ioctl_get_process_apertures_args** %7, align 8
  %18 = getelementptr inbounds %struct.kfd_ioctl_get_process_apertures_args, %struct.kfd_ioctl_get_process_apertures_args* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.kfd_process*, %struct.kfd_process** %5, align 8
  %20 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.kfd_process*, %struct.kfd_process** %5, align 8
  %23 = call i64 @kfd_has_process_device_data(%struct.kfd_process* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %134

25:                                               ; preds = %3
  %26 = load %struct.kfd_process*, %struct.kfd_process** %5, align 8
  %27 = call %struct.kfd_process_device* @kfd_get_first_process_device_data(%struct.kfd_process* %26)
  store %struct.kfd_process_device* %27, %struct.kfd_process_device** %9, align 8
  br label %28

28:                                               ; preds = %131, %25
  %29 = load %struct.kfd_ioctl_get_process_apertures_args*, %struct.kfd_ioctl_get_process_apertures_args** %7, align 8
  %30 = getelementptr inbounds %struct.kfd_ioctl_get_process_apertures_args, %struct.kfd_ioctl_get_process_apertures_args* %29, i32 0, i32 1
  %31 = load %struct.kfd_process_device_apertures*, %struct.kfd_process_device_apertures** %30, align 8
  %32 = load %struct.kfd_ioctl_get_process_apertures_args*, %struct.kfd_ioctl_get_process_apertures_args** %7, align 8
  %33 = getelementptr inbounds %struct.kfd_ioctl_get_process_apertures_args, %struct.kfd_ioctl_get_process_apertures_args* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.kfd_process_device_apertures, %struct.kfd_process_device_apertures* %31, i64 %34
  store %struct.kfd_process_device_apertures* %35, %struct.kfd_process_device_apertures** %8, align 8
  %36 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %37 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %36, i32 0, i32 6
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.kfd_process_device_apertures*, %struct.kfd_process_device_apertures** %8, align 8
  %42 = getelementptr inbounds %struct.kfd_process_device_apertures, %struct.kfd_process_device_apertures* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %44 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.kfd_process_device_apertures*, %struct.kfd_process_device_apertures** %8, align 8
  %47 = getelementptr inbounds %struct.kfd_process_device_apertures, %struct.kfd_process_device_apertures* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %49 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.kfd_process_device_apertures*, %struct.kfd_process_device_apertures** %8, align 8
  %52 = getelementptr inbounds %struct.kfd_process_device_apertures, %struct.kfd_process_device_apertures* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  %53 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %54 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.kfd_process_device_apertures*, %struct.kfd_process_device_apertures** %8, align 8
  %57 = getelementptr inbounds %struct.kfd_process_device_apertures, %struct.kfd_process_device_apertures* %56, i32 0, i32 3
  store i64 %55, i64* %57, align 8
  %58 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %59 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.kfd_process_device_apertures*, %struct.kfd_process_device_apertures** %8, align 8
  %62 = getelementptr inbounds %struct.kfd_process_device_apertures, %struct.kfd_process_device_apertures* %61, i32 0, i32 4
  store i64 %60, i64* %62, align 8
  %63 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %64 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.kfd_process_device_apertures*, %struct.kfd_process_device_apertures** %8, align 8
  %67 = getelementptr inbounds %struct.kfd_process_device_apertures, %struct.kfd_process_device_apertures* %66, i32 0, i32 5
  store i64 %65, i64* %67, align 8
  %68 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %69 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.kfd_process_device_apertures*, %struct.kfd_process_device_apertures** %8, align 8
  %72 = getelementptr inbounds %struct.kfd_process_device_apertures, %struct.kfd_process_device_apertures* %71, i32 0, i32 6
  store i64 %70, i64* %72, align 8
  %73 = load i32, i32* @kfd_device, align 4
  %74 = load %struct.kfd_ioctl_get_process_apertures_args*, %struct.kfd_ioctl_get_process_apertures_args** %7, align 8
  %75 = getelementptr inbounds %struct.kfd_ioctl_get_process_apertures_args, %struct.kfd_ioctl_get_process_apertures_args* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @dev_dbg(i32 %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %76)
  %78 = load i32, i32* @kfd_device, align 4
  %79 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %80 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %79, i32 0, i32 6
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @dev_dbg(i32 %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %83)
  %85 = load i32, i32* @kfd_device, align 4
  %86 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %87 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @dev_dbg(i32 %85, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i64 %88)
  %90 = load i32, i32* @kfd_device, align 4
  %91 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %92 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @dev_dbg(i32 %90, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64 %93)
  %95 = load i32, i32* @kfd_device, align 4
  %96 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %97 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @dev_dbg(i32 %95, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i64 %98)
  %100 = load i32, i32* @kfd_device, align 4
  %101 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %102 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @dev_dbg(i32 %100, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i64 %103)
  %105 = load i32, i32* @kfd_device, align 4
  %106 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %107 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @dev_dbg(i32 %105, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i64 %108)
  %110 = load i32, i32* @kfd_device, align 4
  %111 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %112 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %111, i32 0, i32 5
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @dev_dbg(i32 %110, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i64 %113)
  %115 = load %struct.kfd_ioctl_get_process_apertures_args*, %struct.kfd_ioctl_get_process_apertures_args** %7, align 8
  %116 = getelementptr inbounds %struct.kfd_ioctl_get_process_apertures_args, %struct.kfd_ioctl_get_process_apertures_args* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %116, align 8
  %119 = load %struct.kfd_process*, %struct.kfd_process** %5, align 8
  %120 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %121 = call %struct.kfd_process_device* @kfd_get_next_process_device_data(%struct.kfd_process* %119, %struct.kfd_process_device* %120)
  store %struct.kfd_process_device* %121, %struct.kfd_process_device** %9, align 8
  br label %122

122:                                              ; preds = %28
  %123 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %124 = icmp ne %struct.kfd_process_device* %123, null
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = load %struct.kfd_ioctl_get_process_apertures_args*, %struct.kfd_ioctl_get_process_apertures_args** %7, align 8
  %127 = getelementptr inbounds %struct.kfd_ioctl_get_process_apertures_args, %struct.kfd_ioctl_get_process_apertures_args* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @NUM_OF_SUPPORTED_GPUS, align 8
  %130 = icmp ult i64 %128, %129
  br label %131

131:                                              ; preds = %125, %122
  %132 = phi i1 [ false, %122 ], [ %130, %125 ]
  br i1 %132, label %28, label %133

133:                                              ; preds = %131
  br label %134

134:                                              ; preds = %133, %3
  %135 = load %struct.kfd_process*, %struct.kfd_process** %5, align 8
  %136 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %135, i32 0, i32 1
  %137 = call i32 @mutex_unlock(i32* %136)
  ret i32 0
}

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @kfd_has_process_device_data(%struct.kfd_process*) #1

declare dso_local %struct.kfd_process_device* @kfd_get_first_process_device_data(%struct.kfd_process*) #1

declare dso_local %struct.kfd_process_device* @kfd_get_next_process_device_data(%struct.kfd_process*, %struct.kfd_process_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
