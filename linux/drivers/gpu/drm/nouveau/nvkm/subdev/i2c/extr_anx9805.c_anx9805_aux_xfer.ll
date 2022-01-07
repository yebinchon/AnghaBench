; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_anx9805.c_anx9805_aux_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_anx9805.c_anx9805_aux_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_i2c_aux = type { i32 }
%struct.anx9805_aux = type { i32, i32, %struct.anx9805_pad* }
%struct.anx9805_pad = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.i2c_adapter }
%struct.i2c_adapter = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%02x %05x %d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%16ph\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_i2c_aux*, i32, i32, i32, i32*, i32*)* @anx9805_aux_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anx9805_aux_xfer(%struct.nvkm_i2c_aux* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.nvkm_i2c_aux*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.anx9805_aux*, align 8
  %14 = alloca %struct.anx9805_pad*, align 8
  %15 = alloca %struct.i2c_adapter*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [16 x i32], align 16
  %19 = alloca i32, align 4
  store %struct.nvkm_i2c_aux* %0, %struct.nvkm_i2c_aux** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %20 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %7, align 8
  %21 = call %struct.anx9805_aux* @anx9805_aux(%struct.nvkm_i2c_aux* %20)
  store %struct.anx9805_aux* %21, %struct.anx9805_aux** %13, align 8
  %22 = load %struct.anx9805_aux*, %struct.anx9805_aux** %13, align 8
  %23 = getelementptr inbounds %struct.anx9805_aux, %struct.anx9805_aux* %22, i32 0, i32 2
  %24 = load %struct.anx9805_pad*, %struct.anx9805_pad** %23, align 8
  store %struct.anx9805_pad* %24, %struct.anx9805_pad** %14, align 8
  %25 = load %struct.anx9805_pad*, %struct.anx9805_pad** %14, align 8
  %26 = getelementptr inbounds %struct.anx9805_pad, %struct.anx9805_pad* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store %struct.i2c_adapter* %28, %struct.i2c_adapter** %15, align 8
  %29 = load i32, i32* @ETIMEDOUT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %17, align 4
  %31 = bitcast [16 x i32]* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %31, i8 0, i64 64, i1 false)
  %32 = load %struct.anx9805_aux*, %struct.anx9805_aux** %13, align 8
  %33 = getelementptr inbounds %struct.anx9805_aux, %struct.anx9805_aux* %32, i32 0, i32 0
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32*, i8*, ...) @AUX_DBG(i32* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35, i32 %37)
  %39 = load %struct.i2c_adapter*, %struct.i2c_adapter** %15, align 8
  %40 = load %struct.anx9805_pad*, %struct.anx9805_pad** %14, align 8
  %41 = getelementptr inbounds %struct.anx9805_pad, %struct.anx9805_pad* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @nvkm_rdi2cr(%struct.i2c_adapter* %39, i32 %42, i32 7)
  %44 = and i32 %43, -5
  store i32 %44, i32* %19, align 4
  %45 = load %struct.i2c_adapter*, %struct.i2c_adapter** %15, align 8
  %46 = load %struct.anx9805_pad*, %struct.anx9805_pad** %14, align 8
  %47 = getelementptr inbounds %struct.anx9805_pad, %struct.anx9805_pad* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %19, align 4
  %50 = or i32 %49, 4
  %51 = call i32 @nvkm_wri2cr(%struct.i2c_adapter* %45, i32 %48, i32 7, i32 %50)
  %52 = load %struct.i2c_adapter*, %struct.i2c_adapter** %15, align 8
  %53 = load %struct.anx9805_pad*, %struct.anx9805_pad** %14, align 8
  %54 = getelementptr inbounds %struct.anx9805_pad, %struct.anx9805_pad* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %19, align 4
  %57 = call i32 @nvkm_wri2cr(%struct.i2c_adapter* %52, i32 %55, i32 7, i32 %56)
  %58 = load %struct.i2c_adapter*, %struct.i2c_adapter** %15, align 8
  %59 = load %struct.anx9805_pad*, %struct.anx9805_pad** %14, align 8
  %60 = getelementptr inbounds %struct.anx9805_pad, %struct.anx9805_pad* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @nvkm_wri2cr(%struct.i2c_adapter* %58, i32 %61, i32 247, i32 1)
  %63 = load %struct.i2c_adapter*, %struct.i2c_adapter** %15, align 8
  %64 = load %struct.anx9805_aux*, %struct.anx9805_aux** %13, align 8
  %65 = getelementptr inbounds %struct.anx9805_aux, %struct.anx9805_aux* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @nvkm_wri2cr(%struct.i2c_adapter* %63, i32 %66, i32 228, i32 128)
  %68 = load i32, i32* %9, align 4
  %69 = and i32 %68, 1
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %102, label %71

