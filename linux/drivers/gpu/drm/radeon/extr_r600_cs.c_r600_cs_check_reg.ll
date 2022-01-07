; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_cs.c_r600_cs_check_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_cs.c_r600_cs_check_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32* }
%struct.r600_cs_track = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32* }
%struct.radeon_bo_list = type { i32, i32, i32 }

@r600_reg_safe_bm = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"forbidden register 0x%08x at %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"bad SET_CONTEXT_REG 0x%04X\0A\00", align 1
@RADEON_CS_KEEP_TILING_FLAGS = common dso_local global i32 0, align 4
@r600_nomm = common dso_local global i32 0, align 4
@C_028010_ARRAY_MODE = common dso_local global i32 0, align 4
@RADEON_TILING_MACRO = common dso_local global i32 0, align 4
@V_028010_ARRAY_2D_TILED_THIN1 = common dso_local global i32 0, align 4
@V_028010_ARRAY_1D_TILED_THIN1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"missing reloc for CP_COHER_BASE 0x%04X\0A\00", align 1
@V_028808_SPECIAL_RESOLVE_BOX = common dso_local global i32 0, align 4
@V_0280A0_ARRAY_2D_TILED_THIN1 = common dso_local global i32 0, align 4
@RADEON_TILING_MICRO = common dso_local global i32 0, align 4
@V_0280A0_ARRAY_1D_TILED_THIN1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [81 x i8] c"Broken old userspace ? no cb_color0_base supplied before trying to write 0x%08X\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"bad SET_CONFIG_REG 0x%04X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_cs_parser*, i32, i32)* @r600_cs_check_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r600_cs_check_reg(%struct.radeon_cs_parser* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_cs_parser*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.r600_cs_track*, align 8
  %9 = alloca %struct.radeon_bo_list*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %16 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.r600_cs_track*
  store %struct.r600_cs_track* %18, %struct.r600_cs_track** %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = ashr i32 %19, 7
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32*, i32** @r600_reg_safe_bm, align 8
  %23 = call i32 @ARRAY_SIZE(i32* %22)
  %24 = icmp sge i32 %21, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %3
  %26 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %27 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %1004

34:                                               ; preds = %3
  %35 = load i32, i32* %6, align 4
  %36 = ashr i32 %35, 2
  %37 = and i32 %36, 31
  %38 = shl i32 1, %37
  store i32 %38, i32* %10, align 4
  %39 = load i32*, i32** @r600_reg_safe_bm, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %10, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %1004

48:                                               ; preds = %34
  %49 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %50 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %13, align 8
  %53 = load i32, i32* %6, align 4
  switch i32 %53, label %994 [
    i32 209, label %54
    i32 272, label %54
    i32 207, label %54
    i32 270, label %54
    i32 203, label %54
    i32 266, label %54
    i32 206, label %54
    i32 269, label %54
    i32 208, label %54
    i32 271, label %54
    i32 204, label %54
    i32 267, label %54
    i32 202, label %54
    i32 265, label %54
    i32 205, label %54
    i32 268, label %54
    i32 201, label %54
    i32 148, label %55
    i32 145, label %55
    i32 147, label %55
    i32 146, label %55
    i32 139, label %55
    i32 138, label %55
    i32 149, label %79
    i32 211, label %85
    i32 262, label %93
    i32 263, label %182
    i32 264, label %190
    i32 200, label %201
    i32 199, label %209
    i32 135, label %217
    i32 134, label %217
    i32 133, label %217
    i32 132, label %217
    i32 131, label %275
    i32 130, label %275
    i32 129, label %275
    i32 128, label %275
    i32 276, label %291
    i32 213, label %316
    i32 212, label %324
    i32 198, label %330
    i32 210, label %344
    i32 245, label %357
    i32 244, label %357
    i32 243, label %357
    i32 242, label %357
    i32 241, label %357
    i32 240, label %357
    i32 239, label %357
    i32 238, label %357
    i32 253, label %464
    i32 252, label %464
    i32 251, label %464
    i32 250, label %464
    i32 249, label %464
    i32 248, label %464
    i32 247, label %464
    i32 246, label %464
    i32 261, label %479
    i32 260, label %479
    i32 259, label %479
    i32 258, label %479
    i32 257, label %479
    i32 256, label %479
    i32 255, label %479
    i32 254, label %479
    i32 229, label %501
    i32 228, label %501
    i32 227, label %501
    i32 226, label %501
    i32 225, label %501
    i32 224, label %501
    i32 223, label %501
    i32 222, label %501
    i32 237, label %623
    i32 236, label %623
    i32 235, label %623
    i32 234, label %623
    i32 233, label %623
    i32 232, label %623
    i32 231, label %623
    i32 230, label %623
    i32 221, label %745
    i32 220, label %745
    i32 219, label %745
    i32 218, label %745
    i32 217, label %745
    i32 216, label %745
    i32 215, label %745
    i32 214, label %745
    i32 284, label %771
    i32 283, label %771
    i32 282, label %771
    i32 281, label %771
    i32 280, label %771
    i32 279, label %771
    i32 278, label %771
    i32 277, label %771
    i32 275, label %840
    i32 274, label %883
    i32 273, label %921
    i32 143, label %935
    i32 144, label %935
    i32 140, label %935
    i32 142, label %935
    i32 141, label %935
    i32 197, label %935
    i32 196, label %935
    i32 189, label %935
    i32 188, label %935
    i32 187, label %935
    i32 186, label %935
    i32 185, label %935
    i32 184, label %935
    i32 183, label %935
    i32 182, label %935
    i32 195, label %935
    i32 194, label %935
    i32 193, label %935
    i32 192, label %935
    i32 191, label %935
    i32 190, label %935
    i32 181, label %935
    i32 180, label %935
    i32 173, label %935
    i32 172, label %935
    i32 171, label %935
    i32 170, label %935
    i32 169, label %935
    i32 168, label %935
    i32 167, label %935
    i32 166, label %935
    i32 179, label %935
    i32 178, label %935
    i32 177, label %935
    i32 176, label %935
    i32 175, label %935
    i32 174, label %935
    i32 165, label %935
    i32 164, label %935
    i32 157, label %935
    i32 156, label %935
    i32 155, label %935
    i32 154, label %935
    i32 153, label %935
    i32 152, label %935
    i32 151, label %935
    i32 150, label %935
    i32 163, label %935
    i32 162, label %935
    i32 161, label %935
    i32 160, label %935
    i32 159, label %935
    i32 158, label %935
    i32 137, label %960
    i32 136, label %985
  ]

54:                                               ; preds = %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48
  br label %1003

55:                                               ; preds = %48, %48, %48, %48, %48, %48
  %56 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %57 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %56, %struct.radeon_bo_list** %9, i32 0)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %62 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %1004

