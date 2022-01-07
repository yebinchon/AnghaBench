; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_ddr3_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_ddr3_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_private = type { i32 }
%struct.ast2300_dram_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ast_private*, %struct.ast2300_dram_param*)* @ddr3_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddr3_init(%struct.ast_private* %0, %struct.ast2300_dram_param* %1) #0 {
  %3 = alloca %struct.ast_private*, align 8
  %4 = alloca %struct.ast2300_dram_param*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ast_private* %0, %struct.ast_private** %3, align 8
  store %struct.ast2300_dram_param* %1, %struct.ast2300_dram_param** %4, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %287, %2
  %9 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %10 = call i32 @ast_moutdwm(%struct.ast_private* %9, i32 510525440, i32 -60816631)
  %11 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %12 = call i32 @ast_moutdwm(%struct.ast_private* %11, i32 510525464, i32 256)
  %13 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %14 = call i32 @ast_moutdwm(%struct.ast_private* %13, i32 510525476, i32 0)
  %15 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %16 = call i32 @ast_moutdwm(%struct.ast_private* %15, i32 510525492, i32 0)
  %17 = call i32 @udelay(i32 10)
  %18 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %19 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %20 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ast_moutdwm(%struct.ast_private* %18, i32 510525540, i32 %21)
  %23 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %24 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %25 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ast_moutdwm(%struct.ast_private* %23, i32 510525544, i32 %26)
  %28 = call i32 @udelay(i32 10)
  %29 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %30 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %31 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, 786432
  %34 = call i32 @ast_moutdwm(%struct.ast_private* %29, i32 510525540, i32 %33)
  %35 = call i32 @udelay(i32 10)
  %36 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %37 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %38 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ast_moutdwm(%struct.ast_private* %36, i32 510525444, i32 %39)
  %41 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %42 = call i32 @ast_moutdwm(%struct.ast_private* %41, i32 510525448, i32 9438223)
  %43 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %44 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %45 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ast_moutdwm(%struct.ast_private* %43, i32 510525456, i32 %46)
  %48 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %49 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %50 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @ast_moutdwm(%struct.ast_private* %48, i32 510525460, i32 %51)
  %53 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %54 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %55 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ast_moutdwm(%struct.ast_private* %53, i32 510525472, i32 %56)
  %58 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %59 = call i32 @ast_moutdwm(%struct.ast_private* %58, i32 510525568, i32 0)
  %60 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %61 = call i32 @ast_moutdwm(%struct.ast_private* %60, i32 510525572, i32 0)
  %62 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %63 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %64 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @ast_moutdwm(%struct.ast_private* %62, i32 510525576, i32 %65)
  %67 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %68 = call i32 @ast_moutdwm(%struct.ast_private* %67, i32 510525464, i32 1073783152)
  %69 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %70 = call i32 @ast_moutdwm(%struct.ast_private* %69, i32 510525464, i32 9072)
  %71 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %72 = call i32 @ast_moutdwm(%struct.ast_private* %71, i32 510525496, i32 0)
  %73 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %74 = call i32 @ast_moutdwm(%struct.ast_private* %73, i32 510525504, i32 -12303292)
  %75 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %76 = call i32 @ast_moutdwm(%struct.ast_private* %75, i32 510525508, i32 572662306)
  %77 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %78 = call i32 @ast_moutdwm(%struct.ast_private* %77, i32 510525512, i32 572662306)
  %79 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %80 = call i32 @ast_moutdwm(%struct.ast_private* %79, i32 510525516, i32 2)
  %81 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %82 = call i32 @ast_moutdwm(%struct.ast_private* %81, i32 510525520, i32 -2147483648)
  %83 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %84 = call i32 @ast_moutdwm(%struct.ast_private* %83, i32 510525520, i32 0)
  %85 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %86 = call i32 @ast_moutdwm(%struct.ast_private* %85, i32 510525524, i32 0)
  %87 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %88 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %89 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ast_moutdwm(%struct.ast_private* %87, i32 510525536, i32 %90)
  %92 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %93 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %94 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %93, i32 0, i32 8
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @ast_moutdwm(%struct.ast_private* %92, i32 510525548, i32 %95)
  %97 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %98 = call i32 @ast_moutdwm(%struct.ast_private* %97, i32 510525552, i32 0)
  %99 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %100 = call i32 @ast_moutdwm(%struct.ast_private* %99, i32 510525556, i32 0)
  %101 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %102 = call i32 @ast_moutdwm(%struct.ast_private* %101, i32 510525560, i32 0)
  %103 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %104 = call i32 @ast_moutdwm(%struct.ast_private* %103, i32 510525564, i32 0)
  br label %105

