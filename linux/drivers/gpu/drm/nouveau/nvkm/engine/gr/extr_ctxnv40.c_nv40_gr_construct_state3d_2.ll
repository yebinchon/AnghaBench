; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxnv40.c_nv40_gr_construct_state3d_2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxnv40.c_nv40_gr_construct_state3d_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_grctx = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_grctx*)* @nv40_gr_construct_state3d_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv40_gr_construct_state3d_2(%struct.nvkm_grctx* %0) #0 {
  %2 = alloca %struct.nvkm_grctx*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca i32, align 4
  store %struct.nvkm_grctx* %0, %struct.nvkm_grctx** %2, align 8
  %5 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %6 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %5, i32 0, i32 0
  %7 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  store %struct.nvkm_device* %7, %struct.nvkm_device** %3, align 8
  %8 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %9 = call i32 @cp_ctx(%struct.nvkm_grctx* %8, i32 4202496, i32 1)
  %10 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %12 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 64
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 1, i32 2
  %17 = call i32 @cp_ctx(%struct.nvkm_grctx* %10, i32 4203524, i32 %16)
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %19 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %30 [
    i32 64, label %21
    i32 76, label %24
    i32 78, label %24
    i32 103, label %24
    i32 70, label %27
    i32 73, label %27
    i32 75, label %27
  ]

21:                                               ; preds = %1
  %22 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %23 = call i32 @gr_def(%struct.nvkm_grctx* %22, i32 4203524, i32 1)
  br label %33

24:                                               ; preds = %1, %1, %1
  %25 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %26 = call i32 @gr_def(%struct.nvkm_grctx* %25, i32 4203524, i32 32)
  br label %33

27:                                               ; preds = %1, %1, %1
  %28 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %29 = call i32 @gr_def(%struct.nvkm_grctx* %28, i32 4203524, i32 1057)
  br label %33

30:                                               ; preds = %1
  %31 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %32 = call i32 @gr_def(%struct.nvkm_grctx* %31, i32 4203524, i32 33)
  br label %33

33:                                               ; preds = %30, %27, %24, %21
  %34 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %35 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 64
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %40 = call i32 @gr_def(%struct.nvkm_grctx* %39, i32 4203528, i32 51130563)
  br label %41

41:                                               ; preds = %38, %33
  %42 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %43 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %50 [
    i32 68, label %45
    i32 70, label %45
    i32 74, label %45
    i32 76, label %45
    i32 78, label %45
    i32 103, label %45
  ]

45:                                               ; preds = %41, %41, %41, %41, %41, %41
  %46 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %47 = call i32 @cp_ctx(%struct.nvkm_grctx* %46, i32 4203584, i32 1)
  %48 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %49 = call i32 @gr_def(%struct.nvkm_grctx* %48, i32 4203584, i32 69633)
  br label %51

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %45
  %52 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %53 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %54 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 64
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 8, i32 9
  %59 = call i32 @cp_ctx(%struct.nvkm_grctx* %52, i32 4203648, i32 %58)
  %60 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %61 = call i32 @gr_def(%struct.nvkm_grctx* %60, i32 4203656, i32 1040318976)
  %62 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %63 = call i32 @gr_def(%struct.nvkm_grctx* %62, i32 4203660, i32 16777215)
  %64 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %65 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %76 [
    i32 64, label %67
    i32 71, label %70
    i32 65, label %73
    i32 66, label %73
    i32 73, label %73
    i32 75, label %73
  ]

67:                                               ; preds = %51
  %68 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %69 = call i32 @gr_def(%struct.nvkm_grctx* %68, i32 4203664, i32 1611677440)
  br label %79

70:                                               ; preds = %51
  %71 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %72 = call i32 @gr_def(%struct.nvkm_grctx* %71, i32 4203664, i32 1074806528)
  br label %79

73:                                               ; preds = %51, %51, %51, %51
  %74 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %75 = call i32 @gr_def(%struct.nvkm_grctx* %74, i32 4203664, i32 537935616)
  br label %79