68:                                               ; preds = %55
  %69 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %9, align 8
  %70 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = ashr i32 %71, 8
  %73 = load i32*, i32** %13, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, %72
  store i32 %78, i32* %76, align 4
  br label %1003

79:                                               ; preds = %48
  %80 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %80, i32 %81)
  %83 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %84 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  br label %1003

85:                                               ; preds = %48
  %86 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %86, i32 %87)
  %89 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %90 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %92 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %91, i32 0, i32 2
  store i32 1, i32* %92, align 8
  br label %1003

93:                                               ; preds = %48
  %94 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %95 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @RADEON_CS_KEEP_TILING_FLAGS, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %173, label %100

100:                                              ; preds = %93
  %101 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %102 = call i32 @radeon_cs_packet_next_is_pkt3_nop(%struct.radeon_cs_parser* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %173

104:                                              ; preds = %100
  %105 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %106 = load i32, i32* @r600_nomm, align 4
  %107 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %105, %struct.radeon_bo_list** %9, i32 %106)
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %14, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %104
  %111 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %112 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %6, align 4
  %115 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %113, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %4, align 4
  br label %1004

118:                                              ; preds = %104
  %119 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %119, i32 %120)
  %122 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %123 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* @C_028010_ARRAY_MODE, align 4
  %125 = load i32*, i32** %13, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, %124
  store i32 %130, i32* %128, align 4
  %131 = load i32, i32* @C_028010_ARRAY_MODE, align 4
  %132 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %133 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, %131
  store i32 %135, i32* %133, align 4
  %136 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %9, align 8
  %137 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @RADEON_TILING_MACRO, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %157

142:                                              ; preds = %118
  %143 = load i32, i32* @V_028010_ARRAY_2D_TILED_THIN1, align 4
  %144 = call i32 @S_028010_ARRAY_MODE(i32 %143)
  %145 = load i32*, i32** %13, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %144
  store i32 %150, i32* %148, align 4
  %151 = load i32, i32* @V_028010_ARRAY_2D_TILED_THIN1, align 4
  %152 = call i32 @S_028010_ARRAY_MODE(i32 %151)
  %153 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %154 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 4
  br label %172

157:                                              ; preds = %118
  %158 = load i32, i32* @V_028010_ARRAY_1D_TILED_THIN1, align 4
  %159 = call i32 @S_028010_ARRAY_MODE(i32 %158)
  %160 = load i32*, i32** %13, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %159
  store i32 %165, i32* %163, align 4
  %166 = load i32, i32* @V_028010_ARRAY_1D_TILED_THIN1, align 4
  %167 = call i32 @S_028010_ARRAY_MODE(i32 %166)
  %168 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %169 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %157, %142
  br label %179

173:                                              ; preds = %100, %93
  %174 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %175 = load i32, i32* %7, align 4
  %176 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %174, i32 %175)
  %177 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %178 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %177, i32 0, i32 3
  store i32 %176, i32* %178, align 4
  br label %179

179:                                              ; preds = %173, %172
  %180 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %181 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %180, i32 0, i32 2
  store i32 1, i32* %181, align 8
  br label %1003

182:                                              ; preds = %48
  %183 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %184 = load i32, i32* %7, align 4
  %185 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %183, i32 %184)
  %186 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %187 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %186, i32 0, i32 4
  store i32 %185, i32* %187, align 8
  %188 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %189 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %188, i32 0, i32 2
  store i32 1, i32* %189, align 8
  br label %1003

190:                                              ; preds = %48
  %191 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %192 = load i32, i32* %7, align 4
  %193 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %191, i32 %192)
  %194 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %195 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %194, i32 0, i32 5
  store i32 %193, i32* %195, align 4
  %196 = load i32, i32* %7, align 4
  %197 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %198 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %197, i32 0, i32 6
  store i32 %196, i32* %198, align 8
  %199 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %200 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %199, i32 0, i32 2
  store i32 1, i32* %200, align 8
  br label %1003

201:                                              ; preds = %48
  %202 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %203 = load i32, i32* %7, align 4
  %204 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %202, i32 %203)
  %205 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %206 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %205, i32 0, i32 7
  store i32 %204, i32* %206, align 4
  %207 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %208 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %207, i32 0, i32 8
  store i32 1, i32* %208, align 8
  br label %1003

209:                                              ; preds = %48
  %210 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %211 = load i32, i32* %7, align 4
  %212 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %210, i32 %211)
  %213 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %214 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %213, i32 0, i32 9
  store i32 %212, i32* %214, align 4
  %215 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %216 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %215, i32 0, i32 8
  store i32 1, i32* %216, align 8
  br label %1003

217:                                              ; preds = %48, %48, %48, %48
  %218 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %219 = load i32, i32* @r600_nomm, align 4
  %220 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %218, %struct.radeon_bo_list** %9, i32 %219)
  store i32 %220, i32* %14, align 4
  %221 = load i32, i32* %14, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %231

223:                                              ; preds = %217
  %224 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %225 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %6, align 4
  %228 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %226, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %227)
  %229 = load i32, i32* @EINVAL, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %4, align 4
  br label %1004

