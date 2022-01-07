; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_get_ddr2_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_get_ddr2_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_private = type { i32 }
%struct.ast2300_dram_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ast_private*, %struct.ast2300_dram_param*)* @get_ddr2_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_ddr2_info(%struct.ast_private* %0, %struct.ast2300_dram_param* %1) #0 {
  %3 = alloca %struct.ast_private*, align 8
  %4 = alloca %struct.ast2300_dram_param*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ast_private* %0, %struct.ast_private** %3, align 8
  store %struct.ast2300_dram_param* %1, %struct.ast2300_dram_param** %4, align 8
  %8 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %9 = call i32 @ast_moutdwm(%struct.ast_private* %8, i32 510533632, i32 378054824)
  %10 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %11 = call i32 @ast_mindwm(%struct.ast_private* %10, i32 510533744)
  %12 = ashr i32 %11, 25
  %13 = and i32 %12, 3
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = shl i32 %14, 20
  %16 = load i32, i32* %5, align 4
  %17 = shl i32 %16, 16
  %18 = or i32 %15, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1114112
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = shl i32 %21, 4
  %23 = or i32 64, %22
  store i32 %23, i32* %7, align 4
  %24 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %25 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %24, i32 0, i32 0
  store i32 216140, i32* %25, align 4
  %26 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %27 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %26, i32 0, i32 1
  store i32 6144, i32* %27, align 4
  %28 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %29 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %28, i32 0, i32 2
  store i32 240, i32* %29, align 4
  %30 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %31 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %34 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %36 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %35, i32 0, i32 5
  store i32 0, i32* %36, align 4
  %37 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %38 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %123 [
    i32 264, label %40
    i32 336, label %67
    i32 396, label %124
    i32 408, label %182
    i32 456, label %240
    i32 504, label %267
    i32 528, label %296
    i32 552, label %325
    i32 576, label %354
  ]

40:                                               ; preds = %2
  %41 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %42 = call i32 @ast_moutdwm(%struct.ast_private* %41, i32 510533664, i32 304)
  %43 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %44 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %43, i32 0, i32 6
  store i32 0, i32* %44, align 4
  %45 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %46 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %45, i32 0, i32 7
  store i32 286266643, i32* %46, align 4
  %47 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %48 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %47, i32 0, i32 8
  store i32 2014408721, i32* %48, align 4
  %49 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %50 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %49, i32 0, i32 9
  store i32 146, i32* %50, align 4
  %51 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %52 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %51, i32 0, i32 10
  store i32 2114, i32* %52, align 4
  %53 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %54 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %53, i32 0, i32 11
  store i32 0, i32* %54, align 4
  %55 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %56 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %55, i32 0, i32 2
  store i32 240, i32* %56, align 4
  %57 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %58 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %57, i32 0, i32 12
  store i32 52, i32* %58, align 4
  %59 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %60 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %59, i32 0, i32 13
  store i32 90, i32* %60, align 4
  %61 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %62 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %61, i32 0, i32 14
  store i32 19136, i32* %62, align 4
  %63 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %64 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %63, i32 0, i32 15
  store i32 138, i32* %64, align 4
  %65 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %66 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %65, i32 0, i32 16
  store i32 3, i32* %66, align 4
  br label %383

67:                                               ; preds = %2
  %68 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %69 = call i32 @ast_moutdwm(%struct.ast_private* %68, i32 510533664, i32 400)
  %70 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %71 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %70, i32 0, i32 6
  store i32 1, i32* %71, align 4
  %72 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %73 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %72, i32 0, i32 7
  store i32 572532243, i32* %73, align 4
  %74 = load i32, i32* %6, align 4
  %75 = or i32 -1442803690, %74
  %76 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %77 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %76, i32 0, i32 8
  store i32 %75, i32* %77, align 4
  %78 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %79 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %78, i32 0, i32 9
  store i32 186, i32* %79, align 4
  %80 = load i32, i32* %7, align 4
  %81 = or i32 2562, %80
  %82 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %83 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %82, i32 0, i32 10
  store i32 %81, i32* %83, align 4
  %84 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %85 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %84, i32 0, i32 11
  store i32 64, i32* %85, align 4
  %86 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %87 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %86, i32 0, i32 2
  store i32 250, i32* %87, align 4
  %88 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %89 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %88, i32 0, i32 12
  store i32 52, i32* %89, align 4
  %90 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %91 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %90, i32 0, i32 13
  store i32 116, i32* %91, align 4
  %92 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %93 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %92, i32 0, i32 14
  store i32 19904, i32* %93, align 4
  %94 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %95 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %94, i32 0, i32 15
  store i32 96, i32* %95, align 4
  %96 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %97 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %96, i32 0, i32 16
  store i32 3, i32* %97, align 4
  %98 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %99 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %98, i32 0, i32 17
  %100 = load i32, i32* %99, align 4
  switch i32 %100, label %101 [
    i32 132, label %102
    i32 135, label %107
    i32 134, label %112
    i32 133, label %117
  ]

