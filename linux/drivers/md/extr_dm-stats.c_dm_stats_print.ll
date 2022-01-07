; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-stats.c_dm_stats_print.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-stats.c_dm_stats_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_stats = type { i32 }
%struct.dm_stat = type { i64, i64, i64, i64, i32, %struct.dm_stat_shared* }
%struct.dm_stat_shared = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i32, i32, i32*, i32*, i32*, i32* }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"%llu+%llu %llu %llu %llu %llu %llu %llu %llu %llu %d %llu %llu %llu %llu\00", align 1
@READ = common dso_local global i64 0, align 8
@WRITE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%s%llu\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_stats*, i32, i64, i64, i32, i8*, i32)* @dm_stats_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_stats_print(%struct.dm_stats* %0, i32 %1, i64 %2, i64 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_stats*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.dm_stat*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.dm_stat_shared*, align 8
  %24 = alloca i32, align 4
  store %struct.dm_stats* %0, %struct.dm_stats** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %25 = load %struct.dm_stats*, %struct.dm_stats** %9, align 8
  %26 = getelementptr inbounds %struct.dm_stats, %struct.dm_stats* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.dm_stats*, %struct.dm_stats** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call %struct.dm_stat* @__dm_stats_find(%struct.dm_stats* %28, i32 %29)
  store %struct.dm_stat* %30, %struct.dm_stat** %17, align 8
  %31 = load %struct.dm_stat*, %struct.dm_stat** %17, align 8
  %32 = icmp ne %struct.dm_stat* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %7
  %34 = load %struct.dm_stats*, %struct.dm_stats** %9, align 8
  %35 = getelementptr inbounds %struct.dm_stats, %struct.dm_stats* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load i32, i32* @ENOENT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  br label %258

39:                                               ; preds = %7
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %12, align 8
  %42 = add i64 %40, %41
  store i64 %42, i64* %22, align 8
  %43 = load i64, i64* %22, align 8
  %44 = load i64, i64* %11, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %39
  %47 = load i64, i64* %22, align 8
  %48 = load %struct.dm_stat*, %struct.dm_stat** %17, align 8
  %49 = getelementptr inbounds %struct.dm_stat, %struct.dm_stat* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ugt i64 %47, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46, %39
  %53 = load %struct.dm_stat*, %struct.dm_stat** %17, align 8
  %54 = getelementptr inbounds %struct.dm_stat, %struct.dm_stat* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %22, align 8
  br label %56

56:                                               ; preds = %52, %46
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %22, align 8
  %59 = icmp ugt i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i64, i64* %22, align 8
  store i64 %61, i64* %11, align 8
  br label %62

62:                                               ; preds = %60, %56
  %63 = load %struct.dm_stat*, %struct.dm_stat** %17, align 8
  %64 = getelementptr inbounds %struct.dm_stat, %struct.dm_stat* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %21, align 8
  %66 = load %struct.dm_stat*, %struct.dm_stat** %17, align 8
  %67 = getelementptr inbounds %struct.dm_stat, %struct.dm_stat* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %21, align 8
  %70 = load i64, i64* %11, align 8
  %71 = mul i64 %69, %70
  %72 = add i64 %68, %71
  store i64 %72, i64* %19, align 8
  %73 = load i64, i64* %11, align 8
  store i64 %73, i64* %18, align 8
  br label %74

74:                                               ; preds = %241, %62
  %75 = load i64, i64* %18, align 8
  %76 = load i64, i64* %22, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %245

78:                                               ; preds = %74
  %79 = load %struct.dm_stat*, %struct.dm_stat** %17, align 8
  %80 = getelementptr inbounds %struct.dm_stat, %struct.dm_stat* %79, i32 0, i32 5
  %81 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %80, align 8
  %82 = load i64, i64* %18, align 8
  %83 = getelementptr inbounds %struct.dm_stat_shared, %struct.dm_stat_shared* %81, i64 %82
  store %struct.dm_stat_shared* %83, %struct.dm_stat_shared** %23, align 8
  %84 = load i64, i64* %19, align 8
  %85 = load i64, i64* %21, align 8
  %86 = add i64 %84, %85
  store i64 %86, i64* %20, align 8
  %87 = load i64, i64* %20, align 8
  %88 = load %struct.dm_stat*, %struct.dm_stat** %17, align 8
  %89 = getelementptr inbounds %struct.dm_stat, %struct.dm_stat* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp ugt i64 %87, %90
  %92 = zext i1 %91 to i32
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %78
  %96 = load %struct.dm_stat*, %struct.dm_stat** %17, align 8
  %97 = getelementptr inbounds %struct.dm_stat, %struct.dm_stat* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %20, align 8
  br label %99

99:                                               ; preds = %95, %78
  %100 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %23, align 8
  %101 = load %struct.dm_stat*, %struct.dm_stat** %17, align 8
  %102 = load i64, i64* %18, align 8
  %103 = call i32 @__dm_stat_init_temporary_percpu_totals(%struct.dm_stat_shared* %100, %struct.dm_stat* %101, i64 %102)
  %104 = load i64, i64* %19, align 8
  %105 = load i64, i64* %21, align 8
  %106 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %23, align 8
  %107 = getelementptr inbounds %struct.dm_stat_shared, %struct.dm_stat_shared* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 7
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* @READ, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %23, align 8
  %114 = getelementptr inbounds %struct.dm_stat_shared, %struct.dm_stat_shared* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 6
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* @READ, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %23, align 8
  %121 = getelementptr inbounds %struct.dm_stat_shared, %struct.dm_stat_shared* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 5
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* @READ, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.dm_stat*, %struct.dm_stat** %17, align 8
  %128 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %23, align 8
  %129 = getelementptr inbounds %struct.dm_stat_shared, %struct.dm_stat_shared* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 4
  %131 = load i32*, i32** %130, align 8
  %132 = load i64, i64* @READ, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @dm_jiffies_to_msec64(%struct.dm_stat* %127, i32 %134)
  %136 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %23, align 8
  %137 = getelementptr inbounds %struct.dm_stat_shared, %struct.dm_stat_shared* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 7
  %139 = load i32*, i32** %138, align 8
  %140 = load i64, i64* @WRITE, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %23, align 8
  %144 = getelementptr inbounds %struct.dm_stat_shared, %struct.dm_stat_shared* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 6
  %146 = load i32*, i32** %145, align 8
  %147 = load i64, i64* @WRITE, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %23, align 8
  %151 = getelementptr inbounds %struct.dm_stat_shared, %struct.dm_stat_shared* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 5
  %153 = load i32*, i32** %152, align 8
  %154 = load i64, i64* @WRITE, align 8
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.dm_stat*, %struct.dm_stat** %17, align 8
  %158 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %23, align 8
  %159 = getelementptr inbounds %struct.dm_stat_shared, %struct.dm_stat_shared* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 4
  %161 = load i32*, i32** %160, align 8
  %162 = load i64, i64* @WRITE, align 8
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @dm_jiffies_to_msec64(%struct.dm_stat* %157, i32 %164)
  %166 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %23, align 8
  %167 = call i32 @dm_stat_in_flight(%struct.dm_stat_shared* %166)
  %168 = load %struct.dm_stat*, %struct.dm_stat** %17, align 8
  %169 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %23, align 8
  %170 = getelementptr inbounds %struct.dm_stat_shared, %struct.dm_stat_shared* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @dm_jiffies_to_msec64(%struct.dm_stat* %168, i32 %172)
  %174 = load %struct.dm_stat*, %struct.dm_stat** %17, align 8
  %175 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %23, align 8
  %176 = getelementptr inbounds %struct.dm_stat_shared, %struct.dm_stat_shared* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @dm_jiffies_to_msec64(%struct.dm_stat* %174, i32 %178)
  %180 = load %struct.dm_stat*, %struct.dm_stat** %17, align 8
  %181 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %23, align 8
  %182 = getelementptr inbounds %struct.dm_stat_shared, %struct.dm_stat_shared* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = load i64, i64* @READ, align 8
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @dm_jiffies_to_msec64(%struct.dm_stat* %180, i32 %187)
  %189 = load %struct.dm_stat*, %struct.dm_stat** %17, align 8
  %190 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %23, align 8
  %191 = getelementptr inbounds %struct.dm_stat_shared, %struct.dm_stat_shared* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = load i64, i64* @WRITE, align 8
  %195 = getelementptr inbounds i32, i32* %193, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @dm_jiffies_to_msec64(%struct.dm_stat* %189, i32 %196)
  %198 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i64 %104, i64 %105, i32 %112, i32 %119, i32 %126, i32 %135, i32 %142, i32 %149, i32 %156, i32 %165, i32 %167, i32 %173, i32 %179, i32 %188, i32 %197)
  %199 = load %struct.dm_stat*, %struct.dm_stat** %17, align 8
  %200 = getelementptr inbounds %struct.dm_stat, %struct.dm_stat* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %230