105:                                              ; preds = %108, %8
  %106 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %107 = call i32 @ast_mindwm(%struct.ast_private* %106, i32 510525468)
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %5, align 4
  %110 = and i32 %109, 134217728
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  br i1 %112, label %105, label %113

113:                                              ; preds = %108
  %114 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %115 = call i32 @ast_mindwm(%struct.ast_private* %114, i32 510525468)
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %5, align 4
  %117 = ashr i32 %116, 8
  %118 = and i32 %117, 255
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %202, %113
  %120 = load i32, i32* %5, align 4
  %121 = and i32 %120, 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %5, align 4
  %125 = and i32 %124, 7
  %126 = icmp slt i32 %125, 2
  br i1 %126, label %130, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* %5, align 4
  %129 = icmp slt i32 %128, 4
  br label %130

130:                                              ; preds = %127, %123, %119
  %131 = phi i1 [ true, %123 ], [ true, %119 ], [ %129, %127 ]
  br i1 %131, label %132, label %208

132:                                              ; preds = %130
  %133 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %134 = call i32 @ast_mindwm(%struct.ast_private* %133, i32 510525540)
  %135 = and i32 %134, -786433
  %136 = add i32 %135, 4
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = and i32 %137, 255
  %139 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %140 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %139, i32 0, i32 9
  %141 = load i32, i32* %140, align 4
  %142 = icmp sgt i32 %138, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %132
  br label %208

144:                                              ; preds = %132
  %145 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @ast_moutdwm(%struct.ast_private* %145, i32 510525540, i32 %146)
  %148 = load i32, i32* %6, align 4
  %149 = and i32 %148, 1048576
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %144
  %152 = load i32, i32* %6, align 4
  %153 = and i32 %152, 255
  %154 = ashr i32 %153, 3
  %155 = add nsw i32 %154, 3
  store i32 %155, i32* %6, align 4
  br label %161

156:                                              ; preds = %144
  %157 = load i32, i32* %6, align 4
  %158 = and i32 %157, 255
  %159 = ashr i32 %158, 2
  %160 = add nsw i32 %159, 5
  store i32 %160, i32* %6, align 4
  br label %161

161:                                              ; preds = %156, %151
  %162 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %163 = call i32 @ast_mindwm(%struct.ast_private* %162, i32 510525544)
  %164 = and i32 %163, -65281
  store i32 %164, i32* %5, align 4
  %165 = load i32, i32* %5, align 4
  %166 = and i32 %165, 255
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %6, align 4
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* %6, align 4
  %171 = shl i32 %170, 8
  %172 = or i32 %169, %171
  store i32 %172, i32* %5, align 4
  %173 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %174 = load i32, i32* %5, align 4
  %175 = call i32 @ast_moutdwm(%struct.ast_private* %173, i32 510525544, i32 %174)
  %176 = call i32 @udelay(i32 10)
  %177 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %178 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %179 = call i32 @ast_mindwm(%struct.ast_private* %178, i32 510525540)
  %180 = or i32 %179, 786432
  %181 = call i32 @ast_moutdwm(%struct.ast_private* %177, i32 510525540, i32 %180)
  %182 = call i32 @udelay(i32 10)
  %183 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %184 = call i32 @ast_mindwm(%struct.ast_private* %183, i32 510525464)
  %185 = and i32 %184, -3585
  store i32 %185, i32* %5, align 4
  %186 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %187 = load i32, i32* %5, align 4
  %188 = call i32 @ast_moutdwm(%struct.ast_private* %186, i32 510525464, i32 %187)
  %189 = load i32, i32* %5, align 4
  %190 = or i32 %189, 512
  store i32 %190, i32* %5, align 4
  %191 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %192 = load i32, i32* %5, align 4
  %193 = call i32 @ast_moutdwm(%struct.ast_private* %191, i32 510525464, i32 %192)
  br label %194

194:                                              ; preds = %197, %161
  %195 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %196 = call i32 @ast_mindwm(%struct.ast_private* %195, i32 510525468)
  store i32 %196, i32* %5, align 4
  br label %197

197:                                              ; preds = %194
  %198 = load i32, i32* %5, align 4
  %199 = and i32 %198, 134217728
  %200 = icmp ne i32 %199, 0
  %201 = xor i1 %200, true
  br i1 %201, label %194, label %202

