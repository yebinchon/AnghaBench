; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_packet0_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_packet0_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.radeon_cs_packet = type { i32 }
%struct.radeon_bo_list = type { i32, i32, i32 }
%struct.r100_cs_track = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__*, i32, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, i8*, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"No reloc for ib[%d]=0x%04X\0A\00", align 1
@RADEON_CS_KEEP_TILING_FLAGS = common dso_local global i32 0, align 4
@RADEON_TILING_MACRO = common dso_local global i32 0, align 4
@RADEON_TXO_MACRO_TILE = common dso_local global i32 0, align 4
@RADEON_TILING_MICRO = common dso_local global i32 0, align 4
@RADEON_TXO_MICRO_TILE_X2 = common dso_local global i32 0, align 4
@RADEON_COLOR_TILE_ENABLE = common dso_local global i32 0, align 4
@RADEON_COLOR_MICROTILE_ENABLE = common dso_local global i32 0, align 4
@RADEON_COLORPITCH_MASK = common dso_local global i32 0, align 4
@RADEON_DEPTHPITCH_MASK = common dso_local global i32 0, align 4
@RADEON_RB3D_COLOR_FORMAT_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Invalid color buffer format (%d) !\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RADEON_Z_ENABLE = common dso_local global i32 0, align 4
@RADEON_TEX_USIZE_MASK = common dso_local global i32 0, align 4
@RADEON_TEX_VSIZE_MASK = common dso_local global i32 0, align 4
@RADEON_TEX_VSIZE_SHIFT = common dso_local global i32 0, align 4
@RADEON_MAX_MIP_LEVEL_MASK = common dso_local global i32 0, align 4
@RADEON_MAX_MIP_LEVEL_SHIFT = common dso_local global i32 0, align 4
@RADEON_TXFORMAT_NON_POWER2 = common dso_local global i32 0, align 4
@RADEON_TXFORMAT_WIDTH_SHIFT = common dso_local global i32 0, align 4
@RADEON_TXFORMAT_WIDTH_MASK = common dso_local global i32 0, align 4
@RADEON_TXFORMAT_HEIGHT_SHIFT = common dso_local global i32 0, align 4
@RADEON_TXFORMAT_HEIGHT_MASK = common dso_local global i32 0, align 4
@RADEON_TXFORMAT_CUBIC_MAP_ENABLE = common dso_local global i32 0, align 4
@RADEON_TXFORMAT_FORMAT_MASK = common dso_local global i32 0, align 4
@R100_TRACK_COMP_NONE = common dso_local global i8* null, align 8
@R100_TRACK_COMP_DXT1 = common dso_local global i8* null, align 8
@R100_TRACK_COMP_DXT35 = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Forbidden register 0x%04X in cs at %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_cs_parser*, %struct.radeon_cs_packet*, i32, i32)* @r100_packet0_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r100_packet0_check(%struct.radeon_cs_parser* %0, %struct.radeon_cs_packet* %1, i32 %2, i32 %3) #0 {
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
  switch i32 %31, label %909 [
    i32 193, label %32
    i32 192, label %46
    i32 147, label %46
    i32 154, label %57
    i32 156, label %92
    i32 160, label %131
    i32 159, label %131
    i32 158, label %131
    i32 187, label %214
    i32 186, label %214
    i32 185, label %214
    i32 184, label %214
    i32 183, label %214
    i32 182, label %266
    i32 181, label %266
    i32 180, label %266
    i32 179, label %266
    i32 178, label %266
    i32 177, label %318
    i32 176, label %318
    i32 175, label %318
    i32 174, label %318
    i32 173, label %318
    i32 150, label %370
    i32 155, label %380
    i32 153, label %450
    i32 157, label %459
    i32 151, label %504
    i32 152, label %519
    i32 191, label %542
    i32 149, label %573
    i32 148, label %577
    i32 169, label %582
    i32 168, label %582
    i32 167, label %582
    i32 172, label %612
    i32 171, label %612
    i32 170, label %612
    i32 166, label %627
    i32 165, label %627
    i32 164, label %627
    i32 163, label %679
    i32 162, label %679
    i32 161, label %679
    i32 190, label %857
    i32 189, label %857
    i32 188, label %857
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
  %40 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %42 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %43 = call i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser* %41, %struct.radeon_cs_packet* %42)
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %5, align 4
  br label %916

45:                                               ; preds = %32
  br label %915

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
  br label %916

56:                                               ; preds = %46
  br label %915

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
  %65 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64)
  %66 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %67 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %68 = call i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser* %66, %struct.radeon_cs_packet* %67)
  %69 = load i32, i32* %14, align 4
  store i32 %69, i32* %5, align 4
  br label %916

70:                                               ; preds = %57
  %71 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %10, align 8
  %72 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %75 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %74, i32 0, i32 9
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 3
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* %18, align 4
  %78 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %79 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %78, i32 0, i32 9
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
  br label %915

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
  %100 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %99)
  %101 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %102 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %103 = call i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser* %101, %struct.radeon_cs_packet* %102)
  %104 = load i32, i32* %14, align 4
  store i32 %104, i32* %5, align 4
  br label %916

105:                                              ; preds = %92
  %106 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %10, align 8
  %107 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %110 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %109, i32 0, i32 10
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 3
  store i32 %108, i32* %113, align 4
  %114 = load i32, i32* %18, align 4
  %115 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %116 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %115, i32 0, i32 10
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
  br label %915

