; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_ppatomctrl.c_atomctrl_get_leakage_vddc_base_on_leakage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_ppatomctrl.c_atomctrl_get_leakage_vddc_base_on_leakage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@DATA = common dso_local global i32 0, align 4
@ASIC_ProfilingInfo = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atomctrl_get_leakage_vddc_base_on_leakage(%struct.pp_hwmgr* %0, i64* %1, i64* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pp_hwmgr*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca %struct.TYPE_4__*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %21 = load i64*, i64** %8, align 8
  store i64 0, i64* %21, align 8
  %22 = load i64*, i64** %9, align 8
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* @DATA, align 4
  %24 = load i32, i32* @ASIC_ProfilingInfo, align 4
  %25 = call i32 @GetIndexIntoMasterTable(i32 %23, i32 %24)
  store i32 %25, i32* %14, align 4
  %26 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %27 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %14, align 4
  %30 = call i64 @smu_atom_get_data_table(i32 %28, i32 %29, i32* null, i32* null, i32* null)
  %31 = inttoptr i64 %30 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %20, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %33 = icmp ne %struct.TYPE_4__* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %5
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %214

37:                                               ; preds = %5
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp sge i32 %41, 2
  br i1 %42, label %43, label %213

43:                                               ; preds = %37
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp sge i32 %47, 1
  br i1 %48, label %49, label %213

49:                                               ; preds = %43
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp uge i64 %54, 44
  br i1 %55, label %56, label %213

56:                                               ; preds = %49
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %58 = bitcast %struct.TYPE_4__* %57 to i8*
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %58, i64 %62
  %64 = bitcast i8* %63 to i64*
  store i64* %64, i64** %15, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %66 = bitcast %struct.TYPE_4__* %65 to i8*
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %66, i64 %70
  %72 = bitcast i8* %71 to i64*
  store i64* %72, i64** %16, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %74 = bitcast %struct.TYPE_4__* %73 to i8*
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %74, i64 %78
  %80 = bitcast i8* %79 to i64*
  store i64* %80, i64** %17, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %138

85:                                               ; preds = %56
  store i32 0, i32* %12, align 4
  br label %86

86:                                               ; preds = %134, %85
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %137

92:                                               ; preds = %86
  %93 = load i64*, i64** %16, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %10, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %133

100:                                              ; preds = %92
  store i32 0, i32* %13, align 4
  br label %101

101:                                              ; preds = %129, %100
  %102 = load i32, i32* %13, align 4
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %132

107:                                              ; preds = %101
  %108 = load i64, i64* %11, align 8
  %109 = load i64*, i64** %15, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = icmp sle i64 %108, %113
  br i1 %114, label %115, label %128

115:                                              ; preds = %107
  %116 = load i64*, i64** %17, align 8
  %117 = load i32, i32* %13, align 4
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = mul nsw i32 %117, %120
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %121, %122
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %116, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = load i64*, i64** %8, align 8
  store i64 %126, i64* %127, align 8
  br label %132

128:                                              ; preds = %107
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %13, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %13, align 4
  br label %101

132:                                              ; preds = %115, %101
  br label %137

133:                                              ; preds = %92
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %12, align 4
  br label %86

137:                                              ; preds = %132, %86
  br label %138

138:                                              ; preds = %137, %56
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %140 = bitcast %struct.TYPE_4__* %139 to i8*
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %140, i64 %144
  %146 = bitcast i8* %145 to i64*
  store i64* %146, i64** %18, align 8
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %148 = bitcast %struct.TYPE_4__* %147 to i8*
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %148, i64 %152
  %154 = bitcast i8* %153 to i64*
  store i64* %154, i64** %19, align 8
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 4
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %212

159:                                              ; preds = %138
  store i32 0, i32* %12, align 4
  br label %160

160:                                              ; preds = %208, %159
  %161 = load i32, i32* %12, align 4
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 7
  %164 = load i32, i32* %163, align 4
  %165 = icmp slt i32 %161, %164
  br i1 %165, label %166, label %211

166:                                              ; preds = %160
  %167 = load i64*, i64** %18, align 8
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %167, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* %10, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %207

174:                                              ; preds = %166
  store i32 0, i32* %13, align 4
  br label %175

175:                                              ; preds = %203, %174
  %176 = load i32, i32* %13, align 4
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 4
  %180 = icmp slt i32 %176, %179
  br i1 %180, label %181, label %206

181:                                              ; preds = %175
  %182 = load i64, i64* %11, align 8
  %183 = load i64*, i64** %15, align 8
  %184 = load i32, i32* %13, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i64, i64* %183, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = icmp sle i64 %182, %187
  br i1 %188, label %189, label %202

189:                                              ; preds = %181
  %190 = load i64*, i64** %19, align 8
  %191 = load i32, i32* %13, align 4
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 7
  %194 = load i32, i32* %193, align 4
  %195 = mul nsw i32 %191, %194
  %196 = load i32, i32* %12, align 4
  %197 = add nsw i32 %195, %196
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i64, i64* %190, i64 %198
  %200 = load i64, i64* %199, align 8
  %201 = load i64*, i64** %9, align 8
  store i64 %200, i64* %201, align 8
  br label %206

202:                                              ; preds = %181
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %13, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %13, align 4
  br label %175

206:                                              ; preds = %189, %175
  br label %211

207:                                              ; preds = %166
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %12, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %12, align 4
  br label %160

211:                                              ; preds = %206, %160
  br label %212

212:                                              ; preds = %211, %138
  br label %213

213:                                              ; preds = %212, %49, %43, %37
  store i32 0, i32* %6, align 4
  br label %214

214:                                              ; preds = %213, %34
  %215 = load i32, i32* %6, align 4
  ret i32 %215
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i64 @smu_atom_get_data_table(i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
