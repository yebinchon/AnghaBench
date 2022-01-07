; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r200.c_r200_packet0_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r200.c_r200_packet0_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.radeon_cs_packet = type { i32 }
%struct.radeon_bo_list = type { i32, i32, i32 }
%struct.r100_cs_track = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__*, i32, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, i8*, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"No reloc for ib[%d]=0x%04X\0A\00", align 1
@RADEON_CS_KEEP_TILING_FLAGS = common dso_local global i32 0, align 4
@RADEON_TILING_MACRO = common dso_local global i32 0, align 4
@R200_TXO_MACRO_TILE = common dso_local global i32 0, align 4
@RADEON_TILING_MICRO = common dso_local global i32 0, align 4
@R200_TXO_MICRO_TILE = common dso_local global i32 0, align 4
@RADEON_COLOR_TILE_ENABLE = common dso_local global i32 0, align 4
@RADEON_COLOR_MICROTILE_ENABLE = common dso_local global i32 0, align 4
@RADEON_COLORPITCH_MASK = common dso_local global i32 0, align 4
@RADEON_DEPTHPITCH_MASK = common dso_local global i32 0, align 4
@RADEON_RB3D_COLOR_FORMAT_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Invalid color buffer format (%d) !\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RADEON_DEPTHXY_OFFSET_ENABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"No support for depth xy offset in kms\0A\00", align 1
@RADEON_Z_ENABLE = common dso_local global i32 0, align 4
@RADEON_TEX_USIZE_MASK = common dso_local global i32 0, align 4
@RADEON_TEX_VSIZE_MASK = common dso_local global i32 0, align 4
@RADEON_TEX_VSIZE_SHIFT = common dso_local global i32 0, align 4
@R200_MAX_MIP_LEVEL_MASK = common dso_local global i32 0, align 4
@R200_MAX_MIP_LEVEL_SHIFT = common dso_local global i32 0, align 4
@R200_TXFORMAT_NON_POWER2 = common dso_local global i32 0, align 4
@RADEON_TXFORMAT_WIDTH_SHIFT = common dso_local global i32 0, align 4
@RADEON_TXFORMAT_WIDTH_MASK = common dso_local global i32 0, align 4
@RADEON_TXFORMAT_HEIGHT_SHIFT = common dso_local global i32 0, align 4
@RADEON_TXFORMAT_HEIGHT_MASK = common dso_local global i32 0, align 4
@R200_TXFORMAT_LOOKUP_DISABLE = common dso_local global i32 0, align 4
@RADEON_TXFORMAT_FORMAT_MASK = common dso_local global i32 0, align 4
@R100_TRACK_COMP_NONE = common dso_local global i8* null, align 8
@R100_TRACK_COMP_DXT1 = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"Forbidden register 0x%04X in cs at %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r200_packet0_check(%struct.radeon_cs_parser* %0, %struct.radeon_cs_packet* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_cs_parser*, align 8
  %7 = alloca %struct.radeon_cs_packet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.radeon_bo_list*, align 8
  %11 = alloca %struct.r100_cs_track*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %6, align 8
  store %struct.radeon_cs_packet* %1, %struct.radeon_cs_packet** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %17, align 4
  %20 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %21 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %12, align 8
  %24 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %25 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.r100_cs_track*
  store %struct.r100_cs_track* %27, %struct.r100_cs_track** %11, align 8
  %28 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %28, i32 %29)
  store i32 %30, i32* %18, align 4
  %31 = load i32, i32* %9, align 4
  switch i32 %31, label %888 [
    i32 140, label %32
    i32 139, label %46
    i32 128, label %46
    i32 134, label %57
    i32 136, label %92
    i32 180, label %131
    i32 179, label %131
    i32 178, label %131
    i32 177, label %131
    i32 176, label %131
    i32 175, label %131
    i32 234, label %214
    i32 228, label %214
    i32 222, label %214
    i32 216, label %214
    i32 210, label %214
    i32 233, label %214
    i32 227, label %214
    i32 221, label %214
    i32 215, label %214
    i32 209, label %214
    i32 232, label %214
    i32 226, label %214
    i32 220, label %214
    i32 214, label %214
    i32 208, label %214
    i32 231, label %214
    i32 225, label %214
    i32 219, label %214
    i32 213, label %214
    i32 207, label %214
    i32 230, label %214
    i32 224, label %214
    i32 218, label %214
    i32 212, label %214
    i32 206, label %214
    i32 229, label %214
    i32 223, label %214
    i32 217, label %214
    i32 211, label %214
    i32 205, label %214
    i32 130, label %278
    i32 135, label %288
    i32 133, label %358
    i32 137, label %367
    i32 131, label %421
    i32 132, label %436
    i32 138, label %459
    i32 129, label %490
    i32 8460, label %494
    i32 162, label %501
    i32 161, label %506
    i32 168, label %513
    i32 167, label %513
    i32 166, label %513
    i32 165, label %513
    i32 164, label %513
    i32 163, label %513
    i32 174, label %543
    i32 173, label %543
    i32 172, label %543
    i32 171, label %543
    i32 170, label %543
    i32 169, label %543
    i32 204, label %558
    i32 203, label %558
    i32 202, label %558
    i32 201, label %558
    i32 200, label %558
    i32 199, label %558
    i32 186, label %610
    i32 185, label %610
    i32 184, label %610
    i32 183, label %610
    i32 182, label %610
    i32 181, label %610
    i32 192, label %614
    i32 191, label %614
    i32 190, label %614
    i32 189, label %614
    i32 188, label %614
    i32 187, label %614
    i32 198, label %658
    i32 197, label %658
    i32 196, label %658
    i32 195, label %658
    i32 194, label %658
    i32 193, label %658
    i32 240, label %836
    i32 239, label %836
    i32 238, label %836
    i32 237, label %836
    i32 236, label %836
    i32 235, label %836
  ]