231:                                              ; preds = %217
  %232 = load i32, i32* %6, align 4
  %233 = sub nsw i32 %232, 135
  %234 = sdiv i32 %233, 16
  store i32 %234, i32* %12, align 4
  %235 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %236 = load i32, i32* %7, align 4
  %237 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %235, i32 %236)
  %238 = shl i32 %237, 8
  %239 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %240 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %239, i32 0, i32 10
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* %12, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  store i32 %238, i32* %244, align 4
  %245 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %9, align 8
  %246 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = ashr i32 %247, 8
  %249 = load i32*, i32** %13, align 8
  %250 = load i32, i32* %7, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = add nsw i32 %253, %248
  store i32 %254, i32* %252, align 4
  %255 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %9, align 8
  %256 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %259 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %258, i32 0, i32 39
  %260 = load i32*, i32** %259, align 8
  %261 = load i32, i32* %12, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  store i32 %257, i32* %263, align 4
  %264 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %9, align 8
  %265 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %268 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %267, i32 0, i32 11
  %269 = load i32*, i32** %268, align 8
  %270 = load i32, i32* %12, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  store i32 %266, i32* %272, align 4
  %273 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %274 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %273, i32 0, i32 8
  store i32 1, i32* %274, align 8
  br label %1003

275:                                              ; preds = %48, %48, %48, %48
  %276 = load i32, i32* %6, align 4
  %277 = sub nsw i32 %276, 131
  %278 = sdiv i32 %277, 16
  store i32 %278, i32* %12, align 4
  %279 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %280 = load i32, i32* %7, align 4
  %281 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %279, i32 %280)
  %282 = mul nsw i32 %281, 4
  %283 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %284 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %283, i32 0, i32 12
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %12, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  store i32 %282, i32* %288, align 4
  %289 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %290 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %289, i32 0, i32 8
  store i32 1, i32* %290, align 8
  br label %1003

291:                                              ; preds = %48
  %292 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %293 = load i32, i32* @r600_nomm, align 4
  %294 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %292, %struct.radeon_bo_list** %9, i32 %293)
  store i32 %294, i32* %14, align 4
  %295 = load i32, i32* %14, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %305

297:                                              ; preds = %291
  %298 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %299 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* %6, align 4
  %302 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %300, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %301)
  %303 = load i32, i32* @EINVAL, align 4
  %304 = sub nsw i32 0, %303
  store i32 %304, i32* %4, align 4
  br label %1004

305:                                              ; preds = %291
  %306 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %9, align 8
  %307 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = ashr i32 %308, 8
  %310 = load i32*, i32** %13, align 8
  %311 = load i32, i32* %7, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %310, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = add nsw i32 %314, %309
  store i32 %315, i32* %313, align 4
  br label %1003

316:                                              ; preds = %48
  %317 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %318 = load i32, i32* %7, align 4
  %319 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %317, i32 %318)
  %320 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %321 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %320, i32 0, i32 13
  store i32 %319, i32* %321, align 8
  %322 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %323 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %322, i32 0, i32 14
  store i32 1, i32* %323, align 4
  br label %1003

324:                                              ; preds = %48
  %325 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %326 = load i32, i32* %7, align 4
  %327 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %325, i32 %326)
  %328 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %329 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %328, i32 0, i32 15
  store i32 %327, i32* %329, align 8
  br label %1003

330:                                              ; preds = %48
  %331 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %332 = load i32, i32* %7, align 4
  %333 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %331, i32 %332)
  %334 = call i32 @G_028C04_MSAA_NUM_SAMPLES(i32 %333)
  store i32 %334, i32* %12, align 4
  %335 = load i32, i32* %12, align 4
  %336 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %337 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %336, i32 0, i32 16
  store i32 %335, i32* %337, align 4
  %338 = load i32, i32* %12, align 4
  %339 = shl i32 1, %338
  %340 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %341 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %340, i32 0, i32 17
  store i32 %339, i32* %341, align 8
  %342 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %343 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %342, i32 0, i32 14
  store i32 1, i32* %343, align 4
  br label %1003

344:                                              ; preds = %48
  %345 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %346 = load i32, i32* %7, align 4
  %347 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %345, i32 %346)
  %348 = call i32 @G_028808_SPECIAL_OP(i32 %347)
  store i32 %348, i32* %12, align 4
  %349 = load i32, i32* %12, align 4
  %350 = load i32, i32* @V_028808_SPECIAL_RESOLVE_BOX, align 4
  %351 = icmp eq i32 %349, %350
  %352 = zext i1 %351 to i32
  %353 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %354 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %353, i32 0, i32 18
  store i32 %352, i32* %354, align 4
  %355 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %356 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %355, i32 0, i32 14
  store i32 1, i32* %356, align 4
  br label %1003

357:                                              ; preds = %48, %48, %48, %48, %48, %48, %48, %48
  %358 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %359 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = load i32, i32* @RADEON_CS_KEEP_TILING_FLAGS, align 4
  %362 = and i32 %360, %361
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %448, label %364

364:                                              ; preds = %357
  %365 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %366 = call i32 @radeon_cs_packet_next_is_pkt3_nop(%struct.radeon_cs_parser* %365)
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %448

368:                                              ; preds = %364
  %369 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %370 = load i32, i32* @r600_nomm, align 4
  %371 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %369, %struct.radeon_bo_list** %9, i32 %370)
  store i32 %371, i32* %14, align 4
  %372 = load i32, i32* %14, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %382

374:                                              ; preds = %368
  %375 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %376 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = load i32, i32* %6, align 4
  %379 = call i32 @dev_err(i32 %377, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %378)
  %380 = load i32, i32* @EINVAL, align 4
  %381 = sub nsw i32 0, %380
  store i32 %381, i32* %4, align 4
  br label %1004

382:                                              ; preds = %368
  %383 = load i32, i32* %6, align 4
  %384 = sub nsw i32 %383, 245
  %385 = sdiv i32 %384, 4
  store i32 %385, i32* %12, align 4
  %386 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %387 = load i32, i32* %7, align 4
  %388 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %386, i32 %387)
  %389 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %390 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %389, i32 0, i32 19
  %391 = load i32*, i32** %390, align 8
  %392 = load i32, i32* %12, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %391, i64 %393
  store i32 %388, i32* %394, align 4
  %395 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %9, align 8
  %396 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 4
  %398 = load i32, i32* @RADEON_TILING_MACRO, align 4
  %399 = and i32 %397, %398
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %420

