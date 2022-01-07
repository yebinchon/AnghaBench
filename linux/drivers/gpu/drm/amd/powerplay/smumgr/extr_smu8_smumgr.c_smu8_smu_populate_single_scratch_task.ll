; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu8_smumgr.c_smu8_smu_populate_single_scratch_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu8_smumgr.c_smu8_smu_populate_single_scratch_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.smu8_smumgr* }
%struct.smu8_smumgr = type { i64, %struct.TYPE_6__*, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i64, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TOC = type { %struct.SMU_Task* }
%struct.SMU_Task = type { i64, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.smu8_ih_meta_data = type { i32 }

@END_OF_TASK_LIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid Firmware Type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SMU8_SCRATCH_ENTRY_DATA_ID_IH_REGISTERS = common dso_local global i32 0, align 4
@METADATA_CMD_MODE0 = common dso_local global i32 0, align 4
@METADATA_PERFORM_ON_LOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32, i64, i32)* @smu8_smu_populate_single_scratch_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu8_smu_populate_single_scratch_task(%struct.pp_hwmgr* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pp_hwmgr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.smu8_smumgr*, align 8
  %12 = alloca %struct.TOC*, align 8
  %13 = alloca %struct.SMU_Task*, align 8
  %14 = alloca %struct.smu8_ih_meta_data*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %16 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %15, i32 0, i32 0
  %17 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %16, align 8
  store %struct.smu8_smumgr* %17, %struct.smu8_smumgr** %11, align 8
  %18 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %11, align 8
  %19 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TOC*
  store %struct.TOC* %22, %struct.TOC** %12, align 8
  %23 = load %struct.TOC*, %struct.TOC** %12, align 8
  %24 = getelementptr inbounds %struct.TOC, %struct.TOC* %23, i32 0, i32 0
  %25 = load %struct.SMU_Task*, %struct.SMU_Task** %24, align 8
  %26 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %11, align 8
  %27 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds %struct.SMU_Task, %struct.SMU_Task* %25, i64 %30
  store %struct.SMU_Task* %31, %struct.SMU_Task** %13, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.SMU_Task*, %struct.SMU_Task** %13, align 8
  %34 = getelementptr inbounds %struct.SMU_Task, %struct.SMU_Task* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @smu8_translate_firmware_enum_to_arg(%struct.pp_hwmgr* %35, i32 %36)
  %38 = load %struct.SMU_Task*, %struct.SMU_Task** %13, align 8
  %39 = getelementptr inbounds %struct.SMU_Task, %struct.SMU_Task* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %4
  %43 = load i32, i32* @END_OF_TASK_LIST, align 4
  br label %48

44:                                               ; preds = %4
  %45 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %11, align 8
  %46 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  br label %48

48:                                               ; preds = %44, %42
  %49 = phi i32 [ %43, %42 ], [ %47, %44 ]
  %50 = load %struct.SMU_Task*, %struct.SMU_Task** %13, align 8
  %51 = getelementptr inbounds %struct.SMU_Task, %struct.SMU_Task* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  store i64 0, i64* %10, align 8
  br label %52

52:                                               ; preds = %70, %48
  %53 = load i64, i64* %10, align 8
  %54 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %11, align 8
  %55 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ult i64 %53, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %52
  %59 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %11, align 8
  %60 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = load i64, i64* %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  br label %73

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %10, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %10, align 8
  br label %52

73:                                               ; preds = %68, %52
  %74 = load i64, i64* %10, align 8
  %75 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %11, align 8
  %76 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp uge i64 %74, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %133

83:                                               ; preds = %73
  %84 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %11, align 8
  %85 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %84, i32 0, i32 1
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load i64, i64* %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @lower_32_bits(i32 %90)
  %92 = load %struct.SMU_Task*, %struct.SMU_Task** %13, align 8
  %93 = getelementptr inbounds %struct.SMU_Task, %struct.SMU_Task* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  store i32 %91, i32* %94, align 4
  %95 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %11, align 8
  %96 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %95, i32 0, i32 1
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = load i64, i64* %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @upper_32_bits(i32 %101)
  %103 = load %struct.SMU_Task*, %struct.SMU_Task** %13, align 8
  %104 = getelementptr inbounds %struct.SMU_Task, %struct.SMU_Task* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  store i32 %102, i32* %105, align 4
  %106 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %11, align 8
  %107 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %106, i32 0, i32 1
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = load i64, i64* %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.SMU_Task*, %struct.SMU_Task** %13, align 8
  %114 = getelementptr inbounds %struct.SMU_Task, %struct.SMU_Task* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* @SMU8_SCRATCH_ENTRY_DATA_ID_IH_REGISTERS, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %132

118:                                              ; preds = %83
  %119 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %11, align 8
  %120 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %119, i32 0, i32 1
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = load i64, i64* %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = inttoptr i64 %125 to %struct.smu8_ih_meta_data*
  store %struct.smu8_ih_meta_data* %126, %struct.smu8_ih_meta_data** %14, align 8
  %127 = load i32, i32* @METADATA_CMD_MODE0, align 4
  %128 = load i32, i32* @METADATA_PERFORM_ON_LOAD, align 4
  %129 = or i32 %127, %128
  %130 = load %struct.smu8_ih_meta_data*, %struct.smu8_ih_meta_data** %14, align 8
  %131 = getelementptr inbounds %struct.smu8_ih_meta_data, %struct.smu8_ih_meta_data* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 4
  br label %132

132:                                              ; preds = %118, %83
  store i32 0, i32* %5, align 4
  br label %133

133:                                              ; preds = %132, %79
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i32 @smu8_translate_firmware_enum_to_arg(%struct.pp_hwmgr*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
