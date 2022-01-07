; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxnv50.c_nv50_gr_construct_xfer2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxnv50.c_nv50_gr_construct_xfer2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_grctx = type { i32, %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@CP_SET_XFER_POINTER = common dso_local global i32 0, align 4
@CP_SEEK_2 = common dso_local global i32 0, align 4
@CP_XFER_2 = common dso_local global i32 0, align 4
@XFER = common dso_local global i32 0, align 4
@BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_grctx*)* @nv50_gr_construct_xfer2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_gr_construct_xfer2(%struct.nvkm_grctx* %0) #0 {
  %2 = alloca %struct.nvkm_grctx*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvkm_grctx* %0, %struct.nvkm_grctx** %2, align 8
  %8 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %9 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %8, i32 0, i32 1
  %10 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  store %struct.nvkm_device* %10, %struct.nvkm_device** %3, align 8
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %12 = call i32 @nvkm_rd32(%struct.nvkm_device* %11, i32 5440)
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %14 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 63
  %17 = and i32 %16, -64
  store i32 %17, i32* %5, align 4
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %19 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 160
  br i1 %21, label %22, label %67

22:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %63, %22
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 8
  br i1 %25, label %26, label %66

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %27, %28
  %30 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %31 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %36 = call i32 @xf_emit(%struct.nvkm_grctx* %35, i32 1, i32 135269394)
  br label %37

37:                                               ; preds = %34, %26
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %4, align 4
  %40 = shl i32 1, %39
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %45 = call i32 @nv50_gr_construct_xfer_mpc(%struct.nvkm_grctx* %44)
  br label %46

46:                                               ; preds = %43, %37
  %47 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %48 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sub nsw i32 %49, %50
  %52 = sdiv i32 %51, 8
  %53 = load i32, i32* %7, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %46
  %56 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %57 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sub nsw i32 %58, %59
  %61 = sdiv i32 %60, 8
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %55, %46
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %23

66:                                               ; preds = %23
  br label %219

67:                                               ; preds = %1
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %70 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %72 = call i32 @xf_emit(%struct.nvkm_grctx* %71, i32 1, i32 135269394)
  %73 = load i32, i32* %6, align 4
  %74 = and i32 %73, 1
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %78 = call i32 @nv50_gr_construct_xfer_mpc(%struct.nvkm_grctx* %77)
  br label %79

79:                                               ; preds = %76, %67
  %80 = load i32, i32* %6, align 4
  %81 = and i32 %80, 2
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %85 = call i32 @nv50_gr_construct_xfer_mpc(%struct.nvkm_grctx* %84)
  br label %86

86:                                               ; preds = %83, %79
  %87 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %88 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sub nsw i32 %89, %90
  %92 = sdiv i32 %91, 8
  %93 = load i32, i32* %7, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %86
  %96 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %97 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sub nsw i32 %98, %99
  %101 = sdiv i32 %100, 8
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %95, %86
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 1
  %105 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %106 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* %6, align 4
  %108 = and i32 %107, 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %102
  %111 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %112 = call i32 @nv50_gr_construct_xfer_mpc(%struct.nvkm_grctx* %111)
  br label %113

113:                                              ; preds = %110, %102
  %114 = load i32, i32* %6, align 4
  %115 = and i32 %114, 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %119 = call i32 @nv50_gr_construct_xfer_mpc(%struct.nvkm_grctx* %118)
  br label %120

120:                                              ; preds = %117, %113
  %121 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %122 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sub nsw i32 %123, %124
  %126 = sdiv i32 %125, 8
  %127 = load i32, i32* %7, align 4
  %128 = icmp sgt i32 %126, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %120
  %130 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %131 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sub nsw i32 %132, %133
  %135 = sdiv i32 %134, 8
  store i32 %135, i32* %7, align 4
  br label %136

136:                                              ; preds = %129, %120
  %137 = load i32, i32* %5, align 4
  %138 = add nsw i32 %137, 2
  %139 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %140 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load i32, i32* %6, align 4
  %142 = and i32 %141, 16
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %136
  %145 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %146 = call i32 @nv50_gr_construct_xfer_mpc(%struct.nvkm_grctx* %145)
  br label %147

147:                                              ; preds = %144, %136
  %148 = load i32, i32* %6, align 4
  %149 = and i32 %148, 32
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %153 = call i32 @nv50_gr_construct_xfer_mpc(%struct.nvkm_grctx* %152)
  br label %154