401:                                              ; preds = %382
  %402 = load i32, i32* @V_0280A0_ARRAY_2D_TILED_THIN1, align 4
  %403 = call i32 @S_0280A0_ARRAY_MODE(i32 %402)
  %404 = load i32*, i32** %13, align 8
  %405 = load i32, i32* %7, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i32, i32* %404, i64 %406
  %408 = load i32, i32* %407, align 4
  %409 = or i32 %408, %403
  store i32 %409, i32* %407, align 4
  %410 = load i32, i32* @V_0280A0_ARRAY_2D_TILED_THIN1, align 4
  %411 = call i32 @S_0280A0_ARRAY_MODE(i32 %410)
  %412 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %413 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %412, i32 0, i32 19
  %414 = load i32*, i32** %413, align 8
  %415 = load i32, i32* %12, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i32, i32* %414, i64 %416
  %418 = load i32, i32* %417, align 4
  %419 = or i32 %418, %411
  store i32 %419, i32* %417, align 4
  br label %447

420:                                              ; preds = %382
  %421 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %9, align 8
  %422 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %421, i32 0, i32 1
  %423 = load i32, i32* %422, align 4
  %424 = load i32, i32* @RADEON_TILING_MICRO, align 4
  %425 = and i32 %423, %424
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %446

427:                                              ; preds = %420
  %428 = load i32, i32* @V_0280A0_ARRAY_1D_TILED_THIN1, align 4
  %429 = call i32 @S_0280A0_ARRAY_MODE(i32 %428)
  %430 = load i32*, i32** %13, align 8
  %431 = load i32, i32* %7, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i32, i32* %430, i64 %432
  %434 = load i32, i32* %433, align 4
  %435 = or i32 %434, %429
  store i32 %435, i32* %433, align 4
  %436 = load i32, i32* @V_0280A0_ARRAY_1D_TILED_THIN1, align 4
  %437 = call i32 @S_0280A0_ARRAY_MODE(i32 %436)
  %438 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %439 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %438, i32 0, i32 19
  %440 = load i32*, i32** %439, align 8
  %441 = load i32, i32* %12, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i32, i32* %440, i64 %442
  %444 = load i32, i32* %443, align 4
  %445 = or i32 %444, %437
  store i32 %445, i32* %443, align 4
  br label %446

446:                                              ; preds = %427, %420
  br label %447

447:                                              ; preds = %446, %401
  br label %461

448:                                              ; preds = %364, %357
  %449 = load i32, i32* %6, align 4
  %450 = sub nsw i32 %449, 245
  %451 = sdiv i32 %450, 4
  store i32 %451, i32* %12, align 4
  %452 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %453 = load i32, i32* %7, align 4
  %454 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %452, i32 %453)
  %455 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %456 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %455, i32 0, i32 19
  %457 = load i32*, i32** %456, align 8
  %458 = load i32, i32* %12, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds i32, i32* %457, i64 %459
  store i32 %454, i32* %460, align 4
  br label %461

461:                                              ; preds = %448, %447
  %462 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %463 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %462, i32 0, i32 14
  store i32 1, i32* %463, align 4
  br label %1003

464:                                              ; preds = %48, %48, %48, %48, %48, %48, %48, %48
  %465 = load i32, i32* %6, align 4
  %466 = sub nsw i32 %465, 253
  %467 = sdiv i32 %466, 4
  store i32 %467, i32* %12, align 4
  %468 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %469 = load i32, i32* %7, align 4
  %470 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %468, i32 %469)
  %471 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %472 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %471, i32 0, i32 20
  %473 = load i32*, i32** %472, align 8
  %474 = load i32, i32* %12, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds i32, i32* %473, i64 %475
  store i32 %470, i32* %476, align 4
  %477 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %478 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %477, i32 0, i32 14
  store i32 1, i32* %478, align 4
  br label %1003

479:                                              ; preds = %48, %48, %48, %48, %48, %48, %48, %48
  %480 = load i32, i32* %6, align 4
  %481 = sub nsw i32 %480, 261
  %482 = sdiv i32 %481, 4
  store i32 %482, i32* %12, align 4
  %483 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %484 = load i32, i32* %7, align 4
  %485 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %483, i32 %484)
  %486 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %487 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %486, i32 0, i32 21
  %488 = load i32*, i32** %487, align 8
  %489 = load i32, i32* %12, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i32, i32* %488, i64 %490
  store i32 %485, i32* %491, align 4
  %492 = load i32, i32* %7, align 4
  %493 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %494 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %493, i32 0, i32 22
  %495 = load i32*, i32** %494, align 8
  %496 = load i32, i32* %12, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds i32, i32* %495, i64 %497
  store i32 %492, i32* %498, align 4
  %499 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %500 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %499, i32 0, i32 14
  store i32 1, i32* %500, align 4
  br label %1003

501:                                              ; preds = %48, %48, %48, %48, %48, %48, %48, %48
  %502 = load i32, i32* %6, align 4
  %503 = sub nsw i32 %502, 229
  %504 = sdiv i32 %503, 4
  store i32 %504, i32* %12, align 4
  %505 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %506 = call i32 @radeon_cs_packet_next_is_pkt3_nop(%struct.radeon_cs_parser* %505)
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %563, label %508

508:                                              ; preds = %501
  %509 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %510 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %509, i32 0, i32 23
  %511 = load i32*, i32** %510, align 8
  %512 = load i32, i32* %12, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds i32, i32* %511, i64 %513
  %515 = load i32, i32* %514, align 4
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %525, label %517

517:                                              ; preds = %508
  %518 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %519 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %518, i32 0, i32 1
  %520 = load i32, i32* %519, align 4
  %521 = load i32, i32* %6, align 4
  %522 = call i32 @dev_err(i32 %520, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0), i32 %521)
  %523 = load i32, i32* @EINVAL, align 4
  %524 = sub nsw i32 0, %523
  store i32 %524, i32* %4, align 4
  br label %1004

