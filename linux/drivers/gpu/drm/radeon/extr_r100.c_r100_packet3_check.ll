; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_packet3_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_packet3_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { i32, %struct.TYPE_6__*, i64, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32* }
%struct.radeon_cs_packet = type { i32, i32, i32 }
%struct.radeon_bo_list = type { i32, i32 }
%struct.r100_cs_track = type { i32, i32, i32, i32, i8*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i32 }

@.str = private unnamed_addr constant [25 x i8] c"No reloc for packet3 %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"PRIM_WALK must be 3 for IMMD draw\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Packet3 opcode %x not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_cs_parser*, %struct.radeon_cs_packet*)* @r100_packet3_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r100_packet3_check(%struct.radeon_cs_parser* %0, %struct.radeon_cs_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_cs_parser*, align 8
  %5 = alloca %struct.radeon_cs_packet*, align 8
  %6 = alloca %struct.radeon_bo_list*, align 8
  %7 = alloca %struct.r100_cs_track*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %4, align 8
  store %struct.radeon_cs_packet* %1, %struct.radeon_cs_packet** %5, align 8
  %11 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %12 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %9, align 8
  %15 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %16 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %8, align 4
  %19 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %20 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.r100_cs_track*
  store %struct.r100_cs_track* %22, %struct.r100_cs_track** %7, align 8
  %23 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %24 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %309 [
    i32 130, label %26
    i32 129, label %36
    i32 35, label %75
    i32 136, label %154
    i32 135, label %196
    i32 131, label %228
    i32 133, label %244
    i32 132, label %260
    i32 134, label %277
    i32 138, label %294
    i32 137, label %294
    i32 128, label %308
  ]

26:                                               ; preds = %2
  %27 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %28 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @r100_packet3_load_vbpntr(%struct.radeon_cs_parser* %27, %struct.radeon_cs_packet* %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %3, align 4
  br label %317

35:                                               ; preds = %26
  br label %316

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
  br label %317

50:                                               ; preds = %36
  %51 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %52 = load i32, i32* %8, align 4
  %53 = add i32 %52, 1
  %54 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %51, i32 %53)
  %55 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %6, align 8
  %56 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %54, %57
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %8, align 4
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
  br label %317

74:                                               ; preds = %50
  br label %316

75:                                               ; preds = %2
  %76 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %77 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %76, %struct.radeon_bo_list** %6, i32 0)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %75
  %81 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %82 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %83)
  %85 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %86 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %87 = call i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser* %85, %struct.radeon_cs_packet* %86)
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %3, align 4
  br label %317

89:                                               ; preds = %75
  %90 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %90, i32 %91)
  %93 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %6, align 8
  %94 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %92, %95
  %97 = load i32*, i32** %9, align 8
  %98 = load i32, i32* %8, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store volatile i32 %96, i32* %100, align 4
  %101 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %102 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  %103 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %104 = load i32, i32* %8, align 4
  %105 = add i32 %104, 2
  %106 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %103, i32 %105)
  %107 = call i8* @r100_get_vtx_size(i32 %106)
  %108 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %109 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %108, i32 0, i32 4
  store i8* %107, i8** %109, align 8
  %110 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %6, align 8
  %111 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %114 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %113, i32 0, i32 5
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  store i32 %112, i32* %117, align 8
  %118 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %119 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %118, i32 0, i32 4
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %122 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %121, i32 0, i32 5
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i64 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  store i8* %120, i8** %125, align 8
  %126 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %127 = load i32, i32* %8, align 4
  %128 = add i32 %127, 1
  %129 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %126, i32 %128)
  %130 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %131 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %133 = load i32, i32* %8, align 4
  %134 = add i32 %133, 3
  %135 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %132, i32 %134)
  %136 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %137 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  %138 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %139 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = sub nsw i32 %140, 1
  %142 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %143 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %142, i32 0, i32 3
  store i32 %141, i32* %143, align 4
  %144 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %145 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %144, i32 0, i32 1
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %148 = call i32 @r100_cs_track_check(%struct.TYPE_6__* %146, %struct.r100_cs_track* %147)
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %89
  %152 = load i32, i32* %10, align 4
  store i32 %152, i32* %3, align 4
  br label %317