131:                                              ; preds = %4, %4, %4
  %132 = load i32, i32* %9, align 4
  %133 = sub i32 %132, 160
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
  %142 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %140, i32 %141)
  %143 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %144 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %145 = call i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser* %143, %struct.radeon_cs_packet* %144)
  %146 = load i32, i32* %14, align 4
  store i32 %146, i32* %5, align 4
  br label %916

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
  %162 = load i32, i32* @RADEON_TXO_MACRO_TILE, align 4
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
  %173 = load i32, i32* @RADEON_TXO_MICRO_TILE_X2, align 4
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
  %206 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %205, i32 0, i32 7
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %206, align 8
  %208 = load i32, i32* %15, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 12
  store i32 %204, i32* %211, align 4
  %212 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %213 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %212, i32 0, i32 2
  store i32 1, i32* %213, align 8
  br label %915

214:                                              ; preds = %4, %4, %4, %4, %4
  %215 = load i32, i32* %9, align 4
  %216 = sub i32 %215, 187
  %217 = udiv i32 %216, 4
  store i32 %217, i32* %15, align 4
  %218 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %219 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %218, %struct.radeon_bo_list** %10, i32 0)
  store i32 %219, i32* %14, align 4
  %220 = load i32, i32* %14, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %230

222:                                              ; preds = %214
  %223 = load i32, i32* %8, align 4
  %224 = load i32, i32* %9, align 4
  %225 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %223, i32 %224)
  %226 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %227 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %228 = call i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser* %226, %struct.radeon_cs_packet* %227)
  %229 = load i32, i32* %14, align 4
  store i32 %229, i32* %5, align 4
  br label %916

230:                                              ; preds = %214
  %231 = load i32, i32* %18, align 4
  %232 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %233 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %232, i32 0, i32 7
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i64 0
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 9
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %236, align 8
  %238 = load i32, i32* %15, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 0
  store i32 %231, i32* %241, align 4
  %242 = load i32, i32* %18, align 4
  %243 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %10, align 8
  %244 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = add nsw i32 %242, %245
  %247 = load i32*, i32** %12, align 8
  %248 = load i32, i32* %8, align 4
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  store volatile i32 %246, i32* %250, align 4
  %251 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %10, align 8
  %252 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %255 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %254, i32 0, i32 7
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i64 0
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 9
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** %258, align 8
  %260 = load i32, i32* %15, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 3
  store i32 %253, i32* %263, align 4
  %264 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %265 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %264, i32 0, i32 2
  store i32 1, i32* %265, align 8
  br label %915

266:                                              ; preds = %4, %4, %4, %4, %4
  %267 = load i32, i32* %9, align 4
  %268 = sub i32 %267, 182
  %269 = udiv i32 %268, 4
  store i32 %269, i32* %15, align 4
  %270 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %271 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %270, %struct.radeon_bo_list** %10, i32 0)
  store i32 %271, i32* %14, align 4
  %272 = load i32, i32* %14, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %282

274:                                              ; preds = %266
  %275 = load i32, i32* %8, align 4
  %276 = load i32, i32* %9, align 4
  %277 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %275, i32 %276)
  %278 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %279 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %280 = call i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser* %278, %struct.radeon_cs_packet* %279)
  %281 = load i32, i32* %14, align 4
  store i32 %281, i32* %5, align 4
  br label %916

282:                                              ; preds = %266
  %283 = load i32, i32* %18, align 4
  %284 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %285 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %284, i32 0, i32 7
  %286 = load %struct.TYPE_10__*, %struct.TYPE_10__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i64 1
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 9
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %288, align 8
  %290 = load i32, i32* %15, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 0
  store i32 %283, i32* %293, align 4
  %294 = load i32, i32* %18, align 4
  %295 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %10, align 8
  %296 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = add nsw i32 %294, %297
  %299 = load i32*, i32** %12, align 8
  %300 = load i32, i32* %8, align 4
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %299, i64 %301
  store volatile i32 %298, i32* %302, align 4
  %303 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %10, align 8
  %304 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %307 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %306, i32 0, i32 7
  %308 = load %struct.TYPE_10__*, %struct.TYPE_10__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i64 1
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %309, i32 0, i32 9
  %311 = load %struct.TYPE_9__*, %struct.TYPE_9__** %310, align 8
  %312 = load i32, i32* %15, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %311, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %314, i32 0, i32 3
  store i32 %305, i32* %315, align 4
  %316 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %317 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %316, i32 0, i32 2
  store i32 1, i32* %317, align 8
  br label %915

318:                                              ; preds = %4, %4, %4, %4, %4
  %319 = load i32, i32* %9, align 4
  %320 = sub i32 %319, 177
  %321 = udiv i32 %320, 4
  store i32 %321, i32* %15, align 4
  %322 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %323 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %322, %struct.radeon_bo_list** %10, i32 0)
  store i32 %323, i32* %14, align 4
  %324 = load i32, i32* %14, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %334

326:                                              ; preds = %318
  %327 = load i32, i32* %8, align 4
  %328 = load i32, i32* %9, align 4
  %329 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %327, i32 %328)
  %330 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %331 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %332 = call i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser* %330, %struct.radeon_cs_packet* %331)
  %333 = load i32, i32* %14, align 4
  store i32 %333, i32* %5, align 4
  br label %916