525:                                              ; preds = %508
  %526 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %527 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %526, i32 0, i32 36
  %528 = load i32*, i32** %527, align 8
  %529 = load i32, i32* %12, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds i32, i32* %528, i64 %530
  %532 = load i32, i32* %531, align 4
  %533 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %534 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %533, i32 0, i32 38
  %535 = load i32*, i32** %534, align 8
  %536 = load i32, i32* %12, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds i32, i32* %535, i64 %537
  store i32 %532, i32* %538, align 4
  %539 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %540 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %539, i32 0, i32 25
  %541 = load i32*, i32** %540, align 8
  %542 = load i32, i32* %12, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds i32, i32* %541, i64 %543
  %545 = load i32, i32* %544, align 4
  %546 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %547 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %546, i32 0, i32 24
  %548 = load i32*, i32** %547, align 8
  %549 = load i32, i32* %12, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i32, i32* %548, i64 %550
  store i32 %545, i32* %551, align 4
  %552 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %553 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %552, i32 0, i32 23
  %554 = load i32*, i32** %553, align 8
  %555 = load i32, i32* %12, align 4
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds i32, i32* %554, i64 %556
  %558 = load i32, i32* %557, align 4
  %559 = load i32*, i32** %13, align 8
  %560 = load i32, i32* %7, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds i32, i32* %559, i64 %561
  store i32 %558, i32* %562, align 4
  br label %609

563:                                              ; preds = %501
  %564 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %565 = load i32, i32* @r600_nomm, align 4
  %566 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %564, %struct.radeon_bo_list** %9, i32 %565)
  store i32 %566, i32* %14, align 4
  %567 = load i32, i32* %14, align 4
  %568 = icmp ne i32 %567, 0
  br i1 %568, label %569, label %577

569:                                              ; preds = %563
  %570 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %571 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %570, i32 0, i32 1
  %572 = load i32, i32* %571, align 4
  %573 = load i32, i32* %6, align 4
  %574 = call i32 @dev_err(i32 %572, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %573)
  %575 = load i32, i32* @EINVAL, align 4
  %576 = sub nsw i32 0, %575
  store i32 %576, i32* %4, align 4
  br label %1004

577:                                              ; preds = %563
  %578 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %9, align 8
  %579 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %578, i32 0, i32 2
  %580 = load i32, i32* %579, align 4
  %581 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %582 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %581, i32 0, i32 38
  %583 = load i32*, i32** %582, align 8
  %584 = load i32, i32* %12, align 4
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds i32, i32* %583, i64 %585
  store i32 %580, i32* %586, align 4
  %587 = load i32*, i32** %13, align 8
  %588 = load i32, i32* %7, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds i32, i32* %587, i64 %589
  %591 = load i32, i32* %590, align 4
  %592 = shl i32 %591, 8
  %593 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %594 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %593, i32 0, i32 24
  %595 = load i32*, i32** %594, align 8
  %596 = load i32, i32* %12, align 4
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds i32, i32* %595, i64 %597
  store i32 %592, i32* %598, align 4
  %599 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %9, align 8
  %600 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %599, i32 0, i32 0
  %601 = load i32, i32* %600, align 4
  %602 = ashr i32 %601, 8
  %603 = load i32*, i32** %13, align 8
  %604 = load i32, i32* %7, align 4
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds i32, i32* %603, i64 %605
  %607 = load i32, i32* %606, align 4
  %608 = add nsw i32 %607, %602
  store i32 %608, i32* %606, align 4
  br label %609

609:                                              ; preds = %577, %525
  %610 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %611 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %610, i32 0, i32 19
  %612 = load i32*, i32** %611, align 8
  %613 = load i32, i32* %12, align 4
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds i32, i32* %612, i64 %614
  %616 = load i32, i32* %615, align 4
  %617 = call i32 @G_0280A0_TILE_MODE(i32 %616)
  %618 = icmp ne i32 %617, 0
  br i1 %618, label %619, label %622

619:                                              ; preds = %609
  %620 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %621 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %620, i32 0, i32 14
  store i32 1, i32* %621, align 4
  br label %622

622:                                              ; preds = %619, %609
  br label %1003

623:                                              ; preds = %48, %48, %48, %48, %48, %48, %48, %48
  %624 = load i32, i32* %6, align 4
  %625 = sub nsw i32 %624, 237
  %626 = sdiv i32 %625, 4
  store i32 %626, i32* %12, align 4
  %627 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %628 = call i32 @radeon_cs_packet_next_is_pkt3_nop(%struct.radeon_cs_parser* %627)
  %629 = icmp ne i32 %628, 0
  br i1 %629, label %685, label %630

630:                                              ; preds = %623
  %631 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %632 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %631, i32 0, i32 23
  %633 = load i32*, i32** %632, align 8
  %634 = load i32, i32* %12, align 4
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds i32, i32* %633, i64 %635
  %637 = load i32, i32* %636, align 4
  %638 = icmp ne i32 %637, 0
  br i1 %638, label %647, label %639

639:                                              ; preds = %630
  %640 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %641 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %640, i32 0, i32 1
  %642 = load i32, i32* %641, align 4
  %643 = load i32, i32* %6, align 4
  %644 = call i32 @dev_err(i32 %642, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0), i32 %643)
  %645 = load i32, i32* @EINVAL, align 4
  %646 = sub nsw i32 0, %645
  store i32 %646, i32* %4, align 4
  br label %1004