32:                                               ; preds = %4
  %33 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %34 = call i32 @r100_cs_packet_parse_vline(%struct.radeon_cs_parser* %33)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %42 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %43 = call i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser* %41, %struct.radeon_cs_packet* %42)
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %5, align 4
  br label %895

45:                                               ; preds = %32
  br label %894

46:                                               ; preds = %4, %4
  %47 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %48 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @r100_reloc_pitch_offset(%struct.radeon_cs_parser* %47, %struct.radeon_cs_packet* %48, i32 %49, i32 %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %5, align 4
  br label %895

56:                                               ; preds = %46
  br label %894

57:                                               ; preds = %4
  %58 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %59 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %58, %struct.radeon_bo_list** %10, i32 0)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64)
  %66 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %67 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %68 = call i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser* %66, %struct.radeon_cs_packet* %67)
  %69 = load i32, i32* %14, align 4
  store i32 %69, i32* %5, align 4
  br label %895

70:                                               ; preds = %57
  %71 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %10, align 8
  %72 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %75 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %74, i32 0, i32 10
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 3
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* %18, align 4
  %78 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %79 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %78, i32 0, i32 10
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 4
  %81 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %82 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  %83 = load i32, i32* %18, align 4
  %84 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %10, align 8
  %85 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %83, %86
  %88 = load i32*, i32** %12, align 8
  %89 = load i32, i32* %8, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store volatile i32 %87, i32* %91, align 4
  br label %894

92:                                               ; preds = %4
  %93 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %94 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %93, %struct.radeon_bo_list** %10, i32 0)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %99)
  %101 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %102 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %103 = call i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser* %101, %struct.radeon_cs_packet* %102)
  %104 = load i32, i32* %14, align 4
  store i32 %104, i32* %5, align 4
  br label %895

105:                                              ; preds = %92
  %106 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %10, align 8
  %107 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %110 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %109, i32 0, i32 11
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 3
  store i32 %108, i32* %113, align 4
  %114 = load i32, i32* %18, align 4
  %115 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %116 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %115, i32 0, i32 11
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  store i32 %114, i32* %119, align 4
  %120 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %121 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %120, i32 0, i32 1
  store i32 1, i32* %121, align 4
  %122 = load i32, i32* %18, align 4
  %123 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %10, align 8
  %124 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %122, %125
  %127 = load i32*, i32** %12, align 8
  %128 = load i32, i32* %8, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store volatile i32 %126, i32* %130, align 4
  br label %894

131:                                              ; preds = %4, %4, %4, %4, %4, %4
  %132 = load i32, i32* %9, align 4
  %133 = sub i32 %132, 180
  %134 = udiv i32 %133, 24
  store i32 %134, i32* %15, align 4
  %135 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %136 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %135, %struct.radeon_bo_list** %10, i32 0)
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %14, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %131
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* %9, align 4
  %142 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %140, i32 %141)
  %143 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %144 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %145 = call i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser* %143, %struct.radeon_cs_packet* %144)
  %146 = load i32, i32* %14, align 4
  store i32 %146, i32* %5, align 4
  br label %895

147:                                              ; preds = %131
  %148 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %149 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @RADEON_CS_KEEP_TILING_FLAGS, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %191, label %154

154:                                              ; preds = %147
  %155 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %10, align 8
  %156 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @RADEON_TILING_MACRO, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %154
  %162 = load i32, i32* @R200_TXO_MACRO_TILE, align 4
  %163 = load i32, i32* %17, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %17, align 4
  br label %165

165:                                              ; preds = %161, %154
  %166 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %10, align 8
  %167 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @RADEON_TILING_MICRO, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %165
  %173 = load i32, i32* @R200_TXO_MICRO_TILE, align 4
  %174 = load i32, i32* %17, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %17, align 4
  br label %176

176:                                              ; preds = %172, %165
  %177 = load i32, i32* %18, align 4
  %178 = and i32 %177, -29
  store i32 %178, i32* %13, align 4
  %179 = load i32, i32* %17, align 4
  %180 = load i32, i32* %13, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %13, align 4
  %182 = load i32, i32* %13, align 4
  %183 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %10, align 8
  %184 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %182, %185
  %187 = load i32*, i32** %12, align 8
  %188 = load i32, i32* %8, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  store volatile i32 %186, i32* %190, align 4
  br label %201

191:                                              ; preds = %147
  %192 = load i32, i32* %18, align 4
  %193 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %10, align 8
  %194 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %192, %195
  %197 = load i32*, i32** %12, align 8
  %198 = load i32, i32* %8, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  store volatile i32 %196, i32* %200, align 4
  br label %201

201:                                              ; preds = %191, %176
  %202 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %10, align 8
  %203 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %206 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %205, i32 0, i32 8
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %206, align 8
  %208 = load i32, i32* %15, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 14
  store i32 %204, i32* %211, align 4
  %212 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %213 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %212, i32 0, i32 2
  store i32 1, i32* %213, align 8
  br label %894

214:                                              ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %215 = load i32, i32* %9, align 4
  %216 = sub i32 %215, 180
  %217 = udiv i32 %216, 24
  store i32 %217, i32* %15, align 4
  %218 = load i32, i32* %9, align 4
  %219 = load i32, i32* %15, align 4
  %220 = mul nsw i32 %219, 24
  %221 = add nsw i32 %220, 180
  %222 = sub i32 %218, %221
  %223 = udiv i32 %222, 4
  store i32 %223, i32* %16, align 4
  %224 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %225 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %224, %struct.radeon_bo_list** %10, i32 0)
  store i32 %225, i32* %14, align 4
  %226 = load i32, i32* %14, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %236

