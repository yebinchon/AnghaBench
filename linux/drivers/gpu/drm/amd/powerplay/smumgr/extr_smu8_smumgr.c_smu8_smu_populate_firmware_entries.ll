; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu8_smumgr.c_smu8_smu_populate_firmware_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu8_smumgr.c_smu8_smu_populate_firmware_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, %struct.smu8_smumgr* }
%struct.smu8_smumgr = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.cgs_firmware_info = type { i32, i32, i32 }

@firmware_list = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu8_smu_populate_firmware_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu8_smu_populate_firmware_entries(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.smu8_smumgr*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cgs_firmware_info, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %10 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %9, i32 0, i32 1
  %11 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %10, align 8
  store %struct.smu8_smumgr* %11, %struct.smu8_smumgr** %3, align 8
  %12 = bitcast %struct.cgs_firmware_info* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 12, i1 false)
  %13 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %3, align 8
  %14 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  store i64 0, i64* %5, align 8
  br label %15

15:                                               ; preds = %68, %1
  %16 = load i64, i64* %5, align 8
  %17 = load i32*, i32** @firmware_list, align 8
  %18 = call i64 @ARRAY_SIZE(i32* %17)
  %19 = icmp ult i64 %16, %18
  br i1 %19, label %20, label %71

20:                                               ; preds = %15
  %21 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %22 = load i32*, i32** @firmware_list, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @smu8_translate_firmware_enum_to_arg(%struct.pp_hwmgr* %21, i32 %25)
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @smu8_convert_fw_type_to_cgs(i64 %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %30 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @cgs_get_firmware_info(i32 %31, i32 %32, %struct.cgs_firmware_info* %8)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %67

36:                                               ; preds = %20
  %37 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %8, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %3, align 8
  %40 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i32 %38, i32* %44, align 4
  %45 = getelementptr inbounds %struct.cgs_firmware_info, %struct.cgs_firmware_info* %8, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %3, align 8
  %48 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32 %46, i32* %52, align 4
  %53 = load i32*, i32** @firmware_list, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %3, align 8
  %58 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i64, i64* %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %56, i32* %62, align 4
  %63 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %3, align 8
  %64 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %64, align 8
  br label %67

67:                                               ; preds = %36, %20
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %5, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %5, align 8
  br label %15

71:                                               ; preds = %15
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #2

declare dso_local i64 @smu8_translate_firmware_enum_to_arg(%struct.pp_hwmgr*, i32) #2

declare dso_local i32 @smu8_convert_fw_type_to_cgs(i64) #2

declare dso_local i32 @cgs_get_firmware_info(i32, i32, %struct.cgs_firmware_info*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