647:                                              ; preds = %630
  %648 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %649 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %648, i32 0, i32 36
  %650 = load i32*, i32** %649, align 8
  %651 = load i32, i32* %12, align 4
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds i32, i32* %650, i64 %652
  %654 = load i32, i32* %653, align 4
  %655 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %656 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %655, i32 0, i32 37
  %657 = load i32*, i32** %656, align 8
  %658 = load i32, i32* %12, align 4
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds i32, i32* %657, i64 %659
  store i32 %654, i32* %660, align 4
  %661 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %662 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %661, i32 0, i32 25
  %663 = load i32*, i32** %662, align 8
  %664 = load i32, i32* %12, align 4
  %665 = sext i32 %664 to i64
  %666 = getelementptr inbounds i32, i32* %663, i64 %665
  %667 = load i32, i32* %666, align 4
  %668 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %669 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %668, i32 0, i32 26
  %670 = load i32*, i32** %669, align 8
  %671 = load i32, i32* %12, align 4
  %672 = sext i32 %671 to i64
  %673 = getelementptr inbounds i32, i32* %670, i64 %672
  store i32 %667, i32* %673, align 4
  %674 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %675 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %674, i32 0, i32 23
  %676 = load i32*, i32** %675, align 8
  %677 = load i32, i32* %12, align 4
  %678 = sext i32 %677 to i64
  %679 = getelementptr inbounds i32, i32* %676, i64 %678
  %680 = load i32, i32* %679, align 4
  %681 = load i32*, i32** %13, align 8
  %682 = load i32, i32* %7, align 4
  %683 = sext i32 %682 to i64
  %684 = getelementptr inbounds i32, i32* %681, i64 %683
  store i32 %680, i32* %684, align 4
  br label %731

685:                                              ; preds = %623
  %686 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %687 = load i32, i32* @r600_nomm, align 4
  %688 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %686, %struct.radeon_bo_list** %9, i32 %687)
  store i32 %688, i32* %14, align 4
  %689 = load i32, i32* %14, align 4
  %690 = icmp ne i32 %689, 0
  br i1 %690, label %691, label %699

691:                                              ; preds = %685
  %692 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %693 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %692, i32 0, i32 1
  %694 = load i32, i32* %693, align 4
  %695 = load i32, i32* %6, align 4
  %696 = call i32 @dev_err(i32 %694, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %695)
  %697 = load i32, i32* @EINVAL, align 4
  %698 = sub nsw i32 0, %697
  store i32 %698, i32* %4, align 4
  br label %1004

699:                                              ; preds = %685
  %700 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %9, align 8
  %701 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %700, i32 0, i32 2
  %702 = load i32, i32* %701, align 4
  %703 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %704 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %703, i32 0, i32 37
  %705 = load i32*, i32** %704, align 8
  %706 = load i32, i32* %12, align 4
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds i32, i32* %705, i64 %707
  store i32 %702, i32* %708, align 4
  %709 = load i32*, i32** %13, align 8
  %710 = load i32, i32* %7, align 4
  %711 = sext i32 %710 to i64
  %712 = getelementptr inbounds i32, i32* %709, i64 %711
  %713 = load i32, i32* %712, align 4
  %714 = shl i32 %713, 8
  %715 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %716 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %715, i32 0, i32 26
  %717 = load i32*, i32** %716, align 8
  %718 = load i32, i32* %12, align 4
  %719 = sext i32 %718 to i64
  %720 = getelementptr inbounds i32, i32* %717, i64 %719
  store i32 %714, i32* %720, align 4
  %721 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %9, align 8
  %722 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %721, i32 0, i32 0
  %723 = load i32, i32* %722, align 4
  %724 = ashr i32 %723, 8
  %725 = load i32*, i32** %13, align 8
  %726 = load i32, i32* %7, align 4
  %727 = sext i32 %726 to i64
  %728 = getelementptr inbounds i32, i32* %725, i64 %727
  %729 = load i32, i32* %728, align 4
  %730 = add nsw i32 %729, %724
  store i32 %730, i32* %728, align 4
  br label %731

731:                                              ; preds = %699, %647
  %732 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %733 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %732, i32 0, i32 19
  %734 = load i32*, i32** %733, align 8
  %735 = load i32, i32* %12, align 4
  %736 = sext i32 %735 to i64
  %737 = getelementptr inbounds i32, i32* %734, i64 %736
  %738 = load i32, i32* %737, align 4
  %739 = call i32 @G_0280A0_TILE_MODE(i32 %738)
  %740 = icmp ne i32 %739, 0
  br i1 %740, label %741, label %744

741:                                              ; preds = %731
  %742 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %743 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %742, i32 0, i32 14
  store i32 1, i32* %743, align 4
  br label %744

744:                                              ; preds = %741, %731
  br label %1003

745:                                              ; preds = %48, %48, %48, %48, %48, %48, %48, %48
  %746 = load i32, i32* %6, align 4
  %747 = sub nsw i32 %746, 221
  %748 = sdiv i32 %747, 4
  store i32 %748, i32* %12, align 4
  %749 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %750 = load i32, i32* %7, align 4
  %751 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %749, i32 %750)
  %752 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %753 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %752, i32 0, i32 27
  %754 = load i32*, i32** %753, align 8
  %755 = load i32, i32* %12, align 4
  %756 = sext i32 %755 to i64
  %757 = getelementptr inbounds i32, i32* %754, i64 %756
  store i32 %751, i32* %757, align 4
  %758 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %759 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %758, i32 0, i32 19
  %760 = load i32*, i32** %759, align 8
  %761 = load i32, i32* %12, align 4
  %762 = sext i32 %761 to i64
  %763 = getelementptr inbounds i32, i32* %760, i64 %762
  %764 = load i32, i32* %763, align 4
  %765 = call i32 @G_0280A0_TILE_MODE(i32 %764)
  %766 = icmp ne i32 %765, 0
  br i1 %766, label %767, label %770

767:                                              ; preds = %745
  %768 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %769 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %768, i32 0, i32 14
  store i32 1, i32* %769, align 4
  br label %770

770:                                              ; preds = %767, %745
  br label %1003

771:                                              ; preds = %48, %48, %48, %48, %48, %48, %48, %48
  %772 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %773 = load i32, i32* @r600_nomm, align 4
  %774 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %772, %struct.radeon_bo_list** %9, i32 %773)
  store i32 %774, i32* %14, align 4
  %775 = load i32, i32* %14, align 4
  %776 = icmp ne i32 %775, 0
  br i1 %776, label %777, label %785

777:                                              ; preds = %771
  %778 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %779 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %778, i32 0, i32 1
  %780 = load i32, i32* %779, align 4
  %781 = load i32, i32* %6, align 4
  %782 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %780, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %781)
  %783 = load i32, i32* @EINVAL, align 4
  %784 = sub nsw i32 0, %783
  store i32 %784, i32* %4, align 4
  br label %1004

