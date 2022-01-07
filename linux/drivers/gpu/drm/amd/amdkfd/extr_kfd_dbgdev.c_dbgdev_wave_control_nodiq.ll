; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_dbgdev.c_dbgdev_wave_control_nodiq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_dbgdev.c_dbgdev_wave_control_nodiq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_dbgdev = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 (i32, i32, i64)* }
%struct.dbg_wave_control_info = type { i8*, i8*, i8*, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8* }
%union.SQ_CMD_BITS = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%union.GRBM_GFX_INDEX_BITS = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.kfd_process_device = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_10__ = type { i8* }

@.str = private unnamed_addr constant [43 x i8] c"Failed to get pdd for wave control no DIQ\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to set wave control registers\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"\09\09 %30s\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"* * * * * * * * * * * * * * * * * *\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"\09\09 mode      is: %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"\09\09 operand   is: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"\09\09 trap id   is: %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"\09\09 msg value is: %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"\09\09 vmid      is: %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"\09\09 chk_vmid  is : %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"\09\09 command   is : %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"\09\09 queue id  is : %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"\09\09 simd id   is : %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"\09\09 mode      is : %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"\09\09 vm_id     is : %u\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"\09\09 wave_id   is : %u\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"\09\09 ibw       is : %u\0A\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"\09\09 ii        is : %u\0A\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"\09\09 sebw      is : %u\0A\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"\09\09 se_ind    is : %u\0A\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"\09\09 sh_ind    is : %u\0A\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"\09\09 sbw       is : %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kfd_dbgdev*, %struct.dbg_wave_control_info*)* @dbgdev_wave_control_nodiq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbgdev_wave_control_nodiq(%struct.kfd_dbgdev* %0, %struct.dbg_wave_control_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kfd_dbgdev*, align 8
  %5 = alloca %struct.dbg_wave_control_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.SQ_CMD_BITS, align 8
  %8 = alloca %union.GRBM_GFX_INDEX_BITS, align 8
  %9 = alloca %struct.kfd_process_device*, align 8
  store %struct.kfd_dbgdev* %0, %struct.kfd_dbgdev** %4, align 8
  store %struct.dbg_wave_control_info* %1, %struct.dbg_wave_control_info** %5, align 8
  %10 = bitcast %union.SQ_CMD_BITS* %7 to i64*
  store i64 0, i64* %10, align 8
  %11 = load %struct.kfd_dbgdev*, %struct.kfd_dbgdev** %4, align 8
  %12 = getelementptr inbounds %struct.kfd_dbgdev, %struct.kfd_dbgdev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %14 = load %struct.dbg_wave_control_info*, %struct.dbg_wave_control_info** %5, align 8
  %15 = getelementptr inbounds %struct.dbg_wave_control_info, %struct.dbg_wave_control_info* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.kfd_process_device* @kfd_get_process_device_data(%struct.TYPE_18__* %13, i32 %16)
  store %struct.kfd_process_device* %17, %struct.kfd_process_device** %9, align 8
  %18 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %19 = icmp ne %struct.kfd_process_device* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EFAULT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %134

24:                                               ; preds = %2
  %25 = load %struct.dbg_wave_control_info*, %struct.dbg_wave_control_info** %5, align 8
  %26 = call i32 @dbgdev_wave_control_set_registers(%struct.dbg_wave_control_info* %25, %union.SQ_CMD_BITS* %7, %union.GRBM_GFX_INDEX_BITS* %8)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %134

32:                                               ; preds = %24
  %33 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %34 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = bitcast %union.SQ_CMD_BITS* %7 to %struct.TYPE_10__*
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = call i32 @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %40 = load %struct.dbg_wave_control_info*, %struct.dbg_wave_control_info** %5, align 8
  %41 = getelementptr inbounds %struct.dbg_wave_control_info, %struct.dbg_wave_control_info* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %42)
  %44 = load %struct.dbg_wave_control_info*, %struct.dbg_wave_control_info** %5, align 8
  %45 = getelementptr inbounds %struct.dbg_wave_control_info, %struct.dbg_wave_control_info* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %46)
  %48 = load %struct.dbg_wave_control_info*, %struct.dbg_wave_control_info** %5, align 8
  %49 = getelementptr inbounds %struct.dbg_wave_control_info, %struct.dbg_wave_control_info* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %50)
  %52 = load %struct.dbg_wave_control_info*, %struct.dbg_wave_control_info** %5, align 8
  %53 = getelementptr inbounds %struct.dbg_wave_control_info, %struct.dbg_wave_control_info* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %57)
  %59 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %60 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %62)
  %64 = bitcast %union.SQ_CMD_BITS* %7 to %struct.TYPE_15__*
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8* %66)
  %68 = bitcast %union.SQ_CMD_BITS* %7 to %struct.TYPE_15__*
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8* %70)
  %72 = bitcast %union.SQ_CMD_BITS* %7 to %struct.TYPE_15__*
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8* %74)
  %76 = bitcast %union.SQ_CMD_BITS* %7 to %struct.TYPE_15__*
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 3
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i8* %78)
  %80 = bitcast %union.SQ_CMD_BITS* %7 to %struct.TYPE_15__*
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 4
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i8* %82)
  %84 = bitcast %union.SQ_CMD_BITS* %7 to %struct.TYPE_15__*
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 5
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i8* %86)
  %88 = bitcast %union.SQ_CMD_BITS* %7 to %struct.TYPE_15__*
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 6
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i8* %90)
  %92 = bitcast %union.GRBM_GFX_INDEX_BITS* %8 to %struct.TYPE_16__*
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i8* %94)
  %96 = bitcast %union.GRBM_GFX_INDEX_BITS* %8 to %struct.TYPE_16__*
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8* %98)
  %100 = bitcast %union.GRBM_GFX_INDEX_BITS* %8 to %struct.TYPE_16__*
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 2
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i8* %102)
  %104 = bitcast %union.GRBM_GFX_INDEX_BITS* %8 to %struct.TYPE_16__*
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 3
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i8* %106)
  %108 = bitcast %union.GRBM_GFX_INDEX_BITS* %8 to %struct.TYPE_16__*
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 4
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i8* %110)
  %112 = bitcast %union.GRBM_GFX_INDEX_BITS* %8 to %struct.TYPE_16__*
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 5
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0), i8* %114)
  %116 = call i32 @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %117 = load %struct.kfd_dbgdev*, %struct.kfd_dbgdev** %4, align 8
  %118 = getelementptr inbounds %struct.kfd_dbgdev, %struct.kfd_dbgdev* %117, i32 0, i32 0
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  %123 = load i32 (i32, i32, i64)*, i32 (i32, i32, i64)** %122, align 8
  %124 = load %struct.kfd_dbgdev*, %struct.kfd_dbgdev** %4, align 8
  %125 = getelementptr inbounds %struct.kfd_dbgdev, %struct.kfd_dbgdev* %124, i32 0, i32 0
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = bitcast %union.GRBM_GFX_INDEX_BITS* %8 to i32*
  %130 = load i32, i32* %129, align 8
  %131 = bitcast %union.SQ_CMD_BITS* %7 to i64*
  %132 = load i64, i64* %131, align 8
  %133 = call i32 %123(i32 %128, i32 %130, i64 %132)
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %32, %29, %20
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local %struct.kfd_process_device* @kfd_get_process_device_data(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @dbgdev_wave_control_set_registers(%struct.dbg_wave_control_info*, %union.SQ_CMD_BITS*, %union.GRBM_GFX_INDEX_BITS*) #1

declare dso_local i32 @pr_debug(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