101:                                              ; preds = %67
  br label %102

102:                                              ; preds = %67, %101
  %103 = load i32, i32* %6, align 4
  %104 = or i32 -1442803694, %103
  %105 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %106 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %105, i32 0, i32 8
  store i32 %104, i32* %106, align 4
  br label %122

107:                                              ; preds = %67
  %108 = load i32, i32* %6, align 4
  %109 = or i32 -1442803690, %108
  %110 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %111 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %110, i32 0, i32 8
  store i32 %109, i32* %111, align 4
  br label %122

112:                                              ; preds = %67
  %113 = load i32, i32* %6, align 4
  %114 = or i32 -1442803677, %113
  %115 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %116 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %115, i32 0, i32 8
  store i32 %114, i32* %116, align 4
  br label %122

117:                                              ; preds = %67
  %118 = load i32, i32* %6, align 4
  %119 = or i32 -1442803653, %118
  %120 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %121 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %120, i32 0, i32 8
  store i32 %119, i32* %121, align 4
  br label %122

122:                                              ; preds = %117, %112, %107, %102
  br label %383

123:                                              ; preds = %2
  br label %124

124:                                              ; preds = %2, %123
  %125 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %126 = call i32 @ast_moutdwm(%struct.ast_private* %125, i32 510533664, i32 1009)
  %127 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %128 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %127, i32 0, i32 6
  store i32 1, i32* %128, align 4
  %129 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %130 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %129, i32 0, i32 5
  store i32 0, i32* %130, align 4
  %131 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %132 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %131, i32 0, i32 7
  store i32 858793748, i32* %132, align 4
  %133 = load i32, i32* %6, align 4
  %134 = or i32 -872370149, %133
  %135 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %136 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %135, i32 0, i32 8
  store i32 %134, i32* %136, align 4
  %137 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %138 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %137, i32 0, i32 9
  store i32 226, i32* %138, align 4
  %139 = load i32, i32* %7, align 4
  %140 = or i32 3074, %139
  %141 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %142 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %141, i32 0, i32 10
  store i32 %140, i32* %142, align 4
  %143 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %144 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %143, i32 0, i32 11
  store i32 64, i32* %144, align 4
  %145 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %146 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %145, i32 0, i32 2
  store i32 250, i32* %146, align 4
  %147 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %148 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %147, i32 0, i32 12
  store i32 52, i32* %148, align 4
  %149 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %150 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %149, i32 0, i32 13
  store i32 137, i32* %150, align 4
  %151 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %152 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %151, i32 0, i32 14
  store i32 20544, i32* %152, align 4
  %153 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %154 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %153, i32 0, i32 15
  store i32 96, i32* %154, align 4
  %155 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %156 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %155, i32 0, i32 16
  store i32 4, i32* %156, align 4
  %157 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %158 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %157, i32 0, i32 17
  %159 = load i32, i32* %158, align 4
  switch i32 %159, label %165 [
    i32 132, label %160
    i32 135, label %166
    i32 134, label %171
    i32 133, label %176
  ]

160:                                              ; preds = %124
  %161 = load i32, i32* %6, align 4
  %162 = or i32 -872370154, %161
  %163 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %164 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %163, i32 0, i32 8
  store i32 %162, i32* %164, align 4
  br label %181

165:                                              ; preds = %124
  br label %166

166:                                              ; preds = %124, %165
  %167 = load i32, i32* %6, align 4
  %168 = or i32 -872370149, %167
  %169 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %170 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %169, i32 0, i32 8
  store i32 %168, i32* %170, align 4
  br label %181

171:                                              ; preds = %124
  %172 = load i32, i32* %6, align 4
  %173 = or i32 -872370133, %172
  %174 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %175 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %174, i32 0, i32 8
  store i32 %173, i32* %175, align 4
  br label %181

