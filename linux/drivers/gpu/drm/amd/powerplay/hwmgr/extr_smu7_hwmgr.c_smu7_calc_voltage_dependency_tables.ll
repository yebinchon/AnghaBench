; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_calc_voltage_dependency_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_calc_voltage_dependency_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i64 }
%struct.phm_ppt_v1_voltage_lookup_record = type { i64, i64, i64, i64 }
%struct.smu7_hwmgr = type { i64 }
%struct.phm_ppt_v1_information = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64, i64 }

@SMU7_VOLTAGE_CONTROL_BY_SVID2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu7_calc_voltage_dependency_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_calc_voltage_dependency_tables(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.phm_ppt_v1_voltage_lookup_record, align 8
  %5 = alloca %struct.smu7_hwmgr*, align 8
  %6 = alloca %struct.phm_ppt_v1_information*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %10 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %12, %struct.smu7_hwmgr** %5, align 8
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.phm_ppt_v1_information*
  store %struct.phm_ppt_v1_information* %16, %struct.phm_ppt_v1_information** %6, align 8
  %17 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %18 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %17, i32 0, i32 3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %7, align 8
  %20 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %21 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %8, align 8
  %23 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %5, align 8
  %24 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SMU7_VOLTAGE_CONTROL_BY_SVID2, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %177

28:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %29

29:                                               ; preds = %99, %28
  %30 = load i64, i64* %3, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %102

35:                                               ; preds = %29
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i64, i64* %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, 32768
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %35
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i64, i64* %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i64, i64* %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %52, %60
  %62 = sub nsw i64 %61, 65535
  %63 = getelementptr inbounds %struct.phm_ppt_v1_voltage_lookup_record, %struct.phm_ppt_v1_voltage_lookup_record* %4, i32 0, i32 0
  store i64 %62, i64* %63, align 8
  br label %82

64:                                               ; preds = %35
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load i64, i64* %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load i64, i64* %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %71, %79
  %81 = getelementptr inbounds %struct.phm_ppt_v1_voltage_lookup_record, %struct.phm_ppt_v1_voltage_lookup_record* %4, i32 0, i32 0
  store i64 %80, i64* %81, align 8
  br label %82

82:                                               ; preds = %64, %45
  %83 = getelementptr inbounds %struct.phm_ppt_v1_voltage_lookup_record, %struct.phm_ppt_v1_voltage_lookup_record* %4, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.phm_ppt_v1_voltage_lookup_record, %struct.phm_ppt_v1_voltage_lookup_record* %4, i32 0, i32 1
  store i64 %84, i64* %85, align 8
  %86 = getelementptr inbounds %struct.phm_ppt_v1_voltage_lookup_record, %struct.phm_ppt_v1_voltage_lookup_record* %4, i32 0, i32 2
  store i64 %84, i64* %86, align 8
  %87 = getelementptr inbounds %struct.phm_ppt_v1_voltage_lookup_record, %struct.phm_ppt_v1_voltage_lookup_record* %4, i32 0, i32 3
  store i64 %84, i64* %87, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = load i64, i64* %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  store i64 %84, i64* %93, align 8
  %94 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %95 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %96 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @phm_add_voltage(%struct.pp_hwmgr* %94, i32 %97, %struct.phm_ppt_v1_voltage_lookup_record* %4)
  br label %99

99:                                               ; preds = %82
  %100 = load i64, i64* %3, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %3, align 8
  br label %29

102:                                              ; preds = %29
  store i64 0, i64* %3, align 8
  br label %103

103:                                              ; preds = %173, %102
  %104 = load i64, i64* %3, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ult i64 %104, %107
  br i1 %108, label %109, label %176

109:                                              ; preds = %103
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = load i64, i64* %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = and i32 %116, 32768
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %138

119:                                              ; preds = %109
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = load i64, i64* %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %128, align 8
  %130 = load i64, i64* %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %126, %134
  %136 = sub nsw i64 %135, 65535
  %137 = getelementptr inbounds %struct.phm_ppt_v1_voltage_lookup_record, %struct.phm_ppt_v1_voltage_lookup_record* %4, i32 0, i32 0
  store i64 %136, i64* %137, align 8
  br label %156

138:                                              ; preds = %109
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = load i64, i64* %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %147, align 8
  %149 = load i64, i64* %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = add nsw i64 %145, %153
  %155 = getelementptr inbounds %struct.phm_ppt_v1_voltage_lookup_record, %struct.phm_ppt_v1_voltage_lookup_record* %4, i32 0, i32 0
  store i64 %154, i64* %155, align 8
  br label %156

156:                                              ; preds = %138, %119
  %157 = getelementptr inbounds %struct.phm_ppt_v1_voltage_lookup_record, %struct.phm_ppt_v1_voltage_lookup_record* %4, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds %struct.phm_ppt_v1_voltage_lookup_record, %struct.phm_ppt_v1_voltage_lookup_record* %4, i32 0, i32 1
  store i64 %158, i64* %159, align 8
  %160 = getelementptr inbounds %struct.phm_ppt_v1_voltage_lookup_record, %struct.phm_ppt_v1_voltage_lookup_record* %4, i32 0, i32 2
  store i64 %158, i64* %160, align 8
  %161 = getelementptr inbounds %struct.phm_ppt_v1_voltage_lookup_record, %struct.phm_ppt_v1_voltage_lookup_record* %4, i32 0, i32 3
  store i64 %158, i64* %161, align 8
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %163, align 8
  %165 = load i64, i64* %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 1
  store i64 %158, i64* %167, align 8
  %168 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %169 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %170 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @phm_add_voltage(%struct.pp_hwmgr* %168, i32 %171, %struct.phm_ppt_v1_voltage_lookup_record* %4)
  br label %173

173:                                              ; preds = %156
  %174 = load i64, i64* %3, align 8
  %175 = add i64 %174, 1
  store i64 %175, i64* %3, align 8
  br label %103

176:                                              ; preds = %103
  br label %177

177:                                              ; preds = %176, %1
  ret i32 0
}

declare dso_local i32 @phm_add_voltage(%struct.pp_hwmgr*, i32, %struct.phm_ppt_v1_voltage_lookup_record*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