228:                                              ; preds = %214
  %229 = load i32, i32* %8, align 4
  %230 = load i32, i32* %9, align 4
  %231 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %229, i32 %230)
  %232 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %233 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %234 = call i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser* %232, %struct.radeon_cs_packet* %233)
  %235 = load i32, i32* %14, align 4
  store i32 %235, i32* %5, align 4
  br label %895

236:                                              ; preds = %214
  %237 = load i32, i32* %18, align 4
  %238 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %239 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %238, i32 0, i32 8
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %239, align 8
  %241 = load i32, i32* %15, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 11
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** %244, align 8
  %246 = load i32, i32* %16, align 4
  %247 = sub nsw i32 %246, 1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 0
  store i32 %237, i32* %250, align 4
  %251 = load i32, i32* %18, align 4
  %252 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %10, align 8
  %253 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = add nsw i32 %251, %254
  %256 = load i32*, i32** %12, align 8
  %257 = load i32, i32* %8, align 4
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  store volatile i32 %255, i32* %259, align 4
  %260 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %10, align 8
  %261 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %264 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %263, i32 0, i32 8
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %264, align 8
  %266 = load i32, i32* %15, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 11
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** %269, align 8
  %271 = load i32, i32* %16, align 4
  %272 = sub nsw i32 %271, 1
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i32 0, i32 3
  store i32 %262, i32* %275, align 4
  %276 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %277 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %276, i32 0, i32 2
  store i32 1, i32* %277, align 8
  br label %894

278:                                              ; preds = %4
  %279 = load i32, i32* %18, align 4
  %280 = ashr i32 %279, 16
  %281 = and i32 %280, 2047
  %282 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %283 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %282, i32 0, i32 3
  store i32 %281, i32* %283, align 4
  %284 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %285 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %284, i32 0, i32 1
  store i32 1, i32* %285, align 4
  %286 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %287 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %286, i32 0, i32 0
  store i32 1, i32* %287, align 8
  br label %894

288:                                              ; preds = %4
  %289 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %290 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %289, %struct.radeon_bo_list** %10, i32 0)
  store i32 %290, i32* %14, align 4
  %291 = load i32, i32* %14, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %301

293:                                              ; preds = %288
  %294 = load i32, i32* %8, align 4
  %295 = load i32, i32* %9, align 4
  %296 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %294, i32 %295)
  %297 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %298 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %299 = call i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser* %297, %struct.radeon_cs_packet* %298)
  %300 = load i32, i32* %14, align 4
  store i32 %300, i32* %5, align 4
  br label %895

301:                                              ; preds = %288
  %302 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %303 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = load i32, i32* @RADEON_CS_KEEP_TILING_FLAGS, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %341, label %308

308:                                              ; preds = %301
  %309 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %10, align 8
  %310 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* @RADEON_TILING_MACRO, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %319

315:                                              ; preds = %308
  %316 = load i32, i32* @RADEON_COLOR_TILE_ENABLE, align 4
  %317 = load i32, i32* %17, align 4
  %318 = or i32 %317, %316
  store i32 %318, i32* %17, align 4
  br label %319

319:                                              ; preds = %315, %308
  %320 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %10, align 8
  %321 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* @RADEON_TILING_MICRO, align 4
  %324 = and i32 %322, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %330

326:                                              ; preds = %319
  %327 = load i32, i32* @RADEON_COLOR_MICROTILE_ENABLE, align 4
  %328 = load i32, i32* %17, align 4
  %329 = or i32 %328, %327
  store i32 %329, i32* %17, align 4
  br label %330

330:                                              ; preds = %326, %319
  %331 = load i32, i32* %18, align 4
  %332 = and i32 %331, -458753
  store i32 %332, i32* %13, align 4
  %333 = load i32, i32* %17, align 4
  %334 = load i32, i32* %13, align 4
  %335 = or i32 %334, %333
  store i32 %335, i32* %13, align 4
  %336 = load i32, i32* %13, align 4
  %337 = load i32*, i32** %12, align 8
  %338 = load i32, i32* %8, align 4
  %339 = zext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %337, i64 %339
  store volatile i32 %336, i32* %340, align 4
  br label %347

341:                                              ; preds = %301
  %342 = load i32, i32* %18, align 4
  %343 = load i32*, i32** %12, align 8
  %344 = load i32, i32* %8, align 4
  %345 = zext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %343, i64 %345
  store volatile i32 %342, i32* %346, align 4
  br label %347

347:                                              ; preds = %341, %330
  %348 = load i32, i32* %18, align 4
  %349 = load i32, i32* @RADEON_COLORPITCH_MASK, align 4
  %350 = and i32 %348, %349
  %351 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %352 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %351, i32 0, i32 11
  %353 = load %struct.TYPE_7__*, %struct.TYPE_7__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %353, i64 0
  %355 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %354, i32 0, i32 1
  store i32 %350, i32* %355, align 4
  %356 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %357 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %356, i32 0, i32 1
  store i32 1, i32* %357, align 4
  br label %894

358:                                              ; preds = %4
  %359 = load i32, i32* %18, align 4
  %360 = load i32, i32* @RADEON_DEPTHPITCH_MASK, align 4
  %361 = and i32 %359, %360
  %362 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %363 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %362, i32 0, i32 10
  %364 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %363, i32 0, i32 1
  store i32 %361, i32* %364, align 4
  %365 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %366 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %365, i32 0, i32 0
  store i32 1, i32* %366, align 8
  br label %894

367:                                              ; preds = %4
  %368 = load i32, i32* %18, align 4
  %369 = load i32, i32* @RADEON_RB3D_COLOR_FORMAT_SHIFT, align 4
  %370 = ashr i32 %368, %369
  %371 = and i32 %370, 31
  switch i32 %371, label %390 [
    i32 7, label %372
    i32 8, label %372
    i32 9, label %372
    i32 11, label %372
    i32 12, label %372
    i32 3, label %378
    i32 4, label %378
    i32 15, label %378
    i32 6, label %384
  ]

