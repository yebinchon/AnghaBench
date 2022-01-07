; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_tonga_smumgr.c_tonga_populate_cac_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_tonga_smumgr.c_tonga_populate_cac_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i64 }
%struct.TYPE_9__ = type { i8**, i8**, i8**, i8**, i8**, i8**, i32, i32 }
%struct.smu7_hwmgr = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }
%struct.phm_ppt_v1_information = type { %struct.phm_ppt_v1_voltage_lookup_table*, %struct.phm_ppt_v1_voltage_lookup_table* }
%struct.phm_ppt_v1_voltage_lookup_table = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32 }

@SMU7_VOLTAGE_CONTROL_BY_SVID2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.TYPE_9__*)* @tonga_populate_cac_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tonga_populate_cac_tables(%struct.pp_hwmgr* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.smu7_hwmgr*, align 8
  %8 = alloca %struct.phm_ppt_v1_information*, align 8
  %9 = alloca %struct.phm_ppt_v1_voltage_lookup_table*, align 8
  %10 = alloca %struct.phm_ppt_v1_voltage_lookup_table*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  store i64 0, i64* %6, align 8
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %16, %struct.smu7_hwmgr** %7, align 8
  %17 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %18 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.phm_ppt_v1_information*
  store %struct.phm_ppt_v1_information* %20, %struct.phm_ppt_v1_information** %8, align 8
  %21 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %8, align 8
  %22 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %21, i32 0, i32 1
  %23 = load %struct.phm_ppt_v1_voltage_lookup_table*, %struct.phm_ppt_v1_voltage_lookup_table** %22, align 8
  store %struct.phm_ppt_v1_voltage_lookup_table* %23, %struct.phm_ppt_v1_voltage_lookup_table** %9, align 8
  %24 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %8, align 8
  %25 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %24, i32 0, i32 0
  %26 = load %struct.phm_ppt_v1_voltage_lookup_table*, %struct.phm_ppt_v1_voltage_lookup_table** %25, align 8
  store %struct.phm_ppt_v1_voltage_lookup_table* %26, %struct.phm_ppt_v1_voltage_lookup_table** %10, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @PP_SMC_TO_HOST_UL(i32 %29)
  store i64 %30, i64* %11, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @PP_SMC_TO_HOST_UL(i32 %33)
  store i64 %34, i64* %12, align 8
  store i64 0, i64* %5, align 8
  br label %35

35:                                               ; preds = %89, %2
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %11, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %92

39:                                               ; preds = %35
  %40 = load %struct.phm_ppt_v1_voltage_lookup_table*, %struct.phm_ppt_v1_voltage_lookup_table** %10, align 8
  %41 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %7, align 8
  %42 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load i64, i64* %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @phm_get_voltage_index(%struct.phm_ppt_v1_voltage_lookup_table* %40, i8* %48)
  store i64 %49, i64* %6, align 8
  %50 = load %struct.phm_ppt_v1_voltage_lookup_table*, %struct.phm_ppt_v1_voltage_lookup_table** %10, align 8
  %51 = getelementptr inbounds %struct.phm_ppt_v1_voltage_lookup_table, %struct.phm_ppt_v1_voltage_lookup_table* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @convert_to_vid(i32 %56)
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 5
  %60 = load i8**, i8*** %59, align 8
  %61 = load i64, i64* %5, align 8
  %62 = getelementptr inbounds i8*, i8** %60, i64 %61
  store i8* %57, i8** %62, align 8
  %63 = load %struct.phm_ppt_v1_voltage_lookup_table*, %struct.phm_ppt_v1_voltage_lookup_table** %10, align 8
  %64 = getelementptr inbounds %struct.phm_ppt_v1_voltage_lookup_table, %struct.phm_ppt_v1_voltage_lookup_table* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = load i64, i64* %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @convert_to_vid(i32 %69)
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 4
  %73 = load i8**, i8*** %72, align 8
  %74 = load i64, i64* %5, align 8
  %75 = getelementptr inbounds i8*, i8** %73, i64 %74
  store i8* %70, i8** %75, align 8
  %76 = load %struct.phm_ppt_v1_voltage_lookup_table*, %struct.phm_ppt_v1_voltage_lookup_table** %10, align 8
  %77 = getelementptr inbounds %struct.phm_ppt_v1_voltage_lookup_table, %struct.phm_ppt_v1_voltage_lookup_table* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = load i64, i64* %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @convert_to_vid(i32 %82)
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 3
  %86 = load i8**, i8*** %85, align 8
  %87 = load i64, i64* %5, align 8
  %88 = getelementptr inbounds i8*, i8** %86, i64 %87
  store i8* %83, i8** %88, align 8
  br label %89

89:                                               ; preds = %39
  %90 = load i64, i64* %5, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %5, align 8
  br label %35

92:                                               ; preds = %35
  %93 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %7, align 8
  %94 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @SMU7_VOLTAGE_CONTROL_BY_SVID2, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %131

98:                                               ; preds = %92
  store i64 0, i64* %5, align 8
  br label %99

99:                                               ; preds = %127, %98
  %100 = load i64, i64* %5, align 8
  %101 = load i64, i64* %12, align 8
  %102 = icmp ult i64 %100, %101
  br i1 %102, label %103, label %130

103:                                              ; preds = %99
  %104 = load %struct.phm_ppt_v1_voltage_lookup_table*, %struct.phm_ppt_v1_voltage_lookup_table** %9, align 8
  %105 = load %struct.phm_ppt_v1_voltage_lookup_table*, %struct.phm_ppt_v1_voltage_lookup_table** %9, align 8
  %106 = getelementptr inbounds %struct.phm_ppt_v1_voltage_lookup_table, %struct.phm_ppt_v1_voltage_lookup_table* %105, i32 0, i32 0
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = load i64, i64* %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @convert_to_vid(i32 %111)
  %113 = call i64 @phm_get_voltage_index(%struct.phm_ppt_v1_voltage_lookup_table* %104, i8* %112)
  store i64 %113, i64* %6, align 8
  %114 = load %struct.phm_ppt_v1_voltage_lookup_table*, %struct.phm_ppt_v1_voltage_lookup_table** %9, align 8
  %115 = getelementptr inbounds %struct.phm_ppt_v1_voltage_lookup_table, %struct.phm_ppt_v1_voltage_lookup_table* %114, i32 0, i32 0
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = load i64, i64* %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i8* @convert_to_vid(i32 %120)
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i8**, i8*** %123, align 8
  %125 = load i64, i64* %5, align 8
  %126 = getelementptr inbounds i8*, i8** %124, i64 %125
  store i8* %121, i8** %126, align 8
  br label %127

127:                                              ; preds = %103
  %128 = load i64, i64* %5, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %5, align 8
  br label %99

130:                                              ; preds = %99
  br label %190

131:                                              ; preds = %92
  store i64 0, i64* %5, align 8
  br label %132

132:                                              ; preds = %186, %131
  %133 = load i64, i64* %5, align 8
  %134 = load i64, i64* %11, align 8
  %135 = icmp ult i64 %133, %134
  br i1 %135, label %136, label %189

136:                                              ; preds = %132
  %137 = load %struct.phm_ppt_v1_voltage_lookup_table*, %struct.phm_ppt_v1_voltage_lookup_table** %10, align 8
  %138 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %7, align 8
  %139 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = load i64, i64* %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = call i64 @phm_get_voltage_index(%struct.phm_ppt_v1_voltage_lookup_table* %137, i8* %145)
  store i64 %146, i64* %6, align 8
  %147 = load %struct.phm_ppt_v1_voltage_lookup_table*, %struct.phm_ppt_v1_voltage_lookup_table** %10, align 8
  %148 = getelementptr inbounds %struct.phm_ppt_v1_voltage_lookup_table, %struct.phm_ppt_v1_voltage_lookup_table* %147, i32 0, i32 0
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = load i64, i64* %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = call i8* @convert_to_vid(i32 %153)
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 2
  %157 = load i8**, i8*** %156, align 8
  %158 = load i64, i64* %5, align 8
  %159 = getelementptr inbounds i8*, i8** %157, i64 %158
  store i8* %154, i8** %159, align 8
  %160 = load %struct.phm_ppt_v1_voltage_lookup_table*, %struct.phm_ppt_v1_voltage_lookup_table** %10, align 8
  %161 = getelementptr inbounds %struct.phm_ppt_v1_voltage_lookup_table, %struct.phm_ppt_v1_voltage_lookup_table* %160, i32 0, i32 0
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %161, align 8
  %163 = load i64, i64* %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i8* @convert_to_vid(i32 %166)
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 1
  %170 = load i8**, i8*** %169, align 8
  %171 = load i64, i64* %5, align 8
  %172 = getelementptr inbounds i8*, i8** %170, i64 %171
  store i8* %167, i8** %172, align 8
  %173 = load %struct.phm_ppt_v1_voltage_lookup_table*, %struct.phm_ppt_v1_voltage_lookup_table** %10, align 8
  %174 = getelementptr inbounds %struct.phm_ppt_v1_voltage_lookup_table, %struct.phm_ppt_v1_voltage_lookup_table* %173, i32 0, i32 0
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %174, align 8
  %176 = load i64, i64* %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i8* @convert_to_vid(i32 %179)
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = load i8**, i8*** %182, align 8
  %184 = load i64, i64* %5, align 8
  %185 = getelementptr inbounds i8*, i8** %183, i64 %184
  store i8* %180, i8** %185, align 8
  br label %186

186:                                              ; preds = %136
  %187 = load i64, i64* %5, align 8
  %188 = add i64 %187, 1
  store i64 %188, i64* %5, align 8
  br label %132

189:                                              ; preds = %132
  br label %190

190:                                              ; preds = %189, %130
  ret i32 0
}

declare dso_local i64 @PP_SMC_TO_HOST_UL(i32) #1

declare dso_local i64 @phm_get_voltage_index(%struct.phm_ppt_v1_voltage_lookup_table*, i8*) #1

declare dso_local i8* @convert_to_vid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