334:                                              ; preds = %318
  %335 = load i32, i32* %18, align 4
  %336 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %337 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %336, i32 0, i32 7
  %338 = load %struct.TYPE_10__*, %struct.TYPE_10__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %338, i64 2
  %340 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %339, i32 0, i32 9
  %341 = load %struct.TYPE_9__*, %struct.TYPE_9__** %340, align 8
  %342 = load i32, i32* %15, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %341, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %344, i32 0, i32 0
  store i32 %335, i32* %345, align 4
  %346 = load i32, i32* %18, align 4
  %347 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %10, align 8
  %348 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = add nsw i32 %346, %349
  %351 = load i32*, i32** %12, align 8
  %352 = load i32, i32* %8, align 4
  %353 = zext i32 %352 to i64
  %354 = getelementptr inbounds i32, i32* %351, i64 %353
  store volatile i32 %350, i32* %354, align 4
  %355 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %10, align 8
  %356 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %355, i32 0, i32 2
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %359 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %358, i32 0, i32 7
  %360 = load %struct.TYPE_10__*, %struct.TYPE_10__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %360, i64 2
  %362 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %361, i32 0, i32 9
  %363 = load %struct.TYPE_9__*, %struct.TYPE_9__** %362, align 8
  %364 = load i32, i32* %15, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %363, i64 %365
  %367 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %366, i32 0, i32 3
  store i32 %357, i32* %367, align 4
  %368 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %369 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %368, i32 0, i32 2
  store i32 1, i32* %369, align 8
  br label %915

370:                                              ; preds = %4
  %371 = load i32, i32* %18, align 4
  %372 = ashr i32 %371, 16
  %373 = and i32 %372, 2047
  %374 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %375 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %374, i32 0, i32 3
  store i32 %373, i32* %375, align 4
  %376 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %377 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %376, i32 0, i32 1
  store i32 1, i32* %377, align 4
  %378 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %379 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %378, i32 0, i32 0
  store i32 1, i32* %379, align 8
  br label %915

380:                                              ; preds = %4
  %381 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %382 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %381, %struct.radeon_bo_list** %10, i32 0)
  store i32 %382, i32* %14, align 4
  %383 = load i32, i32* %14, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %393

385:                                              ; preds = %380
  %386 = load i32, i32* %8, align 4
  %387 = load i32, i32* %9, align 4
  %388 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %386, i32 %387)
  %389 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %390 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %391 = call i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser* %389, %struct.radeon_cs_packet* %390)
  %392 = load i32, i32* %14, align 4
  store i32 %392, i32* %5, align 4
  br label %916

393:                                              ; preds = %380
  %394 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %395 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = load i32, i32* @RADEON_CS_KEEP_TILING_FLAGS, align 4
  %398 = and i32 %396, %397
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %433, label %400

400:                                              ; preds = %393
  %401 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %10, align 8
  %402 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 4
  %404 = load i32, i32* @RADEON_TILING_MACRO, align 4
  %405 = and i32 %403, %404
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %411

407:                                              ; preds = %400
  %408 = load i32, i32* @RADEON_COLOR_TILE_ENABLE, align 4
  %409 = load i32, i32* %17, align 4
  %410 = or i32 %409, %408
  store i32 %410, i32* %17, align 4
  br label %411

411:                                              ; preds = %407, %400
  %412 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %10, align 8
  %413 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = load i32, i32* @RADEON_TILING_MICRO, align 4
  %416 = and i32 %414, %415
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %422

418:                                              ; preds = %411
  %419 = load i32, i32* @RADEON_COLOR_MICROTILE_ENABLE, align 4
  %420 = load i32, i32* %17, align 4
  %421 = or i32 %420, %419
  store i32 %421, i32* %17, align 4
  br label %422

422:                                              ; preds = %418, %411
  %423 = load i32, i32* %18, align 4
  %424 = and i32 %423, -458753
  store i32 %424, i32* %13, align 4
  %425 = load i32, i32* %17, align 4
  %426 = load i32, i32* %13, align 4
  %427 = or i32 %426, %425
  store i32 %427, i32* %13, align 4
  %428 = load i32, i32* %13, align 4
  %429 = load i32*, i32** %12, align 8
  %430 = load i32, i32* %8, align 4
  %431 = zext i32 %430 to i64
  %432 = getelementptr inbounds i32, i32* %429, i64 %431
  store volatile i32 %428, i32* %432, align 4
  br label %439

433:                                              ; preds = %393
  %434 = load i32, i32* %18, align 4
  %435 = load i32*, i32** %12, align 8
  %436 = load i32, i32* %8, align 4
  %437 = zext i32 %436 to i64
  %438 = getelementptr inbounds i32, i32* %435, i64 %437
  store volatile i32 %434, i32* %438, align 4
  br label %439

439:                                              ; preds = %433, %422
  %440 = load i32, i32* %18, align 4
  %441 = load i32, i32* @RADEON_COLORPITCH_MASK, align 4
  %442 = and i32 %440, %441
  %443 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %444 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %443, i32 0, i32 10
  %445 = load %struct.TYPE_7__*, %struct.TYPE_7__** %444, align 8
  %446 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %445, i64 0
  %447 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %446, i32 0, i32 1
  store i32 %442, i32* %447, align 4
  %448 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %449 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %448, i32 0, i32 1
  store i32 1, i32* %449, align 4
  br label %915

