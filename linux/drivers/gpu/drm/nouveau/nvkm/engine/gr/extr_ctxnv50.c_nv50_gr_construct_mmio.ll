; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxnv50.c_nv50_gr_construct_mmio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxnv50.c_nv50_gr_construct_mmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_grctx = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@NVKM_RAM_TYPE_GDDR5 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_grctx*)* @nv50_gr_construct_mmio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_gr_construct_mmio(%struct.nvkm_grctx* %0) #0 {
  %2 = alloca %struct.nvkm_grctx*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nvkm_grctx* %0, %struct.nvkm_grctx** %2, align 8
  %9 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %10 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %9, i32 0, i32 0
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  store %struct.nvkm_device* %11, %struct.nvkm_device** %3, align 8
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %13 = call i32 @nvkm_rd32(%struct.nvkm_device* %12, i32 5440)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %15 = call i32 @cp_ctx(%struct.nvkm_grctx* %14, i32 4196360, i32 7)
  %16 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %17 = call i32 @gr_def(%struct.nvkm_grctx* %16, i32 4196372, i32 48)
  %18 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %19 = call i32 @cp_ctx(%struct.nvkm_grctx* %18, i32 4196404, i32 50)
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %21 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 80
  br i1 %23, label %24, label %33

24:                                               ; preds = %1
  %25 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %26 = call i32 @gr_def(%struct.nvkm_grctx* %25, i32 4196404, i32 -12582848)
  %27 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %28 = call i32 @gr_def(%struct.nvkm_grctx* %27, i32 4196408, i32 -1048448)
  %29 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %30 = call i32 @gr_def(%struct.nvkm_grctx* %29, i32 4196412, i32 -589680)
  %31 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %32 = call i32 @gr_def(%struct.nvkm_grctx* %31, i32 4196416, i32 -1571160)
  br label %33

