; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_init_cp_pg_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_init_cp_pg_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_9__*, i64, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32* }
%struct.gfx_firmware_header_v1_0 = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@CHIP_KAVERI = common dso_local global i64 0, align 8
@CP_ME_TABLE_SIZE = common dso_local global i32 0, align 4
@CP_ME_TABLE_OFFSET = common dso_local global i32 0, align 4
@CP_MEC_TABLE_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cik_init_cp_pg_table(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.gfx_firmware_header_v1_0*, align 8
  %12 = alloca i32*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  store i32 4, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CHIP_KAVERI, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 5, i32* %6, align 4
  br label %19

19:                                               ; preds = %18, %1
  %20 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 7
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %308

26:                                               ; preds = %19
  %27 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 7
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %3, align 8
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %305, %26
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %308

35:                                               ; preds = %31
  %36 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %37 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %228

40:                                               ; preds = %35
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %72

43:                                               ; preds = %40
  %44 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %45 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %44, i32 0, i32 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %50, %struct.gfx_firmware_header_v1_0** %11, align 8
  %51 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %52 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %51, i32 0, i32 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %11, align 8
  %57 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le32_to_cpu(i32 %59)
  %61 = add nsw i32 %55, %60
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i32*
  store i32* %63, i32** %10, align 8
  %64 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %11, align 8
  %65 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @le32_to_cpu(i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %11, align 8
  %69 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le32_to_cpu(i32 %70)
  store i32 %71, i32* %9, align 4
  br label %200

72:                                               ; preds = %40
  %73 = load i32, i32* %4, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %104

75:                                               ; preds = %72
  %76 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %77 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %76, i32 0, i32 3
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %82, %struct.gfx_firmware_header_v1_0** %11, align 8
  %83 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %84 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %83, i32 0, i32 3
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %11, align 8
  %89 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @le32_to_cpu(i32 %91)
  %93 = add nsw i32 %87, %92
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to i32*
  store i32* %95, i32** %10, align 8
  %96 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %11, align 8
  %97 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @le32_to_cpu(i32 %98)
  store i32 %99, i32* %8, align 4
  %100 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %11, align 8
  %101 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @le32_to_cpu(i32 %102)
  store i32 %103, i32* %9, align 4
  br label %199

104:                                              ; preds = %72
  %105 = load i32, i32* %4, align 4
  %106 = icmp eq i32 %105, 2
  br i1 %106, label %107, label %136

107:                                              ; preds = %104
  %108 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %109 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %108, i32 0, i32 2
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %114, %struct.gfx_firmware_header_v1_0** %11, align 8
  %115 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %116 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %115, i32 0, i32 2
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %11, align 8
  %121 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @le32_to_cpu(i32 %123)
  %125 = add nsw i32 %119, %124
  %126 = sext i32 %125 to i64
  %127 = inttoptr i64 %126 to i32*
  store i32* %127, i32** %10, align 8
  %128 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %11, align 8
  %129 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @le32_to_cpu(i32 %130)
  store i32 %131, i32* %8, align 4
  %132 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %11, align 8
  %133 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @le32_to_cpu(i32 %134)
  store i32 %135, i32* %9, align 4
  br label %198

136:                                              ; preds = %104
  %137 = load i32, i32* %4, align 4
  %138 = icmp eq i32 %137, 3
  br i1 %138, label %139, label %168

139:                                              ; preds = %136
  %140 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %141 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %140, i32 0, i32 1
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = inttoptr i64 %145 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %146, %struct.gfx_firmware_header_v1_0** %11, align 8
  %147 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %148 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %147, i32 0, i32 1
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %11, align 8
  %153 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @le32_to_cpu(i32 %155)
  %157 = add nsw i32 %151, %156
  %158 = sext i32 %157 to i64
  %159 = inttoptr i64 %158 to i32*
  store i32* %159, i32** %10, align 8
  %160 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %11, align 8
  %161 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @le32_to_cpu(i32 %162)
  store i32 %163, i32* %8, align 4
  %164 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %11, align 8
  %165 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @le32_to_cpu(i32 %166)
  store i32 %167, i32* %9, align 4
  br label %197

168:                                              ; preds = %136
  %169 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %170 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %169, i32 0, i32 5
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = inttoptr i64 %174 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %175, %struct.gfx_firmware_header_v1_0** %11, align 8
  %176 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %177 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %176, i32 0, i32 5
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %11, align 8
  %182 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @le32_to_cpu(i32 %184)
  %186 = add nsw i32 %180, %185
  %187 = sext i32 %186 to i64
  %188 = inttoptr i64 %187 to i32*
  store i32* %188, i32** %10, align 8
  %189 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %11, align 8
  %190 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @le32_to_cpu(i32 %191)
  store i32 %192, i32* %8, align 4
  %193 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %11, align 8
  %194 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @le32_to_cpu(i32 %195)
  store i32 %196, i32* %9, align 4
  br label %197

197:                                              ; preds = %168, %139
  br label %198

198:                                              ; preds = %197, %107
  br label %199

199:                                              ; preds = %198, %75
  br label %200

200:                                              ; preds = %199, %43
  store i32 0, i32* %5, align 4
  br label %201

201:                                              ; preds = %221, %200
  %202 = load i32, i32* %5, align 4
  %203 = load i32, i32* %9, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %224

205:                                              ; preds = %201
  %206 = load i32*, i32** %10, align 8
  %207 = load i32, i32* %8, align 4
  %208 = load i32, i32* %5, align 4
  %209 = add nsw i32 %207, %208
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %206, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @le32_to_cpu(i32 %212)
  %214 = call i32 @cpu_to_le32(i32 %213)
  %215 = load i32*, i32** %3, align 8
  %216 = load i32, i32* %7, align 4
  %217 = load i32, i32* %5, align 4
  %218 = add nsw i32 %216, %217
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %215, i64 %219
  store volatile i32 %214, i32* %220, align 4
  br label %221

221:                                              ; preds = %205
  %222 = load i32, i32* %5, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %5, align 4
  br label %201

224:                                              ; preds = %201
  %225 = load i32, i32* %9, align 4
  %226 = load i32, i32* %7, align 4
  %227 = add nsw i32 %226, %225
  store i32 %227, i32* %7, align 4
  br label %304

228:                                              ; preds = %35
  %229 = load i32, i32* @CP_ME_TABLE_SIZE, align 4
  store i32 %229, i32* %9, align 4
  %230 = load i32, i32* %4, align 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %241

232:                                              ; preds = %228
  %233 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %234 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %233, i32 0, i32 4
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = sext i32 %237 to i64
  %239 = inttoptr i64 %238 to i32*
  store i32* %239, i32** %12, align 8
  %240 = load i32, i32* @CP_ME_TABLE_OFFSET, align 4
  store i32 %240, i32* %8, align 4
  br label %276

241:                                              ; preds = %228
  %242 = load i32, i32* %4, align 4
  %243 = icmp eq i32 %242, 1
  br i1 %243, label %244, label %253

244:                                              ; preds = %241
  %245 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %246 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %245, i32 0, i32 3
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = sext i32 %249 to i64
  %251 = inttoptr i64 %250 to i32*
  store i32* %251, i32** %12, align 8
  %252 = load i32, i32* @CP_ME_TABLE_OFFSET, align 4
  store i32 %252, i32* %8, align 4
  br label %275

253:                                              ; preds = %241
  %254 = load i32, i32* %4, align 4
  %255 = icmp eq i32 %254, 2
  br i1 %255, label %256, label %265

256:                                              ; preds = %253
  %257 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %258 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %257, i32 0, i32 2
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = sext i32 %261 to i64
  %263 = inttoptr i64 %262 to i32*
  store i32* %263, i32** %12, align 8
  %264 = load i32, i32* @CP_ME_TABLE_OFFSET, align 4
  store i32 %264, i32* %8, align 4
  br label %274

265:                                              ; preds = %253
  %266 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %267 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %266, i32 0, i32 1
  %268 = load %struct.TYPE_14__*, %struct.TYPE_14__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = sext i32 %270 to i64
  %272 = inttoptr i64 %271 to i32*
  store i32* %272, i32** %12, align 8
  %273 = load i32, i32* @CP_MEC_TABLE_OFFSET, align 4
  store i32 %273, i32* %8, align 4
  br label %274

274:                                              ; preds = %265, %256
  br label %275

275:                                              ; preds = %274, %244
  br label %276

276:                                              ; preds = %275, %232
  store i32 0, i32* %5, align 4
  br label %277

277:                                              ; preds = %297, %276
  %278 = load i32, i32* %5, align 4
  %279 = load i32, i32* %9, align 4
  %280 = icmp slt i32 %278, %279
  br i1 %280, label %281, label %300

281:                                              ; preds = %277
  %282 = load i32*, i32** %12, align 8
  %283 = load i32, i32* %8, align 4
  %284 = load i32, i32* %5, align 4
  %285 = add nsw i32 %283, %284
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %282, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @be32_to_cpu(i32 %288)
  %290 = call i32 @cpu_to_le32(i32 %289)
  %291 = load i32*, i32** %3, align 8
  %292 = load i32, i32* %7, align 4
  %293 = load i32, i32* %5, align 4
  %294 = add nsw i32 %292, %293
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %291, i64 %295
  store volatile i32 %290, i32* %296, align 4
  br label %297

297:                                              ; preds = %281
  %298 = load i32, i32* %5, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %5, align 4
  br label %277

300:                                              ; preds = %277
  %301 = load i32, i32* %9, align 4
  %302 = load i32, i32* %7, align 4
  %303 = add nsw i32 %302, %301
  store i32 %303, i32* %7, align 4
  br label %304

304:                                              ; preds = %300, %224
  br label %305

305:                                              ; preds = %304
  %306 = load i32, i32* %4, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %4, align 4
  br label %31

308:                                              ; preds = %25, %31
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
