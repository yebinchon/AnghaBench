; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c___smq_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c___smq_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_policy = type { i32 }
%struct.smq_policy = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, %struct.dm_cache_policy, i32, i8*, i8*, i32, i32, %struct.TYPE_3__, %struct.TYPE_3__, i32, %struct.TYPE_3__, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@NR_CACHE_LEVELS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"couldn't initialize entry space\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"couldn't allocate hotspot hit bitset\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"couldn't allocate cache hit bitset\00", align 1
@NR_HOTSPOT_LEVELS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dm_cache_policy* (i32, i32, i32, i32, i32)* @__smq_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dm_cache_policy* @__smq_create(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.dm_cache_policy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.smq_policy*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* @NR_CACHE_LEVELS, align 4
  %17 = mul i32 2, %16
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = mul i32 2, %18
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.smq_policy* @kzalloc(i32 152, i32 %20)
  store %struct.smq_policy* %21, %struct.smq_policy** %15, align 8
  %22 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %23 = icmp ne %struct.smq_policy* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %5
  store %struct.dm_cache_policy* null, %struct.dm_cache_policy** %6, align 8
  br label %314

25:                                               ; preds = %5
  %26 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @init_policy_functions(%struct.smq_policy* %26, i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %31 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %30, i32 0, i32 19
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %34 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %33, i32 0, i32 27
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @from_cblock(i32 %37)
  %39 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %40 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %39, i32 0, i32 28
  %41 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %42 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %41, i32 0, i32 0
  %43 = call i32 @calc_hotspot_params(i32 %35, i32 %36, i32 %38, i32* %40, i32* %42)
  %44 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %45 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %44, i32 0, i32 28
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %48 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %47, i32 0, i32 27
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @div64_u64(i32 %46, i32 %49)
  %51 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %52 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %54 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %53, i32 0, i32 2
  store i32 1, i32* %54, align 8
  %55 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %56 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %55, i32 0, i32 6
  %57 = load i32, i32* %14, align 4
  %58 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %59 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add i32 %57, %60
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @from_cblock(i32 %62)
  %64 = add i32 %61, %63
  %65 = call i64 @space_init(i32* %56, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %25
  %68 = call i32 @DMERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %311

69:                                               ; preds = %25
  %70 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %71 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %70, i32 0, i32 26
  %72 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %73 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %72, i32 0, i32 6
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @init_allocator(i32* %71, i32* %73, i32 0, i32 %74)
  store i32 0, i32* %12, align 4
  br label %76

76:                                               ; preds = %86, %69
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %82 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %81, i32 0, i32 26
  %83 = load i32, i32* %12, align 4
  %84 = call %struct.TYPE_4__* @get_entry(i32* %82, i32 %83)
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i32 1, i32* %85, align 4
  br label %86

86:                                               ; preds = %80
  %87 = load i32, i32* %12, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %12, align 4
  br label %76

89:                                               ; preds = %76
  %90 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %91 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %90, i32 0, i32 25
  %92 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %93 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %92, i32 0, i32 6
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @init_allocator(i32* %91, i32* %93, i32 %94, i32 %95)
  store i32 0, i32* %12, align 4
  br label %97

97:                                               ; preds = %107, %89
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp ult i32 %98, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %97
  %102 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %103 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %102, i32 0, i32 25
  %104 = load i32, i32* %12, align 4
  %105 = call %struct.TYPE_4__* @get_entry(i32* %103, i32 %104)
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  store i32 1, i32* %106, align 4
  br label %107

107:                                              ; preds = %101
  %108 = load i32, i32* %12, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %12, align 4
  br label %97

110:                                              ; preds = %97
  %111 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %112 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %111, i32 0, i32 24
  %113 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %114 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %113, i32 0, i32 6
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %14, align 4
  %117 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %118 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = add i32 %116, %119
  %121 = call i32 @init_allocator(i32* %112, i32* %114, i32 %115, i32 %120)
  %122 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %123 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %122, i32 0, i32 23
  %124 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %125 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %124, i32 0, i32 6
  %126 = load i32, i32* %14, align 4
  %127 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %128 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = add i32 %126, %129
  %131 = load i32, i32* %14, align 4
  %132 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %133 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = add i32 %131, %134
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @from_cblock(i32 %136)
  %138 = add i32 %135, %137
  %139 = call i32 @init_allocator(i32* %123, i32* %125, i32 %130, i32 %138)
  %140 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %141 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i8* @alloc_bitset(i32 %142)
  %144 = bitcast i8* %143 to i32*
  %145 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %146 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %145, i32 0, i32 7
  store i32* %144, i32** %146, align 8
  %147 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %148 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %147, i32 0, i32 7
  %149 = load i32*, i32** %148, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %153, label %151

151:                                              ; preds = %110
  %152 = call i32 @DMERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %307

153:                                              ; preds = %110
  %154 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %155 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %154, i32 0, i32 7
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %158 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @clear_bitset(i32* %156, i32 %159)
  %161 = load i32, i32* %7, align 4
  %162 = call i32 @from_cblock(i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %186

164:                                              ; preds = %153
  %165 = load i32, i32* %7, align 4
  %166 = call i32 @from_cblock(i32 %165)
  %167 = call i8* @alloc_bitset(i32 %166)
  %168 = bitcast i8* %167 to i32*
  %169 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %170 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %169, i32 0, i32 8
  store i32* %168, i32** %170, align 8
  %171 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %172 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %171, i32 0, i32 8
  %173 = load i32*, i32** %172, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %177, label %175

175:                                              ; preds = %164
  %176 = call i32 @DMERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %302

177:                                              ; preds = %164
  %178 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %179 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %178, i32 0, i32 8
  %180 = load i32*, i32** %179, align 8
  %181 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %182 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %181, i32 0, i32 19
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @from_cblock(i32 %183)
  %185 = call i32 @clear_bitset(i32* %180, i32 %184)
  br label %189

186:                                              ; preds = %153
  %187 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %188 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %187, i32 0, i32 8
  store i32* null, i32** %188, align 8
  br label %189

189:                                              ; preds = %186, %177
  %190 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %191 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %190, i32 0, i32 22
  store i64 0, i64* %191, align 8
  %192 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %193 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %192, i32 0, i32 21
  %194 = call i32 @spin_lock_init(i32* %193)
  %195 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %196 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %195, i32 0, i32 20
  %197 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %198 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %197, i32 0, i32 6
  %199 = load i32, i32* @NR_HOTSPOT_LEVELS, align 4
  %200 = call i32 @q_init(%struct.TYPE_3__* %196, i32* %198, i32 %199)
  %201 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %202 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %201, i32 0, i32 20
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 0
  store i32 8, i32* %203, align 4
  %204 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %205 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @NR_HOTSPOT_LEVELS, align 4
  %208 = udiv i32 %206, %207
  %209 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %210 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %209, i32 0, i32 19
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @from_cblock(i32 %211)
  %213 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %214 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = sdiv i32 %212, %215
  %217 = call i32 @min(i32 %208, i32 %216)
  %218 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %219 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %218, i32 0, i32 20
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 1
  store i32 %217, i32* %220, align 4
  %221 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %222 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %221, i32 0, i32 18
  %223 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %224 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %223, i32 0, i32 6
  %225 = load i32, i32* @NR_CACHE_LEVELS, align 4
  %226 = call i32 @q_init(%struct.TYPE_3__* %222, i32* %224, i32 %225)
  %227 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %228 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %227, i32 0, i32 17
  %229 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %230 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %229, i32 0, i32 6
  %231 = load i32, i32* @NR_CACHE_LEVELS, align 4
  %232 = call i32 @q_init(%struct.TYPE_3__* %228, i32* %230, i32 %231)
  %233 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %234 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %233, i32 0, i32 16
  %235 = load i32, i32* @NR_HOTSPOT_LEVELS, align 4
  %236 = call i32 @stats_init(i32* %234, i32 %235)
  %237 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %238 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %237, i32 0, i32 15
  %239 = load i32, i32* @NR_CACHE_LEVELS, align 4
  %240 = call i32 @stats_init(i32* %238, i32 %239)
  %241 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %242 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %241, i32 0, i32 9
  %243 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %244 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %243, i32 0, i32 6
  %245 = load i32, i32* %7, align 4
  %246 = call i32 @from_cblock(i32 %245)
  %247 = call i64 @h_init(i32* %242, i32* %244, i32 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %189
  br label %297

250:                                              ; preds = %189
  %251 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %252 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %251, i32 0, i32 10
  %253 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %254 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %253, i32 0, i32 6
  %255 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %256 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = call i64 @h_init(i32* %252, i32* %254, i32 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %250
  br label %293

261:                                              ; preds = %250
  %262 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %263 = call i32 @sentinels_init(%struct.smq_policy* %262)
  %264 = load i32, i32* @NR_HOTSPOT_LEVELS, align 4
  %265 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %266 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %265, i32 0, i32 4
  store i32 %264, i32* %266, align 8
  %267 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %268 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %267, i32 0, i32 3
  store i32 %264, i32* %268, align 4
  %269 = load i8*, i8** @jiffies, align 8
  %270 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %271 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %270, i32 0, i32 14
  store i8* %269, i8** %271, align 8
  %272 = load i8*, i8** @jiffies, align 8
  %273 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %274 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %273, i32 0, i32 13
  store i8* %272, i8** %274, align 8
  %275 = call i32 @btracker_create(i32 4096)
  %276 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %277 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %276, i32 0, i32 12
  store i32 %275, i32* %277, align 4
  %278 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %279 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %278, i32 0, i32 12
  %280 = load i32, i32* %279, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %283, label %282

282:                                              ; preds = %261
  br label %289

283:                                              ; preds = %261
  %284 = load i32, i32* %11, align 4
  %285 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %286 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %285, i32 0, i32 5
  store i32 %284, i32* %286, align 4
  %287 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %288 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %287, i32 0, i32 11
  store %struct.dm_cache_policy* %288, %struct.dm_cache_policy** %6, align 8
  br label %314

289:                                              ; preds = %282
  %290 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %291 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %290, i32 0, i32 10
  %292 = call i32 @h_exit(i32* %291)
  br label %293

293:                                              ; preds = %289, %260
  %294 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %295 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %294, i32 0, i32 9
  %296 = call i32 @h_exit(i32* %295)
  br label %297

297:                                              ; preds = %293, %249
  %298 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %299 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %298, i32 0, i32 8
  %300 = load i32*, i32** %299, align 8
  %301 = call i32 @free_bitset(i32* %300)
  br label %302

302:                                              ; preds = %297, %175
  %303 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %304 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %303, i32 0, i32 7
  %305 = load i32*, i32** %304, align 8
  %306 = call i32 @free_bitset(i32* %305)
  br label %307

307:                                              ; preds = %302, %151
  %308 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %309 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %308, i32 0, i32 6
  %310 = call i32 @space_exit(i32* %309)
  br label %311

311:                                              ; preds = %307, %67
  %312 = load %struct.smq_policy*, %struct.smq_policy** %15, align 8
  %313 = call i32 @kfree(%struct.smq_policy* %312)
  store %struct.dm_cache_policy* null, %struct.dm_cache_policy** %6, align 8
  br label %314

314:                                              ; preds = %311, %283, %24
  %315 = load %struct.dm_cache_policy*, %struct.dm_cache_policy** %6, align 8
  ret %struct.dm_cache_policy* %315
}

declare dso_local %struct.smq_policy* @kzalloc(i32, i32) #1

declare dso_local i32 @init_policy_functions(%struct.smq_policy*, i32) #1

declare dso_local i32 @calc_hotspot_params(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @from_cblock(i32) #1

declare dso_local i32 @div64_u64(i32, i32) #1

declare dso_local i64 @space_init(i32*, i32) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @init_allocator(i32*, i32*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @get_entry(i32*, i32) #1

declare dso_local i8* @alloc_bitset(i32) #1

declare dso_local i32 @clear_bitset(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @q_init(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @stats_init(i32*, i32) #1

declare dso_local i64 @h_init(i32*, i32*, i32) #1

declare dso_local i32 @sentinels_init(%struct.smq_policy*) #1

declare dso_local i32 @btracker_create(i32) #1

declare dso_local i32 @h_exit(i32*) #1

declare dso_local i32 @free_bitset(i32*) #1

declare dso_local i32 @space_exit(i32*) #1

declare dso_local i32 @kfree(%struct.smq_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
