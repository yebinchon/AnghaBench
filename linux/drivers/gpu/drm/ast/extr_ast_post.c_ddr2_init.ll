; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_ddr2_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_ddr2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_private = type { i32 }
%struct.ast2300_dram_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ast_private*, %struct.ast2300_dram_param*)* @ddr2_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddr2_init(%struct.ast_private* %0, %struct.ast2300_dram_param* %1) #0 {
  %3 = alloca %struct.ast_private*, align 8
  %4 = alloca %struct.ast2300_dram_param*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ast_private* %0, %struct.ast_private** %3, align 8
  store %struct.ast2300_dram_param* %1, %struct.ast2300_dram_param** %4, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %304, %2
  %9 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %10 = call i32 @ast_moutdwm(%struct.ast_private* %9, i32 510525440, i32 -60816631)
  %11 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %12 = call i32 @ast_moutdwm(%struct.ast_private* %11, i32 510525464, i32 256)
  %13 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %14 = call i32 @ast_moutdwm(%struct.ast_private* %13, i32 510525476, i32 0)
  %15 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %16 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %17 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @ast_moutdwm(%struct.ast_private* %15, i32 510525540, i32 %18)
  %20 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %21 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %22 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ast_moutdwm(%struct.ast_private* %20, i32 510525544, i32 %23)
  %25 = call i32 @udelay(i32 10)
  %26 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %27 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %28 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, 786432
  %31 = call i32 @ast_moutdwm(%struct.ast_private* %26, i32 510525540, i32 %30)
  %32 = call i32 @udelay(i32 10)
  %33 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %34 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %35 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @ast_moutdwm(%struct.ast_private* %33, i32 510525444, i32 %36)
  %38 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %39 = call i32 @ast_moutdwm(%struct.ast_private* %38, i32 510525448, i32 9438223)
  %40 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %41 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %42 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ast_moutdwm(%struct.ast_private* %40, i32 510525456, i32 %43)
  %45 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %46 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %47 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @ast_moutdwm(%struct.ast_private* %45, i32 510525460, i32 %48)
  %50 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %51 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %52 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ast_moutdwm(%struct.ast_private* %50, i32 510525472, i32 %53)
  %55 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %56 = call i32 @ast_moutdwm(%struct.ast_private* %55, i32 510525568, i32 0)
  %57 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %58 = call i32 @ast_moutdwm(%struct.ast_private* %57, i32 510525572, i32 0)
  %59 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %60 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %61 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @ast_moutdwm(%struct.ast_private* %59, i32 510525576, i32 %62)
  %64 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %65 = call i32 @ast_moutdwm(%struct.ast_private* %64, i32 510525464, i32 1073783088)
  %66 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %67 = call i32 @ast_moutdwm(%struct.ast_private* %66, i32 510525464, i32 9008)
  %68 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %69 = call i32 @ast_moutdwm(%struct.ast_private* %68, i32 510525496, i32 0)
  %70 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %71 = call i32 @ast_moutdwm(%struct.ast_private* %70, i32 510525504, i32 -8355840)
  %72 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %73 = call i32 @ast_moutdwm(%struct.ast_private* %72, i32 510525508, i32 -2004581274)
  %74 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %75 = call i32 @ast_moutdwm(%struct.ast_private* %74, i32 510525512, i32 1145307144)
  %76 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %77 = call i32 @ast_moutdwm(%struct.ast_private* %76, i32 510525516, i32 0)
  %78 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %79 = call i32 @ast_moutdwm(%struct.ast_private* %78, i32 510525520, i32 -2147483648)
  %80 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %81 = call i32 @ast_moutdwm(%struct.ast_private* %80, i32 510525520, i32 0)
  %82 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %83 = call i32 @ast_moutdwm(%struct.ast_private* %82, i32 510525524, i32 0)
  %84 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %85 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %86 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ast_moutdwm(%struct.ast_private* %84, i32 510525536, i32 %87)
  %89 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %90 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %91 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %90, i32 0, i32 8
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @ast_moutdwm(%struct.ast_private* %89, i32 510525548, i32 %92)
  %94 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %95 = call i32 @ast_moutdwm(%struct.ast_private* %94, i32 510525552, i32 0)
  %96 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %97 = call i32 @ast_moutdwm(%struct.ast_private* %96, i32 510525556, i32 0)
  %98 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %99 = call i32 @ast_moutdwm(%struct.ast_private* %98, i32 510525560, i32 0)
  %100 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %101 = call i32 @ast_moutdwm(%struct.ast_private* %100, i32 510525564, i32 0)
  br label %102

102:                                              ; preds = %105, %8
  %103 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %104 = call i32 @ast_mindwm(%struct.ast_private* %103, i32 510525468)
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %5, align 4
  %107 = and i32 %106, 134217728
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  br i1 %109, label %102, label %110

