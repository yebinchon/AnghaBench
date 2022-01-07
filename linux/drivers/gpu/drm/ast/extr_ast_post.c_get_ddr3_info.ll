; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_get_ddr3_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_get_ddr3_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_private = type { i32 }
%struct.ast2300_dram_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ast_private*, %struct.ast2300_dram_param*)* @get_ddr3_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_ddr3_info(%struct.ast_private* %0, %struct.ast2300_dram_param* %1) #0 {
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
  %15 = shl i32 %14, 16
  %16 = add nsw i32 131072, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 2
  %19 = shl i32 %18, 19
  %20 = add nsw i32 3145728, %19
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = shl i32 %23, 4
  %25 = add nsw i32 16, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, 2
  %28 = shl i32 %27, 18
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %32 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %31, i32 0, i32 0
  store i32 216140, i32* %32, align 4
  %33 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %34 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %33, i32 0, i32 1
  store i32 6144, i32* %34, align 4
  %35 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %36 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %35, i32 0, i32 2
  store i32 240, i32* %36, align 4
  %37 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %38 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %41 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %43 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %42, i32 0, i32 5
  store i32 0, i32* %43, align 4
  %44 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %45 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %96 [
    i32 336, label %47
    i32 396, label %97
    i32 408, label %148
    i32 456, label %199
    i32 504, label %224
    i32 528, label %249
    i32 576, label %278
    i32 600, label %311
    i32 624, label %344
  ]

47:                                               ; preds = %2
  %48 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %49 = call i32 @ast_moutdwm(%struct.ast_private* %48, i32 510533664, i32 400)
  %50 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %51 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %50, i32 0, i32 6
  store i32 0, i32* %51, align 4
  %52 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %53 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %52, i32 0, i32 7
  store i32 572532517, i32* %53, align 4
  %54 = load i32, i32* %6, align 4
  %55 = or i32 -1442810349, %54
  %56 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %57 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %56, i32 0, i32 8
  store i32 %55, i32* %57, align 4
  %58 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %59 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %58, i32 0, i32 9
  store i32 186, i32* %59, align 4
  %60 = load i32, i32* %7, align 4
  %61 = or i32 67113984, %60
  %62 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %63 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %62, i32 0, i32 10
  store i32 %61, i32* %63, align 4
  %64 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %65 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %64, i32 0, i32 11
  store i32 0, i32* %65, align 4
  %66 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %67 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %66, i32 0, i32 12
  store i32 35, i32* %67, align 4
  %68 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %69 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %68, i32 0, i32 13
  store i32 116, i32* %69, align 4
  %70 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %71 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %70, i32 0, i32 14
  store i32 19904, i32* %71, align 4
  %72 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %73 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %72, i32 0, i32 15
  store i32 96, i32* %73, align 4
  %74 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %75 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %74, i32 0, i32 16
  store i32 3, i32* %75, align 4
  %76 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %77 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %76, i32 0, i32 17
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %79 [
    i32 132, label %80
    i32 135, label %80
    i32 134, label %85
    i32 133, label %90
  ]

79:                                               ; preds = %47
  br label %80

80:                                               ; preds = %47, %47, %79
  %81 = load i32, i32* %6, align 4
  %82 = or i32 -1442810349, %81
  %83 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %84 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %83, i32 0, i32 8
  store i32 %82, i32* %84, align 4
  br label %95

85:                                               ; preds = %47
  %86 = load i32, i32* %6, align 4
  %87 = or i32 -1442810340, %86
  %88 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %89 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %88, i32 0, i32 8
  store i32 %87, i32* %89, align 4
  br label %95

90:                                               ; preds = %47
  %91 = load i32, i32* %6, align 4
  %92 = or i32 -1442810314, %91
  %93 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %94 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %93, i32 0, i32 8
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %90, %85, %80
  br label %377

96:                                               ; preds = %2
  br label %97

