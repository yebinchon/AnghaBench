; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxnv40.c_nv40_gr_construct_state3d.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxnv40.c_nv40_gr_construct_state3d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_grctx = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_grctx*)* @nv40_gr_construct_state3d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv40_gr_construct_state3d(%struct.nvkm_grctx* %0) #0 {
  %2 = alloca %struct.nvkm_grctx*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca i32, align 4
  store %struct.nvkm_grctx* %0, %struct.nvkm_grctx** %2, align 8
  %5 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %6 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %5, i32 0, i32 0
  %7 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  store %struct.nvkm_device* %7, %struct.nvkm_device** %3, align 8
  %8 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %9 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 64
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %14 = call i32 @cp_ctx(%struct.nvkm_grctx* %13, i32 4200576, i32 51)
  %15 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %16 = call i32 @gr_def(%struct.nvkm_grctx* %15, i32 4200768, i32 256)
  br label %64

17:                                               ; preds = %1
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %19 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 70
  br i1 %21, label %37, label %22

22:                                               ; preds = %17
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %24 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 71
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %29 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 73
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %34 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 75
  br i1 %36, label %37, label %63

37:                                               ; preds = %32, %27, %22, %17
  %38 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %39 = call i32 @cp_ctx(%struct.nvkm_grctx* %38, i32 4200576, i32 32)
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %49, %37
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 16
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %45 = load i32, i32* %4, align 4
  %46 = mul nsw i32 %45, 4
  %47 = add nsw i32 4200576, %46
  %48 = call i32 @gr_def(%struct.nvkm_grctx* %44, i32 %47, i32 273)
  br label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %40

52:                                               ; preds = %40
  %53 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %54 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 70
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %59 = call i32 @cp_ctx(%struct.nvkm_grctx* %58, i32 4200704, i32 16)
  br label %60

60:                                               ; preds = %57, %52
  %61 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %62 = call i32 @cp_ctx(%struct.nvkm_grctx* %61, i32 4200768, i32 3)
  br label %63

63:                                               ; preds = %60, %32
  br label %64

64:                                               ; preds = %63, %12
  %65 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %66 = call i32 @cp_ctx(%struct.nvkm_grctx* %65, i32 4200780, i32 18)
  %67 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %68 = call i32 @gr_def(%struct.nvkm_grctx* %67, i32 4200788, i32 273)
  %69 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %70 = call i32 @gr_def(%struct.nvkm_grctx* %69, i32 4200792, i32 524384)
  %71 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %72 = call i32 @gr_def(%struct.nvkm_grctx* %71, i32 4200820, i32 128)
  %73 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %74 = call i32 @gr_def(%struct.nvkm_grctx* %73, i32 4200824, i32 -65536)
  %75 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %76 = call i32 @gr_def(%struct.nvkm_grctx* %75, i32 4200828, i32 1)
  %77 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %78 = call i32 @gr_def(%struct.nvkm_grctx* %77, i32 4200848, i32 1178599424)
  %79 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %80 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 64
  br i1 %82, label %83, label %88

83:                                               ; preds = %64
  %84 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %85 = call i32 @cp_ctx(%struct.nvkm_grctx* %84, i32 4200864, i32 2)
  %86 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %87 = call i32 @cp_ctx(%struct.nvkm_grctx* %86, i32 4200876, i32 5)
  br label %93

88:                                               ; preds = %64
  %89 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %90 = call i32 @cp_ctx(%struct.nvkm_grctx* %89, i32 4200864, i32 1)
  %91 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %92 = call i32 @cp_ctx(%struct.nvkm_grctx* %91, i32 4200884, i32 3)
  br label %93

93:                                               ; preds = %88, %83
  %94 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %95 = call i32 @gr_def(%struct.nvkm_grctx* %94, i32 4200892, i32 -65536)
  %96 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %97 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  switch i32 %98, label %115 [
    i32 70, label %99
    i32 71, label %99
    i32 73, label %99
    i32 75, label %99
  ]

99:                                               ; preds = %93, %93, %93, %93
  %100 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %101 = call i32 @cp_ctx(%struct.nvkm_grctx* %100, i32 4200896, i32 18)
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %111, %99
  %103 = load i32, i32* %4, align 4
  %104 = icmp slt i32 %103, 16
  br i1 %104, label %105, label %114

105:                                              ; preds = %102
  %106 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %107 = load i32, i32* %4, align 4
  %108 = mul nsw i32 %107, 4
  %109 = add nsw i32 4200896, %108
  %110 = call i32 @gr_def(%struct.nvkm_grctx* %106, i32 %109, i32 -2004318072)
  br label %111

111:                                              ; preds = %105
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %4, align 4
  br label %102

114:                                              ; preds = %102
  br label %115

