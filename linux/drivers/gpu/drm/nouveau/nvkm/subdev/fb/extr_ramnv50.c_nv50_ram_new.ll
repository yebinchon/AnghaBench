; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramnv50.c_nv50_ram_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramnv50.c_nv50_ram_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fb = type { i32 }
%struct.nvkm_ram = type { i32, i32 }
%struct.nv50_ram = type { %struct.TYPE_2__, %struct.nvkm_ram }
%struct.TYPE_2__ = type { i8**, i8**, i8**, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv50_ram_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_ram_new(%struct.nvkm_fb* %0, %struct.nvkm_ram** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_fb*, align 8
  %5 = alloca %struct.nvkm_ram**, align 8
  %6 = alloca %struct.nv50_ram*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nvkm_fb* %0, %struct.nvkm_fb** %4, align 8
  store %struct.nvkm_ram** %1, %struct.nvkm_ram*** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.nv50_ram* @kzalloc(i32 200, i32 %9)
  store %struct.nv50_ram* %10, %struct.nv50_ram** %6, align 8
  %11 = icmp ne %struct.nv50_ram* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %215

15:                                               ; preds = %2
  %16 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %17 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %16, i32 0, i32 1
  %18 = load %struct.nvkm_ram**, %struct.nvkm_ram*** %5, align 8
  store %struct.nvkm_ram* %17, %struct.nvkm_ram** %18, align 8
  %19 = load %struct.nvkm_fb*, %struct.nvkm_fb** %4, align 8
  %20 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %21 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %20, i32 0, i32 1
  %22 = call i32 @nv50_ram_ctor(i32* @nv50_ram_func, %struct.nvkm_fb* %19, %struct.nvkm_ram* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %215

27:                                               ; preds = %15
  %28 = call i8* @hwsq_reg(i32 9476)
  %29 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %30 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 23
  store i8* %28, i8** %31, align 8
  %32 = call i8* @hwsq_reg(i32 49216)
  %33 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %34 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 22
  store i8* %32, i8** %35, align 8
  %36 = call i8* @hwsq_reg(i32 16392)
  %37 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %38 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 21
  store i8* %36, i8** %39, align 8
  %40 = call i8* @hwsq_reg(i32 16396)
  %41 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %42 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 20
  store i8* %40, i8** %43, align 8
  %44 = call i8* @hwsq_reg(i32 1049088)
  %45 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %46 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 19
  store i8* %44, i8** %47, align 8
  %48 = call i8* @hwsq_reg(i32 1049104)
  %49 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %50 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 18
  store i8* %48, i8** %51, align 8
  %52 = call i8* @hwsq_reg(i32 1049116)
  %53 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %54 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 17
  store i8* %52, i8** %55, align 8
  %56 = call i8* @hwsq_reg(i32 1049296)
  %57 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %58 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 16
  store i8* %56, i8** %59, align 8
  %60 = call i8* @hwsq_reg(i32 1049300)
  %61 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %62 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 15
  store i8* %60, i8** %63, align 8
  %64 = call i8* @hwsq_reg(i32 1049308)
  %65 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %66 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 14
  store i8* %64, i8** %67, align 8
  %68 = call i8* @hwsq_reg(i32 1049916)
  %69 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %70 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 13
  store i8* %68, i8** %71, align 8
  %72 = call i8* @hwsq_reg(i32 1050016)
  %73 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %74 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 12
  store i8* %72, i8** %75, align 8
  %76 = call i8* @hwsq_reg(i32 1050020)
  %77 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %78 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 11
  store i8* %76, i8** %79, align 8
  %80 = call i8* @hwsq_reg(i32 1050384)
  %81 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %82 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 10
  store i8* %80, i8** %83, align 8
  %84 = call i8* @hwsq_reg(i32 1050388)
  %85 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %86 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 9
  store i8* %84, i8** %87, align 8
  %88 = call i8* @hwsq_reg(i32 1050392)
  %89 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %90 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 8
  store i8* %88, i8** %91, align 8
  %92 = call i8* @hwsq_reg(i32 1050396)
  %93 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %94 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 7
  store i8* %92, i8** %95, align 8
  %96 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %97 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @hwsq_stride(i32 1052064, i32 4, i32 %99)
  %101 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %102 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 6
  store i32 %100, i32* %103, align 8
  %104 = call i8* @hwsq_reg(i32 1052192)
  %105 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %106 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 5
  store i8* %104, i8** %107, align 8
  %108 = call i8* @hwsq_reg(i32 1052196)
  %109 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %110 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 4
  store i8* %108, i8** %111, align 8
  %112 = call i8* @hwsq_reg(i32 6361600)
  %113 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %114 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 3
  store i8* %112, i8** %115, align 8
  store i32 0, i32* %8, align 4
  br label %116

116:                                              ; preds = %131, %27
  %117 = load i32, i32* %8, align 4
  %118 = icmp slt i32 %117, 9
  br i1 %118, label %119, label %134

119:                                              ; preds = %116
  %120 = load i32, i32* %8, align 4
  %121 = mul nsw i32 %120, 4
  %122 = add nsw i32 1049120, %121
  %123 = call i8* @hwsq_reg(i32 %122)
  %124 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %125 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 2
  %127 = load i8**, i8*** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  store i8* %123, i8** %130, align 8
  br label %131

131:                                              ; preds = %119
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %8, align 4
  br label %116

134:                                              ; preds = %116
  %135 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %136 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp sgt i32 %138, 1
  br i1 %139, label %140, label %165

140:                                              ; preds = %134
  %141 = call i8* @hwsq_reg2(i32 1049280, i32 1049288)
  %142 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %143 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  %145 = load i8**, i8*** %144, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 0
  store i8* %141, i8** %146, align 8
  %147 = call i8* @hwsq_reg2(i32 1049284, i32 1049292)
  %148 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %149 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 1
  %151 = load i8**, i8*** %150, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i64 1
  store i8* %147, i8** %152, align 8
  %153 = call i8* @hwsq_reg2(i32 1049312, i32 1049320)
  %154 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %155 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 1
  %157 = load i8**, i8*** %156, align 8
  %158 = getelementptr inbounds i8*, i8** %157, i64 2
  store i8* %153, i8** %158, align 8
  %159 = call i8* @hwsq_reg2(i32 1049316, i32 1049324)
  %160 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %161 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 1
  %163 = load i8**, i8*** %162, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i64 3
  store i8* %159, i8** %164, align 8
  br label %190

165:                                              ; preds = %134
  %166 = call i8* @hwsq_reg(i32 1049280)
  %167 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %168 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 1
  %170 = load i8**, i8*** %169, align 8
  %171 = getelementptr inbounds i8*, i8** %170, i64 0
  store i8* %166, i8** %171, align 8
  %172 = call i8* @hwsq_reg(i32 1049284)
  %173 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %174 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 1
  %176 = load i8**, i8*** %175, align 8
  %177 = getelementptr inbounds i8*, i8** %176, i64 1
  store i8* %172, i8** %177, align 8
  %178 = call i8* @hwsq_reg(i32 1049312)
  %179 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %180 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 1
  %182 = load i8**, i8*** %181, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i64 2
  store i8* %178, i8** %183, align 8
  %184 = call i8* @hwsq_reg(i32 1049316)
  %185 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %186 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 1
  %188 = load i8**, i8*** %187, align 8
  %189 = getelementptr inbounds i8*, i8** %188, i64 3
  store i8* %184, i8** %189, align 8
  br label %190

190:                                              ; preds = %165, %140
  %191 = call i8* @hwsq_reg(i32 57604)
  %192 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %193 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 0
  %195 = load i8**, i8*** %194, align 8
  %196 = getelementptr inbounds i8*, i8** %195, i64 0
  store i8* %191, i8** %196, align 8
  %197 = call i8* @hwsq_reg(i32 57608)
  %198 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %199 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 0
  %201 = load i8**, i8*** %200, align 8
  %202 = getelementptr inbounds i8*, i8** %201, i64 1
  store i8* %197, i8** %202, align 8
  %203 = call i8* @hwsq_reg(i32 57632)
  %204 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %205 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 0
  %207 = load i8**, i8*** %206, align 8
  %208 = getelementptr inbounds i8*, i8** %207, i64 2
  store i8* %203, i8** %208, align 8
  %209 = call i8* @hwsq_reg(i32 57636)
  %210 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %211 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  %213 = load i8**, i8*** %212, align 8
  %214 = getelementptr inbounds i8*, i8** %213, i64 3
  store i8* %209, i8** %214, align 8
  store i32 0, i32* %3, align 4
  br label %215

215:                                              ; preds = %190, %25, %12
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

declare dso_local %struct.nv50_ram* @kzalloc(i32, i32) #1

declare dso_local i32 @nv50_ram_ctor(i32*, %struct.nvkm_fb*, %struct.nvkm_ram*) #1

declare dso_local i8* @hwsq_reg(i32) #1

declare dso_local i32 @hwsq_stride(i32, i32, i32) #1

declare dso_local i8* @hwsq_reg2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
