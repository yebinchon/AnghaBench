; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxnv50.c_nv50_gr_construct_mmio_ddata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxnv50.c_nv50_gr_construct_mmio_ddata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_grctx = type { i32, %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_grctx*)* @nv50_gr_construct_mmio_ddata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_gr_construct_mmio_ddata(%struct.nvkm_grctx* %0) #0 {
  %2 = alloca %struct.nvkm_grctx*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nvkm_grctx* %0, %struct.nvkm_grctx** %2, align 8
  %6 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %7 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %6, i32 0, i32 1
  %8 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  store %struct.nvkm_device* %8, %struct.nvkm_device** %3, align 8
  %9 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %10 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %13 = call i32 @dd_emit(%struct.nvkm_grctx* %12, i32 1, i32 0)
  %14 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %15 = call i32 @dd_emit(%struct.nvkm_grctx* %14, i32 1, i32 0)
  %16 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %17 = call i32 @dd_emit(%struct.nvkm_grctx* %16, i32 1, i32 0)
  %18 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %19 = call i32 @dd_emit(%struct.nvkm_grctx* %18, i32 1, i32 2)
  %20 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %21 = call i32 @dd_emit(%struct.nvkm_grctx* %20, i32 1, i32 1)
  %22 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %23 = call i32 @dd_emit(%struct.nvkm_grctx* %22, i32 1, i32 0)
  %24 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %25 = call i32 @dd_emit(%struct.nvkm_grctx* %24, i32 1, i32 0)
  %26 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %27 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %28, 148
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %32 = call i32 @dd_emit(%struct.nvkm_grctx* %31, i32 1, i32 0)
  br label %33