115:                                              ; preds = %93, %114
  %116 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %117 = call i32 @cp_ctx(%struct.nvkm_grctx* %116, i32 4200968, i32 8)
  %118 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %119 = call i32 @gr_def(%struct.nvkm_grctx* %118, i32 4200976, i32 268369920)
  %120 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %121 = call i32 @gr_def(%struct.nvkm_grctx* %120, i32 4200980, i32 268369920)
  %122 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %123 = call i32 @gr_def(%struct.nvkm_grctx* %122, i32 4200988, i32 69888)
  %124 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %125 = call i32 @cp_ctx(%struct.nvkm_grctx* %124, i32 4201004, i32 4)
  %126 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %127 = call i32 @cp_ctx(%struct.nvkm_grctx* %126, i32 4201028, i32 26)
  store i32 0, i32* %4, align 4
  br label %128

128:                                              ; preds = %137, %115
  %129 = load i32, i32* %4, align 4
  %130 = icmp slt i32 %129, 16
  br i1 %130, label %131, label %140

131:                                              ; preds = %128
  %132 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %133 = load i32, i32* %4, align 4
  %134 = mul nsw i32 %133, 4
  %135 = add nsw i32 4201028, %134
  %136 = call i32 @gr_def(%struct.nvkm_grctx* %132, i32 %135, i32 134152192)
  br label %137

137:                                              ; preds = %131
  %138 = load i32, i32* %4, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %4, align 4
  br label %128

140:                                              ; preds = %128
  %141 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %142 = call i32 @gr_def(%struct.nvkm_grctx* %141, i32 4201100, i32 1266679807)
  %143 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %144 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 64
  br i1 %146, label %147, label %150

147:                                              ; preds = %140
  %148 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %149 = call i32 @cp_ctx(%struct.nvkm_grctx* %148, i32 4201144, i32 3)
  br label %155

150:                                              ; preds = %140
  %151 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %152 = call i32 @cp_ctx(%struct.nvkm_grctx* %151, i32 4201144, i32 1)
  %153 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %154 = call i32 @cp_ctx(%struct.nvkm_grctx* %153, i32 4201152, i32 1)
  br label %155

155:                                              ; preds = %150, %147
  %156 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %157 = call i32 @cp_ctx(%struct.nvkm_grctx* %156, i32 4201168, i32 8)
  %158 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %159 = call i32 @gr_def(%struct.nvkm_grctx* %158, i32 4201168, i32 807407616)
  %160 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %161 = call i32 @gr_def(%struct.nvkm_grctx* %160, i32 4201172, i32 1885360192)
  %162 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %163 = call i32 @gr_def(%struct.nvkm_grctx* %162, i32 4201176, i32 -1196910456)
  %164 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %165 = call i32 @gr_def(%struct.nvkm_grctx* %164, i32 4201180, i32 -118957880)
  %166 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %167 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %168 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %169, 64
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i32 2, i32 1
  %173 = call i32 @cp_ctx(%struct.nvkm_grctx* %166, i32 4201232, i32 %172)
  %174 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %175 = call i32 @gr_def(%struct.nvkm_grctx* %174, i32 4201232, i32 1074790400)
  %176 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %177 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %178 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %179, 64
  %181 = zext i1 %180 to i64
  %182 = select i1 %180, i32 6, i32 5
  %183 = call i32 @cp_ctx(%struct.nvkm_grctx* %176, i32 4201240, i32 %182)
  %184 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %185 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %186 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = icmp eq i32 %187, 64
  %189 = zext i1 %188 to i64
  %190 = select i1 %188, i32 4, i32 0
  %191 = call i32 @gr_def(%struct.nvkm_grctx* %184, i32 4201256, i32 %190)
  %192 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %193 = call i32 @cp_ctx(%struct.nvkm_grctx* %192, i32 4201264, i32 25)
  %194 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %195 = call i32 @gr_def(%struct.nvkm_grctx* %194, i32 4201268, i32 65535)
  %196 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %197 = call i32 @gr_def(%struct.nvkm_grctx* %196, i32 4201320, i32 1129416150)
  %198 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %199 = call i32 @gr_def(%struct.nvkm_grctx* %198, i32 4201324, i32 559265433)
  %200 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %201 = call i32 @gr_def(%struct.nvkm_grctx* %200, i32 4201328, i32 -19088744)
  %202 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %203 = call i32 @gr_def(%struct.nvkm_grctx* %202, i32 4201332, i32 152)
  %204 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %205 = call i32 @gr_def(%struct.nvkm_grctx* %204, i32 4201348, i32 -1)
  %206 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %207 = call i32 @gr_def(%struct.nvkm_grctx* %206, i32 4201352, i32 16740352)
  %208 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %209 = call i32 @gr_def(%struct.nvkm_grctx* %208, i32 4201356, i32 65535)
  %210 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %211 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = icmp ne i32 %212, 68
  br i1 %213, label %214, label %227

214:                                              ; preds = %155
  %215 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %216 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = icmp ne i32 %217, 74
  br i1 %218, label %219, label %227

219:                                              ; preds = %214
  %220 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %221 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = icmp ne i32 %222, 78
  br i1 %223, label %224, label %227