450:                                              ; preds = %4
  %451 = load i32, i32* %18, align 4
  %452 = load i32, i32* @RADEON_DEPTHPITCH_MASK, align 4
  %453 = and i32 %451, %452
  %454 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %455 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %454, i32 0, i32 9
  %456 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %455, i32 0, i32 1
  store i32 %453, i32* %456, align 4
  %457 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %458 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %457, i32 0, i32 0
  store i32 1, i32* %458, align 8
  br label %915

459:                                              ; preds = %4
  %460 = load i32, i32* %18, align 4
  %461 = load i32, i32* @RADEON_RB3D_COLOR_FORMAT_SHIFT, align 4
  %462 = ashr i32 %460, %461
  %463 = and i32 %462, 31
  switch i32 %463, label %482 [
    i32 7, label %464
    i32 8, label %464
    i32 9, label %464
    i32 11, label %464
    i32 12, label %464
    i32 3, label %470
    i32 4, label %470
    i32 15, label %470
    i32 6, label %476
  ]

464:                                              ; preds = %459, %459, %459, %459, %459
  %465 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %466 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %465, i32 0, i32 10
  %467 = load %struct.TYPE_7__*, %struct.TYPE_7__** %466, align 8
  %468 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %467, i64 0
  %469 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %468, i32 0, i32 2
  store i32 1, i32* %469, align 4
  br label %490

470:                                              ; preds = %459, %459, %459
  %471 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %472 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %471, i32 0, i32 10
  %473 = load %struct.TYPE_7__*, %struct.TYPE_7__** %472, align 8
  %474 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %473, i64 0
  %475 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %474, i32 0, i32 2
  store i32 2, i32* %475, align 4
  br label %490

476:                                              ; preds = %459
  %477 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %478 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %477, i32 0, i32 10
  %479 = load %struct.TYPE_7__*, %struct.TYPE_7__** %478, align 8
  %480 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %479, i64 0
  %481 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %480, i32 0, i32 2
  store i32 4, i32* %481, align 4
  br label %490

482:                                              ; preds = %459
  %483 = load i32, i32* %18, align 4
  %484 = load i32, i32* @RADEON_RB3D_COLOR_FORMAT_SHIFT, align 4
  %485 = ashr i32 %483, %484
  %486 = and i32 %485, 31
  %487 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %486)
  %488 = load i32, i32* @EINVAL, align 4
  %489 = sub nsw i32 0, %488
  store i32 %489, i32* %5, align 4
  br label %916

490:                                              ; preds = %476, %470, %464
  %491 = load i32, i32* %18, align 4
  %492 = load i32, i32* @RADEON_Z_ENABLE, align 4
  %493 = and i32 %491, %492
  %494 = icmp ne i32 %493, 0
  %495 = xor i1 %494, true
  %496 = xor i1 %495, true
  %497 = zext i1 %496 to i32
  %498 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %499 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %498, i32 0, i32 4
  store i32 %497, i32* %499, align 8
  %500 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %501 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %500, i32 0, i32 1
  store i32 1, i32* %501, align 4
  %502 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %503 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %502, i32 0, i32 0
  store i32 1, i32* %503, align 8
  br label %915

504:                                              ; preds = %4
  %505 = load i32, i32* %18, align 4
  %506 = and i32 %505, 15
  switch i32 %506, label %515 [
    i32 0, label %507
    i32 2, label %511
    i32 3, label %511
    i32 4, label %511
    i32 5, label %511
    i32 9, label %511
    i32 11, label %511
  ]

507:                                              ; preds = %504
  %508 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %509 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %508, i32 0, i32 9
  %510 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %509, i32 0, i32 2
  store i32 2, i32* %510, align 4
  br label %516

511:                                              ; preds = %504, %504, %504, %504, %504, %504
  %512 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %513 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %512, i32 0, i32 9
  %514 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %513, i32 0, i32 2
  store i32 4, i32* %514, align 4
  br label %516

515:                                              ; preds = %504
  br label %516

516:                                              ; preds = %515, %511, %507
  %517 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %518 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %517, i32 0, i32 0
  store i32 1, i32* %518, align 8
  br label %915

519:                                              ; preds = %4
  %520 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %521 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %520, %struct.radeon_bo_list** %10, i32 0)
  store i32 %521, i32* %14, align 4
  %522 = load i32, i32* %14, align 4
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %524, label %532

524:                                              ; preds = %519
  %525 = load i32, i32* %8, align 4
  %526 = load i32, i32* %9, align 4
  %527 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %525, i32 %526)
  %528 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %529 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %530 = call i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser* %528, %struct.radeon_cs_packet* %529)
  %531 = load i32, i32* %14, align 4
  store i32 %531, i32* %5, align 4
  br label %916

532:                                              ; preds = %519
  %533 = load i32, i32* %18, align 4
  %534 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %10, align 8
  %535 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %534, i32 0, i32 1
  %536 = load i32, i32* %535, align 4
  %537 = add nsw i32 %533, %536
  %538 = load i32*, i32** %12, align 8
  %539 = load i32, i32* %8, align 4
  %540 = zext i32 %539 to i64
  %541 = getelementptr inbounds i32, i32* %538, i64 %540
  store volatile i32 %537, i32* %541, align 4
  br label %915