71:                                               ; preds = %6
  %72 = getelementptr inbounds [16 x i32], [16 x i32]* %18, i64 0, i64 0
  %73 = load i32*, i32** %11, align 8
  %74 = load i32*, i32** %12, align 8
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @memcpy(i32* %72, i32* %73, i32 %75)
  %77 = load %struct.anx9805_aux*, %struct.anx9805_aux** %13, align 8
  %78 = getelementptr inbounds %struct.anx9805_aux, %struct.anx9805_aux* %77, i32 0, i32 0
  %79 = getelementptr inbounds [16 x i32], [16 x i32]* %18, i64 0, i64 0
  %80 = call i32 (i32*, i8*, ...) @AUX_DBG(i32* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %79)
  store i32 0, i32* %16, align 4
  br label %81

81:                                               ; preds = %98, %71
  %82 = load i32, i32* %16, align 4
  %83 = load i32*, i32** %12, align 8
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %82, %84
  br i1 %85, label %86, label %101

86:                                               ; preds = %81
  %87 = load %struct.i2c_adapter*, %struct.i2c_adapter** %15, align 8
  %88 = load %struct.anx9805_aux*, %struct.anx9805_aux** %13, align 8
  %89 = getelementptr inbounds %struct.anx9805_aux, %struct.anx9805_aux* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %16, align 4
  %92 = add nsw i32 240, %91
  %93 = load i32, i32* %16, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [16 x i32], [16 x i32]* %18, i64 0, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @nvkm_wri2cr(%struct.i2c_adapter* %87, i32 %90, i32 %92, i32 %96)
  br label %98

98:                                               ; preds = %86
  %99 = load i32, i32* %16, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %16, align 4
  br label %81

101:                                              ; preds = %81
  br label %102

102:                                              ; preds = %101, %6
  %103 = load %struct.i2c_adapter*, %struct.i2c_adapter** %15, align 8
  %104 = load %struct.anx9805_aux*, %struct.anx9805_aux** %13, align 8
  %105 = getelementptr inbounds %struct.anx9805_aux, %struct.anx9805_aux* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %12, align 8
  %108 = load i32, i32* %107, align 4
  %109 = sub nsw i32 %108, 1
  %110 = shl i32 %109, 4
  %111 = load i32, i32* %9, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @nvkm_wri2cr(%struct.i2c_adapter* %103, i32 %106, i32 229, i32 %112)
  %114 = load %struct.i2c_adapter*, %struct.i2c_adapter** %15, align 8
  %115 = load %struct.anx9805_aux*, %struct.anx9805_aux** %13, align 8
  %116 = getelementptr inbounds %struct.anx9805_aux, %struct.anx9805_aux* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %10, align 4
  %119 = and i32 %118, 255
  %120 = ashr i32 %119, 0
  %121 = call i32 @nvkm_wri2cr(%struct.i2c_adapter* %114, i32 %117, i32 230, i32 %120)
  %122 = load %struct.i2c_adapter*, %struct.i2c_adapter** %15, align 8
  %123 = load %struct.anx9805_aux*, %struct.anx9805_aux** %13, align 8
  %124 = getelementptr inbounds %struct.anx9805_aux, %struct.anx9805_aux* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %10, align 4
  %127 = and i32 %126, 65280
  %128 = ashr i32 %127, 8
  %129 = call i32 @nvkm_wri2cr(%struct.i2c_adapter* %122, i32 %125, i32 231, i32 %128)
  %130 = load %struct.i2c_adapter*, %struct.i2c_adapter** %15, align 8
  %131 = load %struct.anx9805_aux*, %struct.anx9805_aux** %13, align 8
  %132 = getelementptr inbounds %struct.anx9805_aux, %struct.anx9805_aux* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %10, align 4
  %135 = and i32 %134, 983040
  %136 = ashr i32 %135, 16
  %137 = call i32 @nvkm_wri2cr(%struct.i2c_adapter* %130, i32 %133, i32 232, i32 %136)
  %138 = load %struct.i2c_adapter*, %struct.i2c_adapter** %15, align 8
  %139 = load %struct.anx9805_aux*, %struct.anx9805_aux** %13, align 8
  %140 = getelementptr inbounds %struct.anx9805_aux, %struct.anx9805_aux* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @nvkm_wri2cr(%struct.i2c_adapter* %138, i32 %141, i32 233, i32 1)
  store i32 0, i32* %16, align 4
  br label %143

