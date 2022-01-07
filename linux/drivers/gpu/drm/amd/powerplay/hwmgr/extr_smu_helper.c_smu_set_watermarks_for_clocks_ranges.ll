; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu_helper.c_smu_set_watermarks_for_clocks_ranges.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu_helper.c_smu_set_watermarks_for_clocks_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_pp_wm_sets_with_clock_ranges_soc15 = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i64 }
%struct.watermarks = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu_set_watermarks_for_clocks_ranges(i8* %0, %struct.dm_pp_wm_sets_with_clock_ranges_soc15* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dm_pp_wm_sets_with_clock_ranges_soc15*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.watermarks*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.dm_pp_wm_sets_with_clock_ranges_soc15* %1, %struct.dm_pp_wm_sets_with_clock_ranges_soc15** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.watermarks*
  store %struct.watermarks* %9, %struct.watermarks** %7, align 8
  %10 = load %struct.watermarks*, %struct.watermarks** %7, align 8
  %11 = icmp ne %struct.watermarks* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.dm_pp_wm_sets_with_clock_ranges_soc15*, %struct.dm_pp_wm_sets_with_clock_ranges_soc15** %5, align 8
  %14 = icmp ne %struct.dm_pp_wm_sets_with_clock_ranges_soc15* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12, %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %224

18:                                               ; preds = %12
  %19 = load %struct.dm_pp_wm_sets_with_clock_ranges_soc15*, %struct.dm_pp_wm_sets_with_clock_ranges_soc15** %5, align 8
  %20 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges_soc15, %struct.dm_pp_wm_sets_with_clock_ranges_soc15* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %21, 4
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.dm_pp_wm_sets_with_clock_ranges_soc15*, %struct.dm_pp_wm_sets_with_clock_ranges_soc15** %5, align 8
  %25 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges_soc15, %struct.dm_pp_wm_sets_with_clock_ranges_soc15* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 4
  br i1 %27, label %28, label %31

28:                                               ; preds = %23, %18
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %224

31:                                               ; preds = %23
  store i64 0, i64* %6, align 8
  br label %32

32:                                               ; preds = %124, %31
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.dm_pp_wm_sets_with_clock_ranges_soc15*, %struct.dm_pp_wm_sets_with_clock_ranges_soc15** %5, align 8
  %35 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges_soc15, %struct.dm_pp_wm_sets_with_clock_ranges_soc15* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = icmp ult i64 %33, %37
  br i1 %38, label %39, label %127

39:                                               ; preds = %32
  %40 = load %struct.dm_pp_wm_sets_with_clock_ranges_soc15*, %struct.dm_pp_wm_sets_with_clock_ranges_soc15** %5, align 8
  %41 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges_soc15, %struct.dm_pp_wm_sets_with_clock_ranges_soc15* %40, i32 0, i32 3
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sdiv i32 %46, 1000
  %48 = call i8* @cpu_to_le16(i32 %47)
  %49 = load %struct.watermarks*, %struct.watermarks** %7, align 8
  %50 = getelementptr inbounds %struct.watermarks, %struct.watermarks* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %51, i64 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 4
  store i8* %48, i8** %56, align 8
  %57 = load %struct.dm_pp_wm_sets_with_clock_ranges_soc15*, %struct.dm_pp_wm_sets_with_clock_ranges_soc15** %5, align 8
  %58 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges_soc15, %struct.dm_pp_wm_sets_with_clock_ranges_soc15* %57, i32 0, i32 3
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i64, i64* %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sdiv i32 %63, 1000
  %65 = call i8* @cpu_to_le16(i32 %64)
  %66 = load %struct.watermarks*, %struct.watermarks** %7, align 8
  %67 = getelementptr inbounds %struct.watermarks, %struct.watermarks* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %68, i64 1
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = load i64, i64* %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 3
  store i8* %65, i8** %73, align 8
  %74 = load %struct.dm_pp_wm_sets_with_clock_ranges_soc15*, %struct.dm_pp_wm_sets_with_clock_ranges_soc15** %5, align 8
  %75 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges_soc15, %struct.dm_pp_wm_sets_with_clock_ranges_soc15* %74, i32 0, i32 3
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i64, i64* %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = sdiv i32 %80, 1000
  %82 = call i8* @cpu_to_le16(i32 %81)
  %83 = load %struct.watermarks*, %struct.watermarks** %7, align 8
  %84 = getelementptr inbounds %struct.watermarks, %struct.watermarks* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %85, i64 1
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = load i64, i64* %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  store i8* %82, i8** %90, align 8
  %91 = load %struct.dm_pp_wm_sets_with_clock_ranges_soc15*, %struct.dm_pp_wm_sets_with_clock_ranges_soc15** %5, align 8
  %92 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges_soc15, %struct.dm_pp_wm_sets_with_clock_ranges_soc15* %91, i32 0, i32 3
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i64, i64* %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = sdiv i32 %97, 1000
  %99 = call i8* @cpu_to_le16(i32 %98)
  %100 = load %struct.watermarks*, %struct.watermarks** %7, align 8
  %101 = getelementptr inbounds %struct.watermarks, %struct.watermarks* %100, i32 0, i32 0
  %102 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %102, i64 1
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = load i64, i64* %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  store i8* %99, i8** %107, align 8
  %108 = load %struct.dm_pp_wm_sets_with_clock_ranges_soc15*, %struct.dm_pp_wm_sets_with_clock_ranges_soc15** %5, align 8
  %109 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges_soc15, %struct.dm_pp_wm_sets_with_clock_ranges_soc15* %108, i32 0, i32 3
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = load i64, i64* %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to i8*
  %116 = load %struct.watermarks*, %struct.watermarks** %7, align 8
  %117 = getelementptr inbounds %struct.watermarks, %struct.watermarks* %116, i32 0, i32 0
  %118 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %118, i64 1
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = load i64, i64* %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  store i8* %115, i8** %123, align 8
  br label %124

124:                                              ; preds = %39
  %125 = load i64, i64* %6, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %6, align 8
  br label %32

127:                                              ; preds = %32
  store i64 0, i64* %6, align 8
  br label %128

128:                                              ; preds = %220, %127
  %129 = load i64, i64* %6, align 8
  %130 = load %struct.dm_pp_wm_sets_with_clock_ranges_soc15*, %struct.dm_pp_wm_sets_with_clock_ranges_soc15** %5, align 8
  %131 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges_soc15, %struct.dm_pp_wm_sets_with_clock_ranges_soc15* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = icmp ult i64 %129, %133
  br i1 %134, label %135, label %223

135:                                              ; preds = %128
  %136 = load %struct.dm_pp_wm_sets_with_clock_ranges_soc15*, %struct.dm_pp_wm_sets_with_clock_ranges_soc15** %5, align 8
  %137 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges_soc15, %struct.dm_pp_wm_sets_with_clock_ranges_soc15* %136, i32 0, i32 2
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = load i64, i64* %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sdiv i32 %142, 1000
  %144 = call i8* @cpu_to_le16(i32 %143)
  %145 = load %struct.watermarks*, %struct.watermarks** %7, align 8
  %146 = getelementptr inbounds %struct.watermarks, %struct.watermarks* %145, i32 0, i32 0
  %147 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %147, i64 0
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = load i64, i64* %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 4
  store i8* %144, i8** %152, align 8
  %153 = load %struct.dm_pp_wm_sets_with_clock_ranges_soc15*, %struct.dm_pp_wm_sets_with_clock_ranges_soc15** %5, align 8
  %154 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges_soc15, %struct.dm_pp_wm_sets_with_clock_ranges_soc15* %153, i32 0, i32 2
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = load i64, i64* %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = sdiv i32 %159, 1000
  %161 = call i8* @cpu_to_le16(i32 %160)
  %162 = load %struct.watermarks*, %struct.watermarks** %7, align 8
  %163 = getelementptr inbounds %struct.watermarks, %struct.watermarks* %162, i32 0, i32 0
  %164 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %164, i64 0
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %165, align 8
  %167 = load i64, i64* %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 3
  store i8* %161, i8** %169, align 8
  %170 = load %struct.dm_pp_wm_sets_with_clock_ranges_soc15*, %struct.dm_pp_wm_sets_with_clock_ranges_soc15** %5, align 8
  %171 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges_soc15, %struct.dm_pp_wm_sets_with_clock_ranges_soc15* %170, i32 0, i32 2
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = load i64, i64* %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = sdiv i32 %176, 1000
  %178 = call i8* @cpu_to_le16(i32 %177)
  %179 = load %struct.watermarks*, %struct.watermarks** %7, align 8
  %180 = getelementptr inbounds %struct.watermarks, %struct.watermarks* %179, i32 0, i32 0
  %181 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %181, i64 0
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %182, align 8
  %184 = load i64, i64* %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 2
  store i8* %178, i8** %186, align 8
  %187 = load %struct.dm_pp_wm_sets_with_clock_ranges_soc15*, %struct.dm_pp_wm_sets_with_clock_ranges_soc15** %5, align 8
  %188 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges_soc15, %struct.dm_pp_wm_sets_with_clock_ranges_soc15* %187, i32 0, i32 2
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %188, align 8
  %190 = load i64, i64* %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = sdiv i32 %193, 1000
  %195 = call i8* @cpu_to_le16(i32 %194)
  %196 = load %struct.watermarks*, %struct.watermarks** %7, align 8
  %197 = getelementptr inbounds %struct.watermarks, %struct.watermarks* %196, i32 0, i32 0
  %198 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %198, i64 0
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %199, align 8
  %201 = load i64, i64* %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 1
  store i8* %195, i8** %203, align 8
  %204 = load %struct.dm_pp_wm_sets_with_clock_ranges_soc15*, %struct.dm_pp_wm_sets_with_clock_ranges_soc15** %5, align 8
  %205 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges_soc15, %struct.dm_pp_wm_sets_with_clock_ranges_soc15* %204, i32 0, i32 2
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %205, align 8
  %207 = load i64, i64* %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 4
  %210 = load i64, i64* %209, align 8
  %211 = inttoptr i64 %210 to i8*
  %212 = load %struct.watermarks*, %struct.watermarks** %7, align 8
  %213 = getelementptr inbounds %struct.watermarks, %struct.watermarks* %212, i32 0, i32 0
  %214 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %214, i64 0
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %215, align 8
  %217 = load i64, i64* %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 0
  store i8* %211, i8** %219, align 8
  br label %220

220:                                              ; preds = %135
  %221 = load i64, i64* %6, align 8
  %222 = add i64 %221, 1
  store i64 %222, i64* %6, align 8
  br label %128

223:                                              ; preds = %128
  store i32 0, i32* %3, align 4
  br label %224

224:                                              ; preds = %223, %28, %15
  %225 = load i32, i32* %3, align 4
  ret i32 %225
}

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