76:                                               ; preds = %51
  %77 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %78 = call i32 @gr_def(%struct.nvkm_grctx* %77, i32 4203664, i32 202391296)
  br label %79

79:                                               ; preds = %76, %73, %70, %67
  %80 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %81 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %82 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp sle i32 %83, 67
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 131072, i32 262144
  %87 = call i32 @gr_def(%struct.nvkm_grctx* %80, i32 4203676, i32 %86)
  %88 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %89 = call i32 @cp_ctx(%struct.nvkm_grctx* %88, i32 4203776, i32 31)
  %90 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %91 = call i32 @gr_def(%struct.nvkm_grctx* %90, i32 4203824, i32 33024)
  %92 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %93 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 64
  br i1 %95, label %96, label %99

96:                                               ; preds = %79
  %97 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %98 = call i32 @cp_ctx(%struct.nvkm_grctx* %97, i32 4203900, i32 6)
  br label %99

99:                                               ; preds = %96, %79
  %100 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %101 = call i32 @cp_ctx(%struct.nvkm_grctx* %100, i32 4203924, i32 16)
  %102 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %103 = call i32 @cp_ctx(%struct.nvkm_grctx* %102, i32 4204544, i32 17)
  %104 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %105 = call i32 @gr_def(%struct.nvkm_grctx* %104, i32 4204544, i32 1)
  %106 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %107 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  switch i32 %108, label %147 [
    i32 71, label %109
    i32 73, label %109
    i32 75, label %109
    i32 64, label %140
  ]

109:                                              ; preds = %99, %99, %99
  %110 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %111 = call i32 @cp_ctx(%struct.nvkm_grctx* %110, i32 4204644, i32 1)
  %112 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %113 = call i32 @gr_def(%struct.nvkm_grctx* %112, i32 4204644, i32 4097)
  %114 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %115 = call i32 @cp_ctx(%struct.nvkm_grctx* %114, i32 4204656, i32 3)
  %116 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %117 = call i32 @gr_def(%struct.nvkm_grctx* %116, i32 4204664, i32 3)
  %118 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %119 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 71
  br i1 %121, label %122, label %139

122:                                              ; preds = %109
  %123 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %124 = call i32 @cp_ctx(%struct.nvkm_grctx* %123, i32 4204800, i32 1)
  %125 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %126 = call i32 @cp_ctx(%struct.nvkm_grctx* %125, i32 4204864, i32 1)
  %127 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %128 = call i32 @cp_ctx(%struct.nvkm_grctx* %127, i32 4204928, i32 1)
  %129 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %130 = call i32 @cp_ctx(%struct.nvkm_grctx* %129, i32 4204992, i32 1)
  %131 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %132 = call i32 @cp_ctx(%struct.nvkm_grctx* %131, i32 4205056, i32 1)
  %133 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %134 = call i32 @cp_ctx(%struct.nvkm_grctx* %133, i32 4205120, i32 1)
  %135 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %136 = call i32 @cp_ctx(%struct.nvkm_grctx* %135, i32 4205184, i32 1)
  %137 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %138 = call i32 @cp_ctx(%struct.nvkm_grctx* %137, i32 4205248, i32 1)
  br label %139

139:                                              ; preds = %122, %109
  br label %156

140:                                              ; preds = %99
  %141 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %142 = call i32 @cp_ctx(%struct.nvkm_grctx* %141, i32 4204612, i32 1)
  %143 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %144 = call i32 @gr_def(%struct.nvkm_grctx* %143, i32 4204612, i32 1)
  %145 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %146 = call i32 @cp_ctx(%struct.nvkm_grctx* %145, i32 4204624, i32 1)
  br label %156

147:                                              ; preds = %99
  %148 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %149 = call i32 @cp_ctx(%struct.nvkm_grctx* %148, i32 4204612, i32 1)
  %150 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %151 = call i32 @gr_def(%struct.nvkm_grctx* %150, i32 4204612, i32 4097)
  %152 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %153 = call i32 @cp_ctx(%struct.nvkm_grctx* %152, i32 4204624, i32 2)
  %154 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %155 = call i32 @gr_def(%struct.nvkm_grctx* %154, i32 4204628, i32 3)
  br label %156