176:                                              ; preds = %124
  %177 = load i32, i32* %6, align 4
  %178 = or i32 -872370113, %177
  %179 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %180 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %179, i32 0, i32 8
  store i32 %178, i32* %180, align 4
  br label %181

181:                                              ; preds = %176, %171, %166, %160
  br label %383

182:                                              ; preds = %2
  %183 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %184 = call i32 @ast_moutdwm(%struct.ast_private* %183, i32 510533664, i32 496)
  %185 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %186 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %185, i32 0, i32 6
  store i32 1, i32* %186, align 4
  %187 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %188 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %187, i32 0, i32 5
  store i32 0, i32* %188, align 4
  %189 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %190 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %189, i32 0, i32 7
  store i32 858793748, i32* %190, align 4
  %191 = load i32, i32* %6, align 4
  %192 = or i32 -872370149, %191
  %193 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %194 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %193, i32 0, i32 8
  store i32 %192, i32* %194, align 4
  %195 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %196 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %195, i32 0, i32 9
  store i32 226, i32* %196, align 4
  %197 = load i32, i32* %7, align 4
  %198 = or i32 3074, %197
  %199 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %200 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %199, i32 0, i32 10
  store i32 %198, i32* %200, align 4
  %201 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %202 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %201, i32 0, i32 11
  store i32 64, i32* %202, align 4
  %203 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %204 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %203, i32 0, i32 2
  store i32 250, i32* %204, align 4
  %205 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %206 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %205, i32 0, i32 12
  store i32 52, i32* %206, align 4
  %207 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %208 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %207, i32 0, i32 13
  store i32 137, i32* %208, align 4
  %209 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %210 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %209, i32 0, i32 14
  store i32 20672, i32* %210, align 4
  %211 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %212 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %211, i32 0, i32 15
  store i32 96, i32* %212, align 4
  %213 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %214 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %213, i32 0, i32 16
  store i32 4, i32* %214, align 4
  %215 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %216 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %215, i32 0, i32 17
  %217 = load i32, i32* %216, align 4
  switch i32 %217, label %223 [
    i32 132, label %218
    i32 135, label %224
    i32 134, label %229
    i32 133, label %234
  ]

218:                                              ; preds = %182
  %219 = load i32, i32* %6, align 4
  %220 = or i32 -872370154, %219
  %221 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %222 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %221, i32 0, i32 8
  store i32 %220, i32* %222, align 4
  br label %239

223:                                              ; preds = %182
  br label %224

224:                                              ; preds = %182, %223
  %225 = load i32, i32* %6, align 4
  %226 = or i32 -872370149, %225
  %227 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %228 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %227, i32 0, i32 8
  store i32 %226, i32* %228, align 4
  br label %239

229:                                              ; preds = %182
  %230 = load i32, i32* %6, align 4
  %231 = or i32 -872370133, %230
  %232 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %233 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %232, i32 0, i32 8
  store i32 %231, i32* %233, align 4
  br label %239

234:                                              ; preds = %182
  %235 = load i32, i32* %6, align 4
  %236 = or i32 -872370113, %235
  %237 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %238 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %237, i32 0, i32 8
  store i32 %236, i32* %238, align 4
  br label %239

239:                                              ; preds = %234, %229, %224, %218
  br label %383

240:                                              ; preds = %2
  %241 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %242 = call i32 @ast_moutdwm(%struct.ast_private* %241, i32 510533664, i32 560)
  %243 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %244 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %243, i32 0, i32 6
  store i32 0, i32* %244, align 4
  %245 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %246 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %245, i32 0, i32 7
  store i32 858794005, i32* %246, align 4
  %247 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %248 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %247, i32 0, i32 8
  store i32 -851136482, i32* %248, align 4
  %249 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %250 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %249, i32 0, i32 9
  store i32 252, i32* %250, align 4
  %251 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %252 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %251, i32 0, i32 10
  store i32 3698, i32* %252, align 4
  %253 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %254 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %253, i32 0, i32 11
  store i32 0, i32* %254, align 4
  %255 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %256 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %255, i32 0, i32 2
  store i32 0, i32* %256, align 4
  %257 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %258 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %257, i32 0, i32 12
  store i32 52, i32* %258, align 4
  %259 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %260 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %259, i32 0, i32 13
  store i32 151, i32* %260, align 4
  %261 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %262 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %261, i32 0, i32 14
  store i32 21184, i32* %262, align 4
  %263 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %264 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %263, i32 0, i32 15
  store i32 88, i32* %264, align 4
  %265 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %266 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %265, i32 0, i32 16
  store i32 3, i32* %266, align 4
  br label %383

