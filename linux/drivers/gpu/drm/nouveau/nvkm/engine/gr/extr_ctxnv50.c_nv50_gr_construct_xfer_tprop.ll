; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxnv50.c_nv50_gr_construct_xfer_tprop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxnv50.c_nv50_gr_construct_xfer_tprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_grctx = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_grctx*)* @nv50_gr_construct_xfer_tprop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_gr_construct_xfer_tprop(%struct.nvkm_grctx* %0) #0 {
  %2 = alloca %struct.nvkm_grctx*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nvkm_grctx* %0, %struct.nvkm_grctx** %2, align 8
  %6 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %7 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %6, i32 0, i32 0
  %8 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  store %struct.nvkm_device* %8, %struct.nvkm_device** %3, align 8
  %9 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %10 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 80
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 1023, i32* %4, align 4
  store i32 15968, i32* %5, align 4
  br label %23

14:                                               ; preds = %1
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %16 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @IS_NVA3F(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  store i32 2047, i32* %4, align 4
  store i32 2096743, i32* %5, align 4
  br label %22

21:                                               ; preds = %14
  store i32 2047, i32* %4, align 4
  store i32 556647, i32* %5, align 4
  br label %22

22:                                               ; preds = %21, %20
  br label %23

23:                                               ; preds = %22, %13
  %24 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %25 = call i32 @xf_emit(%struct.nvkm_grctx* %24, i32 1, i32 0)
  %26 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %27 = call i32 @xf_emit(%struct.nvkm_grctx* %26, i32 1, i32 0)
  %28 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %29 = call i32 @xf_emit(%struct.nvkm_grctx* %28, i32 1, i32 0)
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %31 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @IS_NVA3F(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %23
  %36 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %37 = call i32 @xf_emit(%struct.nvkm_grctx* %36, i32 1, i32 1)
  br label %38

38:                                               ; preds = %35, %23
  %39 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %40 = call i32 @xf_emit(%struct.nvkm_grctx* %39, i32 1, i32 0)
  %41 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %42 = call i32 @xf_emit(%struct.nvkm_grctx* %41, i32 1, i32 0)
  %43 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %44 = call i32 @xf_emit(%struct.nvkm_grctx* %43, i32 1, i32 0)
  %45 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %46 = call i32 @xf_emit(%struct.nvkm_grctx* %45, i32 3, i32 0)
  %47 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %48 = call i32 @xf_emit(%struct.nvkm_grctx* %47, i32 4, i32 0)
  %49 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %50 = call i32 @xf_emit(%struct.nvkm_grctx* %49, i32 1, i32 0)
  %51 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %52 = call i32 @xf_emit(%struct.nvkm_grctx* %51, i32 1, i32 0)
  %53 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %54 = call i32 @xf_emit(%struct.nvkm_grctx* %53, i32 1, i32 15)
  %55 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %56 = call i32 @xf_emit(%struct.nvkm_grctx* %55, i32 7, i32 0)
  %57 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %58 = call i32 @xf_emit(%struct.nvkm_grctx* %57, i32 1, i32 0)
  %59 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %60 = call i32 @xf_emit(%struct.nvkm_grctx* %59, i32 1, i32 0)
  %61 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %62 = call i32 @xf_emit(%struct.nvkm_grctx* %61, i32 1, i32 0)
  %63 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %64 = call i32 @xf_emit(%struct.nvkm_grctx* %63, i32 1, i32 0)
  %65 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %66 = call i32 @xf_emit(%struct.nvkm_grctx* %65, i32 1, i32 4)
  %67 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %68 = call i32 @xf_emit(%struct.nvkm_grctx* %67, i32 4, i32 65535)
  %69 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %70 = call i32 @xf_emit(%struct.nvkm_grctx* %69, i32 1, i32 0)
  %71 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %72 = call i32 @xf_emit(%struct.nvkm_grctx* %71, i32 3, i32 0)
  %73 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %74 = call i32 @xf_emit(%struct.nvkm_grctx* %73, i32 1, i32 0)
  %75 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %76 = call i32 @xf_emit(%struct.nvkm_grctx* %75, i32 1, i32 0)
  %77 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %78 = call i32 @xf_emit(%struct.nvkm_grctx* %77, i32 2, i32 0)
  %79 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %80 = call i32 @xf_emit(%struct.nvkm_grctx* %79, i32 1, i32 1)
  %81 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %82 = call i32 @xf_emit(%struct.nvkm_grctx* %81, i32 1, i32 0)
  %83 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %84 = call i32 @xf_emit(%struct.nvkm_grctx* %83, i32 1, i32 0)
  %85 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %86 = call i32 @xf_emit(%struct.nvkm_grctx* %85, i32 1, i32 0)
  %87 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %88 = call i32 @xf_emit(%struct.nvkm_grctx* %87, i32 1, i32 1)
  %89 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %90 = call i32 @xf_emit(%struct.nvkm_grctx* %89, i32 1, i32 0)
  %91 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %92 = call i32 @xf_emit(%struct.nvkm_grctx* %91, i32 1, i32 0)
  %93 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %94 = call i32 @xf_emit(%struct.nvkm_grctx* %93, i32 1, i32 0)
  %95 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %96 = call i32 @xf_emit(%struct.nvkm_grctx* %95, i32 2, i32 0)
  %97 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %98 = call i32 @xf_emit(%struct.nvkm_grctx* %97, i32 1, i32 1)
  %99 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %100 = call i32 @xf_emit(%struct.nvkm_grctx* %99, i32 1, i32 0)
  %101 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %102 = call i32 @xf_emit(%struct.nvkm_grctx* %101, i32 1, i32 0)
  %103 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %104 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @IS_NVA3F(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %38
  %109 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %110 = call i32 @xf_emit(%struct.nvkm_grctx* %109, i32 1, i32 3)
  %111 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %112 = call i32 @xf_emit(%struct.nvkm_grctx* %111, i32 1, i32 0)
  %113 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %114 = call i32 @xf_emit(%struct.nvkm_grctx* %113, i32 1, i32 0)
  br label %129

115:                                              ; preds = %38
  %116 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %117 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp sge i32 %118, 160
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %122 = call i32 @xf_emit(%struct.nvkm_grctx* %121, i32 1, i32 1)
  %123 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %124 = call i32 @xf_emit(%struct.nvkm_grctx* %123, i32 1, i32 0)
  br label %128

125:                                              ; preds = %115
  %126 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %127 = call i32 @xf_emit(%struct.nvkm_grctx* %126, i32 1, i32 0)
  br label %128

128:                                              ; preds = %125, %120
  br label %129

129:                                              ; preds = %128, %108
  %130 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %131 = call i32 @xf_emit(%struct.nvkm_grctx* %130, i32 1, i32 0)
  %132 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %133 = call i32 @xf_emit(%struct.nvkm_grctx* %132, i32 8, i32 0)
  %134 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %135 = call i32 @xf_emit(%struct.nvkm_grctx* %134, i32 1, i32 1)
  %136 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %137 = call i32 @xf_emit(%struct.nvkm_grctx* %136, i32 1, i32 1)
  %138 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %139 = call i32 @xf_emit(%struct.nvkm_grctx* %138, i32 1, i32 2)
  %140 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %141 = call i32 @xf_emit(%struct.nvkm_grctx* %140, i32 1, i32 1)
  %142 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %143 = call i32 @xf_emit(%struct.nvkm_grctx* %142, i32 1, i32 1)
  %144 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %145 = call i32 @xf_emit(%struct.nvkm_grctx* %144, i32 1, i32 2)
  %146 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %147 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i64 @IS_NVA3F(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %170

151:                                              ; preds = %129
  %152 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %153 = call i32 @xf_emit(%struct.nvkm_grctx* %152, i32 1, i32 0)
  %154 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %155 = call i32 @xf_emit(%struct.nvkm_grctx* %154, i32 8, i32 1)
  %156 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %157 = call i32 @xf_emit(%struct.nvkm_grctx* %156, i32 8, i32 1)
  %158 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %159 = call i32 @xf_emit(%struct.nvkm_grctx* %158, i32 8, i32 1)
  %160 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %161 = call i32 @xf_emit(%struct.nvkm_grctx* %160, i32 8, i32 2)
  %162 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %163 = call i32 @xf_emit(%struct.nvkm_grctx* %162, i32 8, i32 1)
  %164 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %165 = call i32 @xf_emit(%struct.nvkm_grctx* %164, i32 8, i32 2)
  %166 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %167 = call i32 @xf_emit(%struct.nvkm_grctx* %166, i32 8, i32 1)
  %168 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %169 = call i32 @xf_emit(%struct.nvkm_grctx* %168, i32 1, i32 0)
  br label %170

170:                                              ; preds = %151, %129
  %171 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %172 = call i32 @xf_emit(%struct.nvkm_grctx* %171, i32 1, i32 1)
  %173 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %174 = call i32 @xf_emit(%struct.nvkm_grctx* %173, i32 1, i32 0)
  %175 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %176 = call i32 @xf_emit(%struct.nvkm_grctx* %175, i32 1, i32 17)
  %177 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %178 = call i32 @xf_emit(%struct.nvkm_grctx* %177, i32 7, i32 0)
  %179 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %180 = call i32 @xf_emit(%struct.nvkm_grctx* %179, i32 1, i32 262957185)
  %181 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %182 = call i32 @xf_emit(%struct.nvkm_grctx* %181, i32 1, i32 0)
  %183 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %184 = call i32 @xf_emit(%struct.nvkm_grctx* %183, i32 1, i32 0)
  %185 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %186 = call i32 @xf_emit(%struct.nvkm_grctx* %185, i32 1, i32 4)
  %187 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %188 = call i32 @xf_emit(%struct.nvkm_grctx* %187, i32 1, i32 0)
  %189 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %190 = call i32 @xf_emit(%struct.nvkm_grctx* %189, i32 1, i32 0)
  %191 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %192 = call i32 @xf_emit(%struct.nvkm_grctx* %191, i32 1, i32 0)
  %193 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %194 = call i32 @xf_emit(%struct.nvkm_grctx* %193, i32 1, i32 17)
  %195 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %196 = call i32 @xf_emit(%struct.nvkm_grctx* %195, i32 1, i32 1)
  %197 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %198 = call i32 @xf_emit(%struct.nvkm_grctx* %197, i32 1, i32 0)
  %199 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %200 = call i32 @xf_emit(%struct.nvkm_grctx* %199, i32 1, i32 207)
  %201 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %202 = call i32 @xf_emit(%struct.nvkm_grctx* %201, i32 1, i32 207)
  %203 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %204 = call i32 @xf_emit(%struct.nvkm_grctx* %203, i32 1, i32 207)
  %205 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %206 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i64 @IS_NVA3F(i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %170
  %211 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %212 = call i32 @xf_emit(%struct.nvkm_grctx* %211, i32 1, i32 1)
  br label %213

213:                                              ; preds = %210, %170
  %214 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %215 = call i32 @xf_emit(%struct.nvkm_grctx* %214, i32 1, i32 0)
  %216 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %217 = call i32 @xf_emit(%struct.nvkm_grctx* %216, i32 1, i32 0)
  %218 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %219 = call i32 @xf_emit(%struct.nvkm_grctx* %218, i32 8, i32 0)
  %220 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %221 = call i32 @xf_emit(%struct.nvkm_grctx* %220, i32 1, i32 1)
  %222 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %223 = call i32 @xf_emit(%struct.nvkm_grctx* %222, i32 1, i32 1)
  %224 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %225 = call i32 @xf_emit(%struct.nvkm_grctx* %224, i32 1, i32 2)
  %226 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %227 = call i32 @xf_emit(%struct.nvkm_grctx* %226, i32 1, i32 1)
  %228 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %229 = call i32 @xf_emit(%struct.nvkm_grctx* %228, i32 1, i32 1)
  %230 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %231 = call i32 @xf_emit(%struct.nvkm_grctx* %230, i32 1, i32 2)
  %232 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %233 = call i32 @xf_emit(%struct.nvkm_grctx* %232, i32 1, i32 1)
  %234 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %235 = call i32 @xf_emit(%struct.nvkm_grctx* %234, i32 1, i32 0)
  %236 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %237 = call i32 @xf_emit(%struct.nvkm_grctx* %236, i32 8, i32 1)
  %238 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %239 = call i32 @xf_emit(%struct.nvkm_grctx* %238, i32 1, i32 17)
  %240 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %241 = call i32 @xf_emit(%struct.nvkm_grctx* %240, i32 7, i32 0)
  %242 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %243 = call i32 @xf_emit(%struct.nvkm_grctx* %242, i32 1, i32 262957185)
  %244 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %245 = call i32 @xf_emit(%struct.nvkm_grctx* %244, i32 1, i32 15)
  %246 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %247 = call i32 @xf_emit(%struct.nvkm_grctx* %246, i32 7, i32 0)
  %248 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %249 = load i32, i32* %5, align 4
  %250 = call i32 @xf_emit(%struct.nvkm_grctx* %248, i32 1, i32 %249)
  %251 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %252 = call i32 @xf_emit(%struct.nvkm_grctx* %251, i32 1, i32 0)
  %253 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %254 = call i32 @xf_emit(%struct.nvkm_grctx* %253, i32 1, i32 0)
  %255 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %256 = call i32 @xf_emit(%struct.nvkm_grctx* %255, i32 1, i32 17)
  %257 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %258 = call i32 @xf_emit(%struct.nvkm_grctx* %257, i32 1, i32 1)
  %259 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %260 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = call i64 @IS_NVA3F(i32 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %213
  %265 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %266 = call i32 @xf_emit(%struct.nvkm_grctx* %265, i32 1, i32 1)
  br label %267

267:                                              ; preds = %264, %213
  %268 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %269 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = icmp eq i32 %270, 80
  br i1 %271, label %272, label %275

272:                                              ; preds = %267
  %273 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %274 = call i32 @xf_emit(%struct.nvkm_grctx* %273, i32 1, i32 0)
  br label %278

275:                                              ; preds = %267
  %276 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %277 = call i32 @xf_emit(%struct.nvkm_grctx* %276, i32 3, i32 0)
  br label %278

278:                                              ; preds = %275, %272
  %279 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %280 = call i32 @xf_emit(%struct.nvkm_grctx* %279, i32 1, i32 4)
  %281 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %282 = call i32 @xf_emit(%struct.nvkm_grctx* %281, i32 1, i32 0)
  %283 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %284 = call i32 @xf_emit(%struct.nvkm_grctx* %283, i32 1, i32 0)
  %285 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %286 = call i32 @xf_emit(%struct.nvkm_grctx* %285, i32 1, i32 0)
  %287 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %288 = call i32 @xf_emit(%struct.nvkm_grctx* %287, i32 1, i32 0)
  %289 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %290 = call i32 @xf_emit(%struct.nvkm_grctx* %289, i32 1, i32 0)
  %291 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %292 = call i32 @xf_emit(%struct.nvkm_grctx* %291, i32 1, i32 1)
  %293 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %294 = call i32 @xf_emit(%struct.nvkm_grctx* %293, i32 1, i32 0)
  %295 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %296 = call i32 @xf_emit(%struct.nvkm_grctx* %295, i32 1, i32 0)
  %297 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %298 = call i32 @xf_emit(%struct.nvkm_grctx* %297, i32 1, i32 0)
  %299 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %300 = call i32 @xf_emit(%struct.nvkm_grctx* %299, i32 1, i32 0)
  %301 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %302 = call i32 @xf_emit(%struct.nvkm_grctx* %301, i32 1, i32 17)
  %303 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %304 = call i32 @xf_emit(%struct.nvkm_grctx* %303, i32 7, i32 0)
  %305 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %306 = call i32 @xf_emit(%struct.nvkm_grctx* %305, i32 1, i32 262957185)
  %307 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %308 = call i32 @xf_emit(%struct.nvkm_grctx* %307, i32 1, i32 0)
  %309 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %310 = call i32 @xf_emit(%struct.nvkm_grctx* %309, i32 1, i32 0)
  %311 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %312 = call i32 @xf_emit(%struct.nvkm_grctx* %311, i32 1, i32 0)
  %313 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %314 = call i32 @xf_emit(%struct.nvkm_grctx* %313, i32 1, i32 17)
  %315 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %316 = call i32 @xf_emit(%struct.nvkm_grctx* %315, i32 1, i32 1)
  %317 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %318 = call i32 @xf_emit(%struct.nvkm_grctx* %317, i32 1, i32 0)
  %319 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %320 = call i32 @xf_emit(%struct.nvkm_grctx* %319, i32 1, i32 1)
  %321 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %322 = call i32 @xf_emit(%struct.nvkm_grctx* %321, i32 1, i32 0)
  %323 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %324 = call i32 @xf_emit(%struct.nvkm_grctx* %323, i32 1, i32 1)
  %325 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %326 = call i32 @xf_emit(%struct.nvkm_grctx* %325, i32 1, i32 0)
  %327 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %328 = load i32, i32* %4, align 4
  %329 = call i32 @xf_emit(%struct.nvkm_grctx* %327, i32 1, i32 %328)
  %330 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %331 = call i32 @xf_emit(%struct.nvkm_grctx* %330, i32 1, i32 0)
  %332 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %333 = call i32 @xf_emit(%struct.nvkm_grctx* %332, i32 1, i32 1)
  %334 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %335 = call i32 @xf_emit(%struct.nvkm_grctx* %334, i32 1, i32 0)
  %336 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %337 = call i32 @xf_emit(%struct.nvkm_grctx* %336, i32 1, i32 1)
  %338 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %339 = call i32 @xf_emit(%struct.nvkm_grctx* %338, i32 1, i32 0)
  %340 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %341 = call i32 @xf_emit(%struct.nvkm_grctx* %340, i32 1, i32 0)
  %342 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %343 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = call i64 @IS_NVA3F(i32 %344)
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %350

347:                                              ; preds = %278
  %348 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %349 = call i32 @xf_emit(%struct.nvkm_grctx* %348, i32 1, i32 1)
  br label %350

350:                                              ; preds = %347, %278
  %351 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %352 = call i32 @xf_emit(%struct.nvkm_grctx* %351, i32 8, i32 0)
  %353 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %354 = call i32 @xf_emit(%struct.nvkm_grctx* %353, i32 1, i32 0)
  %355 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %356 = call i32 @xf_emit(%struct.nvkm_grctx* %355, i32 1, i32 0)
  %357 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %358 = call i32 @xf_emit(%struct.nvkm_grctx* %357, i32 1, i32 0)
  %359 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %360 = call i32 @xf_emit(%struct.nvkm_grctx* %359, i32 1, i32 0)
  %361 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %362 = call i32 @xf_emit(%struct.nvkm_grctx* %361, i32 1, i32 0)
  %363 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %364 = call i32 @xf_emit(%struct.nvkm_grctx* %363, i32 1, i32 0)
  %365 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %366 = call i32 @xf_emit(%struct.nvkm_grctx* %365, i32 1, i32 0)
  %367 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %368 = call i32 @xf_emit(%struct.nvkm_grctx* %367, i32 1, i32 0)
  %369 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %370 = call i32 @xf_emit(%struct.nvkm_grctx* %369, i32 8, i32 0)
  %371 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %372 = call i32 @xf_emit(%struct.nvkm_grctx* %371, i32 8, i32 0)
  %373 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %374 = call i32 @xf_emit(%struct.nvkm_grctx* %373, i32 8, i32 0)
  %375 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %376 = call i32 @xf_emit(%struct.nvkm_grctx* %375, i32 8, i32 8)
  %377 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %378 = call i32 @xf_emit(%struct.nvkm_grctx* %377, i32 1, i32 17)
  %379 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %380 = call i32 @xf_emit(%struct.nvkm_grctx* %379, i32 7, i32 0)
  %381 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %382 = call i32 @xf_emit(%struct.nvkm_grctx* %381, i32 1, i32 262957185)
  %383 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %384 = call i32 @xf_emit(%struct.nvkm_grctx* %383, i32 8, i32 1024)
  %385 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %386 = call i32 @xf_emit(%struct.nvkm_grctx* %385, i32 8, i32 768)
  %387 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %388 = call i32 @xf_emit(%struct.nvkm_grctx* %387, i32 1, i32 1)
  %389 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %390 = call i32 @xf_emit(%struct.nvkm_grctx* %389, i32 1, i32 15)
  %391 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %392 = call i32 @xf_emit(%struct.nvkm_grctx* %391, i32 7, i32 0)
  %393 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %394 = call i32 @xf_emit(%struct.nvkm_grctx* %393, i32 1, i32 32)
  %395 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %396 = call i32 @xf_emit(%struct.nvkm_grctx* %395, i32 1, i32 17)
  %397 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %398 = call i32 @xf_emit(%struct.nvkm_grctx* %397, i32 1, i32 256)
  %399 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %400 = call i32 @xf_emit(%struct.nvkm_grctx* %399, i32 1, i32 0)
  %401 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %402 = call i32 @xf_emit(%struct.nvkm_grctx* %401, i32 1, i32 1)
  %403 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %404 = call i32 @xf_emit(%struct.nvkm_grctx* %403, i32 1, i32 0)
  %405 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %406 = call i32 @xf_emit(%struct.nvkm_grctx* %405, i32 1, i32 0)
  %407 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %408 = call i32 @xf_emit(%struct.nvkm_grctx* %407, i32 1, i32 64)
  %409 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %410 = call i32 @xf_emit(%struct.nvkm_grctx* %409, i32 1, i32 256)
  %411 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %412 = call i32 @xf_emit(%struct.nvkm_grctx* %411, i32 1, i32 0)
  %413 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %414 = call i32 @xf_emit(%struct.nvkm_grctx* %413, i32 1, i32 3)
  %415 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %416 = call i32 @xf_emit(%struct.nvkm_grctx* %415, i32 1, i32 0)
  %417 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %418 = call i32 @xf_emit(%struct.nvkm_grctx* %417, i32 1, i32 0)
  %419 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %420 = call i32 @xf_emit(%struct.nvkm_grctx* %419, i32 1, i32 0)
  %421 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %422 = call i32 @xf_emit(%struct.nvkm_grctx* %421, i32 1, i32 0)
  %423 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %424 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 4
  %426 = call i64 @IS_NVA3F(i32 %425)
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %428, label %431

428:                                              ; preds = %350
  %429 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %430 = call i32 @xf_emit(%struct.nvkm_grctx* %429, i32 1, i32 1)
  br label %431

431:                                              ; preds = %428, %350
  %432 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %433 = load i32, i32* %5, align 4
  %434 = call i32 @xf_emit(%struct.nvkm_grctx* %432, i32 1, i32 %433)
  %435 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %436 = call i32 @xf_emit(%struct.nvkm_grctx* %435, i32 1, i32 0)
  %437 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %438 = call i32 @xf_emit(%struct.nvkm_grctx* %437, i32 1, i32 0)
  %439 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %440 = call i32 @xf_emit(%struct.nvkm_grctx* %439, i32 1, i32 0)
  %441 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %442 = call i32 @xf_emit(%struct.nvkm_grctx* %441, i32 1, i32 2)
  %443 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %444 = call i32 @xf_emit(%struct.nvkm_grctx* %443, i32 1, i32 262957185)
  %445 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %446 = call i32 @xf_emit(%struct.nvkm_grctx* %445, i32 1, i32 0)
  %447 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %448 = call i32 @xf_emit(%struct.nvkm_grctx* %447, i32 1, i32 0)
  %449 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %450 = call i32 @xf_emit(%struct.nvkm_grctx* %449, i32 1, i32 0)
  %451 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %452 = call i32 @xf_emit(%struct.nvkm_grctx* %451, i32 1, i32 0)
  %453 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %454 = call i32 @xf_emit(%struct.nvkm_grctx* %453, i32 2, i32 0)
  %455 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %456 = call i32 @xf_emit(%struct.nvkm_grctx* %455, i32 1, i32 0)
  %457 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %458 = call i32 @xf_emit(%struct.nvkm_grctx* %457, i32 1, i32 0)
  %459 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %460 = call i32 @xf_emit(%struct.nvkm_grctx* %459, i32 1, i32 0)
  %461 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %462 = call i32 @xf_emit(%struct.nvkm_grctx* %461, i32 1, i32 1)
  %463 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %464 = call i32 @xf_emit(%struct.nvkm_grctx* %463, i32 1, i32 0)
  %465 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %466 = call i32 @xf_emit(%struct.nvkm_grctx* %465, i32 1, i32 0)
  %467 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %468 = call i32 @xf_emit(%struct.nvkm_grctx* %467, i32 1, i32 0)
  %469 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %470 = call i32 @xf_emit(%struct.nvkm_grctx* %469, i32 1, i32 0)
  %471 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %472 = call i32 @xf_emit(%struct.nvkm_grctx* %471, i32 1, i32 4)
  %473 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %474 = call i32 @xf_emit(%struct.nvkm_grctx* %473, i32 1, i32 0)
  %475 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %476 = call i32 @xf_emit(%struct.nvkm_grctx* %475, i32 1, i32 1)
  %477 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %478 = call i32 @xf_emit(%struct.nvkm_grctx* %477, i32 1, i32 1024)
  %479 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %480 = call i32 @xf_emit(%struct.nvkm_grctx* %479, i32 1, i32 768)
  %481 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %482 = call i32 @xf_emit(%struct.nvkm_grctx* %481, i32 1, i32 4097)
  %483 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %484 = call i32 @xf_emit(%struct.nvkm_grctx* %483, i32 1, i32 0)
  %485 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %486 = call i32 @xf_emit(%struct.nvkm_grctx* %485, i32 1, i32 0)
  %487 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %488 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %487, i32 0, i32 0
  %489 = load i32, i32* %488, align 4
  %490 = call i64 @IS_NVA3F(i32 %489)
  %491 = icmp ne i64 %490, 0
  br i1 %491, label %492, label %495

492:                                              ; preds = %431
  %493 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %494 = call i32 @xf_emit(%struct.nvkm_grctx* %493, i32 1, i32 0)
  br label %495

495:                                              ; preds = %492, %431
  %496 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %497 = call i32 @xf_emit(%struct.nvkm_grctx* %496, i32 1, i32 0)
  %498 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %499 = call i32 @xf_emit(%struct.nvkm_grctx* %498, i32 1, i32 17)
  %500 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %501 = call i32 @xf_emit(%struct.nvkm_grctx* %500, i32 7, i32 0)
  %502 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %503 = call i32 @xf_emit(%struct.nvkm_grctx* %502, i32 1, i32 262957185)
  %504 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %505 = call i32 @xf_emit(%struct.nvkm_grctx* %504, i32 1, i32 15)
  %506 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %507 = call i32 @xf_emit(%struct.nvkm_grctx* %506, i32 7, i32 0)
  %508 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %509 = call i32 @xf_emit(%struct.nvkm_grctx* %508, i32 1, i32 0)
  %510 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %511 = call i32 @xf_emit(%struct.nvkm_grctx* %510, i32 8, i32 0)
  %512 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %513 = call i32 @xf_emit(%struct.nvkm_grctx* %512, i32 1, i32 0)
  %514 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %515 = call i32 @xf_emit(%struct.nvkm_grctx* %514, i32 1, i32 0)
  %516 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %517 = call i32 @xf_emit(%struct.nvkm_grctx* %516, i32 1, i32 0)
  %518 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %519 = call i32 @xf_emit(%struct.nvkm_grctx* %518, i32 1, i32 0)
  %520 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %521 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 4
  %523 = call i64 @IS_NVA3F(i32 %522)
  %524 = icmp ne i64 %523, 0
  br i1 %524, label %525, label %530

525:                                              ; preds = %495
  %526 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %527 = call i32 @xf_emit(%struct.nvkm_grctx* %526, i32 1, i32 0)
  %528 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %529 = call i32 @xf_emit(%struct.nvkm_grctx* %528, i32 1, i32 1)
  br label %530

530:                                              ; preds = %525, %495
  %531 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %532 = call i32 @xf_emit(%struct.nvkm_grctx* %531, i32 1, i32 0)
  %533 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %534 = call i32 @xf_emit(%struct.nvkm_grctx* %533, i32 1, i32 0)
  %535 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %536 = call i32 @xf_emit(%struct.nvkm_grctx* %535, i32 1, i32 0)
  %537 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %538 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %537, i32 0, i32 0
  %539 = load i32, i32* %538, align 4
  %540 = icmp sge i32 %539, 160
  br i1 %540, label %541, label %544

541:                                              ; preds = %530
  %542 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %543 = call i32 @xf_emit(%struct.nvkm_grctx* %542, i32 1, i32 262957185)
  br label %544

544:                                              ; preds = %541, %530
  %545 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %546 = load i32, i32* %5, align 4
  %547 = call i32 @xf_emit(%struct.nvkm_grctx* %545, i32 1, i32 %546)
  %548 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %549 = call i32 @xf_emit(%struct.nvkm_grctx* %548, i32 1, i32 0)
  %550 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %551 = call i32 @xf_emit(%struct.nvkm_grctx* %550, i32 1, i32 0)
  %552 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %553 = call i32 @xf_emit(%struct.nvkm_grctx* %552, i32 1, i32 0)
  %554 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %555 = call i32 @xf_emit(%struct.nvkm_grctx* %554, i32 1, i32 17)
  %556 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %557 = call i32 @xf_emit(%struct.nvkm_grctx* %556, i32 1, i32 0)
  %558 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %559 = call i32 @xf_emit(%struct.nvkm_grctx* %558, i32 1, i32 0)
  %560 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %561 = call i32 @xf_emit(%struct.nvkm_grctx* %560, i32 1, i32 4)
  %562 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %563 = call i32 @xf_emit(%struct.nvkm_grctx* %562, i32 1, i32 0)
  %564 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %565 = call i32 @xf_emit(%struct.nvkm_grctx* %564, i32 1, i32 1)
  %566 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %567 = call i32 @xf_emit(%struct.nvkm_grctx* %566, i32 1, i32 1)
  %568 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %569 = call i32 @xf_emit(%struct.nvkm_grctx* %568, i32 1, i32 0)
  %570 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %571 = call i32 @xf_emit(%struct.nvkm_grctx* %570, i32 1, i32 0)
  %572 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %573 = call i32 @xf_emit(%struct.nvkm_grctx* %572, i32 1, i32 0)
  %574 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %575 = call i32 @xf_emit(%struct.nvkm_grctx* %574, i32 1, i32 1)
  %576 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %577 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %576, i32 0, i32 0
  %578 = load i32, i32* %577, align 4
  %579 = call i64 @IS_NVA3F(i32 %578)
  %580 = icmp ne i64 %579, 0
  br i1 %580, label %581, label %586

581:                                              ; preds = %544
  %582 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %583 = call i32 @xf_emit(%struct.nvkm_grctx* %582, i32 1, i32 1)
  %584 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %585 = call i32 @xf_emit(%struct.nvkm_grctx* %584, i32 1, i32 0)
  br label %586

586:                                              ; preds = %581, %544
  %587 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %588 = call i32 @xf_emit(%struct.nvkm_grctx* %587, i32 1, i32 0)
  %589 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %590 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %589, i32 0, i32 0
  %591 = load i32, i32* %590, align 4
  %592 = icmp sge i32 %591, 160
  br i1 %592, label %593, label %655

593:                                              ; preds = %586
  %594 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %595 = call i32 @xf_emit(%struct.nvkm_grctx* %594, i32 3, i32 0)
  %596 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %597 = call i32 @xf_emit(%struct.nvkm_grctx* %596, i32 1, i32 262957185)
  %598 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %599 = call i32 @xf_emit(%struct.nvkm_grctx* %598, i32 4, i32 0)
  %600 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %601 = call i32 @xf_emit(%struct.nvkm_grctx* %600, i32 1, i32 4)
  %602 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %603 = call i32 @xf_emit(%struct.nvkm_grctx* %602, i32 1, i32 0)
  %604 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %605 = call i32 @xf_emit(%struct.nvkm_grctx* %604, i32 2, i32 1)
  %606 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %607 = call i32 @xf_emit(%struct.nvkm_grctx* %606, i32 2, i32 0)
  %608 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %609 = call i32 @xf_emit(%struct.nvkm_grctx* %608, i32 1, i32 1)
  %610 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %611 = call i32 @xf_emit(%struct.nvkm_grctx* %610, i32 1, i32 0)
  %612 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %613 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %612, i32 0, i32 0
  %614 = load i32, i32* %613, align 4
  %615 = call i64 @IS_NVA3F(i32 %614)
  %616 = icmp ne i64 %615, 0
  br i1 %616, label %617, label %620

617:                                              ; preds = %593
  %618 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %619 = call i32 @xf_emit(%struct.nvkm_grctx* %618, i32 9, i32 0)
  br label %623

620:                                              ; preds = %593
  %621 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %622 = call i32 @xf_emit(%struct.nvkm_grctx* %621, i32 8, i32 0)
  br label %623

623:                                              ; preds = %620, %617
  %624 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %625 = call i32 @xf_emit(%struct.nvkm_grctx* %624, i32 1, i32 0)
  %626 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %627 = call i32 @xf_emit(%struct.nvkm_grctx* %626, i32 8, i32 1)
  %628 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %629 = call i32 @xf_emit(%struct.nvkm_grctx* %628, i32 1, i32 17)
  %630 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %631 = call i32 @xf_emit(%struct.nvkm_grctx* %630, i32 7, i32 0)
  %632 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %633 = call i32 @xf_emit(%struct.nvkm_grctx* %632, i32 1, i32 262957185)
  %634 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %635 = call i32 @xf_emit(%struct.nvkm_grctx* %634, i32 1, i32 15)
  %636 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %637 = call i32 @xf_emit(%struct.nvkm_grctx* %636, i32 7, i32 0)
  %638 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %639 = call i32 @xf_emit(%struct.nvkm_grctx* %638, i32 1, i32 17)
  %640 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %641 = call i32 @xf_emit(%struct.nvkm_grctx* %640, i32 1, i32 1)
  %642 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %643 = call i32 @xf_emit(%struct.nvkm_grctx* %642, i32 5, i32 0)
  %644 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %645 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %644, i32 0, i32 0
  %646 = load i32, i32* %645, align 4
  %647 = call i64 @IS_NVA3F(i32 %646)
  %648 = icmp ne i64 %647, 0
  br i1 %648, label %649, label %654

649:                                              ; preds = %623
  %650 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %651 = call i32 @xf_emit(%struct.nvkm_grctx* %650, i32 1, i32 0)
  %652 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %653 = call i32 @xf_emit(%struct.nvkm_grctx* %652, i32 1, i32 1)
  br label %654

654:                                              ; preds = %649, %623
  br label %655

655:                                              ; preds = %654, %586
  ret void
}

declare dso_local i64 @IS_NVA3F(i32) #1

declare dso_local i32 @xf_emit(%struct.nvkm_grctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