372:                                              ; preds = %367, %367, %367, %367, %367
  %373 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %374 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %373, i32 0, i32 11
  %375 = load %struct.TYPE_7__*, %struct.TYPE_7__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %375, i64 0
  %377 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %376, i32 0, i32 2
  store i32 1, i32* %377, align 4
  br label %398

378:                                              ; preds = %367, %367, %367
  %379 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %380 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %379, i32 0, i32 11
  %381 = load %struct.TYPE_7__*, %struct.TYPE_7__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %381, i64 0
  %383 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %382, i32 0, i32 2
  store i32 2, i32* %383, align 4
  br label %398

384:                                              ; preds = %367
  %385 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %386 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %385, i32 0, i32 11
  %387 = load %struct.TYPE_7__*, %struct.TYPE_7__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %387, i64 0
  %389 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %388, i32 0, i32 2
  store i32 4, i32* %389, align 4
  br label %398

390:                                              ; preds = %367
  %391 = load i32, i32* %18, align 4
  %392 = load i32, i32* @RADEON_RB3D_COLOR_FORMAT_SHIFT, align 4
  %393 = ashr i32 %391, %392
  %394 = and i32 %393, 31
  %395 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %394)
  %396 = load i32, i32* @EINVAL, align 4
  %397 = sub nsw i32 0, %396
  store i32 %397, i32* %5, align 4
  br label %895

398:                                              ; preds = %384, %378, %372
  %399 = load i32, i32* %18, align 4
  %400 = load i32, i32* @RADEON_DEPTHXY_OFFSET_ENABLE, align 4
  %401 = and i32 %399, %400
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %407

403:                                              ; preds = %398
  %404 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %405 = load i32, i32* @EINVAL, align 4
  %406 = sub nsw i32 0, %405
  store i32 %406, i32* %5, align 4
  br label %895

407:                                              ; preds = %398
  %408 = load i32, i32* %18, align 4
  %409 = load i32, i32* @RADEON_Z_ENABLE, align 4
  %410 = and i32 %408, %409
  %411 = icmp ne i32 %410, 0
  %412 = xor i1 %411, true
  %413 = xor i1 %412, true
  %414 = zext i1 %413 to i32
  %415 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %416 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %415, i32 0, i32 4
  store i32 %414, i32* %416, align 8
  %417 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %418 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %417, i32 0, i32 1
  store i32 1, i32* %418, align 4
  %419 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %420 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %419, i32 0, i32 0
  store i32 1, i32* %420, align 8
  br label %894

421:                                              ; preds = %4
  %422 = load i32, i32* %18, align 4
  %423 = and i32 %422, 15
  switch i32 %423, label %432 [
    i32 0, label %424
    i32 2, label %428
    i32 3, label %428
    i32 4, label %428
    i32 5, label %428
    i32 9, label %428
    i32 11, label %428
  ]

424:                                              ; preds = %421
  %425 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %426 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %425, i32 0, i32 10
  %427 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %426, i32 0, i32 2
  store i32 2, i32* %427, align 4
  br label %433

428:                                              ; preds = %421, %421, %421, %421, %421, %421
  %429 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %430 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %429, i32 0, i32 10
  %431 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %430, i32 0, i32 2
  store i32 4, i32* %431, align 4
  br label %433

432:                                              ; preds = %421
  br label %433

433:                                              ; preds = %432, %428, %424
  %434 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %435 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %434, i32 0, i32 0
  store i32 1, i32* %435, align 8
  br label %894

436:                                              ; preds = %4
  %437 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %438 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %437, %struct.radeon_bo_list** %10, i32 0)
  store i32 %438, i32* %14, align 4
  %439 = load i32, i32* %14, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %449

441:                                              ; preds = %436
  %442 = load i32, i32* %8, align 4
  %443 = load i32, i32* %9, align 4
  %444 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %442, i32 %443)
  %445 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %446 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %447 = call i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser* %445, %struct.radeon_cs_packet* %446)
  %448 = load i32, i32* %14, align 4
  store i32 %448, i32* %5, align 4
  br label %895

449:                                              ; preds = %436
  %450 = load i32, i32* %18, align 4
  %451 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %10, align 8
  %452 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %451, i32 0, i32 1
  %453 = load i32, i32* %452, align 4
  %454 = add nsw i32 %450, %453
  %455 = load i32*, i32** %12, align 8
  %456 = load i32, i32* %8, align 4
  %457 = zext i32 %456 to i64
  %458 = getelementptr inbounds i32, i32* %455, i64 %457
  store volatile i32 %454, i32* %458, align 4
  br label %894

459:                                              ; preds = %4
  %460 = load i32, i32* %18, align 4
  %461 = ashr i32 %460, 4
  store i32 %461, i32* %19, align 4
  store i32 0, i32* %15, align 4
  br label %462

462:                                              ; preds = %484, %459
  %463 = load i32, i32* %15, align 4
  %464 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %465 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %464, i32 0, i32 5
  %466 = load i32, i32* %465, align 4
  %467 = icmp slt i32 %463, %466
  br i1 %467, label %468, label %487

468:                                              ; preds = %462
  %469 = load i32, i32* %19, align 4
  %470 = load i32, i32* %15, align 4
  %471 = shl i32 1, %470
  %472 = and i32 %469, %471
  %473 = icmp ne i32 %472, 0
  %474 = xor i1 %473, true
  %475 = xor i1 %474, true
  %476 = zext i1 %475 to i32
  %477 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %478 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %477, i32 0, i32 8
  %479 = load %struct.TYPE_10__*, %struct.TYPE_10__** %478, align 8
  %480 = load i32, i32* %15, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %479, i64 %481
  %483 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %482, i32 0, i32 0
  store i32 %476, i32* %483, align 8
  br label %484