267:                                              ; preds = %2
  %268 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %269 = call i32 @ast_moutdwm(%struct.ast_private* %268, i32 510533664, i32 609)
  %270 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %271 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %270, i32 0, i32 6
  store i32 1, i32* %271, align 4
  %272 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %273 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %272, i32 0, i32 5
  store i32 1, i32* %273, align 4
  %274 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %275 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %274, i32 0, i32 7
  store i32 858794005, i32* %275, align 4
  %276 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %277 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %276, i32 0, i32 8
  store i32 -565919710, i32* %277, align 4
  %278 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %279 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %278, i32 0, i32 9
  store i32 279, i32* %279, align 4
  %280 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %281 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %280, i32 0, i32 10
  store i32 3698, i32* %281, align 4
  %282 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %283 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %282, i32 0, i32 11
  store i32 64, i32* %283, align 4
  %284 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %285 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %284, i32 0, i32 2
  store i32 10, i32* %285, align 4
  %286 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %287 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %286, i32 0, i32 12
  store i32 69, i32* %287, align 4
  %288 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %289 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %288, i32 0, i32 13
  store i32 160, i32* %289, align 4
  %290 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %291 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %290, i32 0, i32 14
  store i32 21696, i32* %291, align 4
  %292 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %293 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %292, i32 0, i32 15
  store i32 79, i32* %293, align 4
  %294 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %295 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %294, i32 0, i32 16
  store i32 3, i32* %295, align 4
  br label %383

296:                                              ; preds = %2
  %297 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %298 = call i32 @ast_moutdwm(%struct.ast_private* %297, i32 510533664, i32 288)
  %299 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %300 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %299, i32 0, i32 6
  store i32 1, i32* %300, align 4
  %301 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %302 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %301, i32 0, i32 5
  store i32 1, i32* %302, align 4
  %303 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %304 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %303, i32 0, i32 7
  store i32 858794005, i32* %304, align 4
  %305 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %306 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %305, i32 0, i32 8
  store i32 -280702940, i32* %306, align 4
  %307 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %308 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %307, i32 0, i32 9
  store i32 293, i32* %308, align 4
  %309 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %310 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %309, i32 0, i32 10
  store i32 3698, i32* %310, align 4
  %311 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %312 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %311, i32 0, i32 11
  store i32 4, i32* %312, align 4
  %313 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %314 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %313, i32 0, i32 2
  store i32 249, i32* %314, align 4
  %315 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %316 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %315, i32 0, i32 12
  store i32 69, i32* %316, align 4
  %317 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %318 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %317, i32 0, i32 13
  store i32 167, i32* %318, align 4
  %319 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %320 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %319, i32 0, i32 14
  store i32 21952, i32* %320, align 4
  %321 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %322 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %321, i32 0, i32 15
  store i32 76, i32* %322, align 4
  %323 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %324 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %323, i32 0, i32 16
  store i32 3, i32* %324, align 4
  br label %383

325:                                              ; preds = %2
  %326 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %327 = call i32 @ast_moutdwm(%struct.ast_private* %326, i32 510533664, i32 673)
  %328 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %329 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %328, i32 0, i32 6
  store i32 1, i32* %329, align 4
  %330 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %331 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %330, i32 0, i32 5
  store i32 1, i32* %331, align 4
  %332 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %333 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %332, i32 0, i32 7
  store i32 1128278293, i32* %333, align 4
  %334 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %335 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %334, i32 0, i32 8
  store i32 -12263387, i32* %335, align 4
  %336 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %337 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %336, i32 0, i32 9
  store i32 306, i32* %337, align 4
  %338 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %339 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %338, i32 0, i32 10
  store i32 3698, i32* %339, align 4
  %340 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %341 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %340, i32 0, i32 11
  store i32 64, i32* %341, align 4
  %342 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %343 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %342, i32 0, i32 2
  store i32 10, i32* %343, align 4
  %344 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %345 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %344, i32 0, i32 12
  store i32 69, i32* %345, align 4
  %346 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %347 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %346, i32 0, i32 13
  store i32 173, i32* %347, align 4
  %348 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %349 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %348, i32 0, i32 14
  store i32 22208, i32* %349, align 4
  %350 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %351 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %350, i32 0, i32 15
  store i32 76, i32* %351, align 4
  %352 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %353 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %352, i32 0, i32 16
  store i32 3, i32* %353, align 4
  br label %383

