; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r300.c_r300_packet3_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r300.c_r300_packet3_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { i32, %struct.TYPE_4__*, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.radeon_cs_packet = type { i32, i32, i32 }
%struct.radeon_bo_list = type { i32, i32 }
%struct.r100_cs_track = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"No reloc for packet3 %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"PRIM_WALK must be 3 for IMMD draw\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Packet3 opcode %x not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_cs_parser*, %struct.radeon_cs_packet*)* @r300_packet3_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r300_packet3_check(%struct.radeon_cs_parser* %0, %struct.radeon_cs_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_cs_parser*, align 8
  %5 = alloca %struct.radeon_cs_packet*, align 8
  %6 = alloca %struct.radeon_bo_list*, align 8
  %7 = alloca %struct.r100_cs_track*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %4, align 8
  store %struct.radeon_cs_packet* %1, %struct.radeon_cs_packet** %5, align 8
  %11 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %12 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %8, align 8
  %15 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %16 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %9, align 4
  %19 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %20 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.r100_cs_track*
  store %struct.r100_cs_track* %22, %struct.r100_cs_track** %7, align 8
  %23 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %24 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %237 [
    i32 130, label %26
    i32 129, label %36
    i32 136, label %75
    i32 135, label %110
    i32 132, label %142
    i32 131, label %159
    i32 134, label %175
    i32 133, label %192
    i32 138, label %208
    i32 137, label %208
    i32 139, label %222
    i32 128, label %236
  ]

26:                                               ; preds = %2
  %27 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %28 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @r100_packet3_load_vbpntr(%struct.radeon_cs_parser* %27, %struct.radeon_cs_packet* %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %3, align 4
  br label %245

35:                                               ; preds = %26
  br label %244

36:                                               ; preds = %2
  %37 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %38 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %37, %struct.radeon_bo_list** %6, i32 0)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %43 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %47 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %48 = call i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser* %46, %struct.radeon_cs_packet* %47)
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %3, align 4
  br label %245

50:                                               ; preds = %36
  %51 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %52 = load i32, i32* %9, align 4
  %53 = add i32 %52, 1
  %54 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %51, i32 %53)
  %55 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %6, align 8
  %56 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %54, %57
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = add i32 %60, 1
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  store volatile i32 %58, i32* %63, align 4
  %64 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %65 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %66 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %6, align 8
  %67 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @r100_cs_track_check_pkt3_indx_buffer(%struct.radeon_cs_parser* %64, %struct.radeon_cs_packet* %65, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %50
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %3, align 4
  br label %245

74:                                               ; preds = %50
  br label %244

75:                                               ; preds = %2
  %76 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %77 = load i32, i32* %9, align 4
  %78 = add i32 %77, 1
  %79 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %76, i32 %78)
  %80 = ashr i32 %79, 4
  %81 = and i32 %80, 3
  %82 = icmp ne i32 %81, 3
  br i1 %82, label %83, label %87

83:                                               ; preds = %75
  %84 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %245

87:                                               ; preds = %75
  %88 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %89 = load i32, i32* %9, align 4
  %90 = add i32 %89, 1
  %91 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %88, i32 %90)
  %92 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %93 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %95 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 %96, 1
  %98 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %99 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %101 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %100, i32 0, i32 1
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %104 = call i32 @r100_cs_track_check(%struct.TYPE_4__* %102, %struct.r100_cs_track* %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %87
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %3, align 4
  br label %245

109:                                              ; preds = %87
  br label %244

110:                                              ; preds = %2
  %111 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %111, i32 %112)
  %114 = ashr i32 %113, 4
  %115 = and i32 %114, 3
  %116 = icmp ne i32 %115, 3
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %3, align 4
  br label %245

121:                                              ; preds = %110
  %122 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %122, i32 %123)
  %125 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %126 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 4
  %127 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %128 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %131 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %133 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %132, i32 0, i32 1
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %136 = call i32 @r100_cs_track_check(%struct.TYPE_4__* %134, %struct.r100_cs_track* %135)
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %121
  %140 = load i32, i32* %10, align 4
  store i32 %140, i32* %3, align 4
  br label %245

141:                                              ; preds = %121
  br label %244

