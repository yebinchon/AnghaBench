; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-stats.c___dm_stat_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-stats.c___dm_stat_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_stat = type { i32, %struct.dm_stat_percpu**, %struct.dm_stat_shared* }
%struct.dm_stat_percpu = type { i32*, i32, i32, i32*, i32*, i32*, i32*, i32* }
%struct.dm_stat_shared = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i64, i64, i64*, i64*, i64*, i64*, i64* }

@READ = common dso_local global i64 0, align 8
@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_stat*, i64, i64, i32)* @__dm_stat_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dm_stat_clear(%struct.dm_stat* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.dm_stat*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.dm_stat_shared*, align 8
  %11 = alloca %struct.dm_stat_percpu*, align 8
  %12 = alloca i32, align 4
  store %struct.dm_stat* %0, %struct.dm_stat** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i64, i64* %6, align 8
  store i64 %13, i64* %9, align 8
  br label %14

14:                                               ; preds = %268, %4
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %271

18:                                               ; preds = %14
  %19 = load %struct.dm_stat*, %struct.dm_stat** %5, align 8
  %20 = getelementptr inbounds %struct.dm_stat, %struct.dm_stat* %19, i32 0, i32 2
  %21 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %20, align 8
  %22 = load i64, i64* %9, align 8
  %23 = getelementptr inbounds %struct.dm_stat_shared, %struct.dm_stat_shared* %21, i64 %22
  store %struct.dm_stat_shared* %23, %struct.dm_stat_shared** %10, align 8
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %10, align 8
  %28 = load %struct.dm_stat*, %struct.dm_stat** %5, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @__dm_stat_init_temporary_percpu_totals(%struct.dm_stat_shared* %27, %struct.dm_stat* %28, i64 %29)
  br label %31

31:                                               ; preds = %26, %18
  %32 = call i32 (...) @local_irq_disable()
  %33 = load %struct.dm_stat*, %struct.dm_stat** %5, align 8
  %34 = getelementptr inbounds %struct.dm_stat, %struct.dm_stat* %33, i32 0, i32 1
  %35 = load %struct.dm_stat_percpu**, %struct.dm_stat_percpu*** %34, align 8
  %36 = call i64 (...) @smp_processor_id()
  %37 = getelementptr inbounds %struct.dm_stat_percpu*, %struct.dm_stat_percpu** %35, i64 %36
  %38 = load %struct.dm_stat_percpu*, %struct.dm_stat_percpu** %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds %struct.dm_stat_percpu, %struct.dm_stat_percpu* %38, i64 %39
  store %struct.dm_stat_percpu* %40, %struct.dm_stat_percpu** %11, align 8
  %41 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %10, align 8
  %42 = getelementptr inbounds %struct.dm_stat_shared, %struct.dm_stat_shared* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 7
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* @READ, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.dm_stat_percpu*, %struct.dm_stat_percpu** %11, align 8
  %49 = getelementptr inbounds %struct.dm_stat_percpu, %struct.dm_stat_percpu* %48, i32 0, i32 7
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @READ, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = sub nsw i64 %54, %47
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %52, align 4
  %57 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %10, align 8
  %58 = getelementptr inbounds %struct.dm_stat_shared, %struct.dm_stat_shared* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 7
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* @WRITE, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.dm_stat_percpu*, %struct.dm_stat_percpu** %11, align 8
  %65 = getelementptr inbounds %struct.dm_stat_percpu, %struct.dm_stat_percpu* %64, i32 0, i32 7
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @WRITE, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = sub nsw i64 %70, %63
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %68, align 4
  %73 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %10, align 8
  %74 = getelementptr inbounds %struct.dm_stat_shared, %struct.dm_stat_shared* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 6
  %76 = load i64*, i64** %75, align 8
  %77 = load i64, i64* @READ, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.dm_stat_percpu*, %struct.dm_stat_percpu** %11, align 8
  %81 = getelementptr inbounds %struct.dm_stat_percpu, %struct.dm_stat_percpu* %80, i32 0, i32 6
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @READ, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = sub nsw i64 %86, %79
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %84, align 4
  %89 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %10, align 8
  %90 = getelementptr inbounds %struct.dm_stat_shared, %struct.dm_stat_shared* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 6
  %92 = load i64*, i64** %91, align 8
  %93 = load i64, i64* @WRITE, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.dm_stat_percpu*, %struct.dm_stat_percpu** %11, align 8
  %97 = getelementptr inbounds %struct.dm_stat_percpu, %struct.dm_stat_percpu* %96, i32 0, i32 6
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* @WRITE, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = sub nsw i64 %102, %95
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 4
  %105 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %10, align 8
  %106 = getelementptr inbounds %struct.dm_stat_shared, %struct.dm_stat_shared* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 5
  %108 = load i64*, i64** %107, align 8
  %109 = load i64, i64* @READ, align 8
  %110 = getelementptr inbounds i64, i64* %108, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.dm_stat_percpu*, %struct.dm_stat_percpu** %11, align 8
  %113 = getelementptr inbounds %struct.dm_stat_percpu, %struct.dm_stat_percpu* %112, i32 0, i32 5
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* @READ, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = sub nsw i64 %118, %111
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %116, align 4
  %121 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %10, align 8
  %122 = getelementptr inbounds %struct.dm_stat_shared, %struct.dm_stat_shared* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 5
  %124 = load i64*, i64** %123, align 8
  %125 = load i64, i64* @WRITE, align 8
  %126 = getelementptr inbounds i64, i64* %124, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.dm_stat_percpu*, %struct.dm_stat_percpu** %11, align 8
  %129 = getelementptr inbounds %struct.dm_stat_percpu, %struct.dm_stat_percpu* %128, i32 0, i32 5
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* @WRITE, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = sub nsw i64 %134, %127
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %132, align 4
  %137 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %10, align 8
  %138 = getelementptr inbounds %struct.dm_stat_shared, %struct.dm_stat_shared* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 4
  %140 = load i64*, i64** %139, align 8
  %141 = load i64, i64* @READ, align 8
  %142 = getelementptr inbounds i64, i64* %140, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.dm_stat_percpu*, %struct.dm_stat_percpu** %11, align 8
  %145 = getelementptr inbounds %struct.dm_stat_percpu, %struct.dm_stat_percpu* %144, i32 0, i32 4
  %146 = load i32*, i32** %145, align 8
  %147 = load i64, i64* @READ, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = sub nsw i64 %150, %143
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %148, align 4
  %153 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %10, align 8
  %154 = getelementptr inbounds %struct.dm_stat_shared, %struct.dm_stat_shared* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 4
  %156 = load i64*, i64** %155, align 8
  %157 = load i64, i64* @WRITE, align 8
  %158 = getelementptr inbounds i64, i64* %156, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.dm_stat_percpu*, %struct.dm_stat_percpu** %11, align 8
  %161 = getelementptr inbounds %struct.dm_stat_percpu, %struct.dm_stat_percpu* %160, i32 0, i32 4
  %162 = load i32*, i32** %161, align 8
  %163 = load i64, i64* @WRITE, align 8
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = sub nsw i64 %166, %159
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %164, align 4
  %169 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %10, align 8
  %170 = getelementptr inbounds %struct.dm_stat_shared, %struct.dm_stat_shared* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 3
  %172 = load i64*, i64** %171, align 8
  %173 = load i64, i64* @READ, align 8
  %174 = getelementptr inbounds i64, i64* %172, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.dm_stat_percpu*, %struct.dm_stat_percpu** %11, align 8
  %177 = getelementptr inbounds %struct.dm_stat_percpu, %struct.dm_stat_percpu* %176, i32 0, i32 3
  %178 = load i32*, i32** %177, align 8
  %179 = load i64, i64* @READ, align 8
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = sext i32 %181 to i64
  %183 = sub nsw i64 %182, %175
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %180, align 4
  %185 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %10, align 8
  %186 = getelementptr inbounds %struct.dm_stat_shared, %struct.dm_stat_shared* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 3
  %188 = load i64*, i64** %187, align 8
  %189 = load i64, i64* @WRITE, align 8
  %190 = getelementptr inbounds i64, i64* %188, i64 %189
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.dm_stat_percpu*, %struct.dm_stat_percpu** %11, align 8
  %193 = getelementptr inbounds %struct.dm_stat_percpu, %struct.dm_stat_percpu* %192, i32 0, i32 3
  %194 = load i32*, i32** %193, align 8
  %195 = load i64, i64* @WRITE, align 8
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = sext i32 %197 to i64
  %199 = sub nsw i64 %198, %191
  %200 = trunc i64 %199 to i32
  store i32 %200, i32* %196, align 4
  %201 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %10, align 8
  %202 = getelementptr inbounds %struct.dm_stat_shared, %struct.dm_stat_shared* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.dm_stat_percpu*, %struct.dm_stat_percpu** %11, align 8
  %206 = getelementptr inbounds %struct.dm_stat_percpu, %struct.dm_stat_percpu* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = sext i32 %207 to i64
  %209 = sub nsw i64 %208, %204
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %206, align 4
  %211 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %10, align 8
  %212 = getelementptr inbounds %struct.dm_stat_shared, %struct.dm_stat_shared* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.dm_stat_percpu*, %struct.dm_stat_percpu** %11, align 8
  %216 = getelementptr inbounds %struct.dm_stat_percpu, %struct.dm_stat_percpu* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = sext i32 %217 to i64
  %219 = sub nsw i64 %218, %214
  %220 = trunc i64 %219 to i32
  store i32 %220, i32* %216, align 8
  %221 = call i32 (...) @local_irq_enable()
  %222 = load %struct.dm_stat*, %struct.dm_stat** %5, align 8
  %223 = getelementptr inbounds %struct.dm_stat, %struct.dm_stat* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %267

226:                                              ; preds = %31
  store i32 0, i32* %12, align 4
  br label %227

227:                                              ; preds = %263, %226
  %228 = load i32, i32* %12, align 4
  %229 = load %struct.dm_stat*, %struct.dm_stat** %5, align 8
  %230 = getelementptr inbounds %struct.dm_stat, %struct.dm_stat* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = add nsw i32 %231, 1
  %233 = icmp ult i32 %228, %232
  br i1 %233, label %234, label %266

234:                                              ; preds = %227
  %235 = call i32 (...) @local_irq_disable()
  %236 = load %struct.dm_stat*, %struct.dm_stat** %5, align 8
  %237 = getelementptr inbounds %struct.dm_stat, %struct.dm_stat* %236, i32 0, i32 1
  %238 = load %struct.dm_stat_percpu**, %struct.dm_stat_percpu*** %237, align 8
  %239 = call i64 (...) @smp_processor_id()
  %240 = getelementptr inbounds %struct.dm_stat_percpu*, %struct.dm_stat_percpu** %238, i64 %239
  %241 = load %struct.dm_stat_percpu*, %struct.dm_stat_percpu** %240, align 8
  %242 = load i64, i64* %9, align 8
  %243 = getelementptr inbounds %struct.dm_stat_percpu, %struct.dm_stat_percpu* %241, i64 %242
  store %struct.dm_stat_percpu* %243, %struct.dm_stat_percpu** %11, align 8
  %244 = load %struct.dm_stat_shared*, %struct.dm_stat_shared** %10, align 8
  %245 = getelementptr inbounds %struct.dm_stat_shared, %struct.dm_stat_shared* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 0
  %247 = load i64*, i64** %246, align 8
  %248 = load i32, i32* %12, align 4
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds i64, i64* %247, i64 %249
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.dm_stat_percpu*, %struct.dm_stat_percpu** %11, align 8
  %253 = getelementptr inbounds %struct.dm_stat_percpu, %struct.dm_stat_percpu* %252, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %12, align 4
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = sext i32 %258 to i64
  %260 = sub nsw i64 %259, %251
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* %257, align 4
  %262 = call i32 (...) @local_irq_enable()
  br label %263

263:                                              ; preds = %234
  %264 = load i32, i32* %12, align 4
  %265 = add i32 %264, 1
  store i32 %265, i32* %12, align 4
  br label %227

266:                                              ; preds = %227
  br label %267

267:                                              ; preds = %266, %31
  br label %268

268:                                              ; preds = %267
  %269 = load i64, i64* %9, align 8
  %270 = add i64 %269, 1
  store i64 %270, i64* %9, align 8
  br label %14

271:                                              ; preds = %14
  ret void
}

declare dso_local i32 @__dm_stat_init_temporary_percpu_totals(%struct.dm_stat_shared*, %struct.dm_stat*, i64) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @local_irq_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
