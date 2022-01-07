; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser.c_construct_integrated_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser.c_construct_integrated_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_parser = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.integrated_info = type { %struct.clock_voltage_caps* }
%struct.clock_voltage_caps = type { i64, i32, i32 }
%struct.atom_data_revision = type { i32 }

@BP_RESULT_BADBIOSTABLE = common dso_local global i32 0, align 4
@ATOM_COMMON_TABLE_HEADER = common dso_local global i32 0, align 4
@header = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i32 0, align 4
@NUMBER_OF_DISP_CLK_VOLTAGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bios_parser*, %struct.integrated_info*)* @construct_integrated_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @construct_integrated_info(%struct.bios_parser* %0, %struct.integrated_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bios_parser*, align 8
  %5 = alloca %struct.integrated_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.atom_data_revision, align 4
  %8 = alloca %struct.clock_voltage_caps, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.bios_parser* %0, %struct.bios_parser** %4, align 8
  store %struct.integrated_info* %1, %struct.integrated_info** %5, align 8
  %11 = load i32, i32* @BP_RESULT_BADBIOSTABLE, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @ATOM_COMMON_TABLE_HEADER, align 4
  %13 = load i32, i32* @header, align 4
  %14 = mul nsw i32 %12, %13
  %15 = load %struct.bios_parser*, %struct.bios_parser** %4, align 8
  %16 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %2
  %23 = load i32, i32* @ATOM_COMMON_TABLE_HEADER, align 4
  %24 = load %struct.bios_parser*, %struct.bios_parser** %4, align 8
  %25 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @GET_IMAGE(i32 %23, i64 %29)
  store i32 %30, i32* @header, align 4
  %31 = load i32, i32* @header, align 4
  %32 = call i32 @get_atom_data_table_revision(i32 %31, %struct.atom_data_revision* %7)
  %33 = getelementptr inbounds %struct.atom_data_revision, %struct.atom_data_revision* %7, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %43 [
    i32 8, label %35
    i32 9, label %39
  ]

35:                                               ; preds = %22
  %36 = load %struct.bios_parser*, %struct.bios_parser** %4, align 8
  %37 = load %struct.integrated_info*, %struct.integrated_info** %5, align 8
  %38 = call i32 @get_integrated_info_v8(%struct.bios_parser* %36, %struct.integrated_info* %37)
  store i32 %38, i32* %6, align 4
  br label %45

39:                                               ; preds = %22
  %40 = load %struct.bios_parser*, %struct.bios_parser** %4, align 8
  %41 = load %struct.integrated_info*, %struct.integrated_info** %5, align 8
  %42 = call i32 @get_integrated_info_v9(%struct.bios_parser* %40, %struct.integrated_info* %41)
  store i32 %42, i32* %6, align 4
  br label %45

43:                                               ; preds = %22
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %118

45:                                               ; preds = %39, %35
  br label %46

46:                                               ; preds = %45, %2
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @BP_RESULT_OK, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %116

50:                                               ; preds = %46
  %51 = bitcast %struct.clock_voltage_caps* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %51, i8 0, i64 16, i1 false)
  store i64 1, i64* %9, align 8
  br label %52

52:                                               ; preds = %112, %50
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* @NUMBER_OF_DISP_CLK_VOLTAGE, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %115

56:                                               ; preds = %52
  %57 = load i64, i64* %9, align 8
  store i64 %57, i64* %10, align 8
  br label %58

58:                                               ; preds = %108, %56
  %59 = load i64, i64* %10, align 8
  %60 = icmp ugt i64 %59, 0
  br i1 %60, label %61, label %111