33:                                               ; preds = %24, %1
  %34 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %35 = call i32 @gr_def(%struct.nvkm_grctx* %34, i32 4196420, i32 2)
  %36 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %37 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @IS_NVA3F(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %43 = call i32 @gr_def(%struct.nvkm_grctx* %42, i32 4196500, i32 4096)
  br label %44

44:                                               ; preds = %41, %33
  %45 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %46 = call i32 @gr_def(%struct.nvkm_grctx* %45, i32 4196584, i32 3)
  %47 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %48 = call i32 @gr_def(%struct.nvkm_grctx* %47, i32 4196588, i32 4096)
  %49 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %50 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 80
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %55 = call i32 @cp_ctx(%struct.nvkm_grctx* %54, i32 4196616, i32 11)
  br label %68

56:                                               ; preds = %44
  %57 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %58 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %59, 160
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %63 = call i32 @cp_ctx(%struct.nvkm_grctx* %62, i32 4196616, i32 12)
  br label %67

64:                                               ; preds = %56
  %65 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %66 = call i32 @cp_ctx(%struct.nvkm_grctx* %65, i32 4196616, i32 14)
  br label %67

67:                                               ; preds = %64, %61
  br label %68

68:                                               ; preds = %67, %53
  %69 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %70 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp sge i32 %71, 160
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %75 = call i32 @cp_ctx(%struct.nvkm_grctx* %74, i32 4197120, i32 1)
  br label %76

76:                                               ; preds = %73, %68
  %77 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %78 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @IS_NVA3F(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %76
  %83 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %84 = call i32 @cp_ctx(%struct.nvkm_grctx* %83, i32 4197136, i32 1)
  %85 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %86 = call i32 @gr_def(%struct.nvkm_grctx* %85, i32 4197136, i32 90781)
  %87 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %88 = call i32 @cp_ctx(%struct.nvkm_grctx* %87, i32 4197152, i32 1)
  %89 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %90 = call i32 @gr_def(%struct.nvkm_grctx* %89, i32 4197152, i32 90781)
  br label %91

91:                                               ; preds = %82, %76
  %92 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %93 = call i32 @nv50_gr_construct_mmio_ddata(%struct.nvkm_grctx* %92)
  %94 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %95 = call i32 @cp_ctx(%struct.nvkm_grctx* %94, i32 4197384, i32 2)
  %96 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %97 = call i32 @gr_def(%struct.nvkm_grctx* %96, i32 4197384, i32 65036)
  %98 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %99 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %100, 160
  br i1 %101, label %102, label %107

102:                                              ; preds = %91
  %103 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %104 = call i32 @cp_ctx(%struct.nvkm_grctx* %103, i32 4198408, i32 4)
  %105 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %106 = call i32 @gr_def(%struct.nvkm_grctx* %105, i32 4198420, i32 4096)
  br label %124

107:                                              ; preds = %91
  %108 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %109 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i64 @IS_NVA3F(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %107
  %114 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %115 = call i32 @cp_ctx(%struct.nvkm_grctx* %114, i32 4198408, i32 5)
  %116 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %117 = call i32 @gr_def(%struct.nvkm_grctx* %116, i32 4198424, i32 4096)
  br label %123

118:                                              ; preds = %107
  %119 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %120 = call i32 @cp_ctx(%struct.nvkm_grctx* %119, i32 4198408, i32 5)
  %121 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %122 = call i32 @gr_def(%struct.nvkm_grctx* %121, i32 4198424, i32 16384)
  br label %123

123:                                              ; preds = %118, %113
  br label %124

124:                                              ; preds = %123, %102
  %125 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %126 = call i32 @cp_ctx(%struct.nvkm_grctx* %125, i32 4199424, i32 8)
  %127 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %128 = call i32 @cp_ctx(%struct.nvkm_grctx* %127, i32 4199460, i32 3)
  %129 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %130 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %131, 80
  br i1 %132, label %133, label %136

133:                                              ; preds = %124
  %134 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %135 = call i32 @gr_def(%struct.nvkm_grctx* %134, i32 4199468, i32 130439)
  br label %139

136:                                              ; preds = %124
  %137 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %138 = call i32 @gr_def(%struct.nvkm_grctx* %137, i32 4199468, i32 391)
  br label %139

139:                                              ; preds = %136, %133
  %140 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %141 = call i32 @cp_ctx(%struct.nvkm_grctx* %140, i32 4199744, i32 5)
  %142 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %143 = call i32 @gr_def(%struct.nvkm_grctx* %142, i32 4199760, i32 4120)
  %144 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %145 = call i32 @cp_ctx(%struct.nvkm_grctx* %144, i32 4200468, i32 1)
  %146 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %147 = call i32 @gr_def(%struct.nvkm_grctx* %146, i32 4200468, i32 255)
  %148 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %149 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp eq i32 %150, 80
  br i1 %151, label %152, label %157

152:                                              ; preds = %139
  %153 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %154 = call i32 @cp_ctx(%struct.nvkm_grctx* %153, i32 4200476, i32 14)
  %155 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %156 = call i32 @gr_def(%struct.nvkm_grctx* %155, i32 4200528, i32 4)
  br label %173

157:                                              ; preds = %139
  %158 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %159 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp slt i32 %160, 160
  br i1 %161, label %162, label %167

162:                                              ; preds = %157
  %163 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %164 = call i32 @cp_ctx(%struct.nvkm_grctx* %163, i32 4200476, i32 15)
  %165 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %166 = call i32 @gr_def(%struct.nvkm_grctx* %165, i32 4200532, i32 4)
  br label %172

167:                                              ; preds = %157
  %168 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %169 = call i32 @cp_ctx(%struct.nvkm_grctx* %168, i32 4200476, i32 19)
  %170 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %171 = call i32 @gr_def(%struct.nvkm_grctx* %170, i32 4200548, i32 4)
  br label %172

172:                                              ; preds = %167, %162
  br label %173

173:                                              ; preds = %172, %152
  %174 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %175 = call i32 @cp_ctx(%struct.nvkm_grctx* %174, i32 4201472, i32 1)
  %176 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %177 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  switch i32 %178, label %191 [
    i32 80, label %179
    i32 132, label %182
    i32 134, label %182
    i32 148, label %182
    i32 146, label %185
    i32 150, label %185
    i32 152, label %185
    i32 160, label %185
    i32 170, label %185
    i32 172, label %185
    i32 163, label %188
    i32 165, label %188
    i32 168, label %188
    i32 175, label %188
  ]

179:                                              ; preds = %173
  %180 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %181 = call i32 @gr_def(%struct.nvkm_grctx* %180, i32 4201472, i32 65631)
  br label %191

182:                                              ; preds = %173, %173, %173
  %183 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %184 = call i32 @gr_def(%struct.nvkm_grctx* %183, i32 4201472, i32 72155359)
  br label %191

185:                                              ; preds = %173, %173, %173, %173, %173, %173
  %186 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %187 = call i32 @gr_def(%struct.nvkm_grctx* %186, i32 4201472, i32 69533919)
  br label %191

188:                                              ; preds = %173, %173, %173, %173
  %189 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %190 = call i32 @gr_def(%struct.nvkm_grctx* %189, i32 4201472, i32 337969375)
  br label %191

191:                                              ; preds = %173, %188, %185, %182, %179
  %192 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %193 = call i32 @cp_ctx(%struct.nvkm_grctx* %192, i32 4203520, i32 1)
  %194 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %195 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp eq i32 %196, 80
  br i1 %197, label %198, label %201

198:                                              ; preds = %191
  %199 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %200 = call i32 @cp_ctx(%struct.nvkm_grctx* %199, i32 4203528, i32 1)
  br label %204

201:                                              ; preds = %191
  %202 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %203 = call i32 @cp_ctx(%struct.nvkm_grctx* %202, i32 4203528, i32 2)
  br label %204

204:                                              ; preds = %201, %198
  %205 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %206 = call i32 @gr_def(%struct.nvkm_grctx* %205, i32 4203528, i32 1536)
  %207 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %208 = call i32 @cp_ctx(%struct.nvkm_grctx* %207, i32 4204544, i32 1)
  %209 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %210 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = icmp eq i32 %211, 80
  br i1 %212, label %213, label %216

213:                                              ; preds = %204
  %214 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %215 = call i32 @gr_def(%struct.nvkm_grctx* %214, i32 4204544, i32 6)
  br label %216

216:                                              ; preds = %213, %204
  %217 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %218 = call i32 @cp_ctx(%struct.nvkm_grctx* %217, i32 4205576, i32 6)
  %219 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %220 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %221, 80
  br i1 %222, label %223, label %226

223:                                              ; preds = %216
  %224 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %225 = call i32 @gr_def(%struct.nvkm_grctx* %224, i32 4205588, i32 16777216)
  br label %226

226:                                              ; preds = %223, %216
  %227 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %228 = call i32 @gr_def(%struct.nvkm_grctx* %227, i32 4205592, i32 255)
  %229 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %230 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = icmp eq i32 %231, 80
  br i1 %232, label %233, label %236

233:                                              ; preds = %226
  %234 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %235 = call i32 @cp_ctx(%struct.nvkm_grctx* %234, i32 4205728, i32 1)
  br label %239

236:                                              ; preds = %226
  %237 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %238 = call i32 @cp_ctx(%struct.nvkm_grctx* %237, i32 4205728, i32 2)
  br label %239

239:                                              ; preds = %236, %233
  %240 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %241 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = icmp slt i32 %242, 160
  br i1 %243, label %244, label %247

244:                                              ; preds = %239
  %245 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %246 = call i32 @gr_def(%struct.nvkm_grctx* %245, i32 4205728, i32 1024)
  br label %260

247:                                              ; preds = %239
  %248 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %249 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = call i64 @IS_NVA3F(i32 %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %256, label %253

253:                                              ; preds = %247
  %254 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %255 = call i32 @gr_def(%struct.nvkm_grctx* %254, i32 4205728, i32 2048)
  br label %259

256:                                              ; preds = %247
  %257 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %258 = call i32 @gr_def(%struct.nvkm_grctx* %257, i32 4205728, i32 1024)
  br label %259

259:                                              ; preds = %256, %253
  br label %260

260:                                              ; preds = %259, %244
  %261 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %262 = call i32 @cp_ctx(%struct.nvkm_grctx* %261, i32 4205740, i32 4)
  %263 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %264 = call i32 @cp_ctx(%struct.nvkm_grctx* %263, i32 4206596, i32 1)
  %265 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %266 = call i32 @gr_def(%struct.nvkm_grctx* %265, i32 4206596, i32 1)
  %267 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %268 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = icmp sge i32 %269, 160
  br i1 %270, label %271, label %276

271:                                              ; preds = %260
  %272 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %273 = call i32 @cp_ctx(%struct.nvkm_grctx* %272, i32 4207620, i32 1)
  %274 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %275 = call i32 @gr_def(%struct.nvkm_grctx* %274, i32 4207620, i32 1)
  br label %276

276:                                              ; preds = %271, %260
  %277 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %278 = call i32 @cp_ctx(%struct.nvkm_grctx* %277, i32 4214784, i32 1)
  %279 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %280 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  switch i32 %281, label %291 [
    i32 80, label %282
    i32 132, label %285
    i32 160, label %285
    i32 163, label %285
    i32 165, label %285
    i32 168, label %285
    i32 170, label %285
    i32 172, label %285
    i32 175, label %285
    i32 134, label %288
    i32 146, label %288
    i32 148, label %288
    i32 150, label %288
    i32 152, label %288
  ]

282:                                              ; preds = %276
  %283 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %284 = call i32 @gr_def(%struct.nvkm_grctx* %283, i32 4214784, i32 3145856)
  br label %291

285:                                              ; preds = %276, %276, %276, %276, %276, %276, %276, %276
  %286 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %287 = call i32 @gr_def(%struct.nvkm_grctx* %286, i32 4214784, i32 917632)
  br label %291

288:                                              ; preds = %276, %276, %276, %276, %276
  %289 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %290 = call i32 @gr_def(%struct.nvkm_grctx* %289, i32 4214784, i32 128)
  br label %291

291:                                              ; preds = %276, %288, %285, %282
  %292 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %293 = call i32 @cp_ctx(%struct.nvkm_grctx* %292, i32 4214804, i32 1)
  %294 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %295 = call i32 @gr_def(%struct.nvkm_grctx* %294, i32 4214804, i32 4)
  %296 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %297 = call i32 @cp_ctx(%struct.nvkm_grctx* %296, i32 4214812, i32 1)
  %298 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %299 = call i32 @cp_ctx(%struct.nvkm_grctx* %298, i32 4214820, i32 1)
  %300 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %301 = call i32 @cp_ctx(%struct.nvkm_grctx* %300, i32 4214828, i32 1)
  %302 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %303 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = icmp eq i32 %304, 80
  br i1 %305, label %306, label %309

306:                                              ; preds = %291
  %307 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %308 = call i32 @cp_ctx(%struct.nvkm_grctx* %307, i32 4219872, i32 1)
  br label %309

309:                                              ; preds = %306, %291
  %310 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %311 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = icmp slt i32 %312, 144
  br i1 %313, label %314, label %323

314:                                              ; preds = %309
  %315 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %316 = call i32 @cp_ctx(%struct.nvkm_grctx* %315, i32 4220948, i32 43)
  %317 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %318 = call i32 @gr_def(%struct.nvkm_grctx* %317, i32 4220952, i32 3968)
  %319 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %320 = call i32 @gr_def(%struct.nvkm_grctx* %319, i32 4221024, i32 8323200)
  %321 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %322 = call i32 @gr_def(%struct.nvkm_grctx* %321, i32 4221084, i32 8323200)
  br label %348

323:                                              ; preds = %309
  %324 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %325 = call i32 @cp_ctx(%struct.nvkm_grctx* %324, i32 4220948, i32 4)
  %326 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %327 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = icmp eq i32 %328, 152
  br i1 %329, label %330, label %333

330:                                              ; preds = %323
  %331 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %332 = call i32 @gr_def(%struct.nvkm_grctx* %331, i32 4220952, i32 3968)
  br label %336

333:                                              ; preds = %323
  %334 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %335 = call i32 @gr_def(%struct.nvkm_grctx* %334, i32 4220952, i32 8064)
  br label %336

336:                                              ; preds = %333, %330
  %337 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %338 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = call i64 @IS_NVA3F(i32 %339)
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %345

342:                                              ; preds = %336
  %343 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %344 = call i32 @gr_def(%struct.nvkm_grctx* %343, i32 4220956, i32 48)
  br label %345

345:                                              ; preds = %342, %336
  %346 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %347 = call i32 @cp_ctx(%struct.nvkm_grctx* %346, i32 4220976, i32 3)
  br label %348

348:                                              ; preds = %345, %314
  store i32 0, i32* %4, align 4
  br label %349

349:                                              ; preds = %540, %348
  %350 = load i32, i32* %4, align 4
  %351 = icmp slt i32 %350, 8
  br i1 %351, label %352, label %543

352:                                              ; preds = %349
  %353 = load i32, i32* %8, align 4
  %354 = load i32, i32* %4, align 4
  %355 = add nsw i32 %354, 16
  %356 = shl i32 1, %355
  %357 = and i32 %353, %356
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %539

359:                                              ; preds = %352
  %360 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %361 = load i32, i32* %4, align 4
  %362 = shl i32 %361, 8
  %363 = add nsw i32 4222976, %362
  %364 = call i32 @cp_ctx(%struct.nvkm_grctx* %360, i32 %363, i32 3)
  %365 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %366 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = icmp eq i32 %367, 80
  br i1 %368, label %369, label %375

369:                                              ; preds = %359
  %370 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %371 = load i32, i32* %4, align 4
  %372 = shl i32 %371, 8
  %373 = add nsw i32 4222976, %372
  %374 = call i32 @gr_def(%struct.nvkm_grctx* %370, i32 %373, i32 460650528)
  br label %393

375:                                              ; preds = %359
  %376 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %377 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = icmp ne i32 %378, 165
  br i1 %379, label %380, label %386

380:                                              ; preds = %375
  %381 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %382 = load i32, i32* %4, align 4
  %383 = shl i32 %382, 8
  %384 = add nsw i32 4222976, %383
  %385 = call i32 @gr_def(%struct.nvkm_grctx* %381, i32 %384, i32 997521441)
  br label %392

386:                                              ; preds = %375
  %387 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %388 = load i32, i32* %4, align 4
  %389 = shl i32 %388, 8
  %390 = add nsw i32 4222976, %389
  %391 = call i32 @gr_def(%struct.nvkm_grctx* %387, i32 %390, i32 2071263265)
  br label %392

392:                                              ; preds = %386, %380
  br label %393

393:                                              ; preds = %392, %369
  %394 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %395 = load i32, i32* %4, align 4
  %396 = shl i32 %395, 8
  %397 = add nsw i32 4222980, %396
  %398 = call i32 @gr_def(%struct.nvkm_grctx* %394, i32 %397, i32 -1996128255)
  %399 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %400 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 8
  %402 = icmp eq i32 %401, 80
  br i1 %402, label %403, label %409

403:                                              ; preds = %393
  %404 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %405 = load i32, i32* %4, align 4
  %406 = shl i32 %405, 8
  %407 = add nsw i32 4222992, %406
  %408 = call i32 @cp_ctx(%struct.nvkm_grctx* %404, i32 %407, i32 1)
  br label %459

409:                                              ; preds = %393
  %410 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %411 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 8
  %413 = icmp slt i32 %412, 160
  br i1 %413, label %414, label %430

414:                                              ; preds = %409
  %415 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %416 = load i32, i32* %4, align 4
  %417 = shl i32 %416, 8
  %418 = add nsw i32 4222992, %417
  %419 = call i32 @cp_ctx(%struct.nvkm_grctx* %415, i32 %418, i32 2)
  %420 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %421 = load i32, i32* %4, align 4
  %422 = shl i32 %421, 8
  %423 = add nsw i32 4222992, %422
  %424 = call i32 @gr_def(%struct.nvkm_grctx* %420, i32 %423, i32 4096)
  %425 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %426 = load i32, i32* %4, align 4
  %427 = shl i32 %426, 8
  %428 = add nsw i32 4222996, %427
  %429 = call i32 @gr_def(%struct.nvkm_grctx* %425, i32 %428, i32 31)
  br label %458

430:                                              ; preds = %409
  %431 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %432 = load i32, i32* %4, align 4
  %433 = shl i32 %432, 8
  %434 = add nsw i32 4222992, %433
  %435 = call i32 @cp_ctx(%struct.nvkm_grctx* %431, i32 %434, i32 3)
  %436 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %437 = load i32, i32* %4, align 4
  %438 = shl i32 %437, 8
  %439 = add nsw i32 4222992, %438
  %440 = call i32 @gr_def(%struct.nvkm_grctx* %436, i32 %439, i32 4096)
  %441 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %442 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 8
  %444 = icmp ne i32 %443, 165
  br i1 %444, label %445, label %451

445:                                              ; preds = %430
  %446 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %447 = load i32, i32* %4, align 4
  %448 = shl i32 %447, 8
  %449 = add nsw i32 4222996, %448
  %450 = call i32 @gr_def(%struct.nvkm_grctx* %446, i32 %449, i32 255)
  br label %457

451:                                              ; preds = %430
  %452 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %453 = load i32, i32* %4, align 4
  %454 = shl i32 %453, 8
  %455 = add nsw i32 4222996, %454
  %456 = call i32 @gr_def(%struct.nvkm_grctx* %452, i32 %455, i32 511)
  br label %457

457:                                              ; preds = %451, %445
  br label %458

458:                                              ; preds = %457, %414
  br label %459

459:                                              ; preds = %458, %403
  %460 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %461 = load i32, i32* %4, align 4
  %462 = shl i32 %461, 8
  %463 = add nsw i32 4223104, %462
  %464 = call i32 @cp_ctx(%struct.nvkm_grctx* %460, i32 %463, i32 4)
  %465 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %466 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %465, i32 0, i32 0
  %467 = load i32, i32* %466, align 8
  %468 = icmp ne i32 %467, 165
  br i1 %468, label %469, label %475

469:                                              ; preds = %459
  %470 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %471 = load i32, i32* %4, align 4
  %472 = shl i32 %471, 8
  %473 = add nsw i32 4223104, %472
  %474 = call i32 @gr_def(%struct.nvkm_grctx* %470, i32 %473, i32 41685242)
  br label %481

475:                                              ; preds = %459
  %476 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %477 = load i32, i32* %4, align 4
  %478 = shl i32 %477, 8
  %479 = add nsw i32 4223104, %478
  %480 = call i32 @gr_def(%struct.nvkm_grctx* %476, i32 %479, i32 -2105798406)
  br label %481

481:                                              ; preds = %475, %469
  %482 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %483 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %482, i32 0, i32 0
  %484 = load i32, i32* %483, align 8
  %485 = icmp eq i32 %484, 80
  br i1 %485, label %486, label %492

486:                                              ; preds = %481
  %487 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %488 = load i32, i32* %4, align 4
  %489 = shl i32 %488, 8
  %490 = add nsw i32 4223108, %489
  %491 = call i32 @gr_def(%struct.nvkm_grctx* %487, i32 %490, i32 192)
  br label %498

492:                                              ; preds = %481
  %493 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %494 = load i32, i32* %4, align 4
  %495 = shl i32 %494, 8
  %496 = add nsw i32 4223108, %495
  %497 = call i32 @gr_def(%struct.nvkm_grctx* %493, i32 %496, i32 1073742016)
  br label %498

498:                                              ; preds = %492, %486
  %499 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %500 = load i32, i32* %4, align 4
  %501 = shl i32 %500, 8
  %502 = add nsw i32 4223112, %501
  %503 = call i32 @gr_def(%struct.nvkm_grctx* %499, i32 %502, i32 -1215750016)
  %504 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %505 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %504, i32 0, i32 0
  %506 = load i32, i32* %505, align 8
  %507 = icmp slt i32 %506, 160
  br i1 %507, label %508, label %514

508:                                              ; preds = %498
  %509 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %510 = load i32, i32* %4, align 4
  %511 = shl i32 %510, 8
  %512 = add nsw i32 4223124, %511
  %513 = call i32 @cp_ctx(%struct.nvkm_grctx* %509, i32 %512, i32 1)
  br label %538

514:                                              ; preds = %498
  %515 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %516 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %515, i32 0, i32 0
  %517 = load i32, i32* %516, align 8
  %518 = call i64 @IS_NVA3F(i32 %517)
  %519 = icmp ne i64 %518, 0
  br i1 %519, label %526, label %520

520:                                              ; preds = %514
  %521 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %522 = load i32, i32* %4, align 4
  %523 = shl i32 %522, 8
  %524 = add nsw i32 4223124, %523
  %525 = call i32 @cp_ctx(%struct.nvkm_grctx* %521, i32 %524, i32 3)
  br label %537

526:                                              ; preds = %514
  %527 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %528 = load i32, i32* %4, align 4
  %529 = shl i32 %528, 8
  %530 = add nsw i32 4223124, %529
  %531 = call i32 @cp_ctx(%struct.nvkm_grctx* %527, i32 %530, i32 4)
  %532 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %533 = load i32, i32* %4, align 4
  %534 = shl i32 %533, 8
  %535 = add nsw i32 4223136, %534
  %536 = call i32 @gr_def(%struct.nvkm_grctx* %532, i32 %535, i32 1)
  br label %537

537:                                              ; preds = %526, %520
  br label %538

538:                                              ; preds = %537, %508
  br label %539

539:                                              ; preds = %538, %352
  br label %540

540:                                              ; preds = %539
  %541 = load i32, i32* %4, align 4
  %542 = add nsw i32 %541, 1
  store i32 %542, i32* %4, align 4
  br label %349

543:                                              ; preds = %349
  %544 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %545 = call i32 @cp_ctx(%struct.nvkm_grctx* %544, i32 4226048, i32 3)
  %546 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %547 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %546, i32 0, i32 0
  %548 = load i32, i32* %547, align 8
  %549 = icmp slt i32 %548, 144
  br i1 %549, label %550, label %553

550:                                              ; preds = %543
  %551 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %552 = call i32 @gr_def(%struct.nvkm_grctx* %551, i32 4226048, i32 65600)
  br label %565

553:                                              ; preds = %543
  %554 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %555 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %554, i32 0, i32 0
  %556 = load i32, i32* %555, align 8
  %557 = icmp slt i32 %556, 160
  br i1 %557, label %558, label %561

558:                                              ; preds = %553
  %559 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %560 = call i32 @gr_def(%struct.nvkm_grctx* %559, i32 4226048, i32 3735616)
  br label %564

561:                                              ; preds = %553
  %562 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %563 = call i32 @gr_def(%struct.nvkm_grctx* %562, i32 4226048, i32 3997760)
  br label %564

564:                                              ; preds = %561, %558
  br label %565

565:                                              ; preds = %564, %550
  %566 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %567 = call i32 @gr_def(%struct.nvkm_grctx* %566, i32 4226056, i32 34)
  %568 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %569 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %568, i32 0, i32 0
  %570 = load i32, i32* %569, align 8
  %571 = icmp sge i32 %570, 160
  br i1 %571, label %572, label %579

572:                                              ; preds = %565
  %573 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %574 = call i32 @cp_ctx(%struct.nvkm_grctx* %573, i32 4226064, i32 3)
  %575 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %576 = call i32 @cp_ctx(%struct.nvkm_grctx* %575, i32 4226080, i32 1)
  %577 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %578 = call i32 @cp_ctx(%struct.nvkm_grctx* %577, i32 4226092, i32 1)
  br label %579

579:                                              ; preds = %572, %565
  %580 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %581 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %580, i32 0, i32 0
  %582 = load i32, i32* %581, align 8
  %583 = icmp slt i32 %582, 160
  br i1 %583, label %584, label %587

584:                                              ; preds = %579
  %585 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %586 = call i32 @cp_ctx(%struct.nvkm_grctx* %585, i32 4226304, i32 9)
  br label %590

587:                                              ; preds = %579
  %588 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %589 = call i32 @cp_ctx(%struct.nvkm_grctx* %588, i32 4226304, i32 21)
  br label %590

590:                                              ; preds = %587, %584
  %591 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %592 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %591, i32 0, i32 0
  %593 = load i32, i32* %592, align 8
  %594 = icmp eq i32 %593, 152
  br i1 %594, label %595, label %598

595:                                              ; preds = %590
  %596 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %597 = call i32 @gr_def(%struct.nvkm_grctx* %596, i32 4226312, i32 3670080)
  br label %635

598:                                              ; preds = %590
  %599 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %600 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %599, i32 0, i32 0
  %601 = load i32, i32* %600, align 8
  %602 = icmp slt i32 %601, 144
  br i1 %602, label %603, label %606

603:                                              ; preds = %598
  %604 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %605 = call i32 @gr_def(%struct.nvkm_grctx* %604, i32 4226312, i32 65600)
  br label %632

606:                                              ; preds = %598
  %607 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %608 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %607, i32 0, i32 0
  %609 = load i32, i32* %608, align 8
  %610 = icmp slt i32 %609, 160
  br i1 %610, label %611, label %614

611:                                              ; preds = %606
  %612 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %613 = call i32 @gr_def(%struct.nvkm_grctx* %612, i32 4226312, i32 3735616)
  br label %631

614:                                              ; preds = %606
  %615 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %616 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %615, i32 0, i32 1
  %617 = load %struct.TYPE_4__*, %struct.TYPE_4__** %616, align 8
  %618 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %617, i32 0, i32 0
  %619 = load %struct.TYPE_3__*, %struct.TYPE_3__** %618, align 8
  %620 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %619, i32 0, i32 0
  %621 = load i64, i64* %620, align 8
  %622 = load i64, i64* @NVKM_RAM_TYPE_GDDR5, align 8
  %623 = icmp ne i64 %621, %622
  br i1 %623, label %624, label %627

624:                                              ; preds = %614
  %625 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %626 = call i32 @gr_def(%struct.nvkm_grctx* %625, i32 4226312, i32 3997760)
  br label %630

627:                                              ; preds = %614
  %628 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %629 = call i32 @gr_def(%struct.nvkm_grctx* %628, i32 4226312, i32 3932224)
  br label %630

630:                                              ; preds = %627, %624
  br label %631

631:                                              ; preds = %630, %611
  br label %632

632:                                              ; preds = %631, %603
  %633 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %634 = call i32 @gr_def(%struct.nvkm_grctx* %633, i32 4226316, i32 34)
  br label %635

635:                                              ; preds = %632, %595
  store i32 0, i32* %4, align 4
  br label %636

636:                                              ; preds = %1296, %635
  %637 = load i32, i32* %4, align 4
  %638 = icmp slt i32 %637, 10
  br i1 %638, label %639, label %1299

639:                                              ; preds = %636
  %640 = load i32, i32* %8, align 4
  %641 = load i32, i32* %4, align 4
  %642 = shl i32 1, %641
  %643 = and i32 %640, %642
  %644 = icmp ne i32 %643, 0
  br i1 %644, label %645, label %1295

645:                                              ; preds = %639
  %646 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %647 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %646, i32 0, i32 0
  %648 = load i32, i32* %647, align 8
  %649 = icmp slt i32 %648, 160
  br i1 %649, label %650, label %654

650:                                              ; preds = %645
  %651 = load i32, i32* %4, align 4
  %652 = shl i32 %651, 12
  %653 = add nsw i32 4227072, %652
  store i32 %653, i32* %7, align 4
  br label %658

654:                                              ; preds = %645
  %655 = load i32, i32* %4, align 4
  %656 = shl i32 %655, 11
  %657 = add nsw i32 4227072, %656
  store i32 %657, i32* %7, align 4
  br label %658

658:                                              ; preds = %654, %650
  %659 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %660 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %659, i32 0, i32 0
  %661 = load i32, i32* %660, align 8
  %662 = icmp slt i32 %661, 160
  br i1 %662, label %663, label %666

663:                                              ; preds = %658
  %664 = load i32, i32* %7, align 4
  %665 = add nsw i32 %664, 3072
  store i32 %665, i32* %6, align 4
  br label %669

666:                                              ; preds = %658
  %667 = load i32, i32* %7, align 4
  %668 = add nsw i32 %667, 128
  store i32 %668, i32* %6, align 4
  br label %669

669:                                              ; preds = %666, %663
  %670 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %671 = load i32, i32* %6, align 4
  %672 = add nsw i32 %671, 0
  %673 = call i32 @cp_ctx(%struct.nvkm_grctx* %670, i32 %672, i32 1)
  %674 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %675 = load i32, i32* %6, align 4
  %676 = add nsw i32 %675, 0
  %677 = call i32 @gr_def(%struct.nvkm_grctx* %674, i32 %676, i32 65290)
  %678 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %679 = load i32, i32* %6, align 4
  %680 = add nsw i32 %679, 8
  %681 = call i32 @cp_ctx(%struct.nvkm_grctx* %678, i32 %680, i32 1)
  store i32 0, i32* %5, align 4
  br label %682

682:                                              ; preds = %827, %669
  %683 = load i32, i32* %5, align 4
  %684 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %685 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %684, i32 0, i32 0
  %686 = load i32, i32* %685, align 8
  %687 = icmp slt i32 %686, 160
  %688 = zext i1 %687 to i64
  %689 = select i1 %687, i32 2, i32 4
  %690 = icmp slt i32 %683, %689
  br i1 %690, label %691, label %830

691:                                              ; preds = %682
  %692 = load i32, i32* %8, align 4
  %693 = load i32, i32* %5, align 4
  %694 = add nsw i32 %693, 24
  %695 = shl i32 1, %694
  %696 = and i32 %692, %695
  %697 = icmp ne i32 %696, 0
  br i1 %697, label %699, label %698

698:                                              ; preds = %691
  br label %827

699:                                              ; preds = %691
  %700 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %701 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %700, i32 0, i32 0
  %702 = load i32, i32* %701, align 8
  %703 = icmp slt i32 %702, 160
  br i1 %703, label %704, label %710

704:                                              ; preds = %699
  %705 = load i32, i32* %7, align 4
  %706 = add nsw i32 %705, 512
  %707 = load i32, i32* %5, align 4
  %708 = shl i32 %707, 7
  %709 = add nsw i32 %706, %708
  store i32 %709, i32* %6, align 4
  br label %716

710:                                              ; preds = %699
  %711 = load i32, i32* %7, align 4
  %712 = add nsw i32 %711, 256
  %713 = load i32, i32* %5, align 4
  %714 = shl i32 %713, 7
  %715 = add nsw i32 %712, %714
  store i32 %715, i32* %6, align 4
  br label %716

716:                                              ; preds = %710, %704
  %717 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %718 = load i32, i32* %6, align 4
  %719 = call i32 @cp_ctx(%struct.nvkm_grctx* %717, i32 %718, i32 32)
  %720 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %721 = load i32, i32* %6, align 4
  %722 = add nsw i32 %721, 0
  %723 = call i32 @gr_def(%struct.nvkm_grctx* %720, i32 %722, i32 25165824)
  %724 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %725 = load i32, i32* %6, align 4
  %726 = add nsw i32 %725, 4
  %727 = call i32 @gr_def(%struct.nvkm_grctx* %724, i32 %726, i32 1441792)
  %728 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %729 = load i32, i32* %6, align 4
  %730 = add nsw i32 %729, 8
  %731 = call i32 @gr_def(%struct.nvkm_grctx* %728, i32 %730, i32 25165824)
  %732 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %733 = load i32, i32* %6, align 4
  %734 = add nsw i32 %733, 24
  %735 = call i32 @gr_def(%struct.nvkm_grctx* %732, i32 %734, i32 262143)
  %736 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %737 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %736, i32 0, i32 0
  %738 = load i32, i32* %737, align 8
  switch i32 %738, label %774 [
    i32 80, label %739
    i32 132, label %744
    i32 134, label %749
    i32 146, label %754
    i32 150, label %754
    i32 152, label %754
    i32 148, label %759
    i32 160, label %764
    i32 165, label %764
    i32 163, label %769
    i32 168, label %769
    i32 170, label %769
    i32 172, label %769
    i32 175, label %769
  ]

739:                                              ; preds = %716
  %740 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %741 = load i32, i32* %6, align 4
  %742 = add nsw i32 %741, 28
  %743 = call i32 @gr_def(%struct.nvkm_grctx* %740, i32 %742, i32 524288)
  br label %774

744:                                              ; preds = %716
  %745 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %746 = load i32, i32* %6, align 4
  %747 = add nsw i32 %746, 28
  %748 = call i32 @gr_def(%struct.nvkm_grctx* %745, i32 %747, i32 8912896)
  br label %774

749:                                              ; preds = %716
  %750 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %751 = load i32, i32* %6, align 4
  %752 = add nsw i32 %751, 28
  %753 = call i32 @gr_def(%struct.nvkm_grctx* %750, i32 %752, i32 25952256)
  br label %774

754:                                              ; preds = %716, %716, %716
  %755 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %756 = load i32, i32* %6, align 4
  %757 = add nsw i32 %756, 28
  %758 = call i32 @gr_def(%struct.nvkm_grctx* %755, i32 %757, i32 294387712)
  br label %774

759:                                              ; preds = %716
  %760 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %761 = load i32, i32* %6, align 4
  %762 = add nsw i32 %761, 28
  %763 = call i32 @gr_def(%struct.nvkm_grctx* %760, i32 %762, i32 277348352)
  br label %774

764:                                              ; preds = %716, %716
  %765 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %766 = load i32, i32* %6, align 4
  %767 = add nsw i32 %766, 28
  %768 = call i32 @gr_def(%struct.nvkm_grctx* %765, i32 %767, i32 822870016)
  br label %774

769:                                              ; preds = %716, %716, %716, %716, %716
  %770 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %771 = load i32, i32* %6, align 4
  %772 = add nsw i32 %771, 28
  %773 = call i32 @gr_def(%struct.nvkm_grctx* %770, i32 %772, i32 806092800)
  br label %774

774:                                              ; preds = %716, %769, %764, %759, %754, %749, %744, %739
  %775 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %776 = load i32, i32* %6, align 4
  %777 = add nsw i32 %776, 64
  %778 = call i32 @gr_def(%struct.nvkm_grctx* %775, i32 %777, i32 66561)
  %779 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %780 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %779, i32 0, i32 0
  %781 = load i32, i32* %780, align 8
  %782 = icmp eq i32 %781, 80
  br i1 %782, label %783, label %788

783:                                              ; preds = %774
  %784 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %785 = load i32, i32* %6, align 4
  %786 = add nsw i32 %785, 72
  %787 = call i32 @gr_def(%struct.nvkm_grctx* %784, i32 %786, i32 64)
  br label %793

788:                                              ; preds = %774
  %789 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %790 = load i32, i32* %6, align 4
  %791 = add nsw i32 %790, 72
  %792 = call i32 @gr_def(%struct.nvkm_grctx* %789, i32 %791, i32 120)
  br label %793

793:                                              ; preds = %788, %783
  %794 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %795 = load i32, i32* %6, align 4
  %796 = add nsw i32 %795, 80
  %797 = call i32 @gr_def(%struct.nvkm_grctx* %794, i32 %796, i32 191)
  %798 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %799 = load i32, i32* %6, align 4
  %800 = add nsw i32 %799, 88
  %801 = call i32 @gr_def(%struct.nvkm_grctx* %798, i32 %800, i32 4624)
  %802 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %803 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %802, i32 0, i32 0
  %804 = load i32, i32* %803, align 8
  %805 = icmp eq i32 %804, 80
  br i1 %805, label %806, label %811

806:                                              ; preds = %793
  %807 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %808 = load i32, i32* %6, align 4
  %809 = add nsw i32 %808, 92
  %810 = call i32 @gr_def(%struct.nvkm_grctx* %807, i32 %809, i32 128)
  br label %816

811:                                              ; preds = %793
  %812 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %813 = load i32, i32* %6, align 4
  %814 = add nsw i32 %813, 92
  %815 = call i32 @gr_def(%struct.nvkm_grctx* %812, i32 %814, i32 134217856)
  br label %816

816:                                              ; preds = %811, %806
  %817 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %818 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %817, i32 0, i32 0
  %819 = load i32, i32* %818, align 8
  %820 = icmp sge i32 %819, 160
  br i1 %820, label %821, label %826

821:                                              ; preds = %816
  %822 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %823 = load i32, i32* %6, align 4
  %824 = add nsw i32 %823, 104
  %825 = call i32 @gr_def(%struct.nvkm_grctx* %822, i32 %824, i32 62)
  br label %826

826:                                              ; preds = %821, %816
  br label %827

827:                                              ; preds = %826, %698
  %828 = load i32, i32* %5, align 4
  %829 = add nsw i32 %828, 1
  store i32 %829, i32* %5, align 4
  br label %682

830:                                              ; preds = %682
  %831 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %832 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %831, i32 0, i32 0
  %833 = load i32, i32* %832, align 8
  %834 = icmp slt i32 %833, 160
  br i1 %834, label %835, label %840

835:                                              ; preds = %830
  %836 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %837 = load i32, i32* %7, align 4
  %838 = add nsw i32 %837, 768
  %839 = call i32 @cp_ctx(%struct.nvkm_grctx* %836, i32 %838, i32 4)
  br label %845

840:                                              ; preds = %830
  %841 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %842 = load i32, i32* %7, align 4
  %843 = add nsw i32 %842, 768
  %844 = call i32 @cp_ctx(%struct.nvkm_grctx* %841, i32 %843, i32 5)
  br label %845

845:                                              ; preds = %840, %835
  %846 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %847 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %846, i32 0, i32 0
  %848 = load i32, i32* %847, align 8
  %849 = icmp eq i32 %848, 80
  br i1 %849, label %850, label %855

850:                                              ; preds = %845
  %851 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %852 = load i32, i32* %7, align 4
  %853 = add nsw i32 %852, 772
  %854 = call i32 @gr_def(%struct.nvkm_grctx* %851, i32 %853, i32 28784)
  br label %883

855:                                              ; preds = %845
  %856 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %857 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %856, i32 0, i32 0
  %858 = load i32, i32* %857, align 8
  %859 = icmp slt i32 %858, 160
  br i1 %859, label %860, label %865

860:                                              ; preds = %855
  %861 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %862 = load i32, i32* %7, align 4
  %863 = add nsw i32 %862, 772
  %864 = call i32 @gr_def(%struct.nvkm_grctx* %861, i32 %863, i32 159856)
  br label %882

865:                                              ; preds = %855
  %866 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %867 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %866, i32 0, i32 0
  %868 = load i32, i32* %867, align 8
  %869 = call i64 @IS_NVA3F(i32 %868)
  %870 = icmp ne i64 %869, 0
  br i1 %870, label %876, label %871

871:                                              ; preds = %865
  %872 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %873 = load i32, i32* %7, align 4
  %874 = add nsw i32 %873, 772
  %875 = call i32 @gr_def(%struct.nvkm_grctx* %872, i32 %874, i32 17985648)
  br label %881

876:                                              ; preds = %865
  %877 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %878 = load i32, i32* %7, align 4
  %879 = add nsw i32 %878, 772
  %880 = call i32 @gr_def(%struct.nvkm_grctx* %877, i32 %879, i32 85094512)
  br label %881

881:                                              ; preds = %876, %871
  br label %882

882:                                              ; preds = %881, %860
  br label %883

883:                                              ; preds = %882, %850
  %884 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %885 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %884, i32 0, i32 0
  %886 = load i32, i32* %885, align 8
  %887 = icmp slt i32 %886, 160
  br i1 %887, label %888, label %893

888:                                              ; preds = %883
  %889 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %890 = load i32, i32* %7, align 4
  %891 = add nsw i32 %890, 792
  %892 = call i32 @cp_ctx(%struct.nvkm_grctx* %889, i32 %891, i32 1)
  br label %898

893:                                              ; preds = %883
  %894 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %895 = load i32, i32* %7, align 4
  %896 = add nsw i32 %895, 800
  %897 = call i32 @cp_ctx(%struct.nvkm_grctx* %894, i32 %896, i32 1)
  br label %898

898:                                              ; preds = %893, %888
  %899 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %900 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %899, i32 0, i32 0
  %901 = load i32, i32* %900, align 8
  %902 = icmp eq i32 %901, 80
  br i1 %902, label %903, label %908

903:                                              ; preds = %898
  %904 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %905 = load i32, i32* %7, align 4
  %906 = add nsw i32 %905, 792
  %907 = call i32 @gr_def(%struct.nvkm_grctx* %904, i32 %906, i32 262143)
  br label %924

908:                                              ; preds = %898
  %909 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %910 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %909, i32 0, i32 0
  %911 = load i32, i32* %910, align 8
  %912 = icmp slt i32 %911, 160
  br i1 %912, label %913, label %918

913:                                              ; preds = %908
  %914 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %915 = load i32, i32* %7, align 4
  %916 = add nsw i32 %915, 792
  %917 = call i32 @gr_def(%struct.nvkm_grctx* %914, i32 %916, i32 67108863)
  br label %923

918:                                              ; preds = %908
  %919 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %920 = load i32, i32* %7, align 4
  %921 = add nsw i32 %920, 800
  %922 = call i32 @gr_def(%struct.nvkm_grctx* %919, i32 %921, i32 134217727)
  br label %923

923:                                              ; preds = %918, %913
  br label %924

924:                                              ; preds = %923, %903
  %925 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %926 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %925, i32 0, i32 0
  %927 = load i32, i32* %926, align 8
  %928 = icmp slt i32 %927, 160
  br i1 %928, label %929, label %934

929:                                              ; preds = %924
  %930 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %931 = load i32, i32* %7, align 4
  %932 = add nsw i32 %931, 804
  %933 = call i32 @cp_ctx(%struct.nvkm_grctx* %930, i32 %932, i32 5)
  br label %939

934:                                              ; preds = %924
  %935 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %936 = load i32, i32* %7, align 4
  %937 = add nsw i32 %936, 808
  %938 = call i32 @cp_ctx(%struct.nvkm_grctx* %935, i32 %937, i32 4)
  br label %939

939:                                              ; preds = %934, %929
  %940 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %941 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %940, i32 0, i32 0
  %942 = load i32, i32* %941, align 8
  %943 = icmp slt i32 %942, 160
  br i1 %943, label %944, label %951

944:                                              ; preds = %939
  %945 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %946 = load i32, i32* %7, align 4
  %947 = add nsw i32 %946, 832
  %948 = call i32 @cp_ctx(%struct.nvkm_grctx* %945, i32 %947, i32 9)
  %949 = load i32, i32* %7, align 4
  %950 = add nsw i32 %949, 832
  store i32 %950, i32* %6, align 4
  br label %972

951:                                              ; preds = %939
  %952 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %953 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %952, i32 0, i32 0
  %954 = load i32, i32* %953, align 8
  %955 = call i64 @IS_NVA3F(i32 %954)
  %956 = icmp ne i64 %955, 0
  br i1 %956, label %964, label %957

957:                                              ; preds = %951
  %958 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %959 = load i32, i32* %7, align 4
  %960 = add nsw i32 %959, 828
  %961 = call i32 @cp_ctx(%struct.nvkm_grctx* %958, i32 %960, i32 11)
  %962 = load i32, i32* %7, align 4
  %963 = add nsw i32 %962, 836
  store i32 %963, i32* %6, align 4
  br label %971

964:                                              ; preds = %951
  %965 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %966 = load i32, i32* %7, align 4
  %967 = add nsw i32 %966, 828
  %968 = call i32 @cp_ctx(%struct.nvkm_grctx* %965, i32 %967, i32 13)
  %969 = load i32, i32* %7, align 4
  %970 = add nsw i32 %969, 836
  store i32 %970, i32* %6, align 4
  br label %971

971:                                              ; preds = %964, %957
  br label %972

972:                                              ; preds = %971, %944
  %973 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %974 = load i32, i32* %6, align 4
  %975 = add nsw i32 %974, 0
  %976 = call i32 @gr_def(%struct.nvkm_grctx* %973, i32 %975, i32 1180679)
  %977 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %978 = load i32, i32* %6, align 4
  %979 = add nsw i32 %978, 4
  %980 = call i32 @gr_def(%struct.nvkm_grctx* %977, i32 %979, i32 84481287)
  %981 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %982 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %981, i32 0, i32 0
  %983 = load i32, i32* %982, align 8
  %984 = icmp eq i32 %983, 132
  br i1 %984, label %985, label %990

985:                                              ; preds = %972
  %986 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %987 = load i32, i32* %6, align 4
  %988 = add nsw i32 %987, 8
  %989 = call i32 @gr_def(%struct.nvkm_grctx* %986, i32 %988, i32 84935170)
  br label %995

990:                                              ; preds = %972
  %991 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %992 = load i32, i32* %6, align 4
  %993 = add nsw i32 %992, 8
  %994 = call i32 @gr_def(%struct.nvkm_grctx* %991, i32 %993, i32 83952130)
  br label %995

995:                                              ; preds = %990, %985
  %996 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %997 = load i32, i32* %6, align 4
  %998 = add nsw i32 %997, 12
  %999 = call i32 @gr_def(%struct.nvkm_grctx* %996, i32 %998, i32 197121)
  %1000 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %1001 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %1000, i32 0, i32 0
  %1002 = load i32, i32* %1001, align 8
  %1003 = icmp eq i32 %1002, 163
  br i1 %1003, label %1004, label %1009

1004:                                             ; preds = %995
  %1005 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1006 = load i32, i32* %7, align 4
  %1007 = add nsw i32 %1006, 876
  %1008 = call i32 @cp_ctx(%struct.nvkm_grctx* %1005, i32 %1007, i32 1)
  br label %1009

1009:                                             ; preds = %1004, %995
  %1010 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1011 = load i32, i32* %7, align 4
  %1012 = add nsw i32 %1011, 1024
  %1013 = call i32 @cp_ctx(%struct.nvkm_grctx* %1010, i32 %1012, i32 2)
  %1014 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1015 = load i32, i32* %7, align 4
  %1016 = add nsw i32 %1015, 1028
  %1017 = call i32 @gr_def(%struct.nvkm_grctx* %1014, i32 %1016, i32 64)
  %1018 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1019 = load i32, i32* %7, align 4
  %1020 = add nsw i32 %1019, 1036
  %1021 = call i32 @cp_ctx(%struct.nvkm_grctx* %1018, i32 %1020, i32 2)
  %1022 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1023 = load i32, i32* %7, align 4
  %1024 = add nsw i32 %1023, 1036
  %1025 = call i32 @gr_def(%struct.nvkm_grctx* %1022, i32 %1024, i32 218893066)
  %1026 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1027 = load i32, i32* %7, align 4
  %1028 = add nsw i32 %1027, 1040
  %1029 = call i32 @gr_def(%struct.nvkm_grctx* %1026, i32 %1028, i32 1315344)
  %1030 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %1031 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %1030, i32 0, i32 0
  %1032 = load i32, i32* %1031, align 8
  %1033 = icmp slt i32 %1032, 160
  br i1 %1033, label %1034, label %1037

1034:                                             ; preds = %1009
  %1035 = load i32, i32* %7, align 4
  %1036 = add nsw i32 %1035, 2048
  store i32 %1036, i32* %6, align 4
  br label %1040

1037:                                             ; preds = %1009
  %1038 = load i32, i32* %7, align 4
  %1039 = add nsw i32 %1038, 1280
  store i32 %1039, i32* %6, align 4
  br label %1040

1040:                                             ; preds = %1037, %1034
  %1041 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1042 = load i32, i32* %6, align 4
  %1043 = call i32 @cp_ctx(%struct.nvkm_grctx* %1041, i32 %1042, i32 6)
  %1044 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1045 = load i32, i32* %6, align 4
  %1046 = add nsw i32 %1045, 0
  %1047 = call i32 @gr_def(%struct.nvkm_grctx* %1044, i32 %1046, i32 496)
  %1048 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1049 = load i32, i32* %6, align 4
  %1050 = add nsw i32 %1049, 4
  %1051 = call i32 @gr_def(%struct.nvkm_grctx* %1048, i32 %1050, i32 1)
  %1052 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1053 = load i32, i32* %6, align 4
  %1054 = add nsw i32 %1053, 8
  %1055 = call i32 @gr_def(%struct.nvkm_grctx* %1052, i32 %1054, i32 3)
  %1056 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %1057 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %1056, i32 0, i32 0
  %1058 = load i32, i32* %1057, align 8
  %1059 = icmp eq i32 %1058, 80
  br i1 %1059, label %1066, label %1060

1060:                                             ; preds = %1040
  %1061 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %1062 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %1061, i32 0, i32 0
  %1063 = load i32, i32* %1062, align 8
  %1064 = call i64 @IS_NVAAF(i32 %1063)
  %1065 = icmp ne i64 %1064, 0
  br i1 %1065, label %1066, label %1071

1066:                                             ; preds = %1060, %1040
  %1067 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1068 = load i32, i32* %6, align 4
  %1069 = add nsw i32 %1068, 12
  %1070 = call i32 @gr_def(%struct.nvkm_grctx* %1067, i32 %1069, i32 32768)
  br label %1071

1071:                                             ; preds = %1066, %1060
  %1072 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1073 = load i32, i32* %6, align 4
  %1074 = add nsw i32 %1073, 20
  %1075 = call i32 @gr_def(%struct.nvkm_grctx* %1072, i32 %1074, i32 237056)
  %1076 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1077 = load i32, i32* %6, align 4
  %1078 = add nsw i32 %1077, 28
  %1079 = call i32 @cp_ctx(%struct.nvkm_grctx* %1076, i32 %1078, i32 2)
  %1080 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %1081 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %1080, i32 0, i32 0
  %1082 = load i32, i32* %1081, align 8
  %1083 = icmp eq i32 %1082, 80
  br i1 %1083, label %1084, label %1089

1084:                                             ; preds = %1071
  %1085 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1086 = load i32, i32* %6, align 4
  %1087 = add nsw i32 %1086, 28
  %1088 = call i32 @gr_def(%struct.nvkm_grctx* %1085, i32 %1087, i32 64)
  br label %1094

1089:                                             ; preds = %1071
  %1090 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1091 = load i32, i32* %6, align 4
  %1092 = add nsw i32 %1091, 28
  %1093 = call i32 @gr_def(%struct.nvkm_grctx* %1090, i32 %1092, i32 256)
  br label %1094

1094:                                             ; preds = %1089, %1084
  %1095 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1096 = load i32, i32* %6, align 4
  %1097 = add nsw i32 %1096, 32
  %1098 = call i32 @gr_def(%struct.nvkm_grctx* %1095, i32 %1097, i32 14336)
  %1099 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %1100 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %1099, i32 0, i32 0
  %1101 = load i32, i32* %1100, align 8
  %1102 = icmp sge i32 %1101, 160
  br i1 %1102, label %1103, label %1128

1103:                                             ; preds = %1094
  %1104 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1105 = load i32, i32* %7, align 4
  %1106 = add nsw i32 %1105, 1356
  %1107 = call i32 @cp_ctx(%struct.nvkm_grctx* %1104, i32 %1106, i32 2)
  %1108 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %1109 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %1108, i32 0, i32 0
  %1110 = load i32, i32* %1109, align 8
  %1111 = call i64 @IS_NVA3F(i32 %1110)
  %1112 = icmp ne i64 %1111, 0
  br i1 %1112, label %1118, label %1113

1113:                                             ; preds = %1103
  %1114 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1115 = load i32, i32* %7, align 4
  %1116 = add nsw i32 %1115, 1356
  %1117 = call i32 @gr_def(%struct.nvkm_grctx* %1114, i32 %1116, i32 4186118)
  br label %1123

1118:                                             ; preds = %1103
  %1119 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1120 = load i32, i32* %7, align 4
  %1121 = add nsw i32 %1120, 1356
  %1122 = call i32 @gr_def(%struct.nvkm_grctx* %1119, i32 %1121, i32 4186119)
  br label %1123

1123:                                             ; preds = %1118, %1113
  %1124 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1125 = load i32, i32* %7, align 4
  %1126 = add nsw i32 %1125, 1360
  %1127 = call i32 @gr_def(%struct.nvkm_grctx* %1124, i32 %1126, i32 4186112)
  br label %1128

1128:                                             ; preds = %1123, %1094
  %1129 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %1130 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %1129, i32 0, i32 0
  %1131 = load i32, i32* %1130, align 8
  %1132 = icmp slt i32 %1131, 160
  br i1 %1132, label %1133, label %1136

1133:                                             ; preds = %1128
  %1134 = load i32, i32* %7, align 4
  %1135 = add nsw i32 %1134, 2560
  store i32 %1135, i32* %6, align 4
  br label %1139

1136:                                             ; preds = %1128
  %1137 = load i32, i32* %7, align 4
  %1138 = add nsw i32 %1137, 1664
  store i32 %1138, i32* %6, align 4
  br label %1139

1139:                                             ; preds = %1136, %1133
  %1140 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1141 = load i32, i32* %6, align 4
  %1142 = call i32 @cp_ctx(%struct.nvkm_grctx* %1140, i32 %1141, i32 1)
  %1143 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1144 = load i32, i32* %6, align 4
  %1145 = call i32 @gr_def(%struct.nvkm_grctx* %1143, i32 %1144, i32 4210752)
  %1146 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %1147 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %1146, i32 0, i32 0
  %1148 = load i32, i32* %1147, align 8
  %1149 = icmp slt i32 %1148, 160
  br i1 %1149, label %1150, label %1153

1150:                                             ; preds = %1139
  %1151 = load i32, i32* %7, align 4
  %1152 = add nsw i32 %1151, 3584
  store i32 %1152, i32* %6, align 4
  br label %1156

1153:                                             ; preds = %1139
  %1154 = load i32, i32* %7, align 4
  %1155 = add nsw i32 %1154, 1792
  store i32 %1155, i32* %6, align 4
  br label %1156

1156:                                             ; preds = %1153, %1150
  %1157 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1158 = load i32, i32* %6, align 4
  %1159 = call i32 @cp_ctx(%struct.nvkm_grctx* %1157, i32 %1158, i32 2)
  %1160 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %1161 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %1160, i32 0, i32 0
  %1162 = load i32, i32* %1161, align 8
  %1163 = icmp slt i32 %1162, 160
  br i1 %1163, label %1164, label %1168

1164:                                             ; preds = %1156
  %1165 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1166 = load i32, i32* %6, align 4
  %1167 = call i32 @gr_def(%struct.nvkm_grctx* %1165, i32 %1166, i32 7860229)
  br label %1202

1168:                                             ; preds = %1156
  %1169 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %1170 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %1169, i32 0, i32 0
  %1171 = load i32, i32* %1170, align 8
  %1172 = icmp eq i32 %1171, 165
  br i1 %1172, label %1173, label %1177

1173:                                             ; preds = %1168
  %1174 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1175 = load i32, i32* %6, align 4
  %1176 = call i32 @gr_def(%struct.nvkm_grctx* %1174, i32 %1175, i32 1828188167)
  br label %1201

1177:                                             ; preds = %1168
  %1178 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %1179 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %1178, i32 0, i32 0
  %1180 = load i32, i32* %1179, align 8
  %1181 = icmp eq i32 %1180, 168
  br i1 %1181, label %1182, label %1186

1182:                                             ; preds = %1177
  %1183 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1184 = load i32, i32* %6, align 4
  %1185 = call i32 @gr_def(%struct.nvkm_grctx* %1183, i32 %1184, i32 1828712455)
  br label %1200

1186:                                             ; preds = %1177
  %1187 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %1188 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %1187, i32 0, i32 0
  %1189 = load i32, i32* %1188, align 8
  %1190 = icmp eq i32 %1189, 172
  br i1 %1190, label %1191, label %1195

1191:                                             ; preds = %1186
  %1192 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1193 = load i32, i32* %6, align 4
  %1194 = call i32 @gr_def(%struct.nvkm_grctx* %1192, i32 %1193, i32 218099719)
  br label %1199

1195:                                             ; preds = %1186
  %1196 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1197 = load i32, i32* %6, align 4
  %1198 = call i32 @gr_def(%struct.nvkm_grctx* %1196, i32 %1197, i32 217575431)
  br label %1199

1199:                                             ; preds = %1195, %1191
  br label %1200

1200:                                             ; preds = %1199, %1182
  br label %1201

1201:                                             ; preds = %1200, %1173
  br label %1202

1202:                                             ; preds = %1201, %1164
  %1203 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %1204 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %1203, i32 0, i32 0
  %1205 = load i32, i32* %1204, align 8
  %1206 = icmp eq i32 %1205, 80
  br i1 %1206, label %1207, label %1212

1207:                                             ; preds = %1202
  %1208 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1209 = load i32, i32* %6, align 4
  %1210 = add nsw i32 %1209, 4
  %1211 = call i32 @gr_def(%struct.nvkm_grctx* %1208, i32 %1210, i32 32767)
  br label %1228

1212:                                             ; preds = %1202
  %1213 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %1214 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %1213, i32 0, i32 0
  %1215 = load i32, i32* %1214, align 8
  %1216 = icmp slt i32 %1215, 160
  br i1 %1216, label %1217, label %1222

1217:                                             ; preds = %1212
  %1218 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1219 = load i32, i32* %6, align 4
  %1220 = add nsw i32 %1219, 4
  %1221 = call i32 @gr_def(%struct.nvkm_grctx* %1218, i32 %1220, i32 4161535)
  br label %1227

1222:                                             ; preds = %1212
  %1223 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1224 = load i32, i32* %6, align 4
  %1225 = add nsw i32 %1224, 4
  %1226 = call i32 @gr_def(%struct.nvkm_grctx* %1223, i32 %1225, i32 46104575)
  br label %1227

1227:                                             ; preds = %1222, %1217
  br label %1228

1228:                                             ; preds = %1227, %1207
  %1229 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1230 = load i32, i32* %6, align 4
  %1231 = add nsw i32 %1230, 44
  %1232 = call i32 @cp_ctx(%struct.nvkm_grctx* %1229, i32 %1231, i32 1)
  %1233 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %1234 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %1233, i32 0, i32 0
  %1235 = load i32, i32* %1234, align 8
  %1236 = icmp eq i32 %1235, 80
  br i1 %1236, label %1237, label %1270

1237:                                             ; preds = %1228
  %1238 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1239 = load i32, i32* %6, align 4
  %1240 = add nsw i32 %1239, 80
  %1241 = call i32 @cp_ctx(%struct.nvkm_grctx* %1238, i32 %1240, i32 9)
  %1242 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1243 = load i32, i32* %6, align 4
  %1244 = add nsw i32 %1243, 84
  %1245 = call i32 @gr_def(%struct.nvkm_grctx* %1242, i32 %1244, i32 1023)
  %1246 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1247 = load i32, i32* %6, align 4
  %1248 = add nsw i32 %1247, 88
  %1249 = call i32 @gr_def(%struct.nvkm_grctx* %1246, i32 %1248, i32 3)
  %1250 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1251 = load i32, i32* %6, align 4
  %1252 = add nsw i32 %1251, 92
  %1253 = call i32 @gr_def(%struct.nvkm_grctx* %1250, i32 %1252, i32 3)
  %1254 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1255 = load i32, i32* %6, align 4
  %1256 = add nsw i32 %1255, 96
  %1257 = call i32 @gr_def(%struct.nvkm_grctx* %1254, i32 %1256, i32 511)
  %1258 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1259 = load i32, i32* %6, align 4
  %1260 = add nsw i32 %1259, 100
  %1261 = call i32 @gr_def(%struct.nvkm_grctx* %1258, i32 %1260, i32 31)
  %1262 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1263 = load i32, i32* %6, align 4
  %1264 = add nsw i32 %1263, 104
  %1265 = call i32 @gr_def(%struct.nvkm_grctx* %1262, i32 %1264, i32 15)
  %1266 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1267 = load i32, i32* %6, align 4
  %1268 = add nsw i32 %1267, 108
  %1269 = call i32 @gr_def(%struct.nvkm_grctx* %1266, i32 %1268, i32 15)
  br label %1294

1270:                                             ; preds = %1228
  %1271 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %1272 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %1271, i32 0, i32 0
  %1273 = load i32, i32* %1272, align 8
  %1274 = icmp slt i32 %1273, 160
  br i1 %1274, label %1275, label %1284

1275:                                             ; preds = %1270
  %1276 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1277 = load i32, i32* %6, align 4
  %1278 = add nsw i32 %1277, 80
  %1279 = call i32 @cp_ctx(%struct.nvkm_grctx* %1276, i32 %1278, i32 1)
  %1280 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1281 = load i32, i32* %6, align 4
  %1282 = add nsw i32 %1281, 112
  %1283 = call i32 @cp_ctx(%struct.nvkm_grctx* %1280, i32 %1282, i32 1)
  br label %1293

1284:                                             ; preds = %1270
  %1285 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1286 = load i32, i32* %6, align 4
  %1287 = add nsw i32 %1286, 80
  %1288 = call i32 @cp_ctx(%struct.nvkm_grctx* %1285, i32 %1287, i32 1)
  %1289 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %1290 = load i32, i32* %6, align 4
  %1291 = add nsw i32 %1290, 96
  %1292 = call i32 @cp_ctx(%struct.nvkm_grctx* %1289, i32 %1291, i32 5)
  br label %1293

1293:                                             ; preds = %1284, %1275
  br label %1294

1294:                                             ; preds = %1293, %1237
  br label %1295

1295:                                             ; preds = %1294, %639
  br label %1296

1296:                                             ; preds = %1295
  %1297 = load i32, i32* %4, align 4
  %1298 = add nsw i32 %1297, 1
  store i32 %1298, i32* %4, align 4
  br label %636

1299:                                             ; preds = %636
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @cp_ctx(%struct.nvkm_grctx*, i32, i32) #1

declare dso_local i32 @gr_def(%struct.nvkm_grctx*, i32, i32) #1

declare dso_local i64 @IS_NVA3F(i32) #1

declare dso_local i32 @nv50_gr_construct_mmio_ddata(%struct.nvkm_grctx*) #1

declare dso_local i64 @IS_NVAAF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
