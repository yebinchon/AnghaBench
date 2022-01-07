; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_dbgdev.c_dbgdev_wave_reset_wavefronts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_dbgdev.c_dbgdev_wave_reset_wavefronts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_dev = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 (i32, i32, i64)*, i32 (i32, i32)*, i64 (i32, i32)* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.kfd_process = type { i32 }
%union.SQ_CMD_BITS = type { i64 }
%union.GRBM_GFX_INDEX_BITS = type { i32 }
%struct.kfd_process_device = type { i32 }
%struct.dbg_wave_control_info = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@HSA_DBG_WAVEMODE_BROADCAST_PROCESS = common dso_local global i32 0, align 4
@HSA_DBG_WAVEOP_KILL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Killing all process wavefronts\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Killing wave fronts of vmid %d and pasid %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Didn't find vmid for pasid %d\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbgdev_wave_reset_wavefronts(%struct.kfd_dev* %0, %struct.kfd_process* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kfd_dev*, align 8
  %5 = alloca %struct.kfd_process*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.SQ_CMD_BITS, align 8
  %9 = alloca %union.GRBM_GFX_INDEX_BITS, align 4
  %10 = alloca %struct.kfd_process_device*, align 8
  %11 = alloca %struct.dbg_wave_control_info, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.kfd_dev* %0, %struct.kfd_dev** %4, align 8
  store %struct.kfd_process* %1, %struct.kfd_process** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %15 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %12, align 4
  %18 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %19 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %13, align 4
  %22 = bitcast %union.SQ_CMD_BITS* %8 to i64*
  store i64 0, i64* %22, align 8
  store i32 0, i32* %6, align 4
  %23 = load i32, i32* @HSA_DBG_WAVEMODE_BROADCAST_PROCESS, align 4
  %24 = getelementptr inbounds %struct.dbg_wave_control_info, %struct.dbg_wave_control_info* %11, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @HSA_DBG_WAVEOP_KILL, align 4
  %26 = getelementptr inbounds %struct.dbg_wave_control_info, %struct.dbg_wave_control_info* %11, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %68, %2
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ule i32 %30, %31
  br i1 %32, label %33, label %71

33:                                               ; preds = %29
  %34 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %35 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load i64 (i32, i32)*, i64 (i32, i32)** %37, align 8
  %39 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %40 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i64 %38(i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %33
  %46 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %47 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32 (i32, i32)*, i32 (i32, i32)** %49, align 8
  %51 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %52 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 %50(i32 %53, i32 %54)
  %56 = load %struct.kfd_process*, %struct.kfd_process** %5, align 8
  %57 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %45
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.kfd_process*, %struct.kfd_process** %5, align 8
  %63 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %64)
  br label %71

66:                                               ; preds = %45
  br label %67

67:                                               ; preds = %66, %33
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %7, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %29

71:                                               ; preds = %60, %29
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp ugt i32 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load %struct.kfd_process*, %struct.kfd_process** %5, align 8
  %77 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @EFAULT, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %115

82:                                               ; preds = %71
  %83 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %84 = load %struct.kfd_process*, %struct.kfd_process** %5, align 8
  %85 = call %struct.kfd_process_device* @kfd_get_process_device_data(%struct.kfd_dev* %83, %struct.kfd_process* %84)
  store %struct.kfd_process_device* %85, %struct.kfd_process_device** %10, align 8
  %86 = load %struct.kfd_process_device*, %struct.kfd_process_device** %10, align 8
  %87 = icmp ne %struct.kfd_process_device* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %82
  %89 = load i32, i32* @EFAULT, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %115

91:                                               ; preds = %82
  %92 = call i32 @dbgdev_wave_control_set_registers(%struct.dbg_wave_control_info* %11, %union.SQ_CMD_BITS* %8, %union.GRBM_GFX_INDEX_BITS* %9)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %115

98:                                               ; preds = %91
  %99 = load i32, i32* %7, align 4
  %100 = bitcast %union.SQ_CMD_BITS* %8 to %struct.TYPE_5__*
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %103 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %102, i32 0, i32 1
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32 (i32, i32, i64)*, i32 (i32, i32, i64)** %105, align 8
  %107 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %108 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = bitcast %union.GRBM_GFX_INDEX_BITS* %9 to i32*
  %111 = load i32, i32* %110, align 4
  %112 = bitcast %union.SQ_CMD_BITS* %8 to i64*
  %113 = load i64, i64* %112, align 8
  %114 = call i32 %106(i32 %109, i32 %111, i64 %113)
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %98, %95, %88, %75
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local %struct.kfd_process_device* @kfd_get_process_device_data(%struct.kfd_dev*, %struct.kfd_process*) #1

declare dso_local i32 @dbgdev_wave_control_set_registers(%struct.dbg_wave_control_info*, %union.SQ_CMD_BITS*, %union.GRBM_GFX_INDEX_BITS*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