61:                                               ; preds = %58
  %62 = load %struct.integrated_info*, %struct.integrated_info** %5, align 8
  %63 = getelementptr inbounds %struct.integrated_info, %struct.integrated_info* %62, i32 0, i32 0
  %64 = load %struct.clock_voltage_caps*, %struct.clock_voltage_caps** %63, align 8
  %65 = load i64, i64* %10, align 8
  %66 = getelementptr inbounds %struct.clock_voltage_caps, %struct.clock_voltage_caps* %64, i64 %65
  %67 = getelementptr inbounds %struct.clock_voltage_caps, %struct.clock_voltage_caps* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.integrated_info*, %struct.integrated_info** %5, align 8
  %70 = getelementptr inbounds %struct.integrated_info, %struct.integrated_info* %69, i32 0, i32 0
  %71 = load %struct.clock_voltage_caps*, %struct.clock_voltage_caps** %70, align 8
  %72 = load i64, i64* %10, align 8
  %73 = sub i64 %72, 1
  %74 = getelementptr inbounds %struct.clock_voltage_caps, %struct.clock_voltage_caps* %71, i64 %73
  %75 = getelementptr inbounds %struct.clock_voltage_caps, %struct.clock_voltage_caps* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp slt i64 %68, %76
  br i1 %77, label %78, label %107

78:                                               ; preds = %61
  %79 = load %struct.integrated_info*, %struct.integrated_info** %5, align 8
  %80 = getelementptr inbounds %struct.integrated_info, %struct.integrated_info* %79, i32 0, i32 0
  %81 = load %struct.clock_voltage_caps*, %struct.clock_voltage_caps** %80, align 8
  %82 = load i64, i64* %10, align 8
  %83 = sub i64 %82, 1
  %84 = getelementptr inbounds %struct.clock_voltage_caps, %struct.clock_voltage_caps* %81, i64 %83
  %85 = bitcast %struct.clock_voltage_caps* %8 to i8*
  %86 = bitcast %struct.clock_voltage_caps* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %85, i8* align 8 %86, i64 16, i1 false)
  %87 = load %struct.integrated_info*, %struct.integrated_info** %5, align 8
  %88 = getelementptr inbounds %struct.integrated_info, %struct.integrated_info* %87, i32 0, i32 0
  %89 = load %struct.clock_voltage_caps*, %struct.clock_voltage_caps** %88, align 8
  %90 = load i64, i64* %10, align 8
  %91 = sub i64 %90, 1
  %92 = getelementptr inbounds %struct.clock_voltage_caps, %struct.clock_voltage_caps* %89, i64 %91
  %93 = load %struct.integrated_info*, %struct.integrated_info** %5, align 8
  %94 = getelementptr inbounds %struct.integrated_info, %struct.integrated_info* %93, i32 0, i32 0
  %95 = load %struct.clock_voltage_caps*, %struct.clock_voltage_caps** %94, align 8
  %96 = load i64, i64* %10, align 8
  %97 = getelementptr inbounds %struct.clock_voltage_caps, %struct.clock_voltage_caps* %95, i64 %96
  %98 = bitcast %struct.clock_voltage_caps* %92 to i8*
  %99 = bitcast %struct.clock_voltage_caps* %97 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %98, i8* align 8 %99, i64 16, i1 false)
  %100 = load %struct.integrated_info*, %struct.integrated_info** %5, align 8
  %101 = getelementptr inbounds %struct.integrated_info, %struct.integrated_info* %100, i32 0, i32 0
  %102 = load %struct.clock_voltage_caps*, %struct.clock_voltage_caps** %101, align 8
  %103 = load i64, i64* %10, align 8
  %104 = getelementptr inbounds %struct.clock_voltage_caps, %struct.clock_voltage_caps* %102, i64 %103
  %105 = bitcast %struct.clock_voltage_caps* %104 to i8*
  %106 = bitcast %struct.clock_voltage_caps* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %105, i8* align 8 %106, i64 16, i1 false)
  br label %107

107:                                              ; preds = %78, %61
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %10, align 8
  %110 = add i64 %109, -1
  store i64 %110, i64* %10, align 8
  br label %58

111:                                              ; preds = %58
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %9, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %9, align 8
  br label %52

115:                                              ; preds = %52
  br label %116

116:                                              ; preds = %115, %46
  %117 = load i32, i32* %6, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %116, %43
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @GET_IMAGE(i32, i64) #1

declare dso_local i32 @get_atom_data_table_revision(i32, %struct.atom_data_revision*) #1

declare dso_local i32 @get_integrated_info_v8(%struct.bios_parser*, %struct.integrated_info*) #1

declare dso_local i32 @get_integrated_info_v9(%struct.bios_parser*, %struct.integrated_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