542:                                              ; preds = %4
  %543 = load i32, i32* %18, align 4
  %544 = ashr i32 %543, 4
  store i32 %544, i32* %19, align 4
  store i32 0, i32* %15, align 4
  br label %545

545:                                              ; preds = %567, %542
  %546 = load i32, i32* %15, align 4
  %547 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %548 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %547, i32 0, i32 5
  %549 = load i32, i32* %548, align 4
  %550 = icmp slt i32 %546, %549
  br i1 %550, label %551, label %570

551:                                              ; preds = %545
  %552 = load i32, i32* %19, align 4
  %553 = load i32, i32* %15, align 4
  %554 = shl i32 1, %553
  %555 = and i32 %552, %554
  %556 = icmp ne i32 %555, 0
  %557 = xor i1 %556, true
  %558 = xor i1 %557, true
  %559 = zext i1 %558 to i32
  %560 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %561 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %560, i32 0, i32 7
  %562 = load %struct.TYPE_10__*, %struct.TYPE_10__** %561, align 8
  %563 = load i32, i32* %15, align 4
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %562, i64 %564
  %566 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %565, i32 0, i32 0
  store i32 %559, i32* %566, align 8
  br label %567

567:                                              ; preds = %551
  %568 = load i32, i32* %15, align 4
  %569 = add nsw i32 %568, 1
  store i32 %569, i32* %15, align 4
  br label %545

570:                                              ; preds = %545
  %571 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %572 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %571, i32 0, i32 2
  store i32 1, i32* %572, align 8
  br label %915

573:                                              ; preds = %4
  %574 = load i32, i32* %18, align 4
  %575 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %576 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %575, i32 0, i32 6
  store i32 %574, i32* %576, align 8
  br label %915

577:                                              ; preds = %4
  %578 = load i32, i32* %18, align 4
  %579 = call i32 @r100_get_vtx_size(i32 %578)
  %580 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %581 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %580, i32 0, i32 8
  store i32 %579, i32* %581, align 8
  br label %915

582:                                              ; preds = %4, %4, %4
  %583 = load i32, i32* %9, align 4
  %584 = sub i32 %583, 169
  %585 = udiv i32 %584, 8
  store i32 %585, i32* %15, align 4
  %586 = load i32, i32* %18, align 4
  %587 = load i32, i32* @RADEON_TEX_USIZE_MASK, align 4
  %588 = and i32 %586, %587
  %589 = add nsw i32 %588, 1
  %590 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %591 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %590, i32 0, i32 7
  %592 = load %struct.TYPE_10__*, %struct.TYPE_10__** %591, align 8
  %593 = load i32, i32* %15, align 4
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %592, i64 %594
  %596 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %595, i32 0, i32 1
  store i32 %589, i32* %596, align 4
  %597 = load i32, i32* %18, align 4
  %598 = load i32, i32* @RADEON_TEX_VSIZE_MASK, align 4
  %599 = and i32 %597, %598
  %600 = load i32, i32* @RADEON_TEX_VSIZE_SHIFT, align 4
  %601 = ashr i32 %599, %600
  %602 = add nsw i32 %601, 1
  %603 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %604 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %603, i32 0, i32 7
  %605 = load %struct.TYPE_10__*, %struct.TYPE_10__** %604, align 8
  %606 = load i32, i32* %15, align 4
  %607 = sext i32 %606 to i64
  %608 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %605, i64 %607
  %609 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %608, i32 0, i32 2
  store i32 %602, i32* %609, align 8
  %610 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %611 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %610, i32 0, i32 2
  store i32 1, i32* %611, align 8
  br label %915

612:                                              ; preds = %4, %4, %4
  %613 = load i32, i32* %9, align 4
  %614 = sub i32 %613, 172
  %615 = udiv i32 %614, 8
  store i32 %615, i32* %15, align 4
  %616 = load i32, i32* %18, align 4
  %617 = add nsw i32 %616, 32
  %618 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %619 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %618, i32 0, i32 7
  %620 = load %struct.TYPE_10__*, %struct.TYPE_10__** %619, align 8
  %621 = load i32, i32* %15, align 4
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %620, i64 %622
  %624 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %623, i32 0, i32 11
  store i32 %617, i32* %624, align 8
  %625 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %626 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %625, i32 0, i32 2
  store i32 1, i32* %626, align 8
  br label %915

627:                                              ; preds = %4, %4, %4
  %628 = load i32, i32* %9, align 4
  %629 = sub i32 %628, 166
  %630 = udiv i32 %629, 24
  store i32 %630, i32* %15, align 4
  %631 = load i32, i32* %18, align 4
  %632 = load i32, i32* @RADEON_MAX_MIP_LEVEL_MASK, align 4
  %633 = and i32 %631, %632
  %634 = load i32, i32* @RADEON_MAX_MIP_LEVEL_SHIFT, align 4
  %635 = ashr i32 %633, %634
  %636 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %637 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %636, i32 0, i32 7
  %638 = load %struct.TYPE_10__*, %struct.TYPE_10__** %637, align 8
  %639 = load i32, i32* %15, align 4
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %638, i64 %640
  %642 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %641, i32 0, i32 3
  store i32 %635, i32* %642, align 4
  %643 = load i32, i32* %18, align 4
  %644 = ashr i32 %643, 23
  %645 = and i32 %644, 7
  store i32 %645, i32* %13, align 4
  %646 = load i32, i32* %13, align 4
  %647 = icmp eq i32 %646, 2
  br i1 %647, label %651, label %648