153:                                              ; preds = %89
  br label %316

154:                                              ; preds = %2
  %155 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %156 = load i32, i32* %8, align 4
  %157 = add i32 %156, 1
  %158 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %155, i32 %157)
  %159 = ashr i32 %158, 4
  %160 = and i32 %159, 3
  %161 = icmp ne i32 %160, 3
  br i1 %161, label %162, label %166

162:                                              ; preds = %154
  %163 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %164 = load i32, i32* @EINVAL, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %3, align 4
  br label %317

166:                                              ; preds = %154
  %167 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %168 = load i32, i32* %8, align 4
  %169 = add i32 %168, 0
  %170 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %167, i32 %169)
  %171 = call i8* @r100_get_vtx_size(i32 %170)
  %172 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %173 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %172, i32 0, i32 4
  store i8* %171, i8** %173, align 8
  %174 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %175 = load i32, i32* %8, align 4
  %176 = add i32 %175, 1
  %177 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %174, i32 %176)
  %178 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %179 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %178, i32 0, i32 2
  store i32 %177, i32* %179, align 8
  %180 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %181 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = sub nsw i32 %182, 1
  %184 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %185 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %184, i32 0, i32 3
  store i32 %183, i32* %185, align 4
  %186 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %187 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %186, i32 0, i32 1
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %187, align 8
  %189 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %190 = call i32 @r100_cs_track_check(%struct.TYPE_6__* %188, %struct.r100_cs_track* %189)
  store i32 %190, i32* %10, align 4
  %191 = load i32, i32* %10, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %166
  %194 = load i32, i32* %10, align 4
  store i32 %194, i32* %3, align 4
  br label %317

195:                                              ; preds = %166
  br label %316

196:                                              ; preds = %2
  %197 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %198 = load i32, i32* %8, align 4
  %199 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %197, i32 %198)
  %200 = ashr i32 %199, 4
  %201 = and i32 %200, 3
  %202 = icmp ne i32 %201, 3
  br i1 %202, label %203, label %207

203:                                              ; preds = %196
  %204 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %205 = load i32, i32* @EINVAL, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %3, align 4
  br label %317

207:                                              ; preds = %196
  %208 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %209 = load i32, i32* %8, align 4
  %210 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %208, i32 %209)
  %211 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %212 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %211, i32 0, i32 2
  store i32 %210, i32* %212, align 8
  %213 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %214 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %217 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %216, i32 0, i32 3
  store i32 %215, i32* %217, align 4
  %218 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %219 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %218, i32 0, i32 1
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %219, align 8
  %221 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %222 = call i32 @r100_cs_track_check(%struct.TYPE_6__* %220, %struct.r100_cs_track* %221)
  store i32 %222, i32* %10, align 4
  %223 = load i32, i32* %10, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %207
  %226 = load i32, i32* %10, align 4
  store i32 %226, i32* %3, align 4
  br label %317

227:                                              ; preds = %207
  br label %316

228:                                              ; preds = %2
  %229 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %230 = load i32, i32* %8, align 4
  %231 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %229, i32 %230)
  %232 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %233 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %232, i32 0, i32 2
  store i32 %231, i32* %233, align 8
  %234 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %235 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %234, i32 0, i32 1
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %235, align 8
  %237 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %238 = call i32 @r100_cs_track_check(%struct.TYPE_6__* %236, %struct.r100_cs_track* %237)
  store i32 %238, i32* %10, align 4
  %239 = load i32, i32* %10, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %228
  %242 = load i32, i32* %10, align 4
  store i32 %242, i32* %3, align 4
  br label %317

243:                                              ; preds = %228
  br label %316