484:                                              ; preds = %468
  %485 = load i32, i32* %15, align 4
  %486 = add nsw i32 %485, 1
  store i32 %486, i32* %15, align 4
  br label %462

487:                                              ; preds = %462
  %488 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %489 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %488, i32 0, i32 2
  store i32 1, i32* %489, align 8
  br label %894

490:                                              ; preds = %4
  %491 = load i32, i32* %18, align 4
  %492 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %493 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %492, i32 0, i32 6
  store i32 %491, i32* %493, align 8
  br label %894

494:                                              ; preds = %4
  %495 = load i32, i32* %18, align 4
  %496 = sext i32 %495 to i64
  %497 = and i64 %496, 16777215
  %498 = trunc i64 %497 to i32
  %499 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %500 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %499, i32 0, i32 7
  store i32 %498, i32* %500, align 4
  br label %894

501:                                              ; preds = %4
  %502 = load i32, i32* %18, align 4
  %503 = call i32 @r200_get_vtx_size_0(i32 %502)
  %504 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %505 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %504, i32 0, i32 9
  store i32 %503, i32* %505, align 8
  br label %894

506:                                              ; preds = %4
  %507 = load i32, i32* %18, align 4
  %508 = call i32 @r200_get_vtx_size_1(i32 %507)
  %509 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %510 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %509, i32 0, i32 9
  %511 = load i32, i32* %510, align 8
  %512 = add nsw i32 %511, %508
  store i32 %512, i32* %510, align 8
  br label %894

513:                                              ; preds = %4, %4, %4, %4, %4, %4
  %514 = load i32, i32* %9, align 4
  %515 = sub i32 %514, 168
  %516 = udiv i32 %515, 32
  store i32 %516, i32* %15, align 4
  %517 = load i32, i32* %18, align 4
  %518 = load i32, i32* @RADEON_TEX_USIZE_MASK, align 4
  %519 = and i32 %517, %518
  %520 = add nsw i32 %519, 1
  %521 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %522 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %521, i32 0, i32 8
  %523 = load %struct.TYPE_10__*, %struct.TYPE_10__** %522, align 8
  %524 = load i32, i32* %15, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %523, i64 %525
  %527 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %526, i32 0, i32 1
  store i32 %520, i32* %527, align 4
  %528 = load i32, i32* %18, align 4
  %529 = load i32, i32* @RADEON_TEX_VSIZE_MASK, align 4
  %530 = and i32 %528, %529
  %531 = load i32, i32* @RADEON_TEX_VSIZE_SHIFT, align 4
  %532 = ashr i32 %530, %531
  %533 = add nsw i32 %532, 1
  %534 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %535 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %534, i32 0, i32 8
  %536 = load %struct.TYPE_10__*, %struct.TYPE_10__** %535, align 8
  %537 = load i32, i32* %15, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %536, i64 %538
  %540 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %539, i32 0, i32 2
  store i32 %533, i32* %540, align 8
  %541 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %542 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %541, i32 0, i32 2
  store i32 1, i32* %542, align 8
  br label %894

543:                                              ; preds = %4, %4, %4, %4, %4, %4
  %544 = load i32, i32* %9, align 4
  %545 = sub i32 %544, 174
  %546 = udiv i32 %545, 32
  store i32 %546, i32* %15, align 4
  %547 = load i32, i32* %18, align 4
  %548 = add nsw i32 %547, 32
  %549 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %550 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %549, i32 0, i32 8
  %551 = load %struct.TYPE_10__*, %struct.TYPE_10__** %550, align 8
  %552 = load i32, i32* %15, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %551, i64 %553
  %555 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %554, i32 0, i32 13
  store i32 %548, i32* %555, align 8
  %556 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %557 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %556, i32 0, i32 2
  store i32 1, i32* %557, align 8
  br label %894

558:                                              ; preds = %4, %4, %4, %4, %4, %4
  %559 = load i32, i32* %9, align 4
  %560 = sub i32 %559, 204
  %561 = udiv i32 %560, 32
  store i32 %561, i32* %15, align 4
  %562 = load i32, i32* %18, align 4
  %563 = load i32, i32* @R200_MAX_MIP_LEVEL_MASK, align 4
  %564 = and i32 %562, %563
  %565 = load i32, i32* @R200_MAX_MIP_LEVEL_SHIFT, align 4
  %566 = ashr i32 %564, %565
  %567 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %568 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %567, i32 0, i32 8
  %569 = load %struct.TYPE_10__*, %struct.TYPE_10__** %568, align 8
  %570 = load i32, i32* %15, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %569, i64 %571
  %573 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %572, i32 0, i32 3
  store i32 %566, i32* %573, align 4
  %574 = load i32, i32* %18, align 4
  %575 = ashr i32 %574, 23
  %576 = and i32 %575, 7
  store i32 %576, i32* %13, align 4
  %577 = load i32, i32* %13, align 4
  %578 = icmp eq i32 %577, 2
  br i1 %578, label %582, label %579

579:                                              ; preds = %558
  %580 = load i32, i32* %13, align 4
  %581 = icmp eq i32 %580, 6
  br i1 %581, label %582, label %590

582:                                              ; preds = %579, %558
  %583 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %584 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %583, i32 0, i32 8
  %585 = load %struct.TYPE_10__*, %struct.TYPE_10__** %584, align 8
  %586 = load i32, i32* %15, align 4
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %585, i64 %587
  %589 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %588, i32 0, i32 4
  store i32 0, i32* %589, align 8
  br label %590

590:                                              ; preds = %582, %579
  %591 = load i32, i32* %18, align 4
  %592 = ashr i32 %591, 27
  %593 = and i32 %592, 7
  store i32 %593, i32* %13, align 4
  %594 = load i32, i32* %13, align 4
  %595 = icmp eq i32 %594, 2
  br i1 %595, label %599, label %596