224:                                              ; preds = %219
  %225 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %226 = call i32 @cp_ctx(%struct.nvkm_grctx* %225, i32 4201364, i32 1)
  br label %227

227:                                              ; preds = %224, %219, %214, %155
  %228 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %229 = call i32 @cp_ctx(%struct.nvkm_grctx* %228, i32 4201368, i32 8)
  %230 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %231 = call i32 @gr_def(%struct.nvkm_grctx* %230, i32 4201372, i32 16711680)
  %232 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %233 = call i32 @cp_ctx(%struct.nvkm_grctx* %232, i32 4201408, i32 9)
  %234 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %235 = call i32 @gr_def(%struct.nvkm_grctx* %234, i32 4201440, i32 16776960)
  %236 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %237 = call i32 @cp_ctx(%struct.nvkm_grctx* %236, i32 4201472, i32 192)
  store i32 0, i32* %4, align 4
  br label %238

238:                                              ; preds = %272, %227
  %239 = load i32, i32* %4, align 4
  %240 = icmp slt i32 %239, 16
  br i1 %240, label %241, label %275

241:                                              ; preds = %238
  %242 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %243 = load i32, i32* %4, align 4
  %244 = mul nsw i32 %243, 4
  %245 = add nsw i32 4201536, %244
  %246 = call i32 @gr_def(%struct.nvkm_grctx* %242, i32 %245, i32 99464)
  %247 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %248 = load i32, i32* %4, align 4
  %249 = mul nsw i32 %248, 4
  %250 = add nsw i32 4201600, %249
  %251 = call i32 @gr_def(%struct.nvkm_grctx* %247, i32 %250, i32 164354)
  %252 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %253 = load i32, i32* %4, align 4
  %254 = mul nsw i32 %253, 4
  %255 = add nsw i32 4201728, %254
  %256 = call i32 @gr_def(%struct.nvkm_grctx* %252, i32 %255, i32 43748)
  %257 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %258 = load i32, i32* %4, align 4
  %259 = mul nsw i32 %258, 4
  %260 = add nsw i32 4201792, %259
  %261 = call i32 @gr_def(%struct.nvkm_grctx* %257, i32 %260, i32 16850944)
  %262 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %263 = load i32, i32* %4, align 4
  %264 = mul nsw i32 %263, 4
  %265 = add nsw i32 4201856, %264
  %266 = call i32 @gr_def(%struct.nvkm_grctx* %262, i32 %265, i32 524296)
  %267 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %268 = load i32, i32* %4, align 4
  %269 = mul nsw i32 %268, 4
  %270 = add nsw i32 4201984, %269
  %271 = call i32 @gr_def(%struct.nvkm_grctx* %267, i32 %270, i32 1048584)
  br label %272

272:                                              ; preds = %241
  %273 = load i32, i32* %4, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %4, align 4
  br label %238

275:                                              ; preds = %238
  store i32 0, i32* %4, align 4
  br label %276

276:                                              ; preds = %300, %275
  %277 = load i32, i32* %4, align 4
  %278 = icmp slt i32 %277, 4
  br i1 %278, label %279, label %303

279:                                              ; preds = %276
  %280 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %281 = load i32, i32* %4, align 4
  %282 = mul nsw i32 %281, 4
  %283 = add nsw i32 4202128, %282
  %284 = call i32 @gr_def(%struct.nvkm_grctx* %280, i32 %283, i32 113792)
  %285 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %286 = load i32, i32* %4, align 4
  %287 = mul nsw i32 %286, 4
  %288 = add nsw i32 4202144, %287
  %289 = call i32 @gr_def(%struct.nvkm_grctx* %285, i32 %288, i32 514)
  %290 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %291 = load i32, i32* %4, align 4
  %292 = mul nsw i32 %291, 4
  %293 = add nsw i32 4202176, %292
  %294 = call i32 @gr_def(%struct.nvkm_grctx* %290, i32 %293, i32 8)
  %295 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %296 = load i32, i32* %4, align 4
  %297 = mul nsw i32 %296, 4
  %298 = add nsw i32 4202208, %297
  %299 = call i32 @gr_def(%struct.nvkm_grctx* %295, i32 %298, i32 524296)
  br label %300

300:                                              ; preds = %279
  %301 = load i32, i32* %4, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %4, align 4
  br label %276

303:                                              ; preds = %276
  %304 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %305 = call i32 @cp_ctx(%struct.nvkm_grctx* %304, i32 4198236, i32 3)
  %306 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %307 = call i32 @gr_def(%struct.nvkm_grctx* %306, i32 4198236, i32 2)
  %308 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %309 = call i32 @cp_ctx(%struct.nvkm_grctx* %308, i32 4198276, i32 1)
  ret void
}

declare dso_local i32 @cp_ctx(%struct.nvkm_grctx*, i32, i32) #1

declare dso_local i32 @gr_def(%struct.nvkm_grctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
