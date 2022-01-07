; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_arcturus_ppt.c_arcturus_print_clk_levels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_arcturus_ppt.c_arcturus_print_clk_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.smu_dpm_context }
%struct.smu_dpm_context = type { %struct.arcturus_dpm_table* }
%struct.arcturus_dpm_table = type { %struct.arcturus_single_dpm_table, %struct.arcturus_single_dpm_table, %struct.arcturus_single_dpm_table, %struct.arcturus_single_dpm_table }
%struct.arcturus_single_dpm_table = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.pp_clock_levels_with_latency = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@SMU_GFXCLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Attempt to get current gfx clk Failed!\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Attempt to get gfx clk levels Failed!\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%d: %uMhz %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SMU_UCLK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Attempt to get current mclk Failed!\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Attempt to get memory clk levels Failed!\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Attempt to get current socclk Failed!\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Attempt to get socclk levels Failed!\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Attempt to get current fclk Failed!\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Attempt to get fclk levels Failed!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32, i8*)* @arcturus_print_clk_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcturus_print_clk_levels(%struct.smu_context* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pp_clock_levels_with_latency, align 8
  %13 = alloca %struct.arcturus_single_dpm_table*, align 8
  %14 = alloca %struct.smu_dpm_context*, align 8
  %15 = alloca %struct.arcturus_dpm_table*, align 8
  store %struct.smu_context* %0, %struct.smu_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %17 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %16, i32 0, i32 0
  store %struct.smu_dpm_context* %17, %struct.smu_dpm_context** %14, align 8
  store %struct.arcturus_dpm_table* null, %struct.arcturus_dpm_table** %15, align 8
  %18 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %14, align 8
  %19 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %18, i32 0, i32 0
  %20 = load %struct.arcturus_dpm_table*, %struct.arcturus_dpm_table** %19, align 8
  store %struct.arcturus_dpm_table* %20, %struct.arcturus_dpm_table** %15, align 8
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %265 [
    i32 129, label %22
    i32 130, label %83
    i32 128, label %144
    i32 131, label %204
  ]

22:                                               ; preds = %3
  %23 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %24 = load i32, i32* @SMU_GFXCLK, align 4
  %25 = call i32 @smu_get_current_clk_freq(%struct.smu_context* %23, i32 %24, i32* %9)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %4, align 4
  br label %268

31:                                               ; preds = %22
  %32 = load %struct.arcturus_dpm_table*, %struct.arcturus_dpm_table** %15, align 8
  %33 = getelementptr inbounds %struct.arcturus_dpm_table, %struct.arcturus_dpm_table* %32, i32 0, i32 3
  store %struct.arcturus_single_dpm_table* %33, %struct.arcturus_single_dpm_table** %13, align 8
  %34 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %35 = load %struct.arcturus_single_dpm_table*, %struct.arcturus_single_dpm_table** %13, align 8
  %36 = call i32 @arcturus_get_clk_table(%struct.smu_context* %34, %struct.pp_clock_levels_with_latency* %12, %struct.arcturus_single_dpm_table* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %4, align 4
  br label %268

42:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %79, %42
  %44 = load i32, i32* %8, align 4
  %45 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %12, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %82

48:                                               ; preds = %43
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i32, i32* %8, align 4
  %54 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %12, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sdiv i32 %60, 1000
  %62 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %12, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sdiv i32 %68, 1000
  %70 = load i32, i32* %9, align 4
  %71 = sdiv i32 %70, 100
  %72 = call i32 @arcturus_freqs_in_same_level(i32 %69, i32 %71)
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %76 = call i32 @sprintf(i8* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32 %61, i8* %75)
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %48
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %43

82:                                               ; preds = %43
  br label %266

83:                                               ; preds = %3
  %84 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %85 = load i32, i32* @SMU_UCLK, align 4
  %86 = call i32 @smu_get_current_clk_freq(%struct.smu_context* %84, i32 %85, i32* %9)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %4, align 4
  br label %268

92:                                               ; preds = %83
  %93 = load %struct.arcturus_dpm_table*, %struct.arcturus_dpm_table** %15, align 8
  %94 = getelementptr inbounds %struct.arcturus_dpm_table, %struct.arcturus_dpm_table* %93, i32 0, i32 2
  store %struct.arcturus_single_dpm_table* %94, %struct.arcturus_single_dpm_table** %13, align 8
  %95 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %96 = load %struct.arcturus_single_dpm_table*, %struct.arcturus_single_dpm_table** %13, align 8
  %97 = call i32 @arcturus_get_clk_table(%struct.smu_context* %95, %struct.pp_clock_levels_with_latency* %12, %struct.arcturus_single_dpm_table* %96)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %92
  %101 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %4, align 4
  br label %268

103:                                              ; preds = %92
  store i32 0, i32* %8, align 4
  br label %104

104:                                              ; preds = %140, %103
  %105 = load i32, i32* %8, align 4
  %106 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %12, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp slt i32 %105, %107
  br i1 %108, label %109, label %143

109:                                              ; preds = %104
  %110 = load i8*, i8** %7, align 8
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i32, i32* %8, align 4
  %115 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %12, i32 0, i32 1
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = sdiv i32 %121, 1000
  %123 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %12, i32 0, i32 1
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = sdiv i32 %129, 1000
  %131 = load i32, i32* %9, align 4
  %132 = sdiv i32 %131, 100
  %133 = call i32 @arcturus_freqs_in_same_level(i32 %130, i32 %132)
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %137 = call i32 @sprintf(i8* %113, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %114, i32 %122, i8* %136)
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %10, align 4
  br label %140

140:                                              ; preds = %109
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %8, align 4
  br label %104

143:                                              ; preds = %104
  br label %266

144:                                              ; preds = %3
  %145 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %146 = call i32 @smu_get_current_clk_freq(%struct.smu_context* %145, i32 128, i32* %9)
  store i32 %146, i32* %11, align 4
  %147 = load i32, i32* %11, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %151 = load i32, i32* %11, align 4
  store i32 %151, i32* %4, align 4
  br label %268

152:                                              ; preds = %144
  %153 = load %struct.arcturus_dpm_table*, %struct.arcturus_dpm_table** %15, align 8
  %154 = getelementptr inbounds %struct.arcturus_dpm_table, %struct.arcturus_dpm_table* %153, i32 0, i32 1
  store %struct.arcturus_single_dpm_table* %154, %struct.arcturus_single_dpm_table** %13, align 8
  %155 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %156 = load %struct.arcturus_single_dpm_table*, %struct.arcturus_single_dpm_table** %13, align 8
  %157 = call i32 @arcturus_get_clk_table(%struct.smu_context* %155, %struct.pp_clock_levels_with_latency* %12, %struct.arcturus_single_dpm_table* %156)
  store i32 %157, i32* %11, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %152
  %161 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  %162 = load i32, i32* %11, align 4
  store i32 %162, i32* %4, align 4
  br label %268

163:                                              ; preds = %152
  store i32 0, i32* %8, align 4
  br label %164

164:                                              ; preds = %200, %163
  %165 = load i32, i32* %8, align 4
  %166 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %12, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp slt i32 %165, %167
  br i1 %168, label %169, label %203

169:                                              ; preds = %164
  %170 = load i8*, i8** %7, align 8
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %170, i64 %172
  %174 = load i32, i32* %8, align 4
  %175 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %12, i32 0, i32 1
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = load i32, i32* %8, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = sdiv i32 %181, 1000
  %183 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %12, i32 0, i32 1
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %183, align 8
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = sdiv i32 %189, 1000
  %191 = load i32, i32* %9, align 4
  %192 = sdiv i32 %191, 100
  %193 = call i32 @arcturus_freqs_in_same_level(i32 %190, i32 %192)
  %194 = icmp ne i32 %193, 0
  %195 = zext i1 %194 to i64
  %196 = select i1 %194, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %197 = call i32 @sprintf(i8* %173, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %174, i32 %182, i8* %196)
  %198 = load i32, i32* %10, align 4
  %199 = add nsw i32 %198, %197
  store i32 %199, i32* %10, align 4
  br label %200

200:                                              ; preds = %169
  %201 = load i32, i32* %8, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %8, align 4
  br label %164

203:                                              ; preds = %164
  br label %266

204:                                              ; preds = %3
  %205 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %206 = call i32 @smu_get_current_clk_freq(%struct.smu_context* %205, i32 131, i32* %9)
  store i32 %206, i32* %11, align 4
  %207 = load i32, i32* %11, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %204
  %210 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %211 = load i32, i32* %11, align 4
  store i32 %211, i32* %4, align 4
  br label %268

212:                                              ; preds = %204
  %213 = load %struct.arcturus_dpm_table*, %struct.arcturus_dpm_table** %15, align 8
  %214 = getelementptr inbounds %struct.arcturus_dpm_table, %struct.arcturus_dpm_table* %213, i32 0, i32 0
  store %struct.arcturus_single_dpm_table* %214, %struct.arcturus_single_dpm_table** %13, align 8
  %215 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %216 = load %struct.arcturus_single_dpm_table*, %struct.arcturus_single_dpm_table** %13, align 8
  %217 = call i32 @arcturus_get_clk_table(%struct.smu_context* %215, %struct.pp_clock_levels_with_latency* %12, %struct.arcturus_single_dpm_table* %216)
  store i32 %217, i32* %11, align 4
  %218 = load i32, i32* %11, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %212
  %221 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %222 = load i32, i32* %11, align 4
  store i32 %222, i32* %4, align 4
  br label %268

223:                                              ; preds = %212
  store i32 0, i32* %8, align 4
  br label %224

224:                                              ; preds = %261, %223
  %225 = load i32, i32* %8, align 4
  %226 = load %struct.arcturus_single_dpm_table*, %struct.arcturus_single_dpm_table** %13, align 8
  %227 = getelementptr inbounds %struct.arcturus_single_dpm_table, %struct.arcturus_single_dpm_table* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = icmp slt i32 %225, %228
  br i1 %229, label %230, label %264

230:                                              ; preds = %224
  %231 = load i8*, i8** %7, align 8
  %232 = load i32, i32* %10, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8, i8* %231, i64 %233
  %235 = load i32, i32* %8, align 4
  %236 = load %struct.arcturus_single_dpm_table*, %struct.arcturus_single_dpm_table** %13, align 8
  %237 = getelementptr inbounds %struct.arcturus_single_dpm_table, %struct.arcturus_single_dpm_table* %236, i32 0, i32 1
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %237, align 8
  %239 = load i32, i32* %8, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %12, i32 0, i32 1
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** %244, align 8
  %246 = load i32, i32* %8, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = sdiv i32 %250, 1000
  %252 = load i32, i32* %9, align 4
  %253 = sdiv i32 %252, 100
  %254 = call i32 @arcturus_freqs_in_same_level(i32 %251, i32 %253)
  %255 = icmp ne i32 %254, 0
  %256 = zext i1 %255 to i64
  %257 = select i1 %255, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %258 = call i32 @sprintf(i8* %234, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %235, i32 %243, i8* %257)
  %259 = load i32, i32* %10, align 4
  %260 = add nsw i32 %259, %258
  store i32 %260, i32* %10, align 4
  br label %261

261:                                              ; preds = %230
  %262 = load i32, i32* %8, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %8, align 4
  br label %224

264:                                              ; preds = %224
  br label %266

265:                                              ; preds = %3
  br label %266

266:                                              ; preds = %265, %264, %203, %143, %82
  %267 = load i32, i32* %10, align 4
  store i32 %267, i32* %4, align 4
  br label %268

268:                                              ; preds = %266, %220, %209, %160, %149, %100, %89, %39, %28
  %269 = load i32, i32* %4, align 4
  ret i32 %269
}

declare dso_local i32 @smu_get_current_clk_freq(%struct.smu_context*, i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @arcturus_get_clk_table(%struct.smu_context*, %struct.pp_clock_levels_with_latency*, %struct.arcturus_single_dpm_table*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i8*) #1

declare dso_local i32 @arcturus_freqs_in_same_level(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
