; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_vegam_smumgr.c_vegam_calculate_sclk_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_vegam_smumgr.c_vegam_calculate_sclk_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i64 }
%struct.TYPE_8__ = type { i32, i64, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i64 }
%struct.vegam_smumgr = type { %struct.TYPE_6__*, %struct.TYPE_9__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.pp_atomctrl_clock_dividers_ai = type { i32, i64, i32, i32, i32, i8*, i32, i8*, i8* }
%struct.amdgpu_device = type { i32 }

@NUM_SCLK_RANGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i64, %struct.TYPE_8__*)* @vegam_calculate_sclk_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vegam_calculate_sclk_params(%struct.pp_hwmgr* %0, i64 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pp_hwmgr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.vegam_smumgr*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.pp_atomctrl_clock_dividers_ai, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %19 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %20 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.vegam_smumgr*
  store %struct.vegam_smumgr* %22, %struct.vegam_smumgr** %8, align 8
  %23 = load %struct.vegam_smumgr*, %struct.vegam_smumgr** %8, align 8
  %24 = getelementptr inbounds %struct.vegam_smumgr, %struct.vegam_smumgr* %23, i32 0, i32 1
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %9, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 11
  store i64 %25, i64* %27, align 8
  %28 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @atomctrl_get_engine_pll_dividers_ai(%struct.pp_hwmgr* %28, i64 %29, %struct.pp_atomctrl_clock_dividers_ai* %10)
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* %17, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %75

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_ai, %struct.pp_atomctrl_clock_dividers_ai* %10, i32 0, i32 8
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 8
  store i8* %35, i8** %37, align 8
  %38 = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_ai, %struct.pp_atomctrl_clock_dividers_ai* %10, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_ai, %struct.pp_atomctrl_clock_dividers_ai* %10, i32 0, i32 7
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 7
  store i8* %43, i8** %45, align 8
  %46 = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_ai, %struct.pp_atomctrl_clock_dividers_ai* %10, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  store i32 1024, i32* %51, align 8
  %52 = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_ai, %struct.pp_atomctrl_clock_dividers_ai* %10, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 10
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 3
  store i32 65535, i32* %57, align 4
  %58 = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_ai, %struct.pp_atomctrl_clock_dividers_ai* %10, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  %62 = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_ai, %struct.pp_atomctrl_clock_dividers_ai* %10, i32 0, i32 5
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 6
  store i8* %63, i8** %65, align 8
  %66 = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_ai, %struct.pp_atomctrl_clock_dividers_ai* %10, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 4
  %70 = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_ai, %struct.pp_atomctrl_clock_dividers_ai* %10, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 9
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %17, align 4
  store i32 %74, i32* %4, align 4
  br label %224

75:                                               ; preds = %3
  %76 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %77 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to %struct.amdgpu_device*
  %80 = call i64 @amdgpu_asic_get_xclk(%struct.amdgpu_device* %79)
  store i64 %80, i64* %11, align 8
  store i64 0, i64* %16, align 8
  br label %81

81:                                               ; preds = %110, %75
  %82 = load i64, i64* %16, align 8
  %83 = load i64, i64* @NUM_SCLK_RANGE, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %113

85:                                               ; preds = %81
  %86 = load i64, i64* %6, align 8
  %87 = load %struct.vegam_smumgr*, %struct.vegam_smumgr** %8, align 8
  %88 = getelementptr inbounds %struct.vegam_smumgr, %struct.vegam_smumgr* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = load i64, i64* %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %86, %93
  br i1 %94, label %95, label %109

95:                                               ; preds = %85
  %96 = load i64, i64* %6, align 8
  %97 = load %struct.vegam_smumgr*, %struct.vegam_smumgr** %8, align 8
  %98 = getelementptr inbounds %struct.vegam_smumgr, %struct.vegam_smumgr* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = load i64, i64* %16, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp sle i64 %96, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %95
  %106 = load i64, i64* %16, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  br label %113

109:                                              ; preds = %95, %85
  br label %110

110:                                              ; preds = %109
  %111 = load i64, i64* %16, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %16, align 8
  br label %81

113:                                              ; preds = %105, %81
  %114 = load i64, i64* %6, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = shl i64 %114, %123
  %125 = load i64, i64* %11, align 8
  %126 = sdiv i64 %124, %125
  %127 = inttoptr i64 %126 to i8*
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 8
  store i8* %127, i8** %129, align 8
  %130 = load i64, i64* %6, align 8
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = shl i64 %130, %139
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %18, align 4
  %142 = load i32, i32* %18, align 4
  %143 = shl i32 %142, 16
  store i32 %143, i32* %18, align 4
  %144 = load i32, i32* %18, align 4
  %145 = load i64, i64* %11, align 8
  %146 = call i32 @do_div(i32 %144, i64 %145)
  %147 = load i32, i32* %18, align 4
  %148 = and i32 %147, 65535
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  store i64 10, i64* %12, align 8
  %151 = load i64, i64* %6, align 8
  %152 = load i64, i64* %6, align 8
  %153 = load i64, i64* %12, align 8
  %154 = mul nsw i64 %152, %153
  %155 = sdiv i64 %154, 100
  %156 = sub nsw i64 %151, %155
  store i64 %156, i64* %13, align 8
  %157 = load i64, i64* %13, align 8
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %159, align 8
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = shl i64 %157, %166
  %168 = load i64, i64* %11, align 8
  %169 = sdiv i64 %167, %168
  %170 = inttoptr i64 %169 to i8*
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 7
  store i8* %170, i8** %172, align 8
  store i64 2, i64* %14, align 8
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 4
  store i32 0, i32* %174, align 8
  %175 = load i64, i64* %14, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %223

177:                                              ; preds = %113
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 4
  store i32 1, i32* %179, align 8
  %180 = load i64, i64* %6, align 8
  %181 = load i64, i64* %6, align 8
  %182 = load i64, i64* %14, align 8
  %183 = mul nsw i64 %181, %182
  %184 = sdiv i64 %183, 100
  %185 = sub nsw i64 %180, %184
  store i64 %185, i64* %15, align 8
  %186 = load i64, i64* %15, align 8
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %188, align 8
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = shl i64 %186, %195
  %197 = load i64, i64* %11, align 8
  %198 = sdiv i64 %196, %197
  %199 = inttoptr i64 %198 to i8*
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 6
  store i8* %199, i8** %201, align 8
  %202 = load i64, i64* %15, align 8
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %204, align 8
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = shl i64 %202, %211
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %18, align 4
  %214 = load i32, i32* %18, align 4
  %215 = shl i32 %214, 16
  store i32 %215, i32* %18, align 4
  %216 = load i32, i32* %18, align 4
  %217 = load i64, i64* %11, align 8
  %218 = call i32 @do_div(i32 %216, i64 %217)
  %219 = load i32, i32* %18, align 4
  %220 = and i32 %219, 65535
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 5
  store i32 %220, i32* %222, align 4
  br label %223

223:                                              ; preds = %177, %113
  store i32 0, i32* %4, align 4
  br label %224

224:                                              ; preds = %223, %33
  %225 = load i32, i32* %4, align 4
  ret i32 %225
}

declare dso_local i32 @atomctrl_get_engine_pll_dividers_ai(%struct.pp_hwmgr*, i64, %struct.pp_atomctrl_clock_dividers_ai*) #1

declare dso_local i64 @amdgpu_asic_get_xclk(%struct.amdgpu_device*) #1

declare dso_local i32 @do_div(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