143:                                              ; preds = %157, %102
  %144 = load %struct.i2c_adapter*, %struct.i2c_adapter** %15, align 8
  %145 = load %struct.anx9805_aux*, %struct.anx9805_aux** %13, align 8
  %146 = getelementptr inbounds %struct.anx9805_aux, %struct.anx9805_aux* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @nvkm_rdi2cr(%struct.i2c_adapter* %144, i32 %147, i32 233)
  store i32 %148, i32* %19, align 4
  %149 = and i32 %148, 1
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %143
  %152 = call i32 @mdelay(i32 5)
  %153 = load i32, i32* %16, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %16, align 4
  %155 = icmp eq i32 %153, 32
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  br label %204

157:                                              ; preds = %151
  br label %143

158:                                              ; preds = %143
  %159 = load %struct.i2c_adapter*, %struct.i2c_adapter** %15, align 8
  %160 = load %struct.anx9805_pad*, %struct.anx9805_pad** %14, align 8
  %161 = getelementptr inbounds %struct.anx9805_pad, %struct.anx9805_pad* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @nvkm_rdi2cr(%struct.i2c_adapter* %159, i32 %162, i32 247)
  store i32 %163, i32* %19, align 4
  %164 = and i32 %163, 1
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %158
  %167 = load i32, i32* @EIO, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %17, align 4
  br label %204

169:                                              ; preds = %158
  %170 = load i32, i32* %9, align 4
  %171 = and i32 %170, 1
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %203

173:                                              ; preds = %169
  store i32 0, i32* %16, align 4
  br label %174

174:                                              ; preds = %190, %173
  %175 = load i32, i32* %16, align 4
  %176 = load i32*, i32** %12, align 8
  %177 = load i32, i32* %176, align 4
  %178 = icmp slt i32 %175, %177
  br i1 %178, label %179, label %193

179:                                              ; preds = %174
  %180 = load %struct.i2c_adapter*, %struct.i2c_adapter** %15, align 8
  %181 = load %struct.anx9805_aux*, %struct.anx9805_aux** %13, align 8
  %182 = getelementptr inbounds %struct.anx9805_aux, %struct.anx9805_aux* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %16, align 4
  %185 = add nsw i32 240, %184
  %186 = call i32 @nvkm_rdi2cr(%struct.i2c_adapter* %180, i32 %183, i32 %185)
  %187 = load i32, i32* %16, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [16 x i32], [16 x i32]* %18, i64 0, i64 %188
  store i32 %186, i32* %189, align 4
  br label %190

190:                                              ; preds = %179
  %191 = load i32, i32* %16, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %16, align 4
  br label %174

193:                                              ; preds = %174
  %194 = load %struct.anx9805_aux*, %struct.anx9805_aux** %13, align 8
  %195 = getelementptr inbounds %struct.anx9805_aux, %struct.anx9805_aux* %194, i32 0, i32 0
  %196 = getelementptr inbounds [16 x i32], [16 x i32]* %18, i64 0, i64 0
  %197 = call i32 (i32*, i8*, ...) @AUX_DBG(i32* %195, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %196)
  %198 = load i32*, i32** %11, align 8
  %199 = getelementptr inbounds [16 x i32], [16 x i32]* %18, i64 0, i64 0
  %200 = load i32*, i32** %12, align 8
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @memcpy(i32* %198, i32* %199, i32 %201)
  br label %203

203:                                              ; preds = %193, %169
  store i32 0, i32* %17, align 4
  br label %204

204:                                              ; preds = %203, %166, %156
  %205 = load %struct.i2c_adapter*, %struct.i2c_adapter** %15, align 8
  %206 = load %struct.anx9805_pad*, %struct.anx9805_pad** %14, align 8
  %207 = getelementptr inbounds %struct.anx9805_pad, %struct.anx9805_pad* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @nvkm_wri2cr(%struct.i2c_adapter* %205, i32 %208, i32 247, i32 1)
  %210 = load i32, i32* %17, align 4
  ret i32 %210
}

declare dso_local %struct.anx9805_aux* @anx9805_aux(%struct.nvkm_i2c_aux*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @AUX_DBG(i32*, i8*, ...) #1

declare dso_local i32 @nvkm_rdi2cr(%struct.i2c_adapter*, i32, i32) #1

declare dso_local i32 @nvkm_wri2cr(%struct.i2c_adapter*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