596:                                              ; preds = %590
  %597 = load i32, i32* %13, align 4
  %598 = icmp eq i32 %597, 6
  br i1 %598, label %599, label %607

599:                                              ; preds = %596, %590
  %600 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %601 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %600, i32 0, i32 8
  %602 = load %struct.TYPE_10__*, %struct.TYPE_10__** %601, align 8
  %603 = load i32, i32* %15, align 4
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %602, i64 %604
  %606 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %605, i32 0, i32 5
  store i32 0, i32* %606, align 4
  br label %607

607:                                              ; preds = %599, %596
  %608 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %609 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %608, i32 0, i32 2
  store i32 1, i32* %609, align 8
  br label %894

610:                                              ; preds = %4, %4, %4, %4, %4, %4
  %611 = load i32, i32* %9, align 4
  %612 = sub i32 %611, 186
  %613 = udiv i32 %612, 32
  store i32 %613, i32* %15, align 4
  br label %894

614:                                              ; preds = %4, %4, %4, %4, %4, %4
  %615 = load i32, i32* %9, align 4
  %616 = sub i32 %615, 192
  %617 = udiv i32 %616, 32
  store i32 %617, i32* %15, align 4
  %618 = load i32, i32* %18, align 4
  %619 = and i32 %618, 7
  %620 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %621 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %620, i32 0, i32 8
  %622 = load %struct.TYPE_10__*, %struct.TYPE_10__** %621, align 8
  %623 = load i32, i32* %15, align 4
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %622, i64 %624
  %626 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %625, i32 0, i32 6
  store i32 %619, i32* %626, align 8
  %627 = load i32, i32* %18, align 4
  %628 = ashr i32 %627, 16
  %629 = and i32 %628, 3
  store i32 %629, i32* %13, align 4
  %630 = load i32, i32* %13, align 4
  switch i32 %630, label %655 [
    i32 0, label %631
    i32 3, label %631
    i32 4, label %631
    i32 5, label %631
    i32 6, label %631
    i32 7, label %631
    i32 1, label %639
    i32 2, label %647
  ]

631:                                              ; preds = %614, %614, %614, %614, %614, %614
  %632 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %633 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %632, i32 0, i32 8
  %634 = load %struct.TYPE_10__*, %struct.TYPE_10__** %633, align 8
  %635 = load i32, i32* %15, align 4
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %634, i64 %636
  %638 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %637, i32 0, i32 7
  store i32 0, i32* %638, align 4
  br label %655

639:                                              ; preds = %614
  %640 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %641 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %640, i32 0, i32 8
  %642 = load %struct.TYPE_10__*, %struct.TYPE_10__** %641, align 8
  %643 = load i32, i32* %15, align 4
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %642, i64 %644
  %646 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %645, i32 0, i32 7
  store i32 2, i32* %646, align 4
  br label %655

647:                                              ; preds = %614
  %648 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %649 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %648, i32 0, i32 8
  %650 = load %struct.TYPE_10__*, %struct.TYPE_10__** %649, align 8
  %651 = load i32, i32* %15, align 4
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %650, i64 %652
  %654 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %653, i32 0, i32 7
  store i32 1, i32* %654, align 4
  br label %655

655:                                              ; preds = %614, %647, %639, %631
  %656 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %657 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %656, i32 0, i32 2
  store i32 1, i32* %657, align 8
  br label %894

658:                                              ; preds = %4, %4, %4, %4, %4, %4
  %659 = load i32, i32* %9, align 4
  %660 = sub i32 %659, 198
  %661 = udiv i32 %660, 32
  store i32 %661, i32* %15, align 4
  %662 = load i32, i32* %18, align 4
  %663 = load i32, i32* @R200_TXFORMAT_NON_POWER2, align 4
  %664 = and i32 %662, %663
  %665 = icmp ne i32 %664, 0
  br i1 %665, label %666, label %674

666:                                              ; preds = %658
  %667 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %668 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %667, i32 0, i32 8
  %669 = load %struct.TYPE_10__*, %struct.TYPE_10__** %668, align 8
  %670 = load i32, i32* %15, align 4
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %669, i64 %671
  %673 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %672, i32 0, i32 8
  store i32 1, i32* %673, align 8
  br label %708

674:                                              ; preds = %658
  %675 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %676 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %675, i32 0, i32 8
  %677 = load %struct.TYPE_10__*, %struct.TYPE_10__** %676, align 8
  %678 = load i32, i32* %15, align 4
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %677, i64 %679
  %681 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %680, i32 0, i32 8
  store i32 0, i32* %681, align 8
  %682 = load i32, i32* %18, align 4
  %683 = load i32, i32* @RADEON_TXFORMAT_WIDTH_SHIFT, align 4
  %684 = ashr i32 %682, %683
  %685 = load i32, i32* @RADEON_TXFORMAT_WIDTH_MASK, align 4
  %686 = and i32 %684, %685
  %687 = shl i32 1, %686
  %688 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %689 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %688, i32 0, i32 8
  %690 = load %struct.TYPE_10__*, %struct.TYPE_10__** %689, align 8
  %691 = load i32, i32* %15, align 4
  %692 = sext i32 %691 to i64
  %693 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %690, i64 %692
  %694 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %693, i32 0, i32 1
  store i32 %687, i32* %694, align 4
  %695 = load i32, i32* %18, align 4
  %696 = load i32, i32* @RADEON_TXFORMAT_HEIGHT_SHIFT, align 4
  %697 = ashr i32 %695, %696
  %698 = load i32, i32* @RADEON_TXFORMAT_HEIGHT_MASK, align 4
  %699 = and i32 %697, %698
  %700 = shl i32 1, %699
  %701 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %702 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %701, i32 0, i32 8
  %703 = load %struct.TYPE_10__*, %struct.TYPE_10__** %702, align 8
  %704 = load i32, i32* %15, align 4
  %705 = sext i32 %704 to i64
  %706 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %703, i64 %705
  %707 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %706, i32 0, i32 2
  store i32 %700, i32* %707, align 8
  br label %708