785:                                              ; preds = %771
  %786 = load i32, i32* %6, align 4
  %787 = sub nsw i32 %786, 284
  %788 = sdiv i32 %787, 4
  store i32 %788, i32* %12, align 4
  %789 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %790 = load i32, i32* %7, align 4
  %791 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %789, i32 %790)
  %792 = shl i32 %791, 8
  %793 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %794 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %793, i32 0, i32 25
  %795 = load i32*, i32** %794, align 8
  %796 = load i32, i32* %12, align 4
  %797 = sext i32 %796 to i64
  %798 = getelementptr inbounds i32, i32* %795, i64 %797
  store i32 %792, i32* %798, align 4
  %799 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %9, align 8
  %800 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %799, i32 0, i32 0
  %801 = load i32, i32* %800, align 4
  %802 = ashr i32 %801, 8
  %803 = load i32*, i32** %13, align 8
  %804 = load i32, i32* %7, align 4
  %805 = sext i32 %804 to i64
  %806 = getelementptr inbounds i32, i32* %803, i64 %805
  %807 = load i32, i32* %806, align 4
  %808 = add nsw i32 %807, %802
  store i32 %808, i32* %806, align 4
  %809 = load i32*, i32** %13, align 8
  %810 = load i32, i32* %7, align 4
  %811 = sext i32 %810 to i64
  %812 = getelementptr inbounds i32, i32* %809, i64 %811
  %813 = load i32, i32* %812, align 4
  %814 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %815 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %814, i32 0, i32 23
  %816 = load i32*, i32** %815, align 8
  %817 = load i32, i32* %12, align 4
  %818 = sext i32 %817 to i64
  %819 = getelementptr inbounds i32, i32* %816, i64 %818
  store i32 %813, i32* %819, align 4
  %820 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %9, align 8
  %821 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %820, i32 0, i32 2
  %822 = load i32, i32* %821, align 4
  %823 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %824 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %823, i32 0, i32 36
  %825 = load i32*, i32** %824, align 8
  %826 = load i32, i32* %12, align 4
  %827 = sext i32 %826 to i64
  %828 = getelementptr inbounds i32, i32* %825, i64 %827
  store i32 %822, i32* %828, align 4
  %829 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %9, align 8
  %830 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %829, i32 0, i32 0
  %831 = load i32, i32* %830, align 4
  %832 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %833 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %832, i32 0, i32 28
  %834 = load i32*, i32** %833, align 8
  %835 = load i32, i32* %12, align 4
  %836 = sext i32 %835 to i64
  %837 = getelementptr inbounds i32, i32* %834, i64 %836
  store i32 %831, i32* %837, align 4
  %838 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %839 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %838, i32 0, i32 14
  store i32 1, i32* %839, align 4
  br label %1003

840:                                              ; preds = %48
  %841 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %842 = load i32, i32* @r600_nomm, align 4
  %843 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %841, %struct.radeon_bo_list** %9, i32 %842)
  store i32 %843, i32* %14, align 4
  %844 = load i32, i32* %14, align 4
  %845 = icmp ne i32 %844, 0
  br i1 %845, label %846, label %854

846:                                              ; preds = %840
  %847 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %848 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %847, i32 0, i32 1
  %849 = load i32, i32* %848, align 4
  %850 = load i32, i32* %6, align 4
  %851 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %849, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %850)
  %852 = load i32, i32* @EINVAL, align 4
  %853 = sub nsw i32 0, %852
  store i32 %853, i32* %4, align 4
  br label %1004

854:                                              ; preds = %840
  %855 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %856 = load i32, i32* %7, align 4
  %857 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %855, i32 %856)
  %858 = shl i32 %857, 8
  %859 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %860 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %859, i32 0, i32 29
  store i32 %858, i32* %860, align 8
  %861 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %9, align 8
  %862 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %861, i32 0, i32 0
  %863 = load i32, i32* %862, align 4
  %864 = ashr i32 %863, 8
  %865 = load i32*, i32** %13, align 8
  %866 = load i32, i32* %7, align 4
  %867 = sext i32 %866 to i64
  %868 = getelementptr inbounds i32, i32* %865, i64 %867
  %869 = load i32, i32* %868, align 4
  %870 = add nsw i32 %869, %864
  store i32 %870, i32* %868, align 4
  %871 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %9, align 8
  %872 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %871, i32 0, i32 2
  %873 = load i32, i32* %872, align 4
  %874 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %875 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %874, i32 0, i32 35
  store i32 %873, i32* %875, align 8
  %876 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %9, align 8
  %877 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %876, i32 0, i32 0
  %878 = load i32, i32* %877, align 4
  %879 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %880 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %879, i32 0, i32 30
  store i32 %878, i32* %880, align 4
  %881 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %882 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %881, i32 0, i32 2
  store i32 1, i32* %882, align 8
  br label %1003

883:                                              ; preds = %48
  %884 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %885 = load i32, i32* @r600_nomm, align 4
  %886 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %884, %struct.radeon_bo_list** %9, i32 %885)
  store i32 %886, i32* %14, align 4
  %887 = load i32, i32* %14, align 4
  %888 = icmp ne i32 %887, 0
  br i1 %888, label %889, label %897

889:                                              ; preds = %883
  %890 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %891 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %890, i32 0, i32 1
  %892 = load i32, i32* %891, align 4
  %893 = load i32, i32* %6, align 4
  %894 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %892, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %893)
  %895 = load i32, i32* @EINVAL, align 4
  %896 = sub nsw i32 0, %895
  store i32 %896, i32* %4, align 4
  br label %1004

