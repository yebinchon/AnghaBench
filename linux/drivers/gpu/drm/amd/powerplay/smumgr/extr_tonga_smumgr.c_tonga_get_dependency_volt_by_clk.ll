; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_tonga_smumgr.c_tonga_get_dependency_volt_by_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_tonga_smumgr.c_tonga_get_dependency_volt_by_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i64 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i32, i8*, i8*, i8* }
%struct.smu7_hwmgr = type { i32 }
%struct.phm_ppt_v1_information = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@VDDC_VDDCI_DELTA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.TYPE_7__*, i64, %struct.TYPE_8__*, i64*)* @tonga_get_dependency_volt_by_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tonga_get_dependency_volt_by_clk(%struct.pp_hwmgr* %0, %struct.TYPE_7__* %1, i64 %2, %struct.TYPE_8__* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pp_hwmgr*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.smu7_hwmgr*, align 8
  %14 = alloca %struct.phm_ppt_v1_information*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64 0, i64* %12, align 8
  %15 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %16 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %18, %struct.smu7_hwmgr** %13, align 8
  %19 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %20 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.phm_ppt_v1_information*
  store %struct.phm_ppt_v1_information* %22, %struct.phm_ppt_v1_information** %14, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %208

30:                                               ; preds = %5
  store i64 0, i64* %12, align 8
  br label %31

31:                                               ; preds = %132, %30
  %32 = load i64, i64* %12, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %32, %35
  br i1 %36, label %37, label %135

37:                                               ; preds = %31
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load i64, i64* %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %9, align 8
  %46 = icmp uge i64 %44, %45
  br i1 %46, label %47, label %131

47:                                               ; preds = %37
  %48 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %14, align 8
  %49 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i64, i64* %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = call i8* @phm_get_voltage_index(i32 %50, i64 %57)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  %61 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %14, align 8
  %62 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load i64, i64* %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = call i8* @phm_get_voltage_index(i32 %63, i64 %70)
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = load i64, i64* %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %47
  %83 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %13, align 8
  %84 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %83, i32 0, i32 0
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = load i64, i64* %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = call i8* @phm_get_voltage_id(i32* %84, i64 %91)
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  br label %110

95:                                               ; preds = %47
  %96 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %13, align 8
  %97 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %96, i32 0, i32 0
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = load i64, i64* %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @VDDC_VDDCI_DELTA, align 8
  %106 = sub nsw i64 %104, %105
  %107 = call i8* @phm_get_voltage_id(i32* %97, i64 %106)
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  br label %110

110:                                              ; preds = %95, %82
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = load i64, i64* %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %110
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = load i64, i64* %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64*, i64** %11, align 8
  store i64 %126, i64* %127, align 8
  br label %128

128:                                              ; preds = %119, %110
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  store i32 1, i32* %130, align 8
  store i32 0, i32* %6, align 4
  br label %208

131:                                              ; preds = %37
  br label %132

132:                                              ; preds = %131
  %133 = load i64, i64* %12, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %12, align 8
  br label %31

135:                                              ; preds = %31
  %136 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %14, align 8
  %137 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = load i64, i64* %12, align 8
  %143 = sub i64 %142, 1
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = call i8* @phm_get_voltage_index(i32 %138, i64 %146)
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 3
  store i8* %147, i8** %149, align 8
  %150 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %14, align 8
  %151 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = load i64, i64* %12, align 8
  %157 = sub i64 %156, 1
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = call i8* @phm_get_voltage_index(i32 %152, i64 %160)
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 2
  store i8* %161, i8** %163, align 8
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = load i64, i64* %12, align 8
  %168 = sub i64 %167, 1
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %187

173:                                              ; preds = %135
  %174 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %13, align 8
  %175 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %174, i32 0, i32 0
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %177, align 8
  %179 = load i64, i64* %12, align 8
  %180 = sub i64 %179, 1
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = call i8* @phm_get_voltage_id(i32* %175, i64 %183)
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 1
  store i8* %184, i8** %186, align 8
  br label %187

187:                                              ; preds = %173, %135
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %189, align 8
  %191 = load i64, i64* %12, align 8
  %192 = sub i64 %191, 1
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %207

197:                                              ; preds = %187
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %199, align 8
  %201 = load i64, i64* %12, align 8
  %202 = sub i64 %201, 1
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load i64*, i64** %11, align 8
  store i64 %205, i64* %206, align 8
  br label %207

207:                                              ; preds = %197, %187
  store i32 0, i32* %6, align 4
  br label %208

208:                                              ; preds = %207, %128, %27
  %209 = load i32, i32* %6, align 4
  ret i32 %209
}

declare dso_local i8* @phm_get_voltage_index(i32, i64) #1

declare dso_local i8* @phm_get_voltage_id(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