110:                                              ; preds = %105
  %111 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %112 = call i32 @ast_mindwm(%struct.ast_private* %111, i32 510525468)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = ashr i32 %113, 8
  %115 = and i32 %114, 255
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %199, %110
  %117 = load i32, i32* %5, align 4
  %118 = and i32 %117, 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %127, label %120

120:                                              ; preds = %116
  %121 = load i32, i32* %5, align 4
  %122 = and i32 %121, 7
  %123 = icmp slt i32 %122, 2
  br i1 %123, label %127, label %124

124:                                              ; preds = %120
  %125 = load i32, i32* %5, align 4
  %126 = icmp slt i32 %125, 4
  br label %127

127:                                              ; preds = %124, %120, %116
  %128 = phi i1 [ true, %120 ], [ true, %116 ], [ %126, %124 ]
  br i1 %128, label %129, label %205

129:                                              ; preds = %127
  %130 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %131 = call i32 @ast_mindwm(%struct.ast_private* %130, i32 510525540)
  %132 = and i32 %131, -786433
  %133 = add i32 %132, 4
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = and i32 %134, 255
  %136 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %137 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %136, i32 0, i32 9
  %138 = load i32, i32* %137, align 4
  %139 = icmp sgt i32 %135, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %129
  br label %205

141:                                              ; preds = %129
  %142 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @ast_moutdwm(%struct.ast_private* %142, i32 510525540, i32 %143)
  %145 = load i32, i32* %6, align 4
  %146 = and i32 %145, 1048576
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %141
  %149 = load i32, i32* %6, align 4
  %150 = and i32 %149, 255
  %151 = ashr i32 %150, 3
  %152 = add nsw i32 %151, 3
  store i32 %152, i32* %6, align 4
  br label %158

153:                                              ; preds = %141
  %154 = load i32, i32* %6, align 4
  %155 = and i32 %154, 255
  %156 = ashr i32 %155, 2
  %157 = add nsw i32 %156, 5
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %153, %148
  %159 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %160 = call i32 @ast_mindwm(%struct.ast_private* %159, i32 510525544)
  %161 = and i32 %160, -65281
  store i32 %161, i32* %5, align 4
  %162 = load i32, i32* %5, align 4
  %163 = and i32 %162, 255
  %164 = load i32, i32* %6, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* %6, align 4
  %166 = load i32, i32* %5, align 4
  %167 = load i32, i32* %6, align 4
  %168 = shl i32 %167, 8
  %169 = or i32 %166, %168
  store i32 %169, i32* %5, align 4
  %170 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %171 = load i32, i32* %5, align 4
  %172 = call i32 @ast_moutdwm(%struct.ast_private* %170, i32 510525544, i32 %171)
  %173 = call i32 @udelay(i32 10)
  %174 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %175 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %176 = call i32 @ast_mindwm(%struct.ast_private* %175, i32 510525540)
  %177 = or i32 %176, 786432
  %178 = call i32 @ast_moutdwm(%struct.ast_private* %174, i32 510525540, i32 %177)
  %179 = call i32 @udelay(i32 10)
  %180 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %181 = call i32 @ast_mindwm(%struct.ast_private* %180, i32 510525464)
  %182 = and i32 %181, -3585
  store i32 %182, i32* %5, align 4
  %183 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %184 = load i32, i32* %5, align 4
  %185 = call i32 @ast_moutdwm(%struct.ast_private* %183, i32 510525464, i32 %184)
  %186 = load i32, i32* %5, align 4
  %187 = or i32 %186, 512
  store i32 %187, i32* %5, align 4
  %188 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %189 = load i32, i32* %5, align 4
  %190 = call i32 @ast_moutdwm(%struct.ast_private* %188, i32 510525464, i32 %189)
  br label %191

191:                                              ; preds = %194, %158
  %192 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %193 = call i32 @ast_mindwm(%struct.ast_private* %192, i32 510525468)
  store i32 %193, i32* %5, align 4
  br label %194

194:                                              ; preds = %191
  %195 = load i32, i32* %5, align 4
  %196 = and i32 %195, 134217728
  %197 = icmp ne i32 %196, 0
  %198 = xor i1 %197, true
  br i1 %198, label %191, label %199

199:                                              ; preds = %194
  %200 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %201 = call i32 @ast_mindwm(%struct.ast_private* %200, i32 510525468)
  store i32 %201, i32* %5, align 4
  %202 = load i32, i32* %5, align 4
  %203 = ashr i32 %202, 8
  %204 = and i32 %203, 255
  store i32 %204, i32* %5, align 4
  br label %116