97:                                               ; preds = %2, %96
  %98 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %99 = call i32 @ast_moutdwm(%struct.ast_private* %98, i32 510533664, i32 1009)
  %100 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %101 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %100, i32 0, i32 6
  store i32 1, i32* %101, align 4
  %102 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %103 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %102, i32 0, i32 7
  store i32 858794021, i32* %103, align 4
  %104 = load i32, i32* %6, align 4
  %105 = or i32 -872376809, %104
  %106 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %107 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %106, i32 0, i32 8
  store i32 %105, i32* %107, align 4
  %108 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %109 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %108, i32 0, i32 9
  store i32 226, i32* %109, align 4
  %110 = load i32, i32* %7, align 4
  %111 = or i32 67114496, %110
  %112 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %113 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %112, i32 0, i32 10
  store i32 %111, i32* %113, align 4
  %114 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %115 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %114, i32 0, i32 11
  store i32 0, i32* %115, align 4
  %116 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %117 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %116, i32 0, i32 12
  store i32 52, i32* %117, align 4
  %118 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %119 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %118, i32 0, i32 2
  store i32 250, i32* %119, align 4
  %120 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %121 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %120, i32 0, i32 13
  store i32 137, i32* %121, align 4
  %122 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %123 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %122, i32 0, i32 14
  store i32 20544, i32* %123, align 4
  %124 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %125 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %124, i32 0, i32 15
  store i32 96, i32* %125, align 4
  %126 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %127 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %126, i32 0, i32 16
  store i32 4, i32* %127, align 4
  %128 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %129 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %128, i32 0, i32 17
  %130 = load i32, i32* %129, align 4
  switch i32 %130, label %131 [
    i32 132, label %132
    i32 135, label %132
    i32 134, label %137
    i32 133, label %142
  ]

131:                                              ; preds = %97
  br label %132

132:                                              ; preds = %97, %97, %131
  %133 = load i32, i32* %6, align 4
  %134 = or i32 -872376809, %133
  %135 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %136 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %135, i32 0, i32 8
  store i32 %134, i32* %136, align 4
  br label %147

137:                                              ; preds = %97
  %138 = load i32, i32* %6, align 4
  %139 = or i32 -872376798, %138
  %140 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %141 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %140, i32 0, i32 8
  store i32 %139, i32* %141, align 4
  br label %147

142:                                              ; preds = %97
  %143 = load i32, i32* %6, align 4
  %144 = or i32 -872376769, %143
  %145 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %146 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %145, i32 0, i32 8
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %142, %137, %132
  br label %377

148:                                              ; preds = %2
  %149 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %150 = call i32 @ast_moutdwm(%struct.ast_private* %149, i32 510533664, i32 496)
  %151 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %152 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %151, i32 0, i32 6
  store i32 1, i32* %152, align 4
  %153 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %154 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %153, i32 0, i32 7
  store i32 858794021, i32* %154, align 4
  %155 = load i32, i32* %6, align 4
  %156 = or i32 -872376809, %155
  %157 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %158 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %157, i32 0, i32 8
  store i32 %156, i32* %158, align 4
  %159 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %160 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %159, i32 0, i32 9
  store i32 226, i32* %160, align 4
  %161 = load i32, i32* %7, align 4
  %162 = or i32 67114496, %161
  %163 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %164 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %163, i32 0, i32 10
  store i32 %162, i32* %164, align 4
  %165 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %166 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %165, i32 0, i32 11
  store i32 0, i32* %166, align 4
  %167 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %168 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %167, i32 0, i32 12
  store i32 35, i32* %168, align 4
  %169 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %170 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %169, i32 0, i32 2
  store i32 250, i32* %170, align 4
  %171 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %172 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %171, i32 0, i32 13
  store i32 137, i32* %172, align 4
  %173 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %174 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %173, i32 0, i32 14
  store i32 20672, i32* %174, align 4
  %175 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %176 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %175, i32 0, i32 15
  store i32 96, i32* %176, align 4
  %177 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %178 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %177, i32 0, i32 16
  store i32 4, i32* %178, align 4
  %179 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %180 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %179, i32 0, i32 17
  %181 = load i32, i32* %180, align 4
  switch i32 %181, label %182 [
    i32 132, label %183
    i32 135, label %183
    i32 134, label %188
    i32 133, label %193
  ]