708:                                              ; preds = %674, %666
  %709 = load i32, i32* %18, align 4
  %710 = load i32, i32* @R200_TXFORMAT_LOOKUP_DISABLE, align 4
  %711 = and i32 %709, %710
  %712 = icmp ne i32 %711, 0
  br i1 %712, label %713, label %721

713:                                              ; preds = %708
  %714 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %715 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %714, i32 0, i32 8
  %716 = load %struct.TYPE_10__*, %struct.TYPE_10__** %715, align 8
  %717 = load i32, i32* %15, align 4
  %718 = sext i32 %717 to i64
  %719 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %716, i64 %718
  %720 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %719, i32 0, i32 9
  store i32 1, i32* %720, align 4
  br label %721

721:                                              ; preds = %713, %708
  %722 = load i32, i32* %18, align 4
  %723 = load i32, i32* @RADEON_TXFORMAT_FORMAT_MASK, align 4
  %724 = and i32 %722, %723
  switch i32 %724, label %805 [
    i32 149, label %725
    i32 146, label %725
    i32 142, label %725
    i32 159, label %741
    i32 158, label %741
    i32 145, label %741
    i32 157, label %741
    i32 143, label %741
    i32 141, label %741
    i32 148, label %741
    i32 153, label %741
    i32 155, label %741
    i32 156, label %757
    i32 144, label %757
    i32 160, label %757
    i32 154, label %757
    i32 147, label %757
    i32 152, label %773
    i32 151, label %789
    i32 150, label %789
  ]

725:                                              ; preds = %721, %721, %721
  %726 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %727 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %726, i32 0, i32 8
  %728 = load %struct.TYPE_10__*, %struct.TYPE_10__** %727, align 8
  %729 = load i32, i32* %15, align 4
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %728, i64 %730
  %732 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %731, i32 0, i32 10
  store i32 1, i32* %732, align 8
  %733 = load i8*, i8** @R100_TRACK_COMP_NONE, align 8
  %734 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %735 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %734, i32 0, i32 8
  %736 = load %struct.TYPE_10__*, %struct.TYPE_10__** %735, align 8
  %737 = load i32, i32* %15, align 4
  %738 = sext i32 %737 to i64
  %739 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %736, i64 %738
  %740 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %739, i32 0, i32 12
  store i8* %733, i8** %740, align 8
  br label %805

741:                                              ; preds = %721, %721, %721, %721, %721, %721, %721, %721, %721
  %742 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %743 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %742, i32 0, i32 8
  %744 = load %struct.TYPE_10__*, %struct.TYPE_10__** %743, align 8
  %745 = load i32, i32* %15, align 4
  %746 = sext i32 %745 to i64
  %747 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %744, i64 %746
  %748 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %747, i32 0, i32 10
  store i32 2, i32* %748, align 8
  %749 = load i8*, i8** @R100_TRACK_COMP_NONE, align 8
  %750 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %751 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %750, i32 0, i32 8
  %752 = load %struct.TYPE_10__*, %struct.TYPE_10__** %751, align 8
  %753 = load i32, i32* %15, align 4
  %754 = sext i32 %753 to i64
  %755 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %752, i64 %754
  %756 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %755, i32 0, i32 12
  store i8* %749, i8** %756, align 8
  br label %805

757:                                              ; preds = %721, %721, %721, %721, %721
  %758 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %759 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %758, i32 0, i32 8
  %760 = load %struct.TYPE_10__*, %struct.TYPE_10__** %759, align 8
  %761 = load i32, i32* %15, align 4
  %762 = sext i32 %761 to i64
  %763 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %760, i64 %762
  %764 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %763, i32 0, i32 10
  store i32 4, i32* %764, align 8
  %765 = load i8*, i8** @R100_TRACK_COMP_NONE, align 8
  %766 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %767 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %766, i32 0, i32 8
  %768 = load %struct.TYPE_10__*, %struct.TYPE_10__** %767, align 8
  %769 = load i32, i32* %15, align 4
  %770 = sext i32 %769 to i64
  %771 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %768, i64 %770
  %772 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %771, i32 0, i32 12
  store i8* %765, i8** %772, align 8
  br label %805

773:                                              ; preds = %721
  %774 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %775 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %774, i32 0, i32 8
  %776 = load %struct.TYPE_10__*, %struct.TYPE_10__** %775, align 8
  %777 = load i32, i32* %15, align 4
  %778 = sext i32 %777 to i64
  %779 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %776, i64 %778
  %780 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %779, i32 0, i32 10
  store i32 1, i32* %780, align 8
  %781 = load i8*, i8** @R100_TRACK_COMP_DXT1, align 8
  %782 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %783 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %782, i32 0, i32 8
  %784 = load %struct.TYPE_10__*, %struct.TYPE_10__** %783, align 8
  %785 = load i32, i32* %15, align 4
  %786 = sext i32 %785 to i64
  %787 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %784, i64 %786
  %788 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %787, i32 0, i32 12
  store i8* %781, i8** %788, align 8
  br label %805

789:                                              ; preds = %721, %721
  %790 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %791 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %790, i32 0, i32 8
  %792 = load %struct.TYPE_10__*, %struct.TYPE_10__** %791, align 8
  %793 = load i32, i32* %15, align 4
  %794 = sext i32 %793 to i64
  %795 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %792, i64 %794
  %796 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %795, i32 0, i32 10
  store i32 1, i32* %796, align 8
  %797 = load i8*, i8** @R100_TRACK_COMP_DXT1, align 8
  %798 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %799 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %798, i32 0, i32 8
  %800 = load %struct.TYPE_10__*, %struct.TYPE_10__** %799, align 8
  %801 = load i32, i32* %15, align 4
  %802 = sext i32 %801 to i64
  %803 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %800, i64 %802
  %804 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %803, i32 0, i32 12
  store i8* %797, i8** %804, align 8
  br label %805