142:                                              ; preds = %2
  %143 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %144 = load i32, i32* %9, align 4
  %145 = add i32 %144, 1
  %146 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %143, i32 %145)
  %147 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %148 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 4
  %149 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %150 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %149, i32 0, i32 1
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %153 = call i32 @r100_cs_track_check(%struct.TYPE_4__* %151, %struct.r100_cs_track* %152)
  store i32 %153, i32* %10, align 4
  %154 = load i32, i32* %10, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %142
  %157 = load i32, i32* %10, align 4
  store i32 %157, i32* %3, align 4
  br label %245

158:                                              ; preds = %142
  br label %244

159:                                              ; preds = %2
  %160 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %161 = load i32, i32* %9, align 4
  %162 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %160, i32 %161)
  %163 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %164 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 4
  %165 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %166 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %165, i32 0, i32 1
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %169 = call i32 @r100_cs_track_check(%struct.TYPE_4__* %167, %struct.r100_cs_track* %168)
  store i32 %169, i32* %10, align 4
  %170 = load i32, i32* %10, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %159
  %173 = load i32, i32* %10, align 4
  store i32 %173, i32* %3, align 4
  br label %245

174:                                              ; preds = %159
  br label %244

175:                                              ; preds = %2
  %176 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %177 = load i32, i32* %9, align 4
  %178 = add i32 %177, 1
  %179 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %176, i32 %178)
  %180 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %181 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 4
  %182 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %183 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %182, i32 0, i32 1
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %183, align 8
  %185 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %186 = call i32 @r100_cs_track_check(%struct.TYPE_4__* %184, %struct.r100_cs_track* %185)
  store i32 %186, i32* %10, align 4
  %187 = load i32, i32* %10, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %175
  %190 = load i32, i32* %10, align 4
  store i32 %190, i32* %3, align 4
  br label %245

191:                                              ; preds = %175
  br label %244

192:                                              ; preds = %2
  %193 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %194 = load i32, i32* %9, align 4
  %195 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %193, i32 %194)
  %196 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %197 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 4
  %198 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %199 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %198, i32 0, i32 1
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %199, align 8
  %201 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %202 = call i32 @r100_cs_track_check(%struct.TYPE_4__* %200, %struct.r100_cs_track* %201)
  store i32 %202, i32* %10, align 4
  %203 = load i32, i32* %10, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %192
  %206 = load i32, i32* %10, align 4
  store i32 %206, i32* %3, align 4
  br label %245

207:                                              ; preds = %192
  br label %244

208:                                              ; preds = %2, %2
  %209 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %210 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %209, i32 0, i32 1
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %215 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp ne i32 %213, %216
  br i1 %217, label %218, label %221

218:                                              ; preds = %208
  %219 = load i32, i32* @EINVAL, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %3, align 4
  br label %245

221:                                              ; preds = %208
  br label %244

222:                                              ; preds = %2
  %223 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %224 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %223, i32 0, i32 1
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %229 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = icmp ne i32 %227, %230
  br i1 %231, label %232, label %235

232:                                              ; preds = %222
  %233 = load i32, i32* @EINVAL, align 4
  %234 = sub nsw i32 0, %233
  store i32 %234, i32* %3, align 4
  br label %245

235:                                              ; preds = %222
  br label %244

236:                                              ; preds = %2
  br label %244

237:                                              ; preds = %2
  %238 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %239 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %240)
  %242 = load i32, i32* @EINVAL, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %3, align 4
  br label %245

244:                                              ; preds = %236, %235, %221, %207, %191, %174, %158, %141, %109, %74, %35
  store i32 0, i32* %3, align 4
  br label %245

245:                                              ; preds = %244, %237, %232, %218, %205, %189, %172, %156, %139, %117, %107, %83, %72, %41, %33
  %246 = load i32, i32* %3, align 4
  ret i32 %246
}

declare dso_local i32 @r100_packet3_load_vbpntr(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*, i32) #1

declare dso_local i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser*, %struct.radeon_bo_list**, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*) #1

declare dso_local i32 @radeon_get_ib_value(%struct.radeon_cs_parser*, i32) #1

declare dso_local i32 @r100_cs_track_check_pkt3_indx_buffer(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*, i32) #1

declare dso_local i32 @r100_cs_track_check(%struct.TYPE_4__*, %struct.r100_cs_track*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