648:                                              ; preds = %627
  %649 = load i32, i32* %13, align 4
  %650 = icmp eq i32 %649, 6
  br i1 %650, label %651, label %659

651:                                              ; preds = %648, %627
  %652 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %653 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %652, i32 0, i32 7
  %654 = load %struct.TYPE_10__*, %struct.TYPE_10__** %653, align 8
  %655 = load i32, i32* %15, align 4
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %654, i64 %656
  %658 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %657, i32 0, i32 4
  store i32 0, i32* %658, align 8
  br label %659

659:                                              ; preds = %651, %648
  %660 = load i32, i32* %18, align 4
  %661 = ashr i32 %660, 27
  %662 = and i32 %661, 7
  store i32 %662, i32* %13, align 4
  %663 = load i32, i32* %13, align 4
  %664 = icmp eq i32 %663, 2
  br i1 %664, label %668, label %665

665:                                              ; preds = %659
  %666 = load i32, i32* %13, align 4
  %667 = icmp eq i32 %666, 6
  br i1 %667, label %668, label %676

668:                                              ; preds = %665, %659
  %669 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %670 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %669, i32 0, i32 7
  %671 = load %struct.TYPE_10__*, %struct.TYPE_10__** %670, align 8
  %672 = load i32, i32* %15, align 4
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %671, i64 %673
  %675 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %674, i32 0, i32 5
  store i32 0, i32* %675, align 4
  br label %676

676:                                              ; preds = %668, %665
  %677 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %678 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %677, i32 0, i32 2
  store i32 1, i32* %678, align 8
  br label %915

679:                                              ; preds = %4, %4, %4
  %680 = load i32, i32* %9, align 4
  %681 = sub i32 %680, 163
  %682 = udiv i32 %681, 24
  store i32 %682, i32* %15, align 4
  %683 = load i32, i32* %18, align 4
  %684 = load i32, i32* @RADEON_TXFORMAT_NON_POWER2, align 4
  %685 = and i32 %683, %684
  %686 = icmp ne i32 %685, 0
  br i1 %686, label %687, label %695

687:                                              ; preds = %679
  %688 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %689 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %688, i32 0, i32 7
  %690 = load %struct.TYPE_10__*, %struct.TYPE_10__** %689, align 8
  %691 = load i32, i32* %15, align 4
  %692 = sext i32 %691 to i64
  %693 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %690, i64 %692
  %694 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %693, i32 0, i32 6
  store i32 1, i32* %694, align 8
  br label %729

695:                                              ; preds = %679
  %696 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %697 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %696, i32 0, i32 7
  %698 = load %struct.TYPE_10__*, %struct.TYPE_10__** %697, align 8
  %699 = load i32, i32* %15, align 4
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %698, i64 %700
  %702 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %701, i32 0, i32 6
  store i32 0, i32* %702, align 8
  %703 = load i32, i32* %18, align 4
  %704 = load i32, i32* @RADEON_TXFORMAT_WIDTH_SHIFT, align 4
  %705 = ashr i32 %703, %704
  %706 = load i32, i32* @RADEON_TXFORMAT_WIDTH_MASK, align 4
  %707 = and i32 %705, %706
  %708 = shl i32 1, %707
  %709 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %710 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %709, i32 0, i32 7
  %711 = load %struct.TYPE_10__*, %struct.TYPE_10__** %710, align 8
  %712 = load i32, i32* %15, align 4
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %711, i64 %713
  %715 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %714, i32 0, i32 1
  store i32 %708, i32* %715, align 4
  %716 = load i32, i32* %18, align 4
  %717 = load i32, i32* @RADEON_TXFORMAT_HEIGHT_SHIFT, align 4
  %718 = ashr i32 %716, %717
  %719 = load i32, i32* @RADEON_TXFORMAT_HEIGHT_MASK, align 4
  %720 = and i32 %718, %719
  %721 = shl i32 1, %720
  %722 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %723 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %722, i32 0, i32 7
  %724 = load %struct.TYPE_10__*, %struct.TYPE_10__** %723, align 8
  %725 = load i32, i32* %15, align 4
  %726 = sext i32 %725 to i64
  %727 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %724, i64 %726
  %728 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %727, i32 0, i32 2
  store i32 %721, i32* %728, align 8
  br label %729

729:                                              ; preds = %695, %687
  %730 = load i32, i32* %18, align 4
  %731 = load i32, i32* @RADEON_TXFORMAT_CUBIC_MAP_ENABLE, align 4
  %732 = and i32 %730, %731
  %733 = icmp ne i32 %732, 0
  br i1 %733, label %734, label %742

734:                                              ; preds = %729
  %735 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %736 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %735, i32 0, i32 7
  %737 = load %struct.TYPE_10__*, %struct.TYPE_10__** %736, align 8
  %738 = load i32, i32* %15, align 4
  %739 = sext i32 %738 to i64
  %740 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %737, i64 %739
  %741 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %740, i32 0, i32 7
  store i32 2, i32* %741, align 4
  br label %742