154:                                              ; preds = %151, %147
  %155 = load i32, i32* %6, align 4
  %156 = and i32 %155, 64
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %160 = call i32 @nv50_gr_construct_xfer_mpc(%struct.nvkm_grctx* %159)
  br label %161

161:                                              ; preds = %158, %154
  %162 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %163 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* %5, align 4
  %166 = sub nsw i32 %164, %165
  %167 = sdiv i32 %166, 8
  %168 = load i32, i32* %7, align 4
  %169 = icmp sgt i32 %167, %168
  br i1 %169, label %170, label %177

170:                                              ; preds = %161
  %171 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %172 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %5, align 4
  %175 = sub nsw i32 %173, %174
  %176 = sdiv i32 %175, 8
  store i32 %176, i32* %7, align 4
  br label %177

177:                                              ; preds = %170, %161
  %178 = load i32, i32* %5, align 4
  %179 = add nsw i32 %178, 3
  %180 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %181 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  %182 = load i32, i32* %6, align 4
  %183 = and i32 %182, 128
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %177
  %186 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %187 = call i32 @nv50_gr_construct_xfer_mpc(%struct.nvkm_grctx* %186)
  br label %188

188:                                              ; preds = %185, %177
  %189 = load i32, i32* %6, align 4
  %190 = and i32 %189, 256
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %188
  %193 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %194 = call i32 @nv50_gr_construct_xfer_mpc(%struct.nvkm_grctx* %193)
  br label %195

195:                                              ; preds = %192, %188
  %196 = load i32, i32* %6, align 4
  %197 = and i32 %196, 512
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %195
  %200 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %201 = call i32 @nv50_gr_construct_xfer_mpc(%struct.nvkm_grctx* %200)
  br label %202

202:                                              ; preds = %199, %195
  %203 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %204 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* %5, align 4
  %207 = sub nsw i32 %205, %206
  %208 = sdiv i32 %207, 8
  %209 = load i32, i32* %7, align 4
  %210 = icmp sgt i32 %208, %209
  br i1 %210, label %211, label %218

211:                                              ; preds = %202
  %212 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %213 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* %5, align 4
  %216 = sub nsw i32 %214, %215
  %217 = sdiv i32 %216, 8
  store i32 %217, i32* %7, align 4
  br label %218

218:                                              ; preds = %211, %202
  br label %219

219:                                              ; preds = %218, %66
  %220 = load i32, i32* %5, align 4
  %221 = load i32, i32* %7, align 4
  %222 = mul nsw i32 %221, 8
  %223 = add nsw i32 %220, %222
  %224 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %225 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %224, i32 0, i32 0
  store i32 %223, i32* %225, align 8
  %226 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %227 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = add nsw i32 %228, 63
  %230 = and i32 %229, -64
  %231 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %232 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %231, i32 0, i32 0
  store i32 %230, i32* %232, align 8
  %233 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %234 = load i32, i32* %5, align 4
  %235 = call i32 @cp_lsr(%struct.nvkm_grctx* %233, i32 %234)
  %236 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %237 = load i32, i32* @CP_SET_XFER_POINTER, align 4
  %238 = call i32 @cp_out(%struct.nvkm_grctx* %236, i32 %237)
  %239 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %240 = load i32, i32* %7, align 4
  %241 = call i32 @cp_lsr(%struct.nvkm_grctx* %239, i32 %240)
  %242 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %243 = load i32, i32* @CP_SEEK_2, align 4
  %244 = call i32 @cp_out(%struct.nvkm_grctx* %242, i32 %243)
  %245 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %246 = load i32, i32* @CP_XFER_2, align 4
  %247 = call i32 @cp_out(%struct.nvkm_grctx* %245, i32 %246)
  %248 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %249 = load i32, i32* @XFER, align 4
  %250 = load i32, i32* @BUSY, align 4
  %251 = call i32 @cp_wait(%struct.nvkm_grctx* %248, i32 %249, i32 %250)
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @xf_emit(%struct.nvkm_grctx*, i32, i32) #1

declare dso_local i32 @nv50_gr_construct_xfer_mpc(%struct.nvkm_grctx*) #1

declare dso_local i32 @cp_lsr(%struct.nvkm_grctx*, i32) #1

declare dso_local i32 @cp_out(%struct.nvkm_grctx*, i32) #1

declare dso_local i32 @cp_wait(%struct.nvkm_grctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