156:                                              ; preds = %147, %140, %139
  %157 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %158 = call i32 @cp_ctx(%struct.nvkm_grctx* %157, i32 4205568, i32 4)
  %159 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %160 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %161 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %162, 64
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i32 -2139095039, i32 8945665
  %166 = call i32 @gr_def(%struct.nvkm_grctx* %159, i32 4205568, i32 %165)
  %167 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %168 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  switch i32 %169, label %192 [
    i32 71, label %170
    i32 73, label %170
    i32 75, label %170
  ]

170:                                              ; preds = %156, %156, %156
  %171 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %172 = call i32 @cp_ctx(%struct.nvkm_grctx* %171, i32 4205600, i32 40)
  store i32 0, i32* %4, align 4
  br label %173

173:                                              ; preds = %182, %170
  %174 = load i32, i32* %4, align 4
  %175 = icmp slt i32 %174, 32
  br i1 %175, label %176, label %185

176:                                              ; preds = %173
  %177 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %178 = load i32, i32* %4, align 4
  %179 = mul nsw i32 %178, 4
  %180 = add nsw i32 4205632, %179
  %181 = call i32 @gr_def(%struct.nvkm_grctx* %177, i32 %180, i32 -1)
  br label %182

182:                                              ; preds = %176
  %183 = load i32, i32* %4, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %4, align 4
  br label %173

185:                                              ; preds = %173
  %186 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %187 = call i32 @cp_ctx(%struct.nvkm_grctx* %186, i32 4206776, i32 13)
  %188 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %189 = call i32 @gr_def(%struct.nvkm_grctx* %188, i32 4206812, i32 5)
  %190 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %191 = call i32 @gr_def(%struct.nvkm_grctx* %190, i32 4206824, i32 65535)
  br label %242

192:                                              ; preds = %156
  %193 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %194 = call i32 @cp_ctx(%struct.nvkm_grctx* %193, i32 4205584, i32 4)
  %195 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %196 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %197, 64
  br i1 %198, label %199, label %202

199:                                              ; preds = %192
  %200 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %201 = call i32 @cp_ctx(%struct.nvkm_grctx* %200, i32 4205600, i32 36)
  br label %223

202:                                              ; preds = %192
  %203 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %204 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = icmp sle i32 %205, 66
  br i1 %206, label %207, label %210

207:                                              ; preds = %202
  %208 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %209 = call i32 @cp_ctx(%struct.nvkm_grctx* %208, i32 4205600, i32 24)
  br label %222

210:                                              ; preds = %202
  %211 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %212 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = icmp sle i32 %213, 74
  br i1 %214, label %215, label %218

215:                                              ; preds = %210
  %216 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %217 = call i32 @cp_ctx(%struct.nvkm_grctx* %216, i32 4205600, i32 16)
  br label %221

218:                                              ; preds = %210
  %219 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %220 = call i32 @cp_ctx(%struct.nvkm_grctx* %219, i32 4205600, i32 8)
  br label %221

221:                                              ; preds = %218, %215
  br label %222

222:                                              ; preds = %221, %207
  br label %223

223:                                              ; preds = %222, %199
  %224 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %225 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %226 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = icmp eq i32 %227, 64
  %229 = zext i1 %228 to i64
  %230 = select i1 %228, i32 12, i32 13
  %231 = call i32 @cp_ctx(%struct.nvkm_grctx* %224, i32 4205744, i32 %230)
  %232 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %233 = call i32 @gr_def(%struct.nvkm_grctx* %232, i32 4205780, i32 5)
  %234 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %235 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = icmp ne i32 %236, 64
  br i1 %237, label %238, label %241

238:                                              ; preds = %223
  %239 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %240 = call i32 @gr_def(%struct.nvkm_grctx* %239, i32 4205792, i32 65535)
  br label %241

241:                                              ; preds = %238, %223
  br label %242