33:                                               ; preds = %30, %1
  %34 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %35 = call i32 @dd_emit(%struct.nvkm_grctx* %34, i32 1, i32 1)
  %36 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %37 = call i32 @dd_emit(%struct.nvkm_grctx* %36, i32 1, i32 256)
  %38 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %39 = call i32 @dd_emit(%struct.nvkm_grctx* %38, i32 1, i32 0)
  %40 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %41 = call i32 @dd_emit(%struct.nvkm_grctx* %40, i32 1, i32 0)
  %42 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %43 = call i32 @dd_emit(%struct.nvkm_grctx* %42, i32 1, i32 0)
  %44 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %45 = call i32 @dd_emit(%struct.nvkm_grctx* %44, i32 1, i32 0)
  %46 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %47 = call i32 @dd_emit(%struct.nvkm_grctx* %46, i32 1, i32 0)
  %48 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %49 = call i32 @dd_emit(%struct.nvkm_grctx* %48, i32 1, i32 2)
  %50 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %51 = call i32 @dd_emit(%struct.nvkm_grctx* %50, i32 1, i32 1)
  %52 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %53 = call i32 @dd_emit(%struct.nvkm_grctx* %52, i32 1, i32 1)
  %54 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %55 = call i32 @dd_emit(%struct.nvkm_grctx* %54, i32 1, i32 0)
  %56 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %57 = call i32 @dd_emit(%struct.nvkm_grctx* %56, i32 1, i32 0)
  %58 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %59 = call i32 @dd_emit(%struct.nvkm_grctx* %58, i32 1, i32 0)
  %60 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %61 = call i32 @dd_emit(%struct.nvkm_grctx* %60, i32 1, i32 1)
  %62 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %63 = call i32 @dd_emit(%struct.nvkm_grctx* %62, i32 1, i32 4194303)
  %64 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %65 = call i32 @dd_emit(%struct.nvkm_grctx* %64, i32 1, i32 8191)
  %66 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %67 = call i32 @dd_emit(%struct.nvkm_grctx* %66, i32 1, i32 0)
  %68 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %69 = call i32 @dd_emit(%struct.nvkm_grctx* %68, i32 1, i32 1)
  %70 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %71 = call i32 @dd_emit(%struct.nvkm_grctx* %70, i32 1, i32 1)
  %72 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %73 = call i32 @dd_emit(%struct.nvkm_grctx* %72, i32 1, i32 0)
  %74 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %75 = call i32 @dd_emit(%struct.nvkm_grctx* %74, i32 1, i32 1)
  %76 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %77 = call i32 @dd_emit(%struct.nvkm_grctx* %76, i32 1, i32 1)
  %78 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %79 = call i32 @dd_emit(%struct.nvkm_grctx* %78, i32 1, i32 1)
  %80 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %81 = call i32 @dd_emit(%struct.nvkm_grctx* %80, i32 1, i32 4)
  %82 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %83 = call i32 @dd_emit(%struct.nvkm_grctx* %82, i32 1, i32 1)
  %84 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %85 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @IS_NVA3F(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %33
  %90 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %91 = call i32 @dd_emit(%struct.nvkm_grctx* %90, i32 1, i32 0)
  br label %92

92:                                               ; preds = %89, %33
  %93 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %94 = call i32 @dd_emit(%struct.nvkm_grctx* %93, i32 1, i32 1)
  %95 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %96 = call i32 @dd_emit(%struct.nvkm_grctx* %95, i32 1, i32 1)
  %97 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %98 = call i32 @dd_emit(%struct.nvkm_grctx* %97, i32 1, i32 7)
  %99 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %100 = call i32 @dd_emit(%struct.nvkm_grctx* %99, i32 1, i32 1)
  %101 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %102 = call i32 @dd_emit(%struct.nvkm_grctx* %101, i32 1, i32 7)
  %103 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %104 = call i32 @dd_emit(%struct.nvkm_grctx* %103, i32 1, i32 1)
  %105 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %106 = call i32 @dd_emit(%struct.nvkm_grctx* %105, i32 1, i32 1)
  %107 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %108 = call i32 @dd_emit(%struct.nvkm_grctx* %107, i32 1, i32 1)
  %109 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %110 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 80
  br i1 %112, label %113, label %178

113:                                              ; preds = %92
  %114 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %115 = call i32 @dd_emit(%struct.nvkm_grctx* %114, i32 4, i32 0)
  %116 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %117 = call i32 @dd_emit(%struct.nvkm_grctx* %116, i32 1, i32 1)
  %118 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %119 = call i32 @dd_emit(%struct.nvkm_grctx* %118, i32 1, i32 1)
  %120 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %121 = call i32 @dd_emit(%struct.nvkm_grctx* %120, i32 1, i32 0)
  %122 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %123 = call i32 @dd_emit(%struct.nvkm_grctx* %122, i32 1, i32 1)
  %124 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %125 = call i32 @dd_emit(%struct.nvkm_grctx* %124, i32 1, i32 10)
  %126 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %127 = call i32 @dd_emit(%struct.nvkm_grctx* %126, i32 1, i32 0)
  %128 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %129 = call i32 @dd_emit(%struct.nvkm_grctx* %128, i32 1, i32 0)
  %130 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %131 = call i32 @dd_emit(%struct.nvkm_grctx* %130, i32 1, i32 0)
  %132 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %133 = call i32 @dd_emit(%struct.nvkm_grctx* %132, i32 1, i32 64)
  %134 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %135 = call i32 @dd_emit(%struct.nvkm_grctx* %134, i32 1, i32 0)
  %136 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %137 = call i32 @dd_emit(%struct.nvkm_grctx* %136, i32 1, i32 2)
  %138 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %139 = call i32 @dd_emit(%struct.nvkm_grctx* %138, i32 1, i32 256)
  %140 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %141 = call i32 @dd_emit(%struct.nvkm_grctx* %140, i32 1, i32 1)
  %142 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %143 = call i32 @dd_emit(%struct.nvkm_grctx* %142, i32 1, i32 256)
  %144 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %145 = call i32 @dd_emit(%struct.nvkm_grctx* %144, i32 1, i32 0)
  %146 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %147 = call i32 @dd_emit(%struct.nvkm_grctx* %146, i32 1, i32 0)
  %148 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %149 = call i32 @dd_emit(%struct.nvkm_grctx* %148, i32 1, i32 0)
  %150 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %151 = call i32 @dd_emit(%struct.nvkm_grctx* %150, i32 1, i32 0)
  %152 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %153 = call i32 @dd_emit(%struct.nvkm_grctx* %152, i32 1, i32 0)
  %154 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %155 = call i32 @dd_emit(%struct.nvkm_grctx* %154, i32 1, i32 0)
  %156 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %157 = call i32 @dd_emit(%struct.nvkm_grctx* %156, i32 1, i32 1)
  %158 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %159 = call i32 @dd_emit(%struct.nvkm_grctx* %158, i32 1, i32 0)
  %160 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %161 = call i32 @dd_emit(%struct.nvkm_grctx* %160, i32 1, i32 0)
  %162 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %163 = call i32 @dd_emit(%struct.nvkm_grctx* %162, i32 1, i32 0)
  %164 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %165 = call i32 @dd_emit(%struct.nvkm_grctx* %164, i32 1, i32 0)
  %166 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %167 = call i32 @dd_emit(%struct.nvkm_grctx* %166, i32 1, i32 0)
  %168 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %169 = call i32 @dd_emit(%struct.nvkm_grctx* %168, i32 1, i32 0)
  %170 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %171 = call i32 @dd_emit(%struct.nvkm_grctx* %170, i32 1, i32 0)
  %172 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %173 = call i32 @dd_emit(%struct.nvkm_grctx* %172, i32 1, i32 0)
  %174 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %175 = call i32 @dd_emit(%struct.nvkm_grctx* %174, i32 1, i32 4)
  %176 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %177 = call i32 @dd_emit(%struct.nvkm_grctx* %176, i32 1, i32 0)
  br label %178

178:                                              ; preds = %113, %92
  %179 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %180 = call i32 @dd_emit(%struct.nvkm_grctx* %179, i32 1, i32 0)
  %181 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %182 = call i32 @dd_emit(%struct.nvkm_grctx* %181, i32 1, i32 0)
  %183 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %184 = call i32 @dd_emit(%struct.nvkm_grctx* %183, i32 2, i32 0)
  %185 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %186 = call i32 @dd_emit(%struct.nvkm_grctx* %185, i32 1, i32 1)
  %187 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %188 = call i32 @dd_emit(%struct.nvkm_grctx* %187, i32 1, i32 256)
  %189 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %190 = call i32 @dd_emit(%struct.nvkm_grctx* %189, i32 1, i32 0)
  %191 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %192 = call i32 @dd_emit(%struct.nvkm_grctx* %191, i32 1, i32 1)
  %193 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %194 = call i32 @dd_emit(%struct.nvkm_grctx* %193, i32 2, i32 0)
  %195 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %196 = call i32 @dd_emit(%struct.nvkm_grctx* %195, i32 1, i32 256)
  %197 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %198 = call i32 @dd_emit(%struct.nvkm_grctx* %197, i32 1, i32 1)
  %199 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %200 = call i32 @dd_emit(%struct.nvkm_grctx* %199, i32 1, i32 256)
  %201 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %202 = call i32 @dd_emit(%struct.nvkm_grctx* %201, i32 1, i32 0)
  %203 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %204 = call i32 @dd_emit(%struct.nvkm_grctx* %203, i32 1, i32 1)
  %205 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %206 = call i32 @dd_emit(%struct.nvkm_grctx* %205, i32 2, i32 0)
  %207 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %208 = call i32 @dd_emit(%struct.nvkm_grctx* %207, i32 1, i32 256)
  %209 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %210 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = icmp eq i32 %211, 80
  br i1 %212, label %213, label %248

213:                                              ; preds = %178
  %214 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %215 = call i32 @dd_emit(%struct.nvkm_grctx* %214, i32 1, i32 1)
  %216 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %217 = call i32 @dd_emit(%struct.nvkm_grctx* %216, i32 1, i32 0)
  %218 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %219 = call i32 @dd_emit(%struct.nvkm_grctx* %218, i32 1, i32 1)
  %220 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %221 = call i32 @dd_emit(%struct.nvkm_grctx* %220, i32 1, i32 0)
  %222 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %223 = call i32 @dd_emit(%struct.nvkm_grctx* %222, i32 1, i32 0)
  %224 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %225 = call i32 @dd_emit(%struct.nvkm_grctx* %224, i32 1, i32 2)
  %226 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %227 = call i32 @dd_emit(%struct.nvkm_grctx* %226, i32 1, i32 0)
  %228 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %229 = call i32 @dd_emit(%struct.nvkm_grctx* %228, i32 1, i32 1)
  %230 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %231 = call i32 @dd_emit(%struct.nvkm_grctx* %230, i32 1, i32 0)
  %232 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %233 = call i32 @dd_emit(%struct.nvkm_grctx* %232, i32 1, i32 1)
  %234 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %235 = call i32 @dd_emit(%struct.nvkm_grctx* %234, i32 1, i32 0)
  %236 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %237 = call i32 @dd_emit(%struct.nvkm_grctx* %236, i32 1, i32 0)
  %238 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %239 = call i32 @dd_emit(%struct.nvkm_grctx* %238, i32 1, i32 0)
  %240 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %241 = call i32 @dd_emit(%struct.nvkm_grctx* %240, i32 1, i32 0)
  %242 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %243 = call i32 @dd_emit(%struct.nvkm_grctx* %242, i32 1, i32 3)
  %244 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %245 = call i32 @dd_emit(%struct.nvkm_grctx* %244, i32 1, i32 0)
  %246 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %247 = call i32 @dd_emit(%struct.nvkm_grctx* %246, i32 1, i32 0)
  br label %248

248:                                              ; preds = %213, %178
  %249 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %250 = call i32 @dd_emit(%struct.nvkm_grctx* %249, i32 1, i32 0)
  %251 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %252 = call i32 @dd_emit(%struct.nvkm_grctx* %251, i32 1, i32 0)
  %253 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %254 = call i32 @dd_emit(%struct.nvkm_grctx* %253, i32 1, i32 0)
  %255 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %256 = call i32 @dd_emit(%struct.nvkm_grctx* %255, i32 1, i32 0)
  %257 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %258 = call i32 @dd_emit(%struct.nvkm_grctx* %257, i32 1, i32 4)
  %259 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %260 = call i32 @dd_emit(%struct.nvkm_grctx* %259, i32 1, i32 112)
  %261 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %262 = call i32 @dd_emit(%struct.nvkm_grctx* %261, i32 1, i32 128)
  %263 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %264 = call i32 @dd_emit(%struct.nvkm_grctx* %263, i32 1, i32 0)
  %265 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %266 = call i32 @dd_emit(%struct.nvkm_grctx* %265, i32 1, i32 0)
  %267 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %268 = call i32 @dd_emit(%struct.nvkm_grctx* %267, i32 1, i32 0)
  %269 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %270 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = call i64 @IS_NVA3F(i32 %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %279

274:                                              ; preds = %248
  %275 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %276 = call i32 @dd_emit(%struct.nvkm_grctx* %275, i32 1, i32 0)
  %277 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %278 = call i32 @dd_emit(%struct.nvkm_grctx* %277, i32 1, i32 0)
  br label %282

279:                                              ; preds = %248
  %280 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %281 = call i32 @dd_emit(%struct.nvkm_grctx* %280, i32 1, i32 0)
  br label %282

282:                                              ; preds = %279, %274
  %283 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %284 = call i32 @dd_emit(%struct.nvkm_grctx* %283, i32 1, i32 12)
  %285 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %286 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = icmp ne i32 %287, 80
  br i1 %288, label %289, label %292

289:                                              ; preds = %282
  %290 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %291 = call i32 @dd_emit(%struct.nvkm_grctx* %290, i32 1, i32 0)
  br label %292

292:                                              ; preds = %289, %282
  %293 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %294 = call i32 @dd_emit(%struct.nvkm_grctx* %293, i32 1, i32 8)
  %295 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %296 = call i32 @dd_emit(%struct.nvkm_grctx* %295, i32 1, i32 20)
  %297 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %298 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = icmp eq i32 %299, 80
  br i1 %300, label %301, label %306

301:                                              ; preds = %292
  %302 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %303 = call i32 @dd_emit(%struct.nvkm_grctx* %302, i32 1, i32 0)
  %304 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %305 = call i32 @dd_emit(%struct.nvkm_grctx* %304, i32 1, i32 0)
  br label %323

306:                                              ; preds = %292
  %307 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %308 = call i32 @dd_emit(%struct.nvkm_grctx* %307, i32 1, i32 0)
  %309 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %310 = call i32 @dd_emit(%struct.nvkm_grctx* %309, i32 1, i32 41)
  %311 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %312 = call i32 @dd_emit(%struct.nvkm_grctx* %311, i32 1, i32 39)
  %313 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %314 = call i32 @dd_emit(%struct.nvkm_grctx* %313, i32 1, i32 38)
  %315 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %316 = call i32 @dd_emit(%struct.nvkm_grctx* %315, i32 1, i32 8)
  %317 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %318 = call i32 @dd_emit(%struct.nvkm_grctx* %317, i32 1, i32 4)
  %319 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %320 = call i32 @dd_emit(%struct.nvkm_grctx* %319, i32 1, i32 39)
  %321 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %322 = call i32 @dd_emit(%struct.nvkm_grctx* %321, i32 1, i32 0)
  br label %323

323:                                              ; preds = %306, %301
  %324 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %325 = call i32 @dd_emit(%struct.nvkm_grctx* %324, i32 1, i32 0)
  %326 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %327 = call i32 @dd_emit(%struct.nvkm_grctx* %326, i32 1, i32 1)
  %328 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %329 = call i32 @dd_emit(%struct.nvkm_grctx* %328, i32 1, i32 2)
  %330 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %331 = call i32 @dd_emit(%struct.nvkm_grctx* %330, i32 1, i32 3)
  %332 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %333 = call i32 @dd_emit(%struct.nvkm_grctx* %332, i32 1, i32 4)
  %334 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %335 = call i32 @dd_emit(%struct.nvkm_grctx* %334, i32 1, i32 5)
  %336 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %337 = call i32 @dd_emit(%struct.nvkm_grctx* %336, i32 1, i32 6)
  %338 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %339 = call i32 @dd_emit(%struct.nvkm_grctx* %338, i32 1, i32 7)
  %340 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %341 = call i32 @dd_emit(%struct.nvkm_grctx* %340, i32 1, i32 1)
  %342 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %343 = call i32 @dd_emit(%struct.nvkm_grctx* %342, i32 8, i32 0)
  %344 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %345 = call i32 @dd_emit(%struct.nvkm_grctx* %344, i32 8, i32 0)
  %346 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %347 = call i32 @dd_emit(%struct.nvkm_grctx* %346, i32 1, i32 207)
  %348 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %349 = call i32 @dd_emit(%struct.nvkm_grctx* %348, i32 7, i32 0)
  %350 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %351 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = icmp ne i32 %352, 80
  br i1 %353, label %354, label %357

354:                                              ; preds = %323
  %355 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %356 = call i32 @dd_emit(%struct.nvkm_grctx* %355, i32 3, i32 0)
  br label %360

357:                                              ; preds = %323
  %358 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %359 = call i32 @dd_emit(%struct.nvkm_grctx* %358, i32 2, i32 0)
  br label %360

360:                                              ; preds = %357, %354
  %361 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %362 = call i32 @dd_emit(%struct.nvkm_grctx* %361, i32 1, i32 0)
  %363 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %364 = call i32 @dd_emit(%struct.nvkm_grctx* %363, i32 1, i32 128)
  %365 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %366 = call i32 @dd_emit(%struct.nvkm_grctx* %365, i32 1, i32 4)
  %367 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %368 = call i32 @dd_emit(%struct.nvkm_grctx* %367, i32 1, i32 4)
  %369 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %370 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  %372 = call i64 @IS_NVA3F(i32 %371)
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %374, label %379

374:                                              ; preds = %360
  %375 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %376 = call i32 @dd_emit(%struct.nvkm_grctx* %375, i32 1, i32 3)
  %377 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %378 = call i32 @dd_emit(%struct.nvkm_grctx* %377, i32 1, i32 0)
  br label %379

379:                                              ; preds = %374, %360
  %380 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %381 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 4
  %383 = icmp ne i32 %382, 80
  br i1 %383, label %384, label %387

384:                                              ; preds = %379
  %385 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %386 = call i32 @dd_emit(%struct.nvkm_grctx* %385, i32 1, i32 3)
  br label %387

387:                                              ; preds = %384, %379
  %388 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %389 = call i32 @dd_emit(%struct.nvkm_grctx* %388, i32 1, i32 1)
  %390 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %391 = call i32 @dd_emit(%struct.nvkm_grctx* %390, i32 1, i32 0)
  %392 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %393 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 4
  %395 = icmp ne i32 %394, 80
  br i1 %395, label %396, label %399

396:                                              ; preds = %387
  %397 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %398 = call i32 @dd_emit(%struct.nvkm_grctx* %397, i32 1, i32 0)
  br label %399

399:                                              ; preds = %396, %387
  %400 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %401 = call i32 @dd_emit(%struct.nvkm_grctx* %400, i32 1, i32 18)
  %402 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %403 = call i32 @dd_emit(%struct.nvkm_grctx* %402, i32 1, i32 16)
  %404 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %405 = call i32 @dd_emit(%struct.nvkm_grctx* %404, i32 1, i32 12)
  %406 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %407 = call i32 @dd_emit(%struct.nvkm_grctx* %406, i32 1, i32 1)
  %408 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %409 = call i32 @dd_emit(%struct.nvkm_grctx* %408, i32 1, i32 0)
  %410 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %411 = call i32 @dd_emit(%struct.nvkm_grctx* %410, i32 1, i32 0)
  %412 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %413 = call i32 @dd_emit(%struct.nvkm_grctx* %412, i32 1, i32 0)
  %414 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %415 = call i32 @dd_emit(%struct.nvkm_grctx* %414, i32 1, i32 4)
  %416 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %417 = call i32 @dd_emit(%struct.nvkm_grctx* %416, i32 1, i32 2)
  %418 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %419 = call i32 @dd_emit(%struct.nvkm_grctx* %418, i32 1, i32 4)
  %420 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %421 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 4
  %423 = icmp sge i32 %422, 160
  br i1 %423, label %424, label %427

424:                                              ; preds = %399
  %425 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %426 = call i32 @dd_emit(%struct.nvkm_grctx* %425, i32 1, i32 0)
  br label %427

427:                                              ; preds = %424, %399
  %428 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %429 = call i32 @dd_emit(%struct.nvkm_grctx* %428, i32 1, i32 0)
  %430 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %431 = call i32 @dd_emit(%struct.nvkm_grctx* %430, i32 1, i32 0)
  %432 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %433 = call i32 @dd_emit(%struct.nvkm_grctx* %432, i32 1, i32 4194303)
  %434 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %435 = call i32 @dd_emit(%struct.nvkm_grctx* %434, i32 1, i32 8191)
  %436 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %437 = call i32 @dd_emit(%struct.nvkm_grctx* %436, i32 1, i32 0)
  %438 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %439 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 4
  %441 = icmp ne i32 %440, 80
  br i1 %441, label %442, label %445

442:                                              ; preds = %427
  %443 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %444 = call i32 @dd_emit(%struct.nvkm_grctx* %443, i32 8, i32 0)
  br label %445

445:                                              ; preds = %442, %427
  %446 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %447 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 4
  %449 = icmp sge i32 %448, 160
  br i1 %449, label %450, label %459

450:                                              ; preds = %445
  %451 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %452 = call i32 @dd_emit(%struct.nvkm_grctx* %451, i32 1, i32 1)
  %453 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %454 = call i32 @dd_emit(%struct.nvkm_grctx* %453, i32 1, i32 1)
  %455 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %456 = call i32 @dd_emit(%struct.nvkm_grctx* %455, i32 1, i32 2)
  %457 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %458 = call i32 @dd_emit(%struct.nvkm_grctx* %457, i32 1, i32 0)
  br label %459

459:                                              ; preds = %450, %445
  %460 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %461 = call i32 @dd_emit(%struct.nvkm_grctx* %460, i32 1, i32 4)
  %462 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %463 = call i32 @dd_emit(%struct.nvkm_grctx* %462, i32 1, i32 20)
  %464 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %465 = call i32 @dd_emit(%struct.nvkm_grctx* %464, i32 1, i32 1)
  %466 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %467 = call i32 @dd_emit(%struct.nvkm_grctx* %466, i32 1, i32 0)
  %468 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %469 = call i32 @dd_emit(%struct.nvkm_grctx* %468, i32 1, i32 0)
  %470 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %471 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 4
  %473 = call i64 @IS_NVA3F(i32 %472)
  %474 = icmp ne i64 %473, 0
  br i1 %474, label %475, label %478

475:                                              ; preds = %459
  %476 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %477 = call i32 @dd_emit(%struct.nvkm_grctx* %476, i32 1, i32 0)
  br label %478

478:                                              ; preds = %475, %459
  %479 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %480 = call i32 @dd_emit(%struct.nvkm_grctx* %479, i32 1, i32 2)
  %481 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %482 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %481, i32 0, i32 0
  %483 = load i32, i32* %482, align 4
  %484 = icmp sge i32 %483, 160
  br i1 %484, label %485, label %488

485:                                              ; preds = %478
  %486 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %487 = call i32 @dd_emit(%struct.nvkm_grctx* %486, i32 1, i32 0)
  br label %488

488:                                              ; preds = %485, %478
  %489 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %490 = call i32 @dd_emit(%struct.nvkm_grctx* %489, i32 1, i32 0)
  %491 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %492 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 4
  %494 = icmp sge i32 %493, 160
  br i1 %494, label %495, label %498

495:                                              ; preds = %488
  %496 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %497 = call i32 @dd_emit(%struct.nvkm_grctx* %496, i32 1, i32 0)
  br label %498

498:                                              ; preds = %495, %488
  %499 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %500 = call i32 @dd_emit(%struct.nvkm_grctx* %499, i32 1, i32 0)
  %501 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %502 = call i32 @dd_emit(%struct.nvkm_grctx* %501, i32 1, i32 1)
  %503 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %504 = call i32 @dd_emit(%struct.nvkm_grctx* %503, i32 1, i32 0)
  %505 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %506 = call i32 @dd_emit(%struct.nvkm_grctx* %505, i32 1, i32 2)
  %507 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %508 = call i32 @dd_emit(%struct.nvkm_grctx* %507, i32 1, i32 4096)
  %509 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %510 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %509, i32 0, i32 0
  %511 = load i32, i32* %510, align 4
  %512 = icmp ne i32 %511, 80
  br i1 %512, label %513, label %520

513:                                              ; preds = %498
  %514 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %515 = call i32 @dd_emit(%struct.nvkm_grctx* %514, i32 1, i32 3584)
  %516 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %517 = call i32 @dd_emit(%struct.nvkm_grctx* %516, i32 1, i32 4096)
  %518 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %519 = call i32 @dd_emit(%struct.nvkm_grctx* %518, i32 1, i32 7680)
  br label %520

520:                                              ; preds = %513, %498
  %521 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %522 = call i32 @dd_emit(%struct.nvkm_grctx* %521, i32 1, i32 0)
  %523 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %524 = call i32 @dd_emit(%struct.nvkm_grctx* %523, i32 1, i32 1)
  %525 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %526 = call i32 @dd_emit(%struct.nvkm_grctx* %525, i32 1, i32 1)
  %527 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %528 = call i32 @dd_emit(%struct.nvkm_grctx* %527, i32 1, i32 1)
  %529 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %530 = call i32 @dd_emit(%struct.nvkm_grctx* %529, i32 1, i32 1)
  %531 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %532 = call i32 @dd_emit(%struct.nvkm_grctx* %531, i32 1, i32 1)
  %533 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %534 = call i32 @dd_emit(%struct.nvkm_grctx* %533, i32 1, i32 0)
  %535 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %536 = call i32 @dd_emit(%struct.nvkm_grctx* %535, i32 1, i32 0)
  %537 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %538 = call i32 @dd_emit(%struct.nvkm_grctx* %537, i32 1, i32 0)
  %539 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %540 = call i32 @dd_emit(%struct.nvkm_grctx* %539, i32 1, i32 512)
  %541 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %542 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %541, i32 0, i32 0
  %543 = load i32, i32* %542, align 4
  %544 = call i64 @IS_NVA3F(i32 %543)
  %545 = icmp ne i64 %544, 0
  br i1 %545, label %546, label %549

546:                                              ; preds = %520
  %547 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %548 = call i32 @dd_emit(%struct.nvkm_grctx* %547, i32 1, i32 512)
  br label %549

549:                                              ; preds = %546, %520
  %550 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %551 = call i32 @dd_emit(%struct.nvkm_grctx* %550, i32 1, i32 0)
  %552 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %553 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %552, i32 0, i32 0
  %554 = load i32, i32* %553, align 4
  %555 = icmp slt i32 %554, 160
  br i1 %555, label %556, label %575

556:                                              ; preds = %549
  %557 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %558 = call i32 @dd_emit(%struct.nvkm_grctx* %557, i32 1, i32 1)
  %559 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %560 = call i32 @dd_emit(%struct.nvkm_grctx* %559, i32 1, i32 112)
  %561 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %562 = call i32 @dd_emit(%struct.nvkm_grctx* %561, i32 1, i32 128)
  %563 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %564 = call i32 @dd_emit(%struct.nvkm_grctx* %563, i32 1, i32 0)
  %565 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %566 = call i32 @dd_emit(%struct.nvkm_grctx* %565, i32 1, i32 0)
  %567 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %568 = call i32 @dd_emit(%struct.nvkm_grctx* %567, i32 1, i32 1)
  %569 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %570 = call i32 @dd_emit(%struct.nvkm_grctx* %569, i32 1, i32 112)
  %571 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %572 = call i32 @dd_emit(%struct.nvkm_grctx* %571, i32 1, i32 128)
  %573 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %574 = call i32 @dd_emit(%struct.nvkm_grctx* %573, i32 1, i32 0)
  br label %596

575:                                              ; preds = %549
  %576 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %577 = call i32 @dd_emit(%struct.nvkm_grctx* %576, i32 1, i32 1)
  %578 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %579 = call i32 @dd_emit(%struct.nvkm_grctx* %578, i32 1, i32 240)
  %580 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %581 = call i32 @dd_emit(%struct.nvkm_grctx* %580, i32 1, i32 255)
  %582 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %583 = call i32 @dd_emit(%struct.nvkm_grctx* %582, i32 1, i32 0)
  %584 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %585 = call i32 @dd_emit(%struct.nvkm_grctx* %584, i32 1, i32 0)
  %586 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %587 = call i32 @dd_emit(%struct.nvkm_grctx* %586, i32 1, i32 1)
  %588 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %589 = call i32 @dd_emit(%struct.nvkm_grctx* %588, i32 1, i32 240)
  %590 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %591 = call i32 @dd_emit(%struct.nvkm_grctx* %590, i32 1, i32 255)
  %592 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %593 = call i32 @dd_emit(%struct.nvkm_grctx* %592, i32 1, i32 0)
  %594 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %595 = call i32 @dd_emit(%struct.nvkm_grctx* %594, i32 1, i32 9)
  br label %596

596:                                              ; preds = %575, %556
  %597 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %598 = call i32 @dd_emit(%struct.nvkm_grctx* %597, i32 1, i32 0)
  %599 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %600 = call i32 @dd_emit(%struct.nvkm_grctx* %599, i32 1, i32 0)
  %601 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %602 = call i32 @dd_emit(%struct.nvkm_grctx* %601, i32 1, i32 1)
  %603 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %604 = call i32 @dd_emit(%struct.nvkm_grctx* %603, i32 1, i32 207)
  %605 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %606 = call i32 @dd_emit(%struct.nvkm_grctx* %605, i32 1, i32 0)
  %607 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %608 = call i32 @dd_emit(%struct.nvkm_grctx* %607, i32 1, i32 1)
  %609 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %610 = call i32 @dd_emit(%struct.nvkm_grctx* %609, i32 1, i32 0)
  %611 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %612 = call i32 @dd_emit(%struct.nvkm_grctx* %611, i32 1, i32 0)
  %613 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %614 = call i32 @dd_emit(%struct.nvkm_grctx* %613, i32 1, i32 0)
  %615 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %616 = call i32 @dd_emit(%struct.nvkm_grctx* %615, i32 1, i32 207)
  %617 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %618 = call i32 @dd_emit(%struct.nvkm_grctx* %617, i32 1, i32 0)
  %619 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %620 = call i32 @dd_emit(%struct.nvkm_grctx* %619, i32 1, i32 2)
  %621 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %622 = call i32 @dd_emit(%struct.nvkm_grctx* %621, i32 1, i32 0)
  %623 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %624 = call i32 @dd_emit(%struct.nvkm_grctx* %623, i32 1, i32 1)
  %625 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %626 = call i32 @dd_emit(%struct.nvkm_grctx* %625, i32 1, i32 0)
  %627 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %628 = call i32 @dd_emit(%struct.nvkm_grctx* %627, i32 1, i32 1)
  %629 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %630 = call i32 @dd_emit(%struct.nvkm_grctx* %629, i32 1, i32 0)
  %631 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %632 = call i32 @dd_emit(%struct.nvkm_grctx* %631, i32 1, i32 207)
  %633 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %634 = call i32 @dd_emit(%struct.nvkm_grctx* %633, i32 1, i32 207)
  %635 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %636 = call i32 @dd_emit(%struct.nvkm_grctx* %635, i32 1, i32 1)
  %637 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %638 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %637, i32 0, i32 0
  %639 = load i32, i32* %638, align 8
  %640 = load i32, i32* %4, align 4
  %641 = sub nsw i32 %639, %640
  store i32 %641, i32* %5, align 4
  %642 = load i32, i32* %4, align 4
  %643 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %644 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %643, i32 0, i32 0
  store i32 %642, i32* %644, align 8
  %645 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %646 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %645, i32 0, i32 0
  %647 = load i32, i32* %646, align 4
  %648 = call i64 @IS_NVA3F(i32 %647)
  %649 = icmp ne i64 %648, 0
  br i1 %649, label %650, label %654

650:                                              ; preds = %596
  %651 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %652 = load i32, i32* %5, align 4
  %653 = call i32 @cp_ctx(%struct.nvkm_grctx* %651, i32 4212736, i32 %652)
  br label %658

654:                                              ; preds = %596
  %655 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %656 = load i32, i32* %5, align 4
  %657 = call i32 @cp_ctx(%struct.nvkm_grctx* %655, i32 4215808, i32 %656)
  br label %658

658:                                              ; preds = %654, %650
  ret void
}

declare dso_local i32 @dd_emit(%struct.nvkm_grctx*, i32, i32) #1

declare dso_local i64 @IS_NVA3F(i32) #1

declare dso_local i32 @cp_ctx(%struct.nvkm_grctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