354:                                              ; preds = %2
  %355 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %356 = call i32 @ast_moutdwm(%struct.ast_private* %355, i32 510533664, i32 320)
  %357 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %358 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %357, i32 0, i32 6
  store i32 1, i32* %358, align 4
  %359 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %360 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %359, i32 0, i32 5
  store i32 1, i32* %360, align 4
  %361 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %362 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %361, i32 0, i32 7
  store i32 1128278293, i32* %362, align 4
  %363 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %364 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %363, i32 0, i32 8
  store i32 -12263385, i32* %364, align 4
  %365 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %366 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %365, i32 0, i32 9
  store i32 319, i32* %366, align 4
  %367 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %368 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %367, i32 0, i32 10
  store i32 3698, i32* %368, align 4
  %369 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %370 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %369, i32 0, i32 11
  store i32 4, i32* %370, align 4
  %371 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %372 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %371, i32 0, i32 2
  store i32 245, i32* %372, align 4
  %373 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %374 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %373, i32 0, i32 12
  store i32 69, i32* %374, align 4
  %375 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %376 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %375, i32 0, i32 13
  store i32 179, i32* %376, align 4
  %377 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %378 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %377, i32 0, i32 14
  store i32 22464, i32* %378, align 4
  %379 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %380 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %379, i32 0, i32 15
  store i32 76, i32* %380, align 4
  %381 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %382 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %381, i32 0, i32 16
  store i32 3, i32* %382, align 4
  br label %383

383:                                              ; preds = %354, %325, %296, %267, %240, %239, %181, %122, %40
  %384 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %385 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %384, i32 0, i32 17
  %386 = load i32, i32* %385, align 4
  switch i32 %386, label %390 [
    i32 132, label %387
    i32 135, label %391
    i32 134, label %394
    i32 133, label %397
  ]

387:                                              ; preds = %383
  %388 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %389 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %388, i32 0, i32 18
  store i32 256, i32* %389, align 4
  br label %400

390:                                              ; preds = %383
  br label %391

391:                                              ; preds = %383, %390
  %392 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %393 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %392, i32 0, i32 18
  store i32 289, i32* %393, align 4
  br label %400

394:                                              ; preds = %383
  %395 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %396 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %395, i32 0, i32 18
  store i32 290, i32* %396, align 4
  br label %400

397:                                              ; preds = %383
  %398 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %399 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %398, i32 0, i32 18
  store i32 291, i32* %399, align 4
  br label %400

400:                                              ; preds = %397, %394, %391, %387
  %401 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %402 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %401, i32 0, i32 19
  %403 = load i32, i32* %402, align 4
  switch i32 %403, label %404 [
    i32 128, label %405
    i32 131, label %409
    i32 130, label %414
    i32 129, label %419
  ]

404:                                              ; preds = %400
  br label %405

405:                                              ; preds = %400, %404
  %406 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %407 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %406, i32 0, i32 18
  %408 = load i32, i32* %407, align 4
  store i32 %408, i32* %407, align 4
  br label %424

409:                                              ; preds = %400
  %410 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %411 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %410, i32 0, i32 18
  %412 = load i32, i32* %411, align 4
  %413 = or i32 %412, 4
  store i32 %413, i32* %411, align 4
  br label %424

414:                                              ; preds = %400
  %415 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %416 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %415, i32 0, i32 18
  %417 = load i32, i32* %416, align 4
  %418 = or i32 %417, 8
  store i32 %418, i32* %416, align 4
  br label %424

419:                                              ; preds = %400
  %420 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %421 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %420, i32 0, i32 18
  %422 = load i32, i32* %421, align 4
  %423 = or i32 %422, 12
  store i32 %423, i32* %421, align 4
  br label %424

424:                                              ; preds = %419, %414, %409, %405
  ret void
}

declare dso_local i32 @ast_moutdwm(%struct.ast_private*, i32, i32) #1

declare dso_local i32 @ast_mindwm(%struct.ast_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