205:                                              ; preds = %140, %127
  %206 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %207 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %208 = call i32 @ast_mindwm(%struct.ast_private* %207, i32 510525448)
  %209 = and i32 %208, 65535
  %210 = call i32 @ast_moutdwm(%struct.ast_private* %206, i32 510787672, i32 %209)
  %211 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %212 = call i32 @ast_mindwm(%struct.ast_private* %211, i32 510525464)
  %213 = or i32 %212, 3072
  store i32 %213, i32* %5, align 4
  %214 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %215 = load i32, i32* %5, align 4
  %216 = call i32 @ast_moutdwm(%struct.ast_private* %214, i32 510525464, i32 %215)
  %217 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %218 = call i32 @ast_moutdwm(%struct.ast_private* %217, i32 510525492, i32 1)
  %219 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %220 = call i32 @ast_moutdwm(%struct.ast_private* %219, i32 510525452, i32 0)
  %221 = call i32 @udelay(i32 50)
  %222 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %223 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %224 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %223, i32 0, i32 10
  %225 = load i32, i32* %224, align 8
  %226 = or i32 %225, 256
  %227 = call i32 @ast_moutdwm(%struct.ast_private* %222, i32 510525484, i32 %226)
  %228 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %229 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %230 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %229, i32 0, i32 11
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @ast_moutdwm(%struct.ast_private* %228, i32 510525488, i32 %231)
  %233 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %234 = call i32 @ast_moutdwm(%struct.ast_private* %233, i32 510525480, i32 5)
  %235 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %236 = call i32 @ast_moutdwm(%struct.ast_private* %235, i32 510525480, i32 7)
  %237 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %238 = call i32 @ast_moutdwm(%struct.ast_private* %237, i32 510525480, i32 3)
  %239 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %240 = call i32 @ast_moutdwm(%struct.ast_private* %239, i32 510525480, i32 1)
  %241 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %242 = call i32 @ast_moutdwm(%struct.ast_private* %241, i32 510525452, i32 23560)
  %243 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %244 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %245 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %244, i32 0, i32 10
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @ast_moutdwm(%struct.ast_private* %243, i32 510525484, i32 %246)
  %248 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %249 = call i32 @ast_moutdwm(%struct.ast_private* %248, i32 510525480, i32 1)
  %250 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %251 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %252 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %251, i32 0, i32 11
  %253 = load i32, i32* %252, align 4
  %254 = or i32 %253, 896
  %255 = call i32 @ast_moutdwm(%struct.ast_private* %250, i32 510525488, i32 %254)
  %256 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %257 = call i32 @ast_moutdwm(%struct.ast_private* %256, i32 510525480, i32 3)
  %258 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %259 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %260 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %259, i32 0, i32 11
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @ast_moutdwm(%struct.ast_private* %258, i32 510525488, i32 %261)
  %263 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %264 = call i32 @ast_moutdwm(%struct.ast_private* %263, i32 510525480, i32 3)
  %265 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %266 = call i32 @ast_moutdwm(%struct.ast_private* %265, i32 510525452, i32 2147441665)
  store i32 0, i32* %5, align 4
  %267 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %268 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %267, i32 0, i32 14
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %205
  store i32 1280, i32* %5, align 4
  br label %272

272:                                              ; preds = %271, %205
  %273 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %274 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %273, i32 0, i32 13
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %286

277:                                              ; preds = %272
  %278 = load i32, i32* %5, align 4
  %279 = or i32 %278, 12288
  %280 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %281 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %280, i32 0, i32 4
  %282 = load i32, i32* %281, align 8
  %283 = and i32 %282, 393216
  %284 = ashr i32 %283, 3
  %285 = or i32 %279, %284
  store i32 %285, i32* %5, align 4
  br label %286

286:                                              ; preds = %277, %272
  %287 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %288 = load i32, i32* %5, align 4
  %289 = or i32 %288, 3
  %290 = call i32 @ast_moutdwm(%struct.ast_private* %287, i32 510525492, i32 %289)
  %291 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %292 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %293 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %292, i32 0, i32 12
  %294 = load i32, i32* %293, align 8
  %295 = call i32 @ast_moutdwm(%struct.ast_private* %291, i32 510525728, i32 %294)
  %296 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %297 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %298 = call i32 @cbr_dll2(%struct.ast_private* %296, %struct.ast2300_dram_param* %297)
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %305

300:                                              ; preds = %286
  %301 = load i32, i32* %7, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %7, align 4
  %303 = icmp slt i32 %301, 10
  br i1 %303, label %304, label %305

304:                                              ; preds = %300
  br label %8

305:                                              ; preds = %300, %286
  ret void
}

declare dso_local i32 @ast_moutdwm(%struct.ast_private*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ast_mindwm(%struct.ast_private*, i32) #1

declare dso_local i32 @cbr_dll2(%struct.ast_private*, %struct.ast2300_dram_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