805:                                              ; preds = %721, %789, %773, %757, %741, %725
  %806 = load i32, i32* %18, align 4
  %807 = ashr i32 %806, 16
  %808 = and i32 %807, 15
  %809 = shl i32 1, %808
  %810 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %811 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %810, i32 0, i32 8
  %812 = load %struct.TYPE_10__*, %struct.TYPE_10__** %811, align 8
  %813 = load i32, i32* %15, align 4
  %814 = sext i32 %813 to i64
  %815 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %812, i64 %814
  %816 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %815, i32 0, i32 11
  %817 = load %struct.TYPE_9__*, %struct.TYPE_9__** %816, align 8
  %818 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %817, i64 4
  %819 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %818, i32 0, i32 1
  store i32 %809, i32* %819, align 4
  %820 = load i32, i32* %18, align 4
  %821 = ashr i32 %820, 20
  %822 = and i32 %821, 15
  %823 = shl i32 1, %822
  %824 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %825 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %824, i32 0, i32 8
  %826 = load %struct.TYPE_10__*, %struct.TYPE_10__** %825, align 8
  %827 = load i32, i32* %15, align 4
  %828 = sext i32 %827 to i64
  %829 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %826, i64 %828
  %830 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %829, i32 0, i32 11
  %831 = load %struct.TYPE_9__*, %struct.TYPE_9__** %830, align 8
  %832 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %831, i64 4
  %833 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %832, i32 0, i32 2
  store i32 %823, i32* %833, align 4
  %834 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %835 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %834, i32 0, i32 2
  store i32 1, i32* %835, align 8
  br label %894

836:                                              ; preds = %4, %4, %4, %4, %4, %4
  %837 = load i32, i32* %18, align 4
  store i32 %837, i32* %13, align 4
  %838 = load i32, i32* %9, align 4
  %839 = sub i32 %838, 240
  %840 = udiv i32 %839, 32
  store i32 %840, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %841

841:                                              ; preds = %882, %836
  %842 = load i32, i32* %16, align 4
  %843 = icmp slt i32 %842, 4
  br i1 %843, label %844, label %885

844:                                              ; preds = %841
  %845 = load i32, i32* %13, align 4
  %846 = load i32, i32* %16, align 4
  %847 = mul nsw i32 %846, 8
  %848 = ashr i32 %845, %847
  %849 = and i32 %848, 15
  %850 = shl i32 1, %849
  %851 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %852 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %851, i32 0, i32 8
  %853 = load %struct.TYPE_10__*, %struct.TYPE_10__** %852, align 8
  %854 = load i32, i32* %15, align 4
  %855 = sext i32 %854 to i64
  %856 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %853, i64 %855
  %857 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %856, i32 0, i32 11
  %858 = load %struct.TYPE_9__*, %struct.TYPE_9__** %857, align 8
  %859 = load i32, i32* %16, align 4
  %860 = sext i32 %859 to i64
  %861 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %858, i64 %860
  %862 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %861, i32 0, i32 1
  store i32 %850, i32* %862, align 4
  %863 = load i32, i32* %13, align 4
  %864 = load i32, i32* %16, align 4
  %865 = mul nsw i32 %864, 8
  %866 = add nsw i32 %865, 4
  %867 = ashr i32 %863, %866
  %868 = and i32 %867, 15
  %869 = shl i32 1, %868
  %870 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %871 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %870, i32 0, i32 8
  %872 = load %struct.TYPE_10__*, %struct.TYPE_10__** %871, align 8
  %873 = load i32, i32* %15, align 4
  %874 = sext i32 %873 to i64
  %875 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %872, i64 %874
  %876 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %875, i32 0, i32 11
  %877 = load %struct.TYPE_9__*, %struct.TYPE_9__** %876, align 8
  %878 = load i32, i32* %16, align 4
  %879 = sext i32 %878 to i64
  %880 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %877, i64 %879
  %881 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %880, i32 0, i32 2
  store i32 %869, i32* %881, align 4
  br label %882

882:                                              ; preds = %844
  %883 = load i32, i32* %16, align 4
  %884 = add nsw i32 %883, 1
  store i32 %884, i32* %16, align 4
  br label %841

885:                                              ; preds = %841
  %886 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %887 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %886, i32 0, i32 2
  store i32 1, i32* %887, align 8
  br label %894

888:                                              ; preds = %4
  %889 = load i32, i32* %9, align 4
  %890 = load i32, i32* %8, align 4
  %891 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %889, i32 %890)
  %892 = load i32, i32* @EINVAL, align 4
  %893 = sub nsw i32 0, %892
  store i32 %893, i32* %5, align 4
  br label %895

894:                                              ; preds = %885, %805, %655, %610, %607, %543, %513, %506, %501, %494, %490, %487, %449, %433, %407, %358, %347, %278, %236, %201, %105, %70, %56, %45
  store i32 0, i32* %5, align 4
  br label %895

895:                                              ; preds = %894, %888, %441, %403, %390, %293, %228, %139, %97, %62, %54, %37
  %896 = load i32, i32* %5, align 4
  ret i32 %896
}

declare dso_local i32 @radeon_get_ib_value(%struct.radeon_cs_parser*, i32) #1

declare dso_local i32 @r100_cs_packet_parse_vline(%struct.radeon_cs_parser*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*) #1

declare dso_local i32 @r100_reloc_pitch_offset(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*, i32, i32) #1

declare dso_local i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser*, %struct.radeon_bo_list**, i32) #1

declare dso_local i32 @r200_get_vtx_size_0(i32) #1

declare dso_local i32 @r200_get_vtx_size_1(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