182:                                              ; preds = %148
  br label %183

183:                                              ; preds = %148, %148, %182
  %184 = load i32, i32* %6, align 4
  %185 = or i32 -872376809, %184
  %186 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %187 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %186, i32 0, i32 8
  store i32 %185, i32* %187, align 4
  br label %198

188:                                              ; preds = %148
  %189 = load i32, i32* %6, align 4
  %190 = or i32 -872376798, %189
  %191 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %192 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %191, i32 0, i32 8
  store i32 %190, i32* %192, align 4
  br label %198

193:                                              ; preds = %148
  %194 = load i32, i32* %6, align 4
  %195 = or i32 -872376769, %194
  %196 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %197 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %196, i32 0, i32 8
  store i32 %195, i32* %197, align 4
  br label %198

198:                                              ; preds = %193, %188, %183
  br label %377

199:                                              ; preds = %2
  %200 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %201 = call i32 @ast_moutdwm(%struct.ast_private* %200, i32 510533664, i32 560)
  %202 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %203 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %202, i32 0, i32 6
  store i32 0, i32* %203, align 4
  %204 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %205 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %204, i32 0, i32 7
  store i32 858794278, i32* %205, align 4
  %206 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %207 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %206, i32 0, i32 8
  store i32 -851143142, i32* %207, align 4
  %208 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %209 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %208, i32 0, i32 9
  store i32 252, i32* %209, align 4
  %210 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %211 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %210, i32 0, i32 10
  store i32 530480, i32* %211, align 4
  %212 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %213 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %212, i32 0, i32 11
  store i32 0, i32* %213, align 4
  %214 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %215 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %214, i32 0, i32 12
  store i32 69, i32* %215, align 4
  %216 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %217 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %216, i32 0, i32 13
  store i32 151, i32* %217, align 4
  %218 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %219 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %218, i32 0, i32 14
  store i32 21184, i32* %219, align 4
  %220 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %221 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %220, i32 0, i32 15
  store i32 88, i32* %221, align 4
  %222 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %223 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %222, i32 0, i32 16
  store i32 4, i32* %223, align 4
  br label %377

224:                                              ; preds = %2
  %225 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %226 = call i32 @ast_moutdwm(%struct.ast_private* %225, i32 510533664, i32 624)
  %227 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %228 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %227, i32 0, i32 6
  store i32 1, i32* %228, align 4
  %229 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %230 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %229, i32 0, i32 7
  store i32 858794278, i32* %230, align 4
  %231 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %232 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %231, i32 0, i32 8
  store i32 -565926371, i32* %232, align 4
  %233 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %234 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %233, i32 0, i32 9
  store i32 279, i32* %234, align 4
  %235 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %236 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %235, i32 0, i32 10
  store i32 530992, i32* %236, align 4
  %237 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %238 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %237, i32 0, i32 11
  store i32 0, i32* %238, align 4
  %239 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %240 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %239, i32 0, i32 12
  store i32 117440699, i32* %240, align 4
  %241 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %242 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %241, i32 0, i32 13
  store i32 160, i32* %242, align 4
  %243 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %244 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %243, i32 0, i32 14
  store i32 21696, i32* %244, align 4
  %245 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %246 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %245, i32 0, i32 15
  store i32 79, i32* %246, align 4
  %247 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %248 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %247, i32 0, i32 16
  store i32 4, i32* %248, align 4
  br label %377