202:                                              ; preds = %197
  %203 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %204 = call i32 @ast_mindwm(%struct.ast_private* %203, i32 510525468)
  store i32 %204, i32* %5, align 4
  %205 = load i32, i32* %5, align 4
  %206 = ashr i32 %205, 8
  %207 = and i32 %206, 255
  store i32 %207, i32* %5, align 4
  br label %119

208:                                              ; preds = %143, %130
  %209 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %210 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %211 = call i32 @ast_mindwm(%struct.ast_private* %210, i32 510525544)
  %212 = and i32 %211, 65535
  %213 = call i32 @ast_moutdwm(%struct.ast_private* %209, i32 510787672, i32 %212)
  %214 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %215 = call i32 @ast_mindwm(%struct.ast_private* %214, i32 510525464)
  %216 = or i32 %215, 3072
  store i32 %216, i32* %5, align 4
  %217 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %218 = load i32, i32* %5, align 4
  %219 = call i32 @ast_moutdwm(%struct.ast_private* %217, i32 510525464, i32 %218)
  %220 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %221 = call i32 @ast_moutdwm(%struct.ast_private* %220, i32 510525492, i32 1)
  %222 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %223 = call i32 @ast_moutdwm(%struct.ast_private* %222, i32 510525452, i32 64)
  %224 = call i32 @udelay(i32 50)
  %225 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %226 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %227 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %226, i32 0, i32 10
  %228 = load i32, i32* %227, align 8
  %229 = or i32 %228, 256
  %230 = call i32 @ast_moutdwm(%struct.ast_private* %225, i32 510525484, i32 %229)
  %231 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %232 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %233 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %232, i32 0, i32 11
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @ast_moutdwm(%struct.ast_private* %231, i32 510525488, i32 %234)
  %236 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %237 = call i32 @ast_moutdwm(%struct.ast_private* %236, i32 510525480, i32 5)
  %238 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %239 = call i32 @ast_moutdwm(%struct.ast_private* %238, i32 510525480, i32 7)
  %240 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %241 = call i32 @ast_moutdwm(%struct.ast_private* %240, i32 510525480, i32 3)
  %242 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %243 = call i32 @ast_moutdwm(%struct.ast_private* %242, i32 510525480, i32 1)
  %244 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %245 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %246 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %245, i32 0, i32 10
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @ast_moutdwm(%struct.ast_private* %244, i32 510525484, i32 %247)
  %249 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %250 = call i32 @ast_moutdwm(%struct.ast_private* %249, i32 510525452, i32 23560)
  %251 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %252 = call i32 @ast_moutdwm(%struct.ast_private* %251, i32 510525480, i32 1)
  %253 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %254 = call i32 @ast_moutdwm(%struct.ast_private* %253, i32 510525452, i32 23553)
  store i32 0, i32* %5, align 4
  %255 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %256 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %255, i32 0, i32 14
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %208
  store i32 768, i32* %5, align 4
  br label %260

260:                                              ; preds = %259, %208
  %261 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %262 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %261, i32 0, i32 13
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %274

265:                                              ; preds = %260
  %266 = load i32, i32* %5, align 4
  %267 = or i32 %266, 12288
  %268 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %269 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %268, i32 0, i32 4
  %270 = load i32, i32* %269, align 8
  %271 = and i32 %270, 393216
  %272 = ashr i32 %271, 3
  %273 = or i32 %267, %272
  store i32 %273, i32* %5, align 4
  br label %274

274:                                              ; preds = %265, %260
  %275 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %276 = load i32, i32* %5, align 4
  %277 = or i32 %276, 3
  %278 = call i32 @ast_moutdwm(%struct.ast_private* %275, i32 510525492, i32 %277)
  %279 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %280 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %281 = call i32 @cbr_dll2(%struct.ast_private* %279, %struct.ast2300_dram_param* %280)
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %288

283:                                              ; preds = %274
  %284 = load i32, i32* %7, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %7, align 4
  %286 = icmp slt i32 %284, 10
  br i1 %286, label %287, label %288

287:                                              ; preds = %283
  br label %8

288:                                              ; preds = %283, %274
  %289 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %290 = load %struct.ast2300_dram_param*, %struct.ast2300_dram_param** %4, align 8
  %291 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %290, i32 0, i32 12
  %292 = load i32, i32* %291, align 8
  %293 = call i32 @ast_moutdwm(%struct.ast_private* %289, i32 510525728, i32 %292)
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
