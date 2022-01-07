; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu8_smumgr.c_smu8_smu_populate_single_ucode_load_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu8_smumgr.c_smu8_smu_populate_single_ucode_load_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.smu8_smumgr* }
%struct.smu8_smumgr = type { i64, %struct.TYPE_6__*, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TOC = type { %struct.SMU_Task* }
%struct.SMU_Task = type { i32, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@TASK_TYPE_UCODE_LOAD = common dso_local global i32 0, align 4
@END_OF_TASK_LIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid Firmware Type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32, i32)* @smu8_smu_populate_single_ucode_load_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu8_smu_populate_single_ucode_load_task(%struct.pp_hwmgr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pp_hwmgr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.smu8_smumgr*, align 8
  %10 = alloca %struct.TOC*, align 8
  %11 = alloca %struct.SMU_Task*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %13 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %12, i32 0, i32 0
  %14 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %13, align 8
  store %struct.smu8_smumgr* %14, %struct.smu8_smumgr** %9, align 8
  %15 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %9, align 8
  %16 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TOC*
  store %struct.TOC* %19, %struct.TOC** %10, align 8
  %20 = load %struct.TOC*, %struct.TOC** %10, align 8
  %21 = getelementptr inbounds %struct.TOC, %struct.TOC* %20, i32 0, i32 0
  %22 = load %struct.SMU_Task*, %struct.SMU_Task** %21, align 8
  %23 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %9, align 8
  %24 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds %struct.SMU_Task, %struct.SMU_Task* %22, i64 %27
  store %struct.SMU_Task* %28, %struct.SMU_Task** %11, align 8
  %29 = load i32, i32* @TASK_TYPE_UCODE_LOAD, align 4
  %30 = load %struct.SMU_Task*, %struct.SMU_Task** %11, align 8
  %31 = getelementptr inbounds %struct.SMU_Task, %struct.SMU_Task* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @smu8_translate_firmware_enum_to_arg(%struct.pp_hwmgr* %32, i32 %33)
  %35 = load %struct.SMU_Task*, %struct.SMU_Task** %11, align 8
  %36 = getelementptr inbounds %struct.SMU_Task, %struct.SMU_Task* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %3
  %40 = load i32, i32* @END_OF_TASK_LIST, align 4
  br label %45

41:                                               ; preds = %3
  %42 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %9, align 8
  %43 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  br label %45

45:                                               ; preds = %41, %39
  %46 = phi i32 [ %40, %39 ], [ %44, %41 ]
  %47 = load %struct.SMU_Task*, %struct.SMU_Task** %11, align 8
  %48 = getelementptr inbounds %struct.SMU_Task, %struct.SMU_Task* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  store i64 0, i64* %8, align 8
  br label %49

49:                                               ; preds = %67, %45
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %9, align 8
  %52 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ult i64 %50, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %49
  %56 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %9, align 8
  %57 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  br label %70

66:                                               ; preds = %55
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %8, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %8, align 8
  br label %49

70:                                               ; preds = %65, %49
  %71 = load i64, i64* %8, align 8
  %72 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %9, align 8
  %73 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp uge i64 %71, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %112

80:                                               ; preds = %70
  %81 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %9, align 8
  %82 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %81, i32 0, i32 1
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = load i64, i64* %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @lower_32_bits(i32 %87)
  %89 = load %struct.SMU_Task*, %struct.SMU_Task** %11, align 8
  %90 = getelementptr inbounds %struct.SMU_Task, %struct.SMU_Task* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 4
  %92 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %9, align 8
  %93 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %92, i32 0, i32 1
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = load i64, i64* %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @upper_32_bits(i32 %98)
  %100 = load %struct.SMU_Task*, %struct.SMU_Task** %11, align 8
  %101 = getelementptr inbounds %struct.SMU_Task, %struct.SMU_Task* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 4
  %103 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %9, align 8
  %104 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %103, i32 0, i32 1
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = load i64, i64* %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.SMU_Task*, %struct.SMU_Task** %11, align 8
  %111 = getelementptr inbounds %struct.SMU_Task, %struct.SMU_Task* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %80, %76
  %113 = load i32, i32* %4, align 4
  ret i32 %113
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