249:                                              ; preds = %2
  %250 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %251 = call i32 @ast_moutdwm(%struct.ast_private* %250, i32 510533664, i32 656)
  %252 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %253 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %252, i32 0, i32 6
  store i32 1, i32* %253, align 4
  %254 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %255 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %254, i32 0, i32 5
  store i32 1, i32* %255, align 4
  %256 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %257 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %256, i32 0, i32 7
  store i32 858794278, i32* %257, align 4
  %258 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %259 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %258, i32 0, i32 8
  store i32 -280709602, i32* %259, align 4
  %260 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %261 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %260, i32 0, i32 9
  store i32 293, i32* %261, align 4
  %262 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %263 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %262, i32 0, i32 10
  store i32 530992, i32* %263, align 4
  %264 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %265 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %264, i32 0, i32 11
  store i32 64, i32* %265, align 4
  %266 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %267 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %266, i32 0, i32 2
  store i32 245, i32* %267, align 4
  %268 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %269 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %268, i32 0, i32 12
  store i32 35, i32* %269, align 4
  %270 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %271 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %270, i32 0, i32 13
  store i32 136, i32* %271, align 4
  %272 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %273 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %272, i32 0, i32 14
  store i32 21952, i32* %273, align 4
  %274 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %275 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %274, i32 0, i32 15
  store i32 76, i32* %275, align 4
  %276 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %277 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %276, i32 0, i32 16
  store i32 3, i32* %277, align 4
  br label %377

278:                                              ; preds = %2
  %279 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %280 = call i32 @ast_moutdwm(%struct.ast_private* %279, i32 510533664, i32 320)
  %281 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %282 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %281, i32 0, i32 0
  store i32 1271912, i32* %282, align 4
  %283 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %284 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %283, i32 0, i32 1
  store i32 17716, i32* %284, align 4
  %285 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %286 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %285, i32 0, i32 6
  store i32 1, i32* %286, align 4
  %287 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %288 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %287, i32 0, i32 5
  store i32 1, i32* %288, align 4
  %289 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %290 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %289, i32 0, i32 7
  store i32 858794551, i32* %290, align 4
  %291 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %292 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %291, i32 0, i32 8
  store i32 -279529954, i32* %292, align 4
  %293 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %294 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %293, i32 0, i32 9
  store i32 319, i32* %294, align 4
  %295 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %296 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %295, i32 0, i32 10
  store i32 1055312, i32* %296, align 4
  %297 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %298 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %297, i32 0, i32 11
  store i32 64, i32* %298, align 4
  %299 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %300 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %299, i32 0, i32 2
  store i32 250, i32* %300, align 4
  %301 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %302 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %301, i32 0, i32 12
  store i32 35, i32* %302, align 4
  %303 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %304 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %303, i32 0, i32 13
  store i32 120, i32* %304, align 4
  %305 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %306 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %305, i32 0, i32 14
  store i32 22464, i32* %306, align 4
  %307 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %308 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %307, i32 0, i32 15
  store i32 136, i32* %308, align 4
  %309 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %310 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %309, i32 0, i32 16
  store i32 3, i32* %310, align 4
  br label %377

311:                                              ; preds = %2
  %312 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %313 = call i32 @ast_moutdwm(%struct.ast_private* %312, i32 510533664, i32 737)
  %314 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %315 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %314, i32 0, i32 0
  store i32 1271912, i32* %315, align 4
  %316 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %317 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %316, i32 0, i32 1
  store i32 17716, i32* %317, align 4
  %318 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %319 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %318, i32 0, i32 6
  store i32 1, i32* %319, align 4
  %320 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %321 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %320, i32 0, i32 5
  store i32 1, i32* %321, align 4
  %322 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %323 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %322, i32 0, i32 7
  store i32 842017335, i32* %323, align 4
  %324 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %325 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %324, i32 0, i32 8
  store i32 -547965409, i32* %325, align 4
  %326 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %327 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %326, i32 0, i32 9
  store i32 333, i32* %327, align 4
  %328 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %329 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %328, i32 0, i32 10
  store i32 1055312, i32* %329, align 4
  %330 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %331 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %330, i32 0, i32 11
  store i32 4, i32* %331, align 4
  %332 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %333 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %332, i32 0, i32 2
  store i32 245, i32* %333, align 4
  %334 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %335 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %334, i32 0, i32 12
  store i32 35, i32* %335, align 4
  %336 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %337 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %336, i32 0, i32 13
  store i32 120, i32* %337, align 4
  %338 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %339 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %338, i32 0, i32 14
  store i32 22720, i32* %339, align 4
  %340 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %341 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %340, i32 0, i32 15
  store i32 132, i32* %341, align 4
  %342 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %343 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %342, i32 0, i32 16
  store i32 3, i32* %343, align 4
  br label %377

