; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process.c_init_doorbell_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process.c_init_doorbell_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcm_process_device = type { i32 }
%struct.kfd_dev = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@KFD_MAX_NUM_OF_QUEUES_PER_PROCESS = common dso_local global i32 0, align 4
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KFD_QUEUE_DOORBELL_MIRROR_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"reserved doorbell 0x%03x and 0x%03x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcm_process_device*, %struct.kfd_dev*)* @init_doorbell_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_doorbell_bitmap(%struct.qcm_process_device* %0, %struct.kfd_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qcm_process_device*, align 8
  %5 = alloca %struct.kfd_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.qcm_process_device* %0, %struct.qcm_process_device** %4, align 8
  store %struct.kfd_dev* %1, %struct.kfd_dev** %5, align 8
  %7 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %8 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @KFD_IS_SOC15(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %73

15:                                               ; preds = %2
  %16 = load i32, i32* @KFD_MAX_NUM_OF_QUEUES_PER_PROCESS, align 4
  %17 = load i32, i32* @BITS_PER_BYTE, align 4
  %18 = call i32 @DIV_ROUND_UP(i32 %16, i32 %17)
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32 @kzalloc(i32 %18, i32 %19)
  %21 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %22 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %24 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %15
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %73

30:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %69, %30
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @KFD_MAX_NUM_OF_QUEUES_PER_PROCESS, align 4
  %34 = sdiv i32 %33, 2
  %35 = icmp ult i32 %32, %34
  br i1 %35, label %36, label %72

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %39 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp uge i32 %37, %41
  br i1 %42, label %43, label %68

43:                                               ; preds = %36
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %46 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ule i32 %44, %48
  br i1 %49, label %50, label %68

50:                                               ; preds = %43
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %53 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @set_bit(i32 %51, i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @KFD_QUEUE_DOORBELL_MIRROR_OFFSET, align 4
  %58 = add i32 %56, %57
  %59 = load %struct.qcm_process_device*, %struct.qcm_process_device** %4, align 8
  %60 = getelementptr inbounds %struct.qcm_process_device, %struct.qcm_process_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @set_bit(i32 %58, i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @KFD_QUEUE_DOORBELL_MIRROR_OFFSET, align 4
  %66 = add i32 %64, %65
  %67 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %50, %43, %36
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %6, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %31

72:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %27, %14
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @KFD_IS_SOC15(i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