742:                                              ; preds = %734, %729
  %743 = load i32, i32* %18, align 4
  %744 = load i32, i32* @RADEON_TXFORMAT_FORMAT_MASK, align 4
  %745 = and i32 %743, %744
  switch i32 %745, label %826 [
    i32 138, label %746
    i32 135, label %746
    i32 129, label %746
    i32 146, label %762
    i32 145, label %762
    i32 134, label %762
    i32 144, label %762
    i32 130, label %762
    i32 128, label %762
    i32 132, label %762
    i32 136, label %762
    i32 142, label %762
    i32 143, label %778
    i32 133, label %778
    i32 131, label %778
    i32 137, label %778
    i32 141, label %794
    i32 140, label %810
    i32 139, label %810
  ]

746:                                              ; preds = %742, %742, %742
  %747 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %748 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %747, i32 0, i32 7
  %749 = load %struct.TYPE_10__*, %struct.TYPE_10__** %748, align 8
  %750 = load i32, i32* %15, align 4
  %751 = sext i32 %750 to i64
  %752 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %749, i64 %751
  %753 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %752, i32 0, i32 8
  store i32 1, i32* %753, align 8
  %754 = load i8*, i8** @R100_TRACK_COMP_NONE, align 8
  %755 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %756 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %755, i32 0, i32 7
  %757 = load %struct.TYPE_10__*, %struct.TYPE_10__** %756, align 8
  %758 = load i32, i32* %15, align 4
  %759 = sext i32 %758 to i64
  %760 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %757, i64 %759
  %761 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %760, i32 0, i32 10
  store i8* %754, i8** %761, align 8
  br label %826

762:                                              ; preds = %742, %742, %742, %742, %742, %742, %742, %742, %742
  %763 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %764 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %763, i32 0, i32 7
  %765 = load %struct.TYPE_10__*, %struct.TYPE_10__** %764, align 8
  %766 = load i32, i32* %15, align 4
  %767 = sext i32 %766 to i64
  %768 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %765, i64 %767
  %769 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %768, i32 0, i32 8
  store i32 2, i32* %769, align 8
  %770 = load i8*, i8** @R100_TRACK_COMP_NONE, align 8
  %771 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %772 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %771, i32 0, i32 7
  %773 = load %struct.TYPE_10__*, %struct.TYPE_10__** %772, align 8
  %774 = load i32, i32* %15, align 4
  %775 = sext i32 %774 to i64
  %776 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %773, i64 %775
  %777 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %776, i32 0, i32 10
  store i8* %770, i8** %777, align 8
  br label %826

778:                                              ; preds = %742, %742, %742, %742
  %779 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %780 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %779, i32 0, i32 7
  %781 = load %struct.TYPE_10__*, %struct.TYPE_10__** %780, align 8
  %782 = load i32, i32* %15, align 4
  %783 = sext i32 %782 to i64
  %784 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %781, i64 %783
  %785 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %784, i32 0, i32 8
  store i32 4, i32* %785, align 8
  %786 = load i8*, i8** @R100_TRACK_COMP_NONE, align 8
  %787 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %788 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %787, i32 0, i32 7
  %789 = load %struct.TYPE_10__*, %struct.TYPE_10__** %788, align 8
  %790 = load i32, i32* %15, align 4
  %791 = sext i32 %790 to i64
  %792 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %789, i64 %791
  %793 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %792, i32 0, i32 10
  store i8* %786, i8** %793, align 8
  br label %826

794:                                              ; preds = %742
  %795 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %796 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %795, i32 0, i32 7
  %797 = load %struct.TYPE_10__*, %struct.TYPE_10__** %796, align 8
  %798 = load i32, i32* %15, align 4
  %799 = sext i32 %798 to i64
  %800 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %797, i64 %799
  %801 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %800, i32 0, i32 8
  store i32 1, i32* %801, align 8
  %802 = load i8*, i8** @R100_TRACK_COMP_DXT1, align 8
  %803 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %804 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %803, i32 0, i32 7
  %805 = load %struct.TYPE_10__*, %struct.TYPE_10__** %804, align 8
  %806 = load i32, i32* %15, align 4
  %807 = sext i32 %806 to i64
  %808 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %805, i64 %807
  %809 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %808, i32 0, i32 10
  store i8* %802, i8** %809, align 8
  br label %826

810:                                              ; preds = %742, %742
  %811 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %812 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %811, i32 0, i32 7
  %813 = load %struct.TYPE_10__*, %struct.TYPE_10__** %812, align 8
  %814 = load i32, i32* %15, align 4
  %815 = sext i32 %814 to i64
  %816 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %813, i64 %815
  %817 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %816, i32 0, i32 8
  store i32 1, i32* %817, align 8
  %818 = load i8*, i8** @R100_TRACK_COMP_DXT35, align 8
  %819 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %820 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %819, i32 0, i32 7
  %821 = load %struct.TYPE_10__*, %struct.TYPE_10__** %820, align 8
  %822 = load i32, i32* %15, align 4
  %823 = sext i32 %822 to i64
  %824 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %821, i64 %823
  %825 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %824, i32 0, i32 10
  store i8* %818, i8** %825, align 8
  br label %826