242:                                              ; preds = %241, %185
  %243 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %244 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %245 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = icmp eq i32 %246, 64
  %248 = zext i1 %247 to i64
  %249 = select i1 %247, i32 4, i32 3
  %250 = call i32 @cp_ctx(%struct.nvkm_grctx* %243, i32 4207616, i32 %249)
  %251 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %252 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %253 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = icmp eq i32 %254, 64
  %256 = zext i1 %255 to i64
  %257 = select i1 %255, i32 4, i32 3
  %258 = call i32 @cp_ctx(%struct.nvkm_grctx* %251, i32 4207632, i32 %257)
  %259 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %260 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %261 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %260, i32 0, i32 0
  %262 = load %struct.nvkm_device*, %struct.nvkm_device** %261, align 8
  %263 = call i32 @nv40_gr_vs_count(%struct.nvkm_device* %262)
  %264 = call i32 @cp_ctx(%struct.nvkm_grctx* %259, i32 4207648, i32 %263)
  store i32 0, i32* %4, align 4
  br label %265

265:                                              ; preds = %278, %242
  %266 = load i32, i32* %4, align 4
  %267 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %268 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %267, i32 0, i32 0
  %269 = load %struct.nvkm_device*, %struct.nvkm_device** %268, align 8
  %270 = call i32 @nv40_gr_vs_count(%struct.nvkm_device* %269)
  %271 = icmp slt i32 %266, %270
  br i1 %271, label %272, label %281

272:                                              ; preds = %265
  %273 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %274 = load i32, i32* %4, align 4
  %275 = mul nsw i32 %274, 4
  %276 = add nsw i32 4207648, %275
  %277 = call i32 @gr_def(%struct.nvkm_grctx* %273, i32 %276, i32 21845)
  br label %278

278:                                              ; preds = %272
  %279 = load i32, i32* %4, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %4, align 4
  br label %265

281:                                              ; preds = %265
  %282 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %283 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = icmp ne i32 %284, 64
  br i1 %285, label %286, label %291

286:                                              ; preds = %281
  %287 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %288 = call i32 @cp_ctx(%struct.nvkm_grctx* %287, i32 4208128, i32 1)
  %289 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %290 = call i32 @gr_def(%struct.nvkm_grctx* %289, i32 4208128, i32 1)
  br label %291

291:                                              ; preds = %286, %281
  %292 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %293 = call i32 @cp_ctx(%struct.nvkm_grctx* %292, i32 4208640, i32 1)
  %294 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %295 = call i32 @cp_ctx(%struct.nvkm_grctx* %294, i32 4209688, i32 1)
  %296 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %297 = call i32 @gr_def(%struct.nvkm_grctx* %296, i32 4209688, i32 1)
  %298 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %299 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  switch i32 %300, label %310 [
    i32 70, label %301
    i32 71, label %301
    i32 73, label %301
    i32 75, label %301
  ]

301:                                              ; preds = %291, %291, %291, %291
  %302 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %303 = call i32 @cp_ctx(%struct.nvkm_grctx* %302, i32 4214808, i32 1)
  %304 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %305 = call i32 @gr_def(%struct.nvkm_grctx* %304, i32 4214808, i32 148897793)
  %306 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %307 = call i32 @cp_ctx(%struct.nvkm_grctx* %306, i32 4217892, i32 1)
  %308 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %309 = call i32 @gr_def(%struct.nvkm_grctx* %308, i32 4217892, i32 929792)
  br label %310

310:                                              ; preds = %291, %301
  %311 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %312 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = icmp ne i32 %313, 78
  br i1 %314, label %315, label %318

315:                                              ; preds = %310
  %316 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %317 = call i32 @cp_ctx(%struct.nvkm_grctx* %316, i32 4216832, i32 11)
  br label %318

318:                                              ; preds = %315, %310
  %319 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %320 = call i32 @cp_ctx(%struct.nvkm_grctx* %319, i32 4222976, i32 1)
  ret void
}

declare dso_local i32 @cp_ctx(%struct.nvkm_grctx*, i32, i32) #1

declare dso_local i32 @gr_def(%struct.nvkm_grctx*, i32, i32) #1

declare dso_local i32 @nv40_gr_vs_count(%struct.nvkm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
