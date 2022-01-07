; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_packet3_load_vbpntr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_packet3_load_vbpntr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.radeon_cs_packet = type { i32 }
%struct.radeon_bo_list = type { i32, i64 }
%struct.r100_cs_track = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Only 16 vertex buffers are allowed %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"No reloc for packet3 %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r100_packet3_load_vbpntr(%struct.radeon_cs_parser* %0, %struct.radeon_cs_packet* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_cs_parser*, align 8
  %6 = alloca %struct.radeon_cs_packet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.radeon_bo_list*, align 8
  %11 = alloca %struct.r100_cs_track*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %5, align 8
  store %struct.radeon_cs_packet* %1, %struct.radeon_cs_packet** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %16 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %13, align 8
  %19 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %20 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.r100_cs_track*
  store %struct.r100_cs_track* %22, %struct.r100_cs_track** %11, align 8
  %23 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  %26 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %23, i32 %24)
  %27 = and i32 %26, 31
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ugt i32 %28, 16
  br i1 %29, label %30, label %40

30:                                               ; preds = %3
  %31 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %32 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %36 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %37 = call i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser* %35, %struct.radeon_cs_packet* %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %245

40:                                               ; preds = %3
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %43 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %171, %40
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = sub i32 %46, 1
  %48 = icmp ult i32 %45, %47
  br i1 %48, label %49, label %176

49:                                               ; preds = %44
  %50 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %51 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %50, %struct.radeon_bo_list** %10, i32 0)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %56 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %60 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %61 = call i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser* %59, %struct.radeon_cs_packet* %60)
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %4, align 4
  br label %245

63:                                               ; preds = %49
  %64 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %64, i32 %65)
  store i32 %66, i32* %14, align 4
  %67 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  %70 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %67, i32 %69)
  %71 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %10, align 8
  %72 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = add nsw i32 %70, %74
  %76 = load i32*, i32** %13, align 8
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  store volatile i32 %75, i32* %80, align 4
  %81 = load i32, i32* %14, align 4
  %82 = ashr i32 %81, 8
  %83 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %84 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = add i32 %86, 0
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i32 %82, i32* %90, align 4
  %91 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %10, align 8
  %92 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %95 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = add i32 %97, 0
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  store i32 %93, i32* %101, align 4
  %102 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %103 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = add i32 %105, 0
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, 127
  store i32 %111, i32* %109, align 4
  %112 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %113 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %112, %struct.radeon_bo_list** %10, i32 0)
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %63
  %117 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %118 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %119)
  %121 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %122 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %123 = call i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser* %121, %struct.radeon_cs_packet* %122)
  %124 = load i32, i32* %12, align 4
  store i32 %124, i32* %4, align 4
  br label %245

125:                                              ; preds = %63
  %126 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, 2
  %129 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %126, i32 %128)
  %130 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %10, align 8
  %131 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = add nsw i32 %129, %133
  %135 = load i32*, i32** %13, align 8
  %136 = load i32, i32* %7, align 4
  %137 = add nsw i32 %136, 2
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  store volatile i32 %134, i32* %139, align 4
  %140 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %10, align 8
  %141 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %144 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %143, i32 0, i32 1
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = add i32 %146, 1
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  store i32 %142, i32* %150, align 4
  %151 = load i32, i32* %14, align 4
  %152 = ashr i32 %151, 24
  %153 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %154 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %153, i32 0, i32 1
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = load i32, i32* %9, align 4
  %157 = add i32 %156, 1
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  store i32 %152, i32* %160, align 4
  %161 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %162 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %161, i32 0, i32 1
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = load i32, i32* %9, align 4
  %165 = add i32 %164, 1
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = and i32 %169, 127
  store i32 %170, i32* %168, align 4
  br label %171

171:                                              ; preds = %125
  %172 = load i32, i32* %9, align 4
  %173 = add i32 %172, 2
  store i32 %173, i32* %9, align 4
  %174 = load i32, i32* %7, align 4
  %175 = add nsw i32 %174, 3
  store i32 %175, i32* %7, align 4
  br label %44

176:                                              ; preds = %44
  %177 = load i32, i32* %8, align 4
  %178 = and i32 %177, 1
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %243

180:                                              ; preds = %176
  %181 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %182 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %181, %struct.radeon_bo_list** %10, i32 0)
  store i32 %182, i32* %12, align 4
  %183 = load i32, i32* %12, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %194

185:                                              ; preds = %180
  %186 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %187 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %188)
  %190 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %191 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %192 = call i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser* %190, %struct.radeon_cs_packet* %191)
  %193 = load i32, i32* %12, align 4
  store i32 %193, i32* %4, align 4
  br label %245

194:                                              ; preds = %180
  %195 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %196 = load i32, i32* %7, align 4
  %197 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %195, i32 %196)
  store i32 %197, i32* %14, align 4
  %198 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %199 = load i32, i32* %7, align 4
  %200 = add nsw i32 %199, 1
  %201 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %198, i32 %200)
  %202 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %10, align 8
  %203 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = trunc i64 %204 to i32
  %206 = add nsw i32 %201, %205
  %207 = load i32*, i32** %13, align 8
  %208 = load i32, i32* %7, align 4
  %209 = add nsw i32 %208, 1
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %207, i64 %210
  store volatile i32 %206, i32* %211, align 4
  %212 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %10, align 8
  %213 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %216 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %215, i32 0, i32 1
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %216, align 8
  %218 = load i32, i32* %9, align 4
  %219 = add i32 %218, 0
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 1
  store i32 %214, i32* %222, align 4
  %223 = load i32, i32* %14, align 4
  %224 = ashr i32 %223, 8
  %225 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %226 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %225, i32 0, i32 1
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %226, align 8
  %228 = load i32, i32* %9, align 4
  %229 = add i32 %228, 0
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 0
  store i32 %224, i32* %232, align 4
  %233 = load %struct.r100_cs_track*, %struct.r100_cs_track** %11, align 8
  %234 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %233, i32 0, i32 1
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %234, align 8
  %236 = load i32, i32* %9, align 4
  %237 = add i32 %236, 0
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = and i32 %241, 127
  store i32 %242, i32* %240, align 4
  br label %243

243:                                              ; preds = %194, %176
  %244 = load i32, i32* %12, align 4
  store i32 %244, i32* %4, align 4
  br label %245

245:                                              ; preds = %243, %185, %116, %54, %30
  %246 = load i32, i32* %4, align 4
  ret i32 %246
}

declare dso_local i32 @radeon_get_ib_value(%struct.radeon_cs_parser*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*) #1

declare dso_local i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser*, %struct.radeon_bo_list**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
