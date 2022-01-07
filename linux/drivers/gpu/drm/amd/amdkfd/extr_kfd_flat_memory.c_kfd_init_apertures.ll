; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_flat_memory.c_kfd_init_apertures.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_flat_memory.c_kfd_init_apertures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_process = type { i64 }
%struct.kfd_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.kfd_process_device = type { i64, i64, i64, i64, i64, i64, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"Failed to create process device data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unexpected ASIC family %u\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SVM_CWSR_BASE = common dso_local global i32 0, align 4
@SVM_IB_BASE = common dso_local global i32 0, align 4
@kfd_device = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"node id %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"gpu id %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"lds_base %llX\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"lds_limit %llX\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"gpuvm_base %llX\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"gpuvm_limit %llX\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"scratch_base %llX\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"scratch_limit %llX\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kfd_init_apertures(%struct.kfd_process* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kfd_process*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.kfd_dev*, align 8
  %6 = alloca %struct.kfd_process_device*, align 8
  store %struct.kfd_process* %0, %struct.kfd_process** %3, align 8
  store i64 0, i64* %4, align 8
  br label %7

7:                                                ; preds = %85, %14, %1
  %8 = load i64, i64* %4, align 8
  %9 = call i64 @kfd_topology_enum_kfd_devices(i64 %8, %struct.kfd_dev** %5)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %128

11:                                               ; preds = %7
  %12 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %13 = icmp ne %struct.kfd_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i64, i64* %4, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %4, align 8
  br label %7

17:                                               ; preds = %11
  %18 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %19 = load %struct.kfd_process*, %struct.kfd_process** %3, align 8
  %20 = call %struct.kfd_process_device* @kfd_create_process_device_data(%struct.kfd_dev* %18, %struct.kfd_process* %19)
  store %struct.kfd_process_device* %20, %struct.kfd_process_device** %6, align 8
  %21 = load %struct.kfd_process_device*, %struct.kfd_process_device** %6, align 8
  %22 = icmp ne %struct.kfd_process_device* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %129

27:                                               ; preds = %17
  %28 = load %struct.kfd_process*, %struct.kfd_process** %3, align 8
  %29 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = load %struct.kfd_process_device*, %struct.kfd_process_device** %6, align 8
  %34 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %33, i32 0, i32 4
  store i64 0, i64* %34, align 8
  %35 = load %struct.kfd_process_device*, %struct.kfd_process_device** %6, align 8
  %36 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %35, i32 0, i32 5
  store i64 0, i64* %36, align 8
  %37 = load %struct.kfd_process_device*, %struct.kfd_process_device** %6, align 8
  %38 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.kfd_process_device*, %struct.kfd_process_device** %6, align 8
  %40 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load %struct.kfd_process_device*, %struct.kfd_process_device** %6, align 8
  %42 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load %struct.kfd_process_device*, %struct.kfd_process_device** %6, align 8
  %44 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  br label %85

45:                                               ; preds = %27
  %46 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %47 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %59 [
    i32 138, label %51
    i32 139, label %51
    i32 141, label %51
    i32 132, label %51
    i32 140, label %51
    i32 136, label %51
    i32 135, label %51
    i32 134, label %51
    i32 128, label %51
    i32 131, label %55
    i32 130, label %55
    i32 129, label %55
    i32 133, label %55
    i32 142, label %55
    i32 137, label %55
  ]

51:                                               ; preds = %45, %45, %45, %45, %45, %45, %45, %45, %45
  %52 = load %struct.kfd_process_device*, %struct.kfd_process_device** %6, align 8
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @kfd_init_apertures_vi(%struct.kfd_process_device* %52, i64 %53)
  br label %68

55:                                               ; preds = %45, %45, %45, %45, %45, %45
  %56 = load %struct.kfd_process_device*, %struct.kfd_process_device** %6, align 8
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @kfd_init_apertures_v9(%struct.kfd_process_device* %56, i64 %57)
  br label %68

59:                                               ; preds = %45
  %60 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %61 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %129

68:                                               ; preds = %55, %51
  %69 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %70 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %68
  %76 = load i32, i32* @SVM_CWSR_BASE, align 4
  %77 = load %struct.kfd_process_device*, %struct.kfd_process_device** %6, align 8
  %78 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %77, i32 0, i32 7
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* @SVM_IB_BASE, align 4
  %81 = load %struct.kfd_process_device*, %struct.kfd_process_device** %6, align 8
  %82 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %81, i32 0, i32 7
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  br label %84

84:                                               ; preds = %75, %68
  br label %85

85:                                               ; preds = %84, %32
  %86 = load i32, i32* @kfd_device, align 4
  %87 = load i64, i64* %4, align 8
  %88 = call i32 @dev_dbg(i32 %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %87)
  %89 = load i32, i32* @kfd_device, align 4
  %90 = load %struct.kfd_process_device*, %struct.kfd_process_device** %6, align 8
  %91 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %90, i32 0, i32 6
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @dev_dbg(i32 %89, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 %94)
  %96 = load i32, i32* @kfd_device, align 4
  %97 = load %struct.kfd_process_device*, %struct.kfd_process_device** %6, align 8
  %98 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %97, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @dev_dbg(i32 %96, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i64 %99)
  %101 = load i32, i32* @kfd_device, align 4
  %102 = load %struct.kfd_process_device*, %struct.kfd_process_device** %6, align 8
  %103 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @dev_dbg(i32 %101, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i64 %104)
  %106 = load i32, i32* @kfd_device, align 4
  %107 = load %struct.kfd_process_device*, %struct.kfd_process_device** %6, align 8
  %108 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @dev_dbg(i32 %106, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i64 %109)
  %111 = load i32, i32* @kfd_device, align 4
  %112 = load %struct.kfd_process_device*, %struct.kfd_process_device** %6, align 8
  %113 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @dev_dbg(i32 %111, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i64 %114)
  %116 = load i32, i32* @kfd_device, align 4
  %117 = load %struct.kfd_process_device*, %struct.kfd_process_device** %6, align 8
  %118 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @dev_dbg(i32 %116, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i64 %119)
  %121 = load i32, i32* @kfd_device, align 4
  %122 = load %struct.kfd_process_device*, %struct.kfd_process_device** %6, align 8
  %123 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @dev_dbg(i32 %121, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i64 %124)
  %126 = load i64, i64* %4, align 8
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* %4, align 8
  br label %7

128:                                              ; preds = %7
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %128, %59, %23
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i64 @kfd_topology_enum_kfd_devices(i64, %struct.kfd_dev**) #1

declare dso_local %struct.kfd_process_device* @kfd_create_process_device_data(%struct.kfd_dev*, %struct.kfd_process*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kfd_init_apertures_vi(%struct.kfd_process_device*, i64) #1

declare dso_local i32 @kfd_init_apertures_v9(%struct.kfd_process_device*, i64) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
