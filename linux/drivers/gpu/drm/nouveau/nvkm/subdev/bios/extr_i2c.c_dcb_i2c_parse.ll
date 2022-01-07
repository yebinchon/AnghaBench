; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_i2c.c_dcb_i2c_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_i2c.c_dcb_i2c_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32, %struct.nvkm_subdev }
%struct.nvkm_subdev = type { i32 }
%struct.dcb_i2c_entry = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"unknown i2c type %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dcb_i2c_parse(%struct.nvkm_bios* %0, i32 %1, %struct.dcb_i2c_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_bios*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dcb_i2c_entry*, align 8
  %8 = alloca %struct.nvkm_subdev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dcb_i2c_entry* %2, %struct.dcb_i2c_entry** %7, align 8
  %15 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %16 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %15, i32 0, i32 1
  store %struct.nvkm_subdev* %16, %struct.nvkm_subdev** %8, align 8
  %17 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @dcb_i2c_entry(%struct.nvkm_bios* %17, i32 %18, i32* %9, i32* %10)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %199

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  %24 = icmp sge i32 %23, 65
  br i1 %24, label %25, label %47

25:                                               ; preds = %22
  %26 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @nvbios_rd32(%struct.nvkm_bios* %26, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = ashr i32 %29, 0
  %31 = and i32 %30, 31
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %12, align 4
  %33 = ashr i32 %32, 5
  %34 = and i32 %33, 31
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp eq i32 %35, 31
  br i1 %36, label %37, label %43

37:                                               ; preds = %25
  %38 = load i32, i32* %14, align 4
  %39 = icmp eq i32 %38, 31
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %42 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %41, i32 0, i32 0
  store i32 128, i32* %42, align 4
  br label %46

43:                                               ; preds = %37, %25
  %44 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %45 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %44, i32 0, i32 0
  store i32 129, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %40
  br label %74

47:                                               ; preds = %22
  %48 = load i32, i32* %9, align 4
  %49 = icmp sge i32 %48, 48
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 3
  %54 = call i32 @nvbios_rd08(%struct.nvkm_bios* %51, i32 %53)
  %55 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %56 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %73

57:                                               ; preds = %47
  %58 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 3
  %61 = call i32 @nvbios_rd08(%struct.nvkm_bios* %58, i32 %60)
  %62 = and i32 %61, 7
  %63 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %64 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %66 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 7
  br i1 %68, label %69, label %72

69:                                               ; preds = %57
  %70 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %71 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %70, i32 0, i32 0
  store i32 128, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %57
  br label %73

73:                                               ; preds = %72, %50
  br label %74

74:                                               ; preds = %73, %46
  %75 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %76 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %75, i32 0, i32 1
  store i32 128, i32* %76, align 4
  %77 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %78 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %77, i32 0, i32 2
  store i32 128, i32* %78, align 4
  %79 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %80 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %79, i32 0, i32 3
  store i32 128, i32* %80, align 4
  %81 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %82 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %81, i32 0, i32 4
  store i32 128, i32* %82, align 4
  %83 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %84 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  switch i32 %85, label %191 [
    i32 133, label %86
    i32 132, label %99
    i32 130, label %106
    i32 131, label %129
    i32 129, label %150
    i32 128, label %190
  ]

86:                                               ; preds = %74
  %87 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 0
  %90 = call i32 @nvbios_rd08(%struct.nvkm_bios* %87, i32 %89)
  %91 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %92 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  %96 = call i32 @nvbios_rd08(%struct.nvkm_bios* %93, i32 %95)
  %97 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %98 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  store i32 0, i32* %4, align 4
  br label %294

99:                                               ; preds = %74
  %100 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  %103 = call i32 @nvbios_rd08(%struct.nvkm_bios* %100, i32 %102)
  %104 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %105 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  store i32 0, i32* %4, align 4
  br label %294

106:                                              ; preds = %74
  %107 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 0
  %110 = call i32 @nvbios_rd08(%struct.nvkm_bios* %107, i32 %109)
  %111 = and i32 %110, 15
  %112 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %113 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  %117 = call i32 @nvbios_rd08(%struct.nvkm_bios* %114, i32 %116)
  %118 = and i32 %117, 1
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %106
  %121 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 1
  %124 = call i32 @nvbios_rd08(%struct.nvkm_bios* %121, i32 %123)
  %125 = ashr i32 %124, 1
  %126 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %127 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 4
  br label %128

128:                                              ; preds = %120, %106
  store i32 0, i32* %4, align 4
  br label %294

129:                                              ; preds = %74
  %130 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, 0
  %133 = call i32 @nvbios_rd08(%struct.nvkm_bios* %130, i32 %132)
  %134 = and i32 %133, 15
  %135 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %136 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %135, i32 0, i32 4
  store i32 %134, i32* %136, align 4
  %137 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %138 = load i32, i32* %11, align 4
  %139 = add nsw i32 %138, 1
  %140 = call i32 @nvbios_rd08(%struct.nvkm_bios* %137, i32 %139)
  %141 = and i32 %140, 1
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %129
  %144 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %145 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %148 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %147, i32 0, i32 3
  store i32 %146, i32* %148, align 4
  br label %149

149:                                              ; preds = %143, %129
  store i32 0, i32* %4, align 4
  br label %294

150:                                              ; preds = %74
  %151 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %152 = load i32, i32* %11, align 4
  %153 = add nsw i32 %152, 0
  %154 = sext i32 %153 to i64
  %155 = call i32 @nvbios_rd16(%struct.nvkm_bios* %151, i64 %154)
  %156 = and i32 %155, 31
  %157 = ashr i32 %156, 0
  %158 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %159 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  %160 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %161 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %162, 31
  br i1 %163, label %164, label %167

164:                                              ; preds = %150
  %165 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %166 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %165, i32 0, i32 1
  store i32 128, i32* %166, align 4
  br label %167

167:                                              ; preds = %164, %150
  %168 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %169 = load i32, i32* %11, align 4
  %170 = add nsw i32 %169, 0
  %171 = sext i32 %170 to i64
  %172 = call i32 @nvbios_rd16(%struct.nvkm_bios* %168, i64 %171)
  %173 = and i32 %172, 992
  %174 = ashr i32 %173, 5
  %175 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %176 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %175, i32 0, i32 4
  store i32 %174, i32* %176, align 4
  %177 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %178 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %179, 31
  br i1 %180, label %181, label %184

181:                                              ; preds = %167
  %182 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %183 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %182, i32 0, i32 4
  store i32 128, i32* %183, align 4
  br label %184

184:                                              ; preds = %181, %167
  %185 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %186 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %189 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %188, i32 0, i32 3
  store i32 %187, i32* %189, align 4
  store i32 0, i32* %4, align 4
  br label %294

190:                                              ; preds = %74
  store i32 0, i32* %4, align 4
  br label %294

191:                                              ; preds = %74
  %192 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %193 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %194 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @nvkm_warn(%struct.nvkm_subdev* %192, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %195)
  %197 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %198 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %197, i32 0, i32 0
  store i32 128, i32* %198, align 4
  store i32 0, i32* %4, align 4
  br label %294

199:                                              ; preds = %3
  %200 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %201 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %291

204:                                              ; preds = %199
  %205 = load i32, i32* %6, align 4
  %206 = icmp slt i32 %205, 2
  br i1 %206, label %207, label %291

207:                                              ; preds = %204
  %208 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %209 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %210 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %211, 5
  %213 = call i32 @nvbios_rd08(%struct.nvkm_bios* %208, i32 %212)
  %214 = icmp slt i32 %213, 4
  br i1 %214, label %215, label %216

215:                                              ; preds = %207
  store i32 72, i32* %11, align 4
  br label %221

216:                                              ; preds = %207
  %217 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %218 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = add nsw i32 54, %219
  store i32 %220, i32* %11, align 4
  br label %221

221:                                              ; preds = %216, %215
  %222 = load i32, i32* %6, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %253

224:                                              ; preds = %221
  %225 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %226 = load i32, i32* %11, align 4
  %227 = add nsw i32 %226, 4
  %228 = call i32 @nvbios_rd08(%struct.nvkm_bios* %225, i32 %227)
  %229 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %230 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %229, i32 0, i32 1
  store i32 %228, i32* %230, align 4
  %231 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %232 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %238, label %235

235:                                              ; preds = %224
  %236 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %237 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %236, i32 0, i32 1
  store i32 63, i32* %237, align 4
  br label %238

238:                                              ; preds = %235, %224
  %239 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %240 = load i32, i32* %11, align 4
  %241 = add nsw i32 %240, 5
  %242 = call i32 @nvbios_rd08(%struct.nvkm_bios* %239, i32 %241)
  %243 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %244 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %243, i32 0, i32 2
  store i32 %242, i32* %244, align 4
  %245 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %246 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %252, label %249

249:                                              ; preds = %238
  %250 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %251 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %250, i32 0, i32 2
  store i32 62, i32* %251, align 4
  br label %252

252:                                              ; preds = %249, %238
  br label %286

253:                                              ; preds = %221
  %254 = load i32, i32* %6, align 4
  %255 = icmp eq i32 %254, 1
  br i1 %255, label %256, label %285

256:                                              ; preds = %253
  %257 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %258 = load i32, i32* %11, align 4
  %259 = add nsw i32 %258, 6
  %260 = call i32 @nvbios_rd08(%struct.nvkm_bios* %257, i32 %259)
  %261 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %262 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %261, i32 0, i32 1
  store i32 %260, i32* %262, align 4
  %263 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %264 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %270, label %267

267:                                              ; preds = %256
  %268 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %269 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %268, i32 0, i32 1
  store i32 55, i32* %269, align 4
  br label %270

270:                                              ; preds = %267, %256
  %271 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %272 = load i32, i32* %11, align 4
  %273 = add nsw i32 %272, 7
  %274 = call i32 @nvbios_rd08(%struct.nvkm_bios* %271, i32 %273)
  %275 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %276 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %275, i32 0, i32 2
  store i32 %274, i32* %276, align 4
  %277 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %278 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %284, label %281

281:                                              ; preds = %270
  %282 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %283 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %282, i32 0, i32 2
  store i32 54, i32* %283, align 4
  br label %284

284:                                              ; preds = %281, %270
  br label %285

285:                                              ; preds = %284, %253
  br label %286

286:                                              ; preds = %285, %252
  %287 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %288 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %287, i32 0, i32 0
  store i32 133, i32* %288, align 4
  %289 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %290 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %289, i32 0, i32 3
  store i32 128, i32* %290, align 4
  store i32 0, i32* %4, align 4
  br label %294

291:                                              ; preds = %204, %199
  %292 = load i32, i32* @ENOENT, align 4
  %293 = sub nsw i32 0, %292
  store i32 %293, i32* %4, align 4
  br label %294

294:                                              ; preds = %291, %286, %191, %190, %184, %149, %128, %99, %86
  %295 = load i32, i32* %4, align 4
  ret i32 %295
}

declare dso_local i32 @dcb_i2c_entry(%struct.nvkm_bios*, i32, i32*, i32*) #1

declare dso_local i32 @nvbios_rd32(%struct.nvkm_bios*, i32) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i32) #1

declare dso_local i32 @nvbios_rd16(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @nvkm_warn(%struct.nvkm_subdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
