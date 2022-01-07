; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_get_tmds_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_get_tmds_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_encoder = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.radeon_mode_info }
%struct.radeon_mode_info = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.radeon_encoder_int_tmds = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct._ATOM_TMDS_INFO = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@DATA = common dso_local global i32 0, align 4
@TMDS_Info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"TMDS PLL From ATOMBIOS %u %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_atombios_get_tmds_info(%struct.radeon_encoder* %0, %struct.radeon_encoder_int_tmds* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_encoder*, align 8
  %5 = alloca %struct.radeon_encoder_int_tmds*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca %struct.radeon_mode_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct._ATOM_TMDS_INFO*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.radeon_encoder* %0, %struct.radeon_encoder** %4, align 8
  store %struct.radeon_encoder_int_tmds* %1, %struct.radeon_encoder_int_tmds** %5, align 8
  %16 = load %struct.radeon_encoder*, %struct.radeon_encoder** %4, align 8
  %17 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.drm_device*, %struct.drm_device** %18, align 8
  store %struct.drm_device* %19, %struct.drm_device** %6, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 0
  %22 = load %struct.radeon_device*, %struct.radeon_device** %21, align 8
  store %struct.radeon_device* %22, %struct.radeon_device** %7, align 8
  %23 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 0
  store %struct.radeon_mode_info* %24, %struct.radeon_mode_info** %8, align 8
  %25 = load i32, i32* @DATA, align 4
  %26 = load i32, i32* @TMDS_Info, align 4
  %27 = call i32 @GetIndexIntoMasterTable(i32 %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %8, align 8
  %29 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @atom_parse_data_header(%struct.TYPE_8__* %30, i32 %31, i32* null, i32* %12, i32* %13, i32* %10)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %183

34:                                               ; preds = %2
  %35 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %8, align 8
  %36 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to %struct._ATOM_TMDS_INFO*
  store %struct._ATOM_TMDS_INFO* %43, %struct._ATOM_TMDS_INFO** %11, align 8
  %44 = load %struct._ATOM_TMDS_INFO*, %struct._ATOM_TMDS_INFO** %11, align 8
  %45 = getelementptr inbounds %struct._ATOM_TMDS_INFO, %struct._ATOM_TMDS_INFO* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @le16_to_cpu(i32 %46)
  %48 = ptrtoint i8* %47 to i32
  store i32 %48, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %49

49:                                               ; preds = %179, %34
  %50 = load i32, i32* %15, align 4
  %51 = icmp slt i32 %50, 4
  br i1 %51, label %52, label %182

52:                                               ; preds = %49
  %53 = load %struct._ATOM_TMDS_INFO*, %struct._ATOM_TMDS_INFO** %11, align 8
  %54 = getelementptr inbounds %struct._ATOM_TMDS_INFO, %struct._ATOM_TMDS_INFO* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @le16_to_cpu(i32 %60)
  %62 = ptrtoint i8* %61 to i32
  %63 = load %struct.radeon_encoder_int_tmds*, %struct.radeon_encoder_int_tmds** %5, align 8
  %64 = getelementptr inbounds %struct.radeon_encoder_int_tmds, %struct.radeon_encoder_int_tmds* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = load i32, i32* %15, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i32 %62, i32* %69, align 4
  %70 = load %struct._ATOM_TMDS_INFO*, %struct._ATOM_TMDS_INFO** %11, align 8
  %71 = getelementptr inbounds %struct._ATOM_TMDS_INFO, %struct._ATOM_TMDS_INFO* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 63
  %79 = load %struct.radeon_encoder_int_tmds*, %struct.radeon_encoder_int_tmds** %5, align 8
  %80 = getelementptr inbounds %struct.radeon_encoder_int_tmds, %struct.radeon_encoder_int_tmds* %79, i32 0, i32 0
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = load i32, i32* %15, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  store i32 %78, i32* %85, align 4
  %86 = load %struct._ATOM_TMDS_INFO*, %struct._ATOM_TMDS_INFO** %11, align 8
  %87 = getelementptr inbounds %struct._ATOM_TMDS_INFO, %struct._ATOM_TMDS_INFO* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 63
  %95 = shl i32 %94, 6
  %96 = load %struct.radeon_encoder_int_tmds*, %struct.radeon_encoder_int_tmds** %5, align 8
  %97 = getelementptr inbounds %struct.radeon_encoder_int_tmds, %struct.radeon_encoder_int_tmds* %96, i32 0, i32 0
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %95
  store i32 %104, i32* %102, align 4
  %105 = load %struct._ATOM_TMDS_INFO*, %struct._ATOM_TMDS_INFO** %11, align 8
  %106 = getelementptr inbounds %struct._ATOM_TMDS_INFO, %struct._ATOM_TMDS_INFO* %105, i32 0, i32 0
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, 15
  %114 = shl i32 %113, 12
  %115 = load %struct.radeon_encoder_int_tmds*, %struct.radeon_encoder_int_tmds** %5, align 8
  %116 = getelementptr inbounds %struct.radeon_encoder_int_tmds, %struct.radeon_encoder_int_tmds* %115, i32 0, i32 0
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = load i32, i32* %15, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %114
  store i32 %123, i32* %121, align 4
  %124 = load %struct._ATOM_TMDS_INFO*, %struct._ATOM_TMDS_INFO** %11, align 8
  %125 = getelementptr inbounds %struct._ATOM_TMDS_INFO, %struct._ATOM_TMDS_INFO* %124, i32 0, i32 0
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = load i32, i32* %15, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, 15
  %133 = shl i32 %132, 16
  %134 = load %struct.radeon_encoder_int_tmds*, %struct.radeon_encoder_int_tmds** %5, align 8
  %135 = getelementptr inbounds %struct.radeon_encoder_int_tmds, %struct.radeon_encoder_int_tmds* %134, i32 0, i32 0
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = load i32, i32* %15, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %133
  store i32 %142, i32* %140, align 4
  %143 = load %struct.radeon_encoder_int_tmds*, %struct.radeon_encoder_int_tmds** %5, align 8
  %144 = getelementptr inbounds %struct.radeon_encoder_int_tmds, %struct.radeon_encoder_int_tmds* %143, i32 0, i32 0
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = load i32, i32* %15, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.radeon_encoder_int_tmds*, %struct.radeon_encoder_int_tmds** %5, align 8
  %152 = getelementptr inbounds %struct.radeon_encoder_int_tmds, %struct.radeon_encoder_int_tmds* %151, i32 0, i32 0
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = load i32, i32* %15, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %150, i32 %158)
  %160 = load i32, i32* %14, align 4
  %161 = load %struct.radeon_encoder_int_tmds*, %struct.radeon_encoder_int_tmds** %5, align 8
  %162 = getelementptr inbounds %struct.radeon_encoder_int_tmds, %struct.radeon_encoder_int_tmds* %161, i32 0, i32 0
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = load i32, i32* %15, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = icmp eq i32 %160, %168
  br i1 %169, label %170, label %178

170:                                              ; preds = %52
  %171 = load %struct.radeon_encoder_int_tmds*, %struct.radeon_encoder_int_tmds** %5, align 8
  %172 = getelementptr inbounds %struct.radeon_encoder_int_tmds, %struct.radeon_encoder_int_tmds* %171, i32 0, i32 0
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %172, align 8
  %174 = load i32, i32* %15, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  store i32 -1, i32* %177, align 4
  br label %182

178:                                              ; preds = %52
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %15, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %15, align 4
  br label %49

182:                                              ; preds = %170, %49
  store i32 1, i32* %3, align 4
  br label %184

183:                                              ; preds = %2
  store i32 0, i32* %3, align 4
  br label %184

184:                                              ; preds = %183, %182
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i64 @atom_parse_data_header(%struct.TYPE_8__*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
