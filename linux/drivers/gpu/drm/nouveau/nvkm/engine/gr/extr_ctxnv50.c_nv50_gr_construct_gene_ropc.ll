; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxnv50.c_nv50_gr_construct_gene_ropc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxnv50.c_nv50_gr_construct_gene_ropc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_grctx = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_grctx*)* @nv50_gr_construct_gene_ropc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_gr_construct_gene_ropc(%struct.nvkm_grctx* %0) #0 {
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
  %11 = icmp eq i32 %10, 80
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 15968, i32* %4, align 4
  br label %22

13:                                               ; preds = %1
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %15 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @IS_NVA3F(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  store i32 2096743, i32* %4, align 4
  br label %21

20:                                               ; preds = %13
  store i32 556647, i32* %4, align 4
  br label %21

21:                                               ; preds = %20, %19
  br label %22

22:                                               ; preds = %21, %12
  %23 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %24 = call i32 @xf_emit(%struct.nvkm_grctx* %23, i32 1, i32 0)
  %25 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %26 = call i32 @xf_emit(%struct.nvkm_grctx* %25, i32 1, i32 0)
  %27 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %28 = call i32 @xf_emit(%struct.nvkm_grctx* %27, i32 1, i32 0)
  %29 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %30 = call i32 @xf_emit(%struct.nvkm_grctx* %29, i32 1, i32 0)
  %31 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %32 = call i32 @xf_emit(%struct.nvkm_grctx* %31, i32 1, i32 0)
  %33 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %34 = call i32 @xf_emit(%struct.nvkm_grctx* %33, i32 3, i32 0)
  %35 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %36 = call i32 @xf_emit(%struct.nvkm_grctx* %35, i32 1, i32 2)
  %37 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %38 = call i32 @xf_emit(%struct.nvkm_grctx* %37, i32 1, i32 0)
  %39 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @xf_emit(%struct.nvkm_grctx* %39, i32 1, i32 %40)
  %42 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %43 = call i32 @xf_emit(%struct.nvkm_grctx* %42, i32 1, i32 0)
  %44 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %45 = call i32 @xf_emit(%struct.nvkm_grctx* %44, i32 1, i32 0)
  %46 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %47 = call i32 @xf_emit(%struct.nvkm_grctx* %46, i32 1, i32 0)
  %48 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %49 = call i32 @xf_emit(%struct.nvkm_grctx* %48, i32 1, i32 0)
  %50 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %51 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @IS_NVA3F(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %22
  %56 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %57 = call i32 @xf_emit(%struct.nvkm_grctx* %56, i32 1, i32 1)
  br label %58

58:                                               ; preds = %55, %22
  %59 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %60 = call i32 @xf_emit(%struct.nvkm_grctx* %59, i32 1, i32 0)
  %61 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %62 = call i32 @xf_emit(%struct.nvkm_grctx* %61, i32 1, i32 0)
  %63 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %64 = call i32 @xf_emit(%struct.nvkm_grctx* %63, i32 1, i32 0)
  %65 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %66 = call i32 @xf_emit(%struct.nvkm_grctx* %65, i32 3, i32 0)
  %67 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %68 = call i32 @xf_emit(%struct.nvkm_grctx* %67, i32 1, i32 0)
  %69 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %70 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp sge i32 %71, 160
  br i1 %72, label %73, label %82

73:                                               ; preds = %58
  %74 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %75 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @IS_NVAAF(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %73
  %80 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %81 = call i32 @xf_emit(%struct.nvkm_grctx* %80, i32 1, i32 21)
  br label %82

82:                                               ; preds = %79, %73, %58
  %83 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %84 = call i32 @xf_emit(%struct.nvkm_grctx* %83, i32 1, i32 0)
  %85 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %86 = call i32 @xf_emit(%struct.nvkm_grctx* %85, i32 1, i32 1)
  %87 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %88 = call i32 @xf_emit(%struct.nvkm_grctx* %87, i32 1, i32 16)
  %89 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %90 = call i32 @xf_emit(%struct.nvkm_grctx* %89, i32 1, i32 0)
  %91 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %92 = call i32 @xf_emit(%struct.nvkm_grctx* %91, i32 1, i32 0)
  %93 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %94 = call i32 @xf_emit(%struct.nvkm_grctx* %93, i32 1, i32 1)
  %95 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %96 = call i32 @xf_emit(%struct.nvkm_grctx* %95, i32 1, i32 0)
  %97 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %98 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 134
  br i1 %100, label %116, label %101

101:                                              ; preds = %82
  %102 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %103 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 146
  br i1 %105, label %116, label %106

106:                                              ; preds = %101
  %107 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %108 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 152
  br i1 %110, label %116, label %111

111:                                              ; preds = %106
  %112 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %113 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp sge i32 %114, 160
  br i1 %115, label %116, label %145

116:                                              ; preds = %111, %106, %101, %82
  %117 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %118 = call i32 @xf_emit(%struct.nvkm_grctx* %117, i32 3, i32 0)
  %119 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %120 = call i32 @xf_emit(%struct.nvkm_grctx* %119, i32 1, i32 4)
  %121 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %122 = call i32 @xf_emit(%struct.nvkm_grctx* %121, i32 1, i32 1024)
  %123 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %124 = call i32 @xf_emit(%struct.nvkm_grctx* %123, i32 1, i32 768)
  %125 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %126 = call i32 @xf_emit(%struct.nvkm_grctx* %125, i32 1, i32 4097)
  %127 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %128 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 160
  br i1 %130, label %131, label %144

131:                                              ; preds = %116
  %132 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %133 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @IS_NVA3F(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %131
  %138 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %139 = call i32 @xf_emit(%struct.nvkm_grctx* %138, i32 1, i32 0)
  br label %143

140:                                              ; preds = %131
  %141 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %142 = call i32 @xf_emit(%struct.nvkm_grctx* %141, i32 1, i32 21)
  br label %143

143:                                              ; preds = %140, %137
  br label %144

144:                                              ; preds = %143, %116
  br label %145

145:                                              ; preds = %144, %111
  %146 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %147 = call i32 @xf_emit(%struct.nvkm_grctx* %146, i32 1, i32 0)
  %148 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %149 = call i32 @xf_emit(%struct.nvkm_grctx* %148, i32 1, i32 0)
  %150 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %151 = call i32 @xf_emit(%struct.nvkm_grctx* %150, i32 1, i32 0)
  %152 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %153 = call i32 @xf_emit(%struct.nvkm_grctx* %152, i32 1, i32 0)
  %154 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %155 = call i32 @xf_emit(%struct.nvkm_grctx* %154, i32 1, i32 0)
  %156 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %157 = call i32 @xf_emit(%struct.nvkm_grctx* %156, i32 1, i32 2)
  %158 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %159 = call i32 @xf_emit(%struct.nvkm_grctx* %158, i32 1, i32 0)
  %160 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %161 = call i32 @xf_emit(%struct.nvkm_grctx* %160, i32 1, i32 0)
  %162 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %163 = call i32 @xf_emit(%struct.nvkm_grctx* %162, i32 1, i32 0)
  %164 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %165 = call i32 @xf_emit(%struct.nvkm_grctx* %164, i32 1, i32 0)
  %166 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %167 = call i32 @xf_emit(%struct.nvkm_grctx* %166, i32 1, i32 0)
  %168 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %169 = call i32 @xf_emit(%struct.nvkm_grctx* %168, i32 1, i32 0)
  %170 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %171 = call i32 @xf_emit(%struct.nvkm_grctx* %170, i32 1, i32 0)
  %172 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %173 = call i32 @xf_emit(%struct.nvkm_grctx* %172, i32 1, i32 0)
  %174 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %175 = call i32 @xf_emit(%struct.nvkm_grctx* %174, i32 1, i32 1)
  %176 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %177 = call i32 @xf_emit(%struct.nvkm_grctx* %176, i32 1, i32 16)
  %178 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %179 = call i32 @xf_emit(%struct.nvkm_grctx* %178, i32 1, i32 0)
  %180 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %181 = call i32 @xf_emit(%struct.nvkm_grctx* %180, i32 1, i32 1)
  %182 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %183 = call i32 @xf_emit(%struct.nvkm_grctx* %182, i32 1, i32 0)
  %184 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %185 = call i32 @xf_emit(%struct.nvkm_grctx* %184, i32 1, i32 0)
  %186 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %187 = call i32 @xf_emit(%struct.nvkm_grctx* %186, i32 1, i32 0)
  %188 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %189 = call i32 @xf_emit(%struct.nvkm_grctx* %188, i32 1, i32 0)
  %190 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %191 = call i32 @xf_emit(%struct.nvkm_grctx* %190, i32 1, i32 0)
  %192 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %193 = call i32 @xf_emit(%struct.nvkm_grctx* %192, i32 1, i32 0)
  %194 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %195 = call i32 @xf_emit(%struct.nvkm_grctx* %194, i32 2, i32 0)
  %196 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %197 = call i32 @xf_emit(%struct.nvkm_grctx* %196, i32 1, i32 0)
  %198 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %199 = call i32 @xf_emit(%struct.nvkm_grctx* %198, i32 1, i32 0)
  %200 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %201 = call i32 @xf_emit(%struct.nvkm_grctx* %200, i32 1, i32 0)
  %202 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %203 = call i32 @xf_emit(%struct.nvkm_grctx* %202, i32 1, i32 0)
  %204 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %205 = call i32 @xf_emit(%struct.nvkm_grctx* %204, i32 1, i32 0)
  %206 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %207 = call i32 @xf_emit(%struct.nvkm_grctx* %206, i32 1, i32 0)
  %208 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %209 = call i32 @xf_emit(%struct.nvkm_grctx* %208, i32 1, i32 0)
  %210 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %211 = call i32 @xf_emit(%struct.nvkm_grctx* %210, i32 1, i32 0)
  %212 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %213 = call i32 @xf_emit(%struct.nvkm_grctx* %212, i32 1, i32 0)
  %214 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %215 = call i32 @xf_emit(%struct.nvkm_grctx* %214, i32 1, i32 0)
  %216 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %217 = call i32 @xf_emit(%struct.nvkm_grctx* %216, i32 1, i32 0)
  %218 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %219 = call i32 @xf_emit(%struct.nvkm_grctx* %218, i32 1, i32 16)
  %220 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %221 = call i32 @xf_emit(%struct.nvkm_grctx* %220, i32 16, i32 0)
  %222 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %223 = call i32 @xf_emit(%struct.nvkm_grctx* %222, i32 16, i32 1065353216)
  %224 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %225 = call i32 @xf_emit(%struct.nvkm_grctx* %224, i32 1, i32 0)
  %226 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %227 = call i32 @xf_emit(%struct.nvkm_grctx* %226, i32 1, i32 0)
  %228 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %229 = call i32 @xf_emit(%struct.nvkm_grctx* %228, i32 1, i32 0)
  %230 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %231 = call i32 @xf_emit(%struct.nvkm_grctx* %230, i32 1, i32 0)
  %232 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %233 = call i32 @xf_emit(%struct.nvkm_grctx* %232, i32 1, i32 0)
  %234 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %235 = call i32 @xf_emit(%struct.nvkm_grctx* %234, i32 1, i32 0)
  %236 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %237 = call i32 @xf_emit(%struct.nvkm_grctx* %236, i32 3, i32 0)
  %238 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %239 = call i32 @xf_emit(%struct.nvkm_grctx* %238, i32 2, i32 0)
  %240 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %241 = call i32 @xf_emit(%struct.nvkm_grctx* %240, i32 1, i32 0)
  %242 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %243 = call i32 @xf_emit(%struct.nvkm_grctx* %242, i32 1, i32 0)
  %244 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %245 = call i32 @xf_emit(%struct.nvkm_grctx* %244, i32 1, i32 0)
  %246 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %247 = call i32 @xf_emit(%struct.nvkm_grctx* %246, i32 1, i32 0)
  %248 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %249 = call i32 @xf_emit(%struct.nvkm_grctx* %248, i32 1, i32 0)
  %250 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %251 = call i32 @xf_emit(%struct.nvkm_grctx* %250, i32 1, i32 0)
  %252 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %253 = call i32 @xf_emit(%struct.nvkm_grctx* %252, i32 1, i32 0)
  %254 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %255 = call i32 @xf_emit(%struct.nvkm_grctx* %254, i32 1, i32 0)
  %256 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %257 = call i32 @xf_emit(%struct.nvkm_grctx* %256, i32 1, i32 0)
  %258 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %259 = call i32 @xf_emit(%struct.nvkm_grctx* %258, i32 3, i32 0)
  %260 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %261 = call i32 @xf_emit(%struct.nvkm_grctx* %260, i32 1, i32 0)
  %262 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %263 = call i32 @xf_emit(%struct.nvkm_grctx* %262, i32 1, i32 0)
  %264 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %265 = call i32 @xf_emit(%struct.nvkm_grctx* %264, i32 1, i32 16)
  %266 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %267 = call i32 @xf_emit(%struct.nvkm_grctx* %266, i32 1, i32 0)
  %268 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %269 = call i32 @xf_emit(%struct.nvkm_grctx* %268, i32 1, i32 63)
  %270 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %271 = call i32 @xf_emit(%struct.nvkm_grctx* %270, i32 1, i32 0)
  %272 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %273 = call i32 @xf_emit(%struct.nvkm_grctx* %272, i32 1, i32 0)
  %274 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %275 = call i32 @xf_emit(%struct.nvkm_grctx* %274, i32 2, i32 0)
  %276 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %277 = call i32 @xf_emit(%struct.nvkm_grctx* %276, i32 1, i32 0)
  %278 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %279 = call i32 @xf_emit(%struct.nvkm_grctx* %278, i32 1, i32 0)
  %280 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %281 = call i32 @xf_emit(%struct.nvkm_grctx* %280, i32 1, i32 1)
  %282 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %283 = call i32 @xf_emit(%struct.nvkm_grctx* %282, i32 1, i32 0)
  %284 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %285 = call i32 @xf_emit(%struct.nvkm_grctx* %284, i32 1, i32 1)
  %286 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %287 = call i32 @xf_emit(%struct.nvkm_grctx* %286, i32 1, i32 0)
  %288 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %289 = call i32 @xf_emit(%struct.nvkm_grctx* %288, i32 1, i32 1)
  %290 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %291 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = icmp sge i32 %292, 160
  br i1 %293, label %294, label %301

294:                                              ; preds = %145
  %295 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %296 = call i32 @xf_emit(%struct.nvkm_grctx* %295, i32 2, i32 0)
  %297 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %298 = call i32 @xf_emit(%struct.nvkm_grctx* %297, i32 1, i32 4097)
  %299 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %300 = call i32 @xf_emit(%struct.nvkm_grctx* %299, i32 11, i32 0)
  br label %312

301:                                              ; preds = %145
  %302 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %303 = call i32 @xf_emit(%struct.nvkm_grctx* %302, i32 1, i32 0)
  %304 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %305 = call i32 @xf_emit(%struct.nvkm_grctx* %304, i32 1, i32 0)
  %306 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %307 = call i32 @xf_emit(%struct.nvkm_grctx* %306, i32 1, i32 0)
  %308 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %309 = call i32 @xf_emit(%struct.nvkm_grctx* %308, i32 8, i32 0)
  %310 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %311 = call i32 @xf_emit(%struct.nvkm_grctx* %310, i32 1, i32 0)
  br label %312

312:                                              ; preds = %301, %294
  %313 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %314 = call i32 @xf_emit(%struct.nvkm_grctx* %313, i32 1, i32 17)
  %315 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %316 = call i32 @xf_emit(%struct.nvkm_grctx* %315, i32 7, i32 0)
  %317 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %318 = call i32 @xf_emit(%struct.nvkm_grctx* %317, i32 1, i32 15)
  %319 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %320 = call i32 @xf_emit(%struct.nvkm_grctx* %319, i32 7, i32 0)
  %321 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %322 = call i32 @xf_emit(%struct.nvkm_grctx* %321, i32 1, i32 17)
  %323 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %324 = call i32 @xf_emit(%struct.nvkm_grctx* %323, i32 1, i32 0)
  %325 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %326 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 4
  %328 = icmp ne i32 %327, 80
  br i1 %328, label %329, label %334

329:                                              ; preds = %312
  %330 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %331 = call i32 @xf_emit(%struct.nvkm_grctx* %330, i32 1, i32 0)
  %332 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %333 = call i32 @xf_emit(%struct.nvkm_grctx* %332, i32 1, i32 0)
  br label %334

334:                                              ; preds = %329, %312
  %335 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %336 = call i32 @xf_emit(%struct.nvkm_grctx* %335, i32 1, i32 0)
  %337 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %338 = call i32 @xf_emit(%struct.nvkm_grctx* %337, i32 1, i32 0)
  %339 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %340 = call i32 @xf_emit(%struct.nvkm_grctx* %339, i32 1, i32 0)
  %341 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %342 = call i32 @xf_emit(%struct.nvkm_grctx* %341, i32 2, i32 1)
  %343 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %344 = call i32 @xf_emit(%struct.nvkm_grctx* %343, i32 1, i32 1)
  %345 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %346 = call i32 @xf_emit(%struct.nvkm_grctx* %345, i32 1, i32 2)
  %347 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %348 = call i32 @xf_emit(%struct.nvkm_grctx* %347, i32 1, i32 1)
  %349 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %350 = call i32 @xf_emit(%struct.nvkm_grctx* %349, i32 1, i32 2)
  %351 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %352 = call i32 @xf_emit(%struct.nvkm_grctx* %351, i32 1, i32 1)
  %353 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %354 = call i32 @xf_emit(%struct.nvkm_grctx* %353, i32 1, i32 0)
  %355 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %356 = load i32, i32* %4, align 4
  %357 = call i32 @xf_emit(%struct.nvkm_grctx* %355, i32 1, i32 %356)
  %358 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %359 = call i32 @xf_emit(%struct.nvkm_grctx* %358, i32 1, i32 0)
  %360 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %361 = call i32 @xf_emit(%struct.nvkm_grctx* %360, i32 1, i32 262957185)
  %362 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %363 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 4
  %365 = call i64 @IS_NVA3F(i32 %364)
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %404

367:                                              ; preds = %334
  %368 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %369 = call i32 @xf_emit(%struct.nvkm_grctx* %368, i32 1, i32 0)
  %370 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %371 = call i32 @xf_emit(%struct.nvkm_grctx* %370, i32 8, i32 1)
  %372 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %373 = call i32 @xf_emit(%struct.nvkm_grctx* %372, i32 8, i32 1)
  %374 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %375 = call i32 @xf_emit(%struct.nvkm_grctx* %374, i32 8, i32 1)
  %376 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %377 = call i32 @xf_emit(%struct.nvkm_grctx* %376, i32 8, i32 2)
  %378 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %379 = call i32 @xf_emit(%struct.nvkm_grctx* %378, i32 8, i32 1)
  %380 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %381 = call i32 @xf_emit(%struct.nvkm_grctx* %380, i32 8, i32 2)
  %382 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %383 = call i32 @xf_emit(%struct.nvkm_grctx* %382, i32 8, i32 1)
  %384 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %385 = call i32 @xf_emit(%struct.nvkm_grctx* %384, i32 1, i32 0)
  %386 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %387 = call i32 @xf_emit(%struct.nvkm_grctx* %386, i32 2, i32 0)
  %388 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %389 = call i32 @xf_emit(%struct.nvkm_grctx* %388, i32 1, i32 1)
  %390 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %391 = call i32 @xf_emit(%struct.nvkm_grctx* %390, i32 1, i32 0)
  %392 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %393 = call i32 @xf_emit(%struct.nvkm_grctx* %392, i32 1, i32 0)
  %394 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %395 = call i32 @xf_emit(%struct.nvkm_grctx* %394, i32 1, i32 0)
  %396 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %397 = call i32 @xf_emit(%struct.nvkm_grctx* %396, i32 2, i32 0)
  %398 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %399 = call i32 @xf_emit(%struct.nvkm_grctx* %398, i32 1, i32 1)
  %400 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %401 = call i32 @xf_emit(%struct.nvkm_grctx* %400, i32 1, i32 0)
  %402 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %403 = call i32 @xf_emit(%struct.nvkm_grctx* %402, i32 1, i32 0)
  br label %428

404:                                              ; preds = %334
  %405 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %406 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 4
  %408 = icmp sge i32 %407, 160
  br i1 %408, label %409, label %420

409:                                              ; preds = %404
  %410 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %411 = call i32 @xf_emit(%struct.nvkm_grctx* %410, i32 2, i32 0)
  %412 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %413 = call i32 @xf_emit(%struct.nvkm_grctx* %412, i32 1, i32 0)
  %414 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %415 = call i32 @xf_emit(%struct.nvkm_grctx* %414, i32 1, i32 0)
  %416 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %417 = call i32 @xf_emit(%struct.nvkm_grctx* %416, i32 1, i32 0)
  %418 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %419 = call i32 @xf_emit(%struct.nvkm_grctx* %418, i32 2, i32 0)
  br label %427

420:                                              ; preds = %404
  %421 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %422 = call i32 @xf_emit(%struct.nvkm_grctx* %421, i32 1, i32 0)
  %423 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %424 = call i32 @xf_emit(%struct.nvkm_grctx* %423, i32 1, i32 0)
  %425 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %426 = call i32 @xf_emit(%struct.nvkm_grctx* %425, i32 1, i32 0)
  br label %427

427:                                              ; preds = %420, %409
  br label %428

428:                                              ; preds = %427, %367
  %429 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %430 = call i32 @xf_emit(%struct.nvkm_grctx* %429, i32 4, i32 0)
  %431 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %432 = call i32 @xf_emit(%struct.nvkm_grctx* %431, i32 4, i32 0)
  %433 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %434 = call i32 @xf_emit(%struct.nvkm_grctx* %433, i32 1, i32 0)
  %435 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %436 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 4
  %438 = icmp sge i32 %437, 160
  br i1 %438, label %439, label %442

439:                                              ; preds = %428
  %440 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %441 = call i32 @xf_emit(%struct.nvkm_grctx* %440, i32 2, i32 0)
  br label %442

442:                                              ; preds = %439, %428
  %443 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %444 = call i32 @xf_emit(%struct.nvkm_grctx* %443, i32 1, i32 0)
  %445 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %446 = call i32 @xf_emit(%struct.nvkm_grctx* %445, i32 8, i32 0)
  %447 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %448 = call i32 @xf_emit(%struct.nvkm_grctx* %447, i32 1, i32 1)
  %449 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %450 = call i32 @xf_emit(%struct.nvkm_grctx* %449, i32 1, i32 2)
  %451 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %452 = call i32 @xf_emit(%struct.nvkm_grctx* %451, i32 1, i32 1)
  %453 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %454 = call i32 @xf_emit(%struct.nvkm_grctx* %453, i32 1, i32 1)
  %455 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %456 = call i32 @xf_emit(%struct.nvkm_grctx* %455, i32 1, i32 2)
  %457 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %458 = call i32 @xf_emit(%struct.nvkm_grctx* %457, i32 1, i32 1)
  %459 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %460 = call i32 @xf_emit(%struct.nvkm_grctx* %459, i32 1, i32 1)
  %461 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %462 = call i32 @xf_emit(%struct.nvkm_grctx* %461, i32 1, i32 0)
  %463 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %464 = call i32 @xf_emit(%struct.nvkm_grctx* %463, i32 1, i32 0)
  %465 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %466 = call i32 @xf_emit(%struct.nvkm_grctx* %465, i32 1, i32 0)
  %467 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %468 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 4
  %470 = icmp sge i32 %469, 160
  br i1 %470, label %471, label %474

471:                                              ; preds = %442
  %472 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %473 = call i32 @xf_emit(%struct.nvkm_grctx* %472, i32 1, i32 0)
  br label %474

474:                                              ; preds = %471, %442
  %475 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %476 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 4
  %478 = call i64 @IS_NVA3F(i32 %477)
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %480, label %501

480:                                              ; preds = %474
  %481 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %482 = call i32 @xf_emit(%struct.nvkm_grctx* %481, i32 8, i32 1)
  %483 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %484 = call i32 @xf_emit(%struct.nvkm_grctx* %483, i32 8, i32 1)
  %485 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %486 = call i32 @xf_emit(%struct.nvkm_grctx* %485, i32 8, i32 2)
  %487 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %488 = call i32 @xf_emit(%struct.nvkm_grctx* %487, i32 8, i32 1)
  %489 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %490 = call i32 @xf_emit(%struct.nvkm_grctx* %489, i32 8, i32 1)
  %491 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %492 = call i32 @xf_emit(%struct.nvkm_grctx* %491, i32 8, i32 2)
  %493 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %494 = call i32 @xf_emit(%struct.nvkm_grctx* %493, i32 8, i32 1)
  %495 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %496 = call i32 @xf_emit(%struct.nvkm_grctx* %495, i32 1, i32 0)
  %497 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %498 = call i32 @xf_emit(%struct.nvkm_grctx* %497, i32 1, i32 0)
  %499 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %500 = call i32 @xf_emit(%struct.nvkm_grctx* %499, i32 1, i32 0)
  br label %501

501:                                              ; preds = %480, %474
  %502 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %503 = call i32 @xf_emit(%struct.nvkm_grctx* %502, i32 1, i32 17)
  %504 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %505 = call i32 @xf_emit(%struct.nvkm_grctx* %504, i32 1, i32 1)
  %506 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %507 = call i32 @xf_emit(%struct.nvkm_grctx* %506, i32 1, i32 0)
  %508 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %509 = call i32 @xf_emit(%struct.nvkm_grctx* %508, i32 2, i32 0)
  %510 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %511 = call i32 @xf_emit(%struct.nvkm_grctx* %510, i32 1, i32 0)
  %512 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %513 = call i32 @xf_emit(%struct.nvkm_grctx* %512, i32 2, i32 0)
  %514 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %515 = call i32 @xf_emit(%struct.nvkm_grctx* %514, i32 1, i32 0)
  %516 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %517 = call i32 @xf_emit(%struct.nvkm_grctx* %516, i32 1, i32 0)
  %518 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %519 = call i32 @xf_emit(%struct.nvkm_grctx* %518, i32 1, i32 0)
  %520 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %521 = call i32 @xf_emit(%struct.nvkm_grctx* %520, i32 1, i32 0)
  %522 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %523 = call i32 @xf_emit(%struct.nvkm_grctx* %522, i32 1, i32 0)
  %524 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %525 = call i32 @xf_emit(%struct.nvkm_grctx* %524, i32 80, i32 0)
  ret void
}

declare dso_local i64 @IS_NVA3F(i32) #1

declare dso_local i32 @xf_emit(%struct.nvkm_grctx*, i32, i32) #1

declare dso_local i32 @IS_NVAAF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