897:                                              ; preds = %883
  %898 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %899 = load i32, i32* %7, align 4
  %900 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %898, i32 %899)
  %901 = shl i32 %900, 8
  %902 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %903 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %902, i32 0, i32 31
  store i32 %901, i32* %903, align 8
  %904 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %9, align 8
  %905 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %904, i32 0, i32 0
  %906 = load i32, i32* %905, align 4
  %907 = ashr i32 %906, 8
  %908 = load i32*, i32** %13, align 8
  %909 = load i32, i32* %7, align 4
  %910 = sext i32 %909 to i64
  %911 = getelementptr inbounds i32, i32* %908, i64 %910
  %912 = load i32, i32* %911, align 4
  %913 = add nsw i32 %912, %907
  store i32 %913, i32* %911, align 4
  %914 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %9, align 8
  %915 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %914, i32 0, i32 2
  %916 = load i32, i32* %915, align 4
  %917 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %918 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %917, i32 0, i32 34
  store i32 %916, i32* %918, align 4
  %919 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %920 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %919, i32 0, i32 2
  store i32 1, i32* %920, align 8
  br label %1003

921:                                              ; preds = %48
  %922 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %923 = load i32, i32* %7, align 4
  %924 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %922, i32 %923)
  %925 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %926 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %925, i32 0, i32 32
  store i32 %924, i32* %926, align 4
  %927 = load i32*, i32** %13, align 8
  %928 = load i32, i32* %7, align 4
  %929 = sext i32 %928 to i64
  %930 = getelementptr inbounds i32, i32* %927, i64 %929
  %931 = load i32, i32* %930, align 4
  %932 = or i32 %931, 3
  store i32 %932, i32* %930, align 4
  %933 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %934 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %933, i32 0, i32 2
  store i32 1, i32* %934, align 8
  br label %1003

935:                                              ; preds = %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48
  %936 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %937 = load i32, i32* @r600_nomm, align 4
  %938 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %936, %struct.radeon_bo_list** %9, i32 %937)
  store i32 %938, i32* %14, align 4
  %939 = load i32, i32* %14, align 4
  %940 = icmp ne i32 %939, 0
  br i1 %940, label %941, label %949

941:                                              ; preds = %935
  %942 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %943 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %942, i32 0, i32 1
  %944 = load i32, i32* %943, align 4
  %945 = load i32, i32* %6, align 4
  %946 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %944, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %945)
  %947 = load i32, i32* @EINVAL, align 4
  %948 = sub nsw i32 0, %947
  store i32 %948, i32* %4, align 4
  br label %1004

949:                                              ; preds = %935
  %950 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %9, align 8
  %951 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %950, i32 0, i32 0
  %952 = load i32, i32* %951, align 4
  %953 = ashr i32 %952, 8
  %954 = load i32*, i32** %13, align 8
  %955 = load i32, i32* %7, align 4
  %956 = sext i32 %955 to i64
  %957 = getelementptr inbounds i32, i32* %954, i64 %956
  %958 = load i32, i32* %957, align 4
  %959 = add nsw i32 %958, %953
  store i32 %959, i32* %957, align 4
  br label %1003

960:                                              ; preds = %48
  %961 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %962 = load i32, i32* @r600_nomm, align 4
  %963 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %961, %struct.radeon_bo_list** %9, i32 %962)
  store i32 %963, i32* %14, align 4
  %964 = load i32, i32* %14, align 4
  %965 = icmp ne i32 %964, 0
  br i1 %965, label %966, label %974

966:                                              ; preds = %960
  %967 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %968 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %967, i32 0, i32 1
  %969 = load i32, i32* %968, align 4
  %970 = load i32, i32* %6, align 4
  %971 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %969, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %970)
  %972 = load i32, i32* @EINVAL, align 4
  %973 = sub nsw i32 0, %972
  store i32 %973, i32* %4, align 4
  br label %1004

974:                                              ; preds = %960
  %975 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %9, align 8
  %976 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %975, i32 0, i32 0
  %977 = load i32, i32* %976, align 4
  %978 = ashr i32 %977, 8
  %979 = load i32*, i32** %13, align 8
  %980 = load i32, i32* %7, align 4
  %981 = sext i32 %980 to i64
  %982 = getelementptr inbounds i32, i32* %979, i64 %981
  %983 = load i32, i32* %982, align 4
  %984 = add nsw i32 %983, %978
  store i32 %984, i32* %982, align 4
  br label %1003

985:                                              ; preds = %48
  %986 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %987 = load i32, i32* %7, align 4
  %988 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %986, i32 %987)
  %989 = and i32 %988, 1
  %990 = icmp ne i32 %989, 0
  %991 = zext i1 %990 to i32
  %992 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %993 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %992, i32 0, i32 33
  store i32 %991, i32* %993, align 8
  br label %1003

994:                                              ; preds = %48
  %995 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %996 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %995, i32 0, i32 1
  %997 = load i32, i32* %996, align 4
  %998 = load i32, i32* %6, align 4
  %999 = load i32, i32* %7, align 4
  %1000 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %997, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %998, i32 %999)
  %1001 = load i32, i32* @EINVAL, align 4
  %1002 = sub nsw i32 0, %1001
  store i32 %1002, i32* %4, align 4
  br label %1004

1003:                                             ; preds = %985, %974, %949, %921, %897, %854, %785, %770, %744, %622, %479, %464, %461, %344, %330, %324, %316, %305, %275, %231, %209, %201, %190, %182, %179, %85, %79, %68, %54
  store i32 0, i32* %4, align 4
  br label %1004

1004:                                             ; preds = %1003, %994, %966, %941, %889, %846, %777, %691, %639, %569, %517, %374, %297, %223, %110, %60, %47, %25
  %1005 = load i32, i32* %4, align 4
  ret i32 %1005
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, ...) #1

declare dso_local i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser*, %struct.radeon_bo_list**, i32) #1

declare dso_local i32 @radeon_get_ib_value(%struct.radeon_cs_parser*, i32) #1

declare dso_local i32 @radeon_cs_packet_next_is_pkt3_nop(%struct.radeon_cs_parser*) #1

declare dso_local i32 @S_028010_ARRAY_MODE(i32) #1

declare dso_local i32 @G_028C04_MSAA_NUM_SAMPLES(i32) #1

declare dso_local i32 @G_028808_SPECIAL_OP(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @S_0280A0_ARRAY_MODE(i32) #1

declare dso_local i32 @G_0280A0_TILE_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