203:                                              ; preds = %99
  store i32 0, i32* %24, align 4
  br label %204

204:                                              ; preds = %226, %203
  %205 = load i32, i32* %24, align 4
  %206 = load %struct.dm_stat*, %struct.dm_stat** %17, align 8
  %207 = getelementptr inbounds %struct.dm_stat, %struct.dm_stat* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 8
  %209 = add nsw i32 %208, 1
  %210 = icmp ult i32 %205, %209
  br i1 %210, label %211, label %229

211:                                              ; preds = %204
  %212 = load i32, i32* %24, align 4
  %213 = icmp ne i32 %212, 0
  %214 = xor i1 %213, true
  %215 = zext i1 %214 to i64
  %216 = select i1 %214, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %217 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %23, align 8
  %218 = getelementptr inbounds %struct.dm_stat_shared, %struct.dm_stat_shared* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %24, align 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %216, i32 %224)
  br label %226

226:                                              ; preds = %211
  %227 = load i32, i32* %24, align 4
  %228 = add i32 %227, 1
  store i32 %228, i32* %24, align 4
  br label %204

229:                                              ; preds = %204
  br label %230

230:                                              ; preds = %229, %99
  %231 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %232 = load i32, i32* %16, align 4
  %233 = add i32 %232, 1
  %234 = load i32, i32* %15, align 4
  %235 = icmp uge i32 %233, %234
  %236 = zext i1 %235 to i32
  %237 = call i64 @unlikely(i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %230
  br label %254

240:                                              ; preds = %230
  br label %241

241:                                              ; preds = %240
  %242 = load i64, i64* %18, align 8
  %243 = add i64 %242, 1
  store i64 %243, i64* %18, align 8
  %244 = load i64, i64* %20, align 8
  store i64 %244, i64* %19, align 8
  br label %74

245:                                              ; preds = %74
  %246 = load i32, i32* %13, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %245
  %249 = load %struct.dm_stat*, %struct.dm_stat** %17, align 8
  %250 = load i64, i64* %11, align 8
  %251 = load i64, i64* %22, align 8
  %252 = call i32 @__dm_stat_clear(%struct.dm_stat* %249, i64 %250, i64 %251, i32 0)
  br label %253

253:                                              ; preds = %248, %245
  br label %254

254:                                              ; preds = %253, %239
  %255 = load %struct.dm_stats*, %struct.dm_stats** %9, align 8
  %256 = getelementptr inbounds %struct.dm_stats, %struct.dm_stats* %255, i32 0, i32 0
  %257 = call i32 @mutex_unlock(i32* %256)
  store i32 1, i32* %8, align 4
  br label %258

258:                                              ; preds = %254, %33
  %259 = load i32, i32* %8, align 4
  ret i32 %259
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dm_stat* @__dm_stats_find(%struct.dm_stats*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__dm_stat_init_temporary_percpu_totals(%struct.dm_stat_shared*, %struct.dm_stat*, i64) #1

declare dso_local i32 @DMEMIT(i8*, ...) #1

declare dso_local i32 @dm_jiffies_to_msec64(%struct.dm_stat*, i32) #1

declare dso_local i32 @dm_stat_in_flight(%struct.dm_stat_shared*) #1

declare dso_local i32 @__dm_stat_clear(%struct.dm_stat*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