344:                                              ; preds = %2
  %345 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %346 = call i32 @ast_moutdwm(%struct.ast_private* %345, i32 510533664, i32 352)
  %347 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %348 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %347, i32 0, i32 0
  store i32 1271912, i32* %348, align 4
  %349 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %350 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %349, i32 0, i32 1
  store i32 17716, i32* %350, align 4
  %351 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %352 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %351, i32 0, i32 6
  store i32 1, i32* %352, align 4
  %353 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %354 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %353, i32 0, i32 5
  store i32 1, i32* %354, align 4
  %355 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %356 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %355, i32 0, i32 7
  store i32 842017335, i32* %356, align 4
  %357 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %358 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %357, i32 0, i32 8
  store i32 -279529951, i32* %358, align 4
  %359 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %360 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %359, i32 0, i32 9
  store i32 346, i32* %360, align 4
  %361 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %362 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %361, i32 0, i32 10
  store i32 34609744, i32* %362, align 4
  %363 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %364 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %363, i32 0, i32 11
  store i32 4, i32* %364, align 4
  %365 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %366 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %365, i32 0, i32 2
  store i32 245, i32* %366, align 4
  %367 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %368 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %367, i32 0, i32 12
  store i32 52, i32* %368, align 4
  %369 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %370 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %369, i32 0, i32 13
  store i32 120, i32* %370, align 4
  %371 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %372 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %371, i32 0, i32 14
  store i32 22976, i32* %372, align 4
  %373 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %374 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %373, i32 0, i32 15
  store i32 128, i32* %374, align 4
  %375 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %376 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %375, i32 0, i32 16
  store i32 3, i32* %376, align 4
  br label %377

377:                                              ; preds = %344, %311, %278, %249, %224, %199, %198, %147, %95
  %378 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %379 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %378, i32 0, i32 17
  %380 = load i32, i32* %379, align 4
  switch i32 %380, label %384 [
    i32 132, label %381
    i32 135, label %385
    i32 134, label %388
    i32 133, label %391
  ]

381:                                              ; preds = %377
  %382 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %383 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %382, i32 0, i32 18
  store i32 304, i32* %383, align 4
  br label %394

384:                                              ; preds = %377
  br label %385

385:                                              ; preds = %377, %384
  %386 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %387 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %386, i32 0, i32 18
  store i32 305, i32* %387, align 4
  br label %394

388:                                              ; preds = %377
  %389 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %390 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %389, i32 0, i32 18
  store i32 306, i32* %390, align 4
  br label %394

391:                                              ; preds = %377
  %392 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %393 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %392, i32 0, i32 18
  store i32 307, i32* %393, align 4
  br label %394

394:                                              ; preds = %391, %388, %385, %381
  %395 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %396 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %395, i32 0, i32 19
  %397 = load i32, i32* %396, align 4
  switch i32 %397, label %398 [
    i32 128, label %399
    i32 131, label %403
    i32 130, label %408
    i32 129, label %413
  ]

398:                                              ; preds = %394
  br label %399

399:                                              ; preds = %394, %398
  %400 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %401 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %400, i32 0, i32 18
  %402 = load i32, i32* %401, align 4
  store i32 %402, i32* %401, align 4
  br label %418

403:                                              ; preds = %394
  %404 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %405 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %404, i32 0, i32 18
  %406 = load i32, i32* %405, align 4
  %407 = or i32 %406, 4
  store i32 %407, i32* %405, align 4
  br label %418

408:                                              ; preds = %394
  %409 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %410 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %409, i32 0, i32 18
  %411 = load i32, i32* %410, align 4
  %412 = or i32 %411, 8
  store i32 %412, i32* %410, align 4
  br label %418

413:                                              ; preds = %394
  %414 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %415 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %414, i32 0, i32 18
  %416 = load i32, i32* %415, align 4
  %417 = or i32 %416, 12
  store i32 %417, i32* %415, align 4
  br label %418

418:                                              ; preds = %413, %408, %403, %399
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