826:                                              ; preds = %742, %810, %794, %778, %762, %746
  %827 = load i32, i32* %18, align 4
  %828 = ashr i32 %827, 16
  %829 = and i32 %828, 15
  %830 = shl i32 1, %829
  %831 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %832 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %831, i32 0, i32 7
  %833 = load %struct.TYPE_10__*, %struct.TYPE_10__** %832, align 8
  %834 = load i32, i32* %15, align 4
  %835 = sext i32 %834 to i64
  %836 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %833, i64 %835
  %837 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %836, i32 0, i32 9
  %838 = load %struct.TYPE_9__*, %struct.TYPE_9__** %837, align 8
  %839 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %838, i64 4
  %840 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %839, i32 0, i32 1
  store i32 %830, i32* %840, align 4
  %841 = load i32, i32* %18, align 4
  %842 = ashr i32 %841, 20
  %843 = and i32 %842, 15
  %844 = shl i32 1, %843
  %845 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %846 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %845, i32 0, i32 7
  %847 = load %struct.TYPE_10__*, %struct.TYPE_10__** %846, align 8
  %848 = load i32, i32* %15, align 4
  %849 = sext i32 %848 to i64
  %850 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %847, i64 %849
  %851 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %850, i32 0, i32 9
  %852 = load %struct.TYPE_9__*, %struct.TYPE_9__** %851, align 8
  %853 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %852, i64 4
  %854 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %853, i32 0, i32 2
  store i32 %844, i32* %854, align 4
  %855 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %856 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %855, i32 0, i32 2
  store i32 1, i32* %856, align 8
  br label %915

857:                                              ; preds = %4, %4, %4
  %858 = load i32, i32* %18, align 4
  store i32 %858, i32* %13, align 4
  %859 = load i32, i32* %9, align 4
  %860 = sub i32 %859, 190
  %861 = udiv i32 %860, 4
  store i32 %861, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %862

862:                                              ; preds = %903, %857
  %863 = load i32, i32* %16, align 4
  %864 = icmp slt i32 %863, 4
  br i1 %864, label %865, label %906

865:                                              ; preds = %862
  %866 = load i32, i32* %13, align 4
  %867 = load i32, i32* %16, align 4
  %868 = mul nsw i32 %867, 8
  %869 = ashr i32 %866, %868
  %870 = and i32 %869, 15
  %871 = shl i32 1, %870
  %872 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %873 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %872, i32 0, i32 7
  %874 = load %struct.TYPE_10__*, %struct.TYPE_10__** %873, align 8
  %875 = load i32, i32* %15, align 4
  %876 = sext i32 %875 to i64
  %877 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %874, i64 %876
  %878 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %877, i32 0, i32 9
  %879 = load %struct.TYPE_9__*, %struct.TYPE_9__** %878, align 8
  %880 = load i32, i32* %16, align 4
  %881 = sext i32 %880 to i64
  %882 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %879, i64 %881
  %883 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %882, i32 0, i32 1
  store i32 %871, i32* %883, align 4
  %884 = load i32, i32* %13, align 4
  %885 = load i32, i32* %16, align 4
  %886 = mul nsw i32 %885, 8
  %887 = add nsw i32 %886, 4
  %888 = ashr i32 %884, %887
  %889 = and i32 %888, 15
  %890 = shl i32 1, %889
  %891 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %892 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %891, i32 0, i32 7
  %893 = load %struct.TYPE_10__*, %struct.TYPE_10__** %892, align 8
  %894 = load i32, i32* %15, align 4
  %895 = sext i32 %894 to i64
  %896 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %893, i64 %895
  %897 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %896, i32 0, i32 9
  %898 = load %struct.TYPE_9__*, %struct.TYPE_9__** %897, align 8
  %899 = load i32, i32* %16, align 4
  %900 = sext i32 %899 to i64
  %901 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %898, i64 %900
  %902 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %901, i32 0, i32 2
  store i32 %890, i32* %902, align 4
  br label %903

903:                                              ; preds = %865
  %904 = load i32, i32* %16, align 4
  %905 = add nsw i32 %904, 1
  store i32 %905, i32* %16, align 4
  br label %862

906:                                              ; preds = %862
  %907 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %908 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %907, i32 0, i32 2
  store i32 1, i32* %908, align 8
  br label %915

909:                                              ; preds = %4
  %910 = load i32, i32* %9, align 4
  %911 = load i32, i32* %8, align 4
  %912 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %910, i32 %911)
  %913 = load i32, i32* @EINVAL, align 4
  %914 = sub nsw i32 0, %913
  store i32 %914, i32* %5, align 4
  br label %916

915:                                              ; preds = %906, %826, %676, %612, %582, %577, %573, %570, %532, %516, %490, %450, %439, %370, %334, %282, %230, %201, %105, %70, %56, %45
  store i32 0, i32* %5, align 4
  br label %916

916:                                              ; preds = %915, %909, %524, %482, %385, %326, %274, %222, %139, %97, %62, %54, %37
  %917 = load i32, i32* %5, align 4
  ret i32 %917
}

declare dso_local i32 @radeon_get_ib_value(%struct.radeon_cs_parser*, i32) #1

declare dso_local i32 @r100_cs_packet_parse_vline(%struct.radeon_cs_parser*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, ...) #1

declare dso_local i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*) #1

declare dso_local i32 @r100_reloc_pitch_offset(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*, i32, i32) #1

declare dso_local i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser*, %struct.radeon_bo_list**, i32) #1

declare dso_local i32 @r100_get_vtx_size(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
