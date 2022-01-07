; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process.c_kfd_process_device_init_cwsr_dgpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process.c_kfd_process_device_init_cwsr_dgpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_process_device = type { %struct.qcm_process_device, %struct.kfd_dev* }
%struct.qcm_process_device = type { i8*, i64, i64, i64 }
%struct.kfd_dev = type { i32, i32, i32 }

@ALLOC_MEM_FLAGS_GTT = common dso_local global i32 0, align 4
@ALLOC_MEM_FLAGS_NO_SUBSTITUTE = common dso_local global i32 0, align 4
@ALLOC_MEM_FLAGS_EXECUTABLE = common dso_local global i32 0, align 4
@KFD_CWSR_TBA_TMA_SIZE = common dso_local global i32 0, align 4
@KFD_CWSR_TMA_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"set tba :0x%llx, tma:0x%llx, cwsr_kaddr:%p for pqm.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kfd_process_device*)* @kfd_process_device_init_cwsr_dgpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kfd_process_device_init_cwsr_dgpu(%struct.kfd_process_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kfd_process_device*, align 8
  %4 = alloca %struct.kfd_dev*, align 8
  %5 = alloca %struct.qcm_process_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.kfd_process_device* %0, %struct.kfd_process_device** %3, align 8
  %9 = load %struct.kfd_process_device*, %struct.kfd_process_device** %3, align 8
  %10 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %9, i32 0, i32 1
  %11 = load %struct.kfd_dev*, %struct.kfd_dev** %10, align 8
  store %struct.kfd_dev* %11, %struct.kfd_dev** %4, align 8
  %12 = load %struct.kfd_process_device*, %struct.kfd_process_device** %3, align 8
  %13 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %12, i32 0, i32 0
  store %struct.qcm_process_device* %13, %struct.qcm_process_device** %5, align 8
  %14 = load i32, i32* @ALLOC_MEM_FLAGS_GTT, align 4
  %15 = load i32, i32* @ALLOC_MEM_FLAGS_NO_SUBSTITUTE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @ALLOC_MEM_FLAGS_EXECUTABLE, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %20 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %1
  %24 = load %struct.qcm_process_device*, %struct.qcm_process_device** %5, align 8
  %25 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.qcm_process_device*, %struct.qcm_process_device** %5, align 8
  %30 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28, %23, %1
  store i32 0, i32* %2, align 4
  br label %82

34:                                               ; preds = %28
  %35 = load %struct.kfd_process_device*, %struct.kfd_process_device** %3, align 8
  %36 = load %struct.qcm_process_device*, %struct.qcm_process_device** %5, align 8
  %37 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @KFD_CWSR_TBA_TMA_SIZE, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @kfd_process_alloc_gpuvm(%struct.kfd_process_device* %35, i64 %38, i32 %39, i32 %40, i8** %7)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %2, align 4
  br label %82

46:                                               ; preds = %34
  %47 = load i8*, i8** %7, align 8
  %48 = load %struct.qcm_process_device*, %struct.qcm_process_device** %5, align 8
  %49 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load %struct.qcm_process_device*, %struct.qcm_process_device** %5, align 8
  %51 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.qcm_process_device*, %struct.qcm_process_device** %5, align 8
  %54 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  %55 = load %struct.qcm_process_device*, %struct.qcm_process_device** %5, align 8
  %56 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %59 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %62 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @memcpy(i8* %57, i32 %60, i32 %63)
  %65 = load %struct.qcm_process_device*, %struct.qcm_process_device** %5, align 8
  %66 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @KFD_CWSR_TMA_OFFSET, align 8
  %69 = add nsw i64 %67, %68
  %70 = load %struct.qcm_process_device*, %struct.qcm_process_device** %5, align 8
  %71 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  %72 = load %struct.qcm_process_device*, %struct.qcm_process_device** %5, align 8
  %73 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.qcm_process_device*, %struct.qcm_process_device** %5, align 8
  %76 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.qcm_process_device*, %struct.qcm_process_device** %5, align 8
  %79 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @pr_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %74, i64 %77, i8* %80)
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %46, %44, %33
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @kfd_process_alloc_gpuvm(%struct.kfd_process_device*, i64, i32, i32, i8**) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i64, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