244:                                              ; preds = %2
  %245 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %246 = load i32, i32* %8, align 4
  %247 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %245, i32 %246)
  %248 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %249 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %248, i32 0, i32 2
  store i32 %247, i32* %249, align 8
  %250 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %251 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %250, i32 0, i32 1
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %251, align 8
  %253 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %254 = call i32 @r100_cs_track_check(%struct.TYPE_6__* %252, %struct.r100_cs_track* %253)
  store i32 %254, i32* %10, align 4
  %255 = load i32, i32* %10, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %244
  %258 = load i32, i32* %10, align 4
  store i32 %258, i32* %3, align 4
  br label %317

259:                                              ; preds = %244
  br label %316

260:                                              ; preds = %2
  %261 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %262 = load i32, i32* %8, align 4
  %263 = add i32 %262, 1
  %264 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %261, i32 %263)
  %265 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %266 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %265, i32 0, i32 2
  store i32 %264, i32* %266, align 8
  %267 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %268 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %267, i32 0, i32 1
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** %268, align 8
  %270 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %271 = call i32 @r100_cs_track_check(%struct.TYPE_6__* %269, %struct.r100_cs_track* %270)
  store i32 %271, i32* %10, align 4
  %272 = load i32, i32* %10, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %260
  %275 = load i32, i32* %10, align 4
  store i32 %275, i32* %3, align 4
  br label %317

276:                                              ; preds = %260
  br label %316

277:                                              ; preds = %2
  %278 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %279 = load i32, i32* %8, align 4
  %280 = add i32 %279, 1
  %281 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %278, i32 %280)
  %282 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %283 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %282, i32 0, i32 2
  store i32 %281, i32* %283, align 8
  %284 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %285 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %284, i32 0, i32 1
  %286 = load %struct.TYPE_6__*, %struct.TYPE_6__** %285, align 8
  %287 = load %struct.r100_cs_track*, %struct.r100_cs_track** %7, align 8
  %288 = call i32 @r100_cs_track_check(%struct.TYPE_6__* %286, %struct.r100_cs_track* %287)
  store i32 %288, i32* %10, align 4
  %289 = load i32, i32* %10, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %293

291:                                              ; preds = %277
  %292 = load i32, i32* %10, align 4
  store i32 %292, i32* %3, align 4
  br label %317

293:                                              ; preds = %277
  br label %316

294:                                              ; preds = %2, %2
  %295 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %296 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %295, i32 0, i32 1
  %297 = load %struct.TYPE_6__*, %struct.TYPE_6__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %301 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = icmp ne i32 %299, %302
  br i1 %303, label %304, label %307

304:                                              ; preds = %294
  %305 = load i32, i32* @EINVAL, align 4
  %306 = sub nsw i32 0, %305
  store i32 %306, i32* %3, align 4
  br label %317

307:                                              ; preds = %294
  br label %316

308:                                              ; preds = %2
  br label %316

309:                                              ; preds = %2
  %310 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %5, align 8
  %311 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %312)
  %314 = load i32, i32* @EINVAL, align 4
  %315 = sub nsw i32 0, %314
  store i32 %315, i32* %3, align 4
  br label %317

316:                                              ; preds = %308, %307, %293, %276, %259, %243, %227, %195, %153, %74, %35
  store i32 0, i32* %3, align 4
  br label %317

317:                                              ; preds = %316, %309, %304, %291, %274, %257, %241, %225, %203, %193, %162, %151, %80, %72, %41, %33
  %318 = load i32, i32* %3, align 4
  ret i32 %318
}

declare dso_local i32 @r100_packet3_load_vbpntr(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*, i32) #1

declare dso_local i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser*, %struct.radeon_bo_list**, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*) #1

declare dso_local i32 @radeon_get_ib_value(%struct.radeon_cs_parser*, i32) #1

declare dso_local i32 @r100_cs_track_check_pkt3_indx_buffer(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*, i32) #1

declare dso_local i8* @r100_get_vtx_size(i32) #1

declare dso_local i32 @r100_cs_track_check(%struct.TYPE_6__*, %struct.r100_cs_track*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
