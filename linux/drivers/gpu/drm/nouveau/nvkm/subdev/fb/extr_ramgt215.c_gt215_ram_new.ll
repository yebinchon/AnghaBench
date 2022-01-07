; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgt215.c_gt215_ram_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgt215.c_gt215_ram_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fb = type { i32 }
%struct.nvkm_ram = type { i32, i32 }
%struct.gt215_ram = type { %struct.TYPE_2__, %struct.nvkm_ram }
%struct.TYPE_2__ = type { i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gt215_ram_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gt215_ram_new(%struct.nvkm_fb* %0, %struct.nvkm_ram** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_fb*, align 8
  %5 = alloca %struct.nvkm_ram**, align 8
  %6 = alloca %struct.gt215_ram*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nvkm_fb* %0, %struct.nvkm_fb** %4, align 8
  store %struct.nvkm_ram** %1, %struct.nvkm_ram*** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.gt215_ram* @kzalloc(i32 304, i32 %9)
  store %struct.gt215_ram* %10, %struct.gt215_ram** %6, align 8
  %11 = icmp ne %struct.gt215_ram* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %283

15:                                               ; preds = %2
  %16 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %17 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %16, i32 0, i32 1
  %18 = load %struct.nvkm_ram**, %struct.nvkm_ram*** %5, align 8
  store %struct.nvkm_ram* %17, %struct.nvkm_ram** %18, align 8
  %19 = load %struct.nvkm_fb*, %struct.nvkm_fb** %4, align 8
  %20 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %21 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %20, i32 0, i32 1
  %22 = call i32 @nv50_ram_ctor(i32* @gt215_ram_func, %struct.nvkm_fb* %19, %struct.nvkm_ram* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %283

27:                                               ; preds = %15
  %28 = call i8* @ramfuc_reg(i32 5648)
  %29 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %30 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 36
  store i8* %28, i8** %31, align 8
  %32 = call i8* @ramfuc_reg(i32 5888)
  %33 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %34 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 35
  store i8* %32, i8** %35, align 8
  %36 = call i8* @ramfuc_reg(i32 9476)
  %37 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %38 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 34
  store i8* %36, i8** %39, align 8
  %40 = call i8* @ramfuc_reg(i32 16384)
  %41 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %42 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 33
  store i8* %40, i8** %43, align 8
  %44 = call i8* @ramfuc_reg(i32 16388)
  %45 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %46 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 32
  store i8* %44, i8** %47, align 8
  %48 = call i8* @ramfuc_reg(i32 16408)
  %49 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %50 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 31
  store i8* %48, i8** %51, align 8
  %52 = call i8* @ramfuc_reg(i32 16680)
  %53 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %54 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 30
  store i8* %52, i8** %55, align 8
  %56 = call i8* @ramfuc_reg(i32 16744)
  %57 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %58 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 29
  store i8* %56, i8** %59, align 8
  %60 = call i8* @ramfuc_reg(i32 1048704)
  %61 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %62 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 28
  store i8* %60, i8** %63, align 8
  %64 = call i8* @ramfuc_reg(i32 1049088)
  %65 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %66 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 27
  store i8* %64, i8** %67, align 8
  %68 = call i8* @ramfuc_reg(i32 1049104)
  %69 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %70 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 26
  store i8* %68, i8** %71, align 8
  store i32 0, i32* %8, align 4
  br label %72

72:                                               ; preds = %87, %27
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %73, 9
  br i1 %74, label %75, label %90

75:                                               ; preds = %72
  %76 = load i32, i32* %8, align 4
  %77 = mul nsw i32 %76, 4
  %78 = add nsw i32 1049120, %77
  %79 = call i8* @ramfuc_reg(i32 %78)
  %80 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %81 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 25
  %83 = load i8**, i8*** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  store i8* %79, i8** %86, align 8
  br label %87

87:                                               ; preds = %75
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %72

90:                                               ; preds = %72
  %91 = call i8* @ramfuc_reg(i32 1049188)
  %92 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %93 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 24
  store i8* %91, i8** %94, align 8
  %95 = call i8* @ramfuc_reg(i32 1049296)
  %96 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %97 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 23
  store i8* %95, i8** %98, align 8
  %99 = call i8* @ramfuc_reg(i32 1049300)
  %100 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %101 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 22
  store i8* %99, i8** %102, align 8
  %103 = call i8* @ramfuc_reg(i32 1049308)
  %104 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %105 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 21
  store i8* %103, i8** %106, align 8
  %107 = call i8* @ramfuc_reg(i32 1049916)
  %108 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %109 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 20
  store i8* %107, i8** %110, align 8
  %111 = call i8* @ramfuc_reg(i32 1050016)
  %112 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %113 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 19
  store i8* %111, i8** %114, align 8
  %115 = call i8* @ramfuc_reg(i32 1050020)
  %116 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %117 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 18
  store i8* %115, i8** %118, align 8
  %119 = call i8* @ramfuc_reg(i32 1050368)
  %120 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %121 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 17
  store i8* %119, i8** %122, align 8
  %123 = call i8* @ramfuc_reg(i32 1050388)
  %124 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %125 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 16
  store i8* %123, i8** %126, align 8
  %127 = call i8* @ramfuc_reg(i32 1050392)
  %128 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %129 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 15
  store i8* %127, i8** %130, align 8
  %131 = call i8* @ramfuc_reg(i32 1050396)
  %132 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %133 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 14
  store i8* %131, i8** %134, align 8
  %135 = call i8* @ramfuc_reg(i32 1050400)
  %136 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %137 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 13
  store i8* %135, i8** %138, align 8
  %139 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %140 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i8* @ramfuc_stride(i32 1050464, i32 4, i32 %142)
  %144 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %145 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 12
  store i8* %143, i8** %146, align 8
  %147 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %148 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i8* @ramfuc_stride(i32 1050528, i32 4, i32 %150)
  %152 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %153 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 11
  store i8* %151, i8** %154, align 8
  %155 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %156 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i8* @ramfuc_stride(i32 1050592, i32 4, i32 %158)
  %160 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %161 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 10
  store i8* %159, i8** %162, align 8
  %163 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %164 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i8* @ramfuc_stride(i32 1052064, i32 4, i32 %166)
  %168 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %169 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 9
  store i8* %167, i8** %170, align 8
  %171 = call i8* @ramfuc_reg(i32 1112068)
  %172 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %173 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 8
  store i8* %171, i8** %174, align 8
  %175 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %176 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i8* @ramfuc_stride(i32 1118432, i32 4, i32 %178)
  %180 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %181 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 7
  store i8* %179, i8** %182, align 8
  %183 = call i8* @ramfuc_reg(i32 1118464)
  %184 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %185 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 6
  store i8* %183, i8** %186, align 8
  %187 = call i8* @ramfuc_reg(i32 1118468)
  %188 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %189 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 5
  store i8* %187, i8** %190, align 8
  %191 = call i8* @ramfuc_reg(i32 1118688)
  %192 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %193 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 4
  store i8* %191, i8** %194, align 8
  %195 = call i8* @ramfuc_reg(i32 1119232)
  %196 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %197 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 3
  store i8* %195, i8** %198, align 8
  %199 = call i8* @ramfuc_reg(i32 6361600)
  %200 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %201 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 2
  store i8* %199, i8** %202, align 8
  %203 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %204 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp sgt i32 %206, 1
  br i1 %207, label %208, label %233

208:                                              ; preds = %90
  %209 = call i8* @ramfuc_reg2(i32 1049280, i32 1049288)
  %210 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %211 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 1
  %213 = load i8**, i8*** %212, align 8
  %214 = getelementptr inbounds i8*, i8** %213, i64 0
  store i8* %209, i8** %214, align 8
  %215 = call i8* @ramfuc_reg2(i32 1049284, i32 1049292)
  %216 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %217 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 1
  %219 = load i8**, i8*** %218, align 8
  %220 = getelementptr inbounds i8*, i8** %219, i64 1
  store i8* %215, i8** %220, align 8
  %221 = call i8* @ramfuc_reg2(i32 1049312, i32 1049320)
  %222 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %223 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 1
  %225 = load i8**, i8*** %224, align 8
  %226 = getelementptr inbounds i8*, i8** %225, i64 2
  store i8* %221, i8** %226, align 8
  %227 = call i8* @ramfuc_reg2(i32 1049316, i32 1049324)
  %228 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %229 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 1
  %231 = load i8**, i8*** %230, align 8
  %232 = getelementptr inbounds i8*, i8** %231, i64 3
  store i8* %227, i8** %232, align 8
  br label %258

233:                                              ; preds = %90
  %234 = call i8* @ramfuc_reg(i32 1049280)
  %235 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %236 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 1
  %238 = load i8**, i8*** %237, align 8
  %239 = getelementptr inbounds i8*, i8** %238, i64 0
  store i8* %234, i8** %239, align 8
  %240 = call i8* @ramfuc_reg(i32 1049284)
  %241 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %242 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 1
  %244 = load i8**, i8*** %243, align 8
  %245 = getelementptr inbounds i8*, i8** %244, i64 1
  store i8* %240, i8** %245, align 8
  %246 = call i8* @ramfuc_reg(i32 1049312)
  %247 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %248 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 1
  %250 = load i8**, i8*** %249, align 8
  %251 = getelementptr inbounds i8*, i8** %250, i64 2
  store i8* %246, i8** %251, align 8
  %252 = call i8* @ramfuc_reg(i32 1049316)
  %253 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %254 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 1
  %256 = load i8**, i8*** %255, align 8
  %257 = getelementptr inbounds i8*, i8** %256, i64 3
  store i8* %252, i8** %257, align 8
  br label %258

258:                                              ; preds = %233, %208
  %259 = call i8* @ramfuc_reg(i32 57604)
  %260 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %261 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i32 0, i32 0
  %263 = load i8**, i8*** %262, align 8
  %264 = getelementptr inbounds i8*, i8** %263, i64 0
  store i8* %259, i8** %264, align 8
  %265 = call i8* @ramfuc_reg(i32 57608)
  %266 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %267 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 0
  %269 = load i8**, i8*** %268, align 8
  %270 = getelementptr inbounds i8*, i8** %269, i64 1
  store i8* %265, i8** %270, align 8
  %271 = call i8* @ramfuc_reg(i32 57632)
  %272 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %273 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i32 0, i32 0
  %275 = load i8**, i8*** %274, align 8
  %276 = getelementptr inbounds i8*, i8** %275, i64 2
  store i8* %271, i8** %276, align 8
  %277 = call i8* @ramfuc_reg(i32 57636)
  %278 = load %struct.gt215_ram*, %struct.gt215_ram** %6, align 8
  %279 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %279, i32 0, i32 0
  %281 = load i8**, i8*** %280, align 8
  %282 = getelementptr inbounds i8*, i8** %281, i64 3
  store i8* %277, i8** %282, align 8
  store i32 0, i32* %3, align 4
  br label %283

283:                                              ; preds = %258, %25, %12
  %284 = load i32, i32* %3, align 4
  ret i32 %284
}

declare dso_local %struct.gt215_ram* @kzalloc(i32, i32) #1

declare dso_local i32 @nv50_ram_ctor(i32*, %struct.nvkm_fb*, %struct.nvkm_ram*) #1

declare dso_local i8* @ramfuc_reg(i32) #1

declare dso_local i8* @ramfuc_stride(i32, i32, i32) #1

declare dso_local i8* @ramfuc_reg2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
