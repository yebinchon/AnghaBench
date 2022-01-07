; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_cs_packet_parse_vline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_cs_packet_parse_vline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }
%struct.drm_crtc = type { i32 }
%struct.radeon_crtc = type { i32 }
%struct.radeon_cs_packet = type { i64, i64, i32 }

@RADEON_WAIT_UNTIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"vline wait had illegal wait until segment\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RADEON_WAIT_CRTC_VLINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"vline wait had illegal wait until\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"cannot find crtc %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@R300_CP_PACKET0_REG_MASK = common dso_local global i32 0, align 4
@AVIVO_D2MODE_VLINE_START_END = common dso_local global i32 0, align 4
@RADEON_CRTC2_GUI_TRIG_VLINE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"unknown crtc reloc\0A\00", align 1
@RADEON_ENG_DISPLAY_SELECT_CRTC1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r100_cs_packet_parse_vline(%struct.radeon_cs_parser* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_cs_parser*, align 8
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.radeon_crtc*, align 8
  %6 = alloca %struct.radeon_cs_packet, align 8
  %7 = alloca %struct.radeon_cs_packet, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %3, align 8
  %14 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %15 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %13, align 8
  %18 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %19 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %20 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @radeon_cs_packet_parse(%struct.radeon_cs_parser* %18, %struct.radeon_cs_packet* %7, i64 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %2, align 4
  br label %178

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %7, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @RADEON_WAIT_UNTIL, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %7, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32, %27
  %37 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %178

40:                                               ; preds = %32
  %41 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %42 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %7, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  %45 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %41, i32 %44)
  %46 = load i32, i32* @RADEON_WAIT_CRTC_VLINE, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %178

52:                                               ; preds = %40
  %53 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %54 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %55 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %7, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %56, %58
  %60 = add nsw i64 %59, 2
  %61 = call i32 @radeon_cs_packet_parse(%struct.radeon_cs_parser* %53, %struct.radeon_cs_packet* %6, i64 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %52
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %2, align 4
  br label %178

66:                                               ; preds = %52
  %67 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %68 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %69, 2
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %11, align 4
  %72 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %7, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 2
  %75 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %76 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, %74
  store i64 %78, i64* %76, align 8
  %79 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %6, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, 2
  %82 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %83 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, %81
  store i64 %85, i64* %83, align 8
  %86 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %86, i32 %87)
  store i32 %88, i32* %10, align 4
  %89 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 5
  %92 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %89, i32 %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @R100_CP_PACKET0_GET_REG(i32 %93)
  store i32 %94, i32* %12, align 4
  %95 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %96 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %95, i32 0, i32 2
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %101 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call %struct.drm_crtc* @drm_crtc_find(i32 %99, i32 %102, i32 %103)
  store %struct.drm_crtc* %104, %struct.drm_crtc** %4, align 8
  %105 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %106 = icmp ne %struct.drm_crtc* %105, null
  br i1 %106, label %112, label %107

107:                                              ; preds = %66
  %108 = load i32, i32* %8, align 4
  %109 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @ENOENT, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %2, align 4
  br label %178

112:                                              ; preds = %66
  %113 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %114 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %113)
  store %struct.radeon_crtc* %114, %struct.radeon_crtc** %5, align 8
  %115 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %116 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %8, align 4
  %118 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %119 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %135, label %122

122:                                              ; preds = %112
  %123 = call i32 @PACKET2(i32 0)
  %124 = load i32*, i32** %13, align 8
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, 2
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  store volatile i32 %123, i32* %128, align 4
  %129 = call i32 @PACKET2(i32 0)
  %130 = load i32*, i32** %13, align 8
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, 3
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  store volatile i32 %129, i32* %134, align 4
  br label %177

135:                                              ; preds = %112
  %136 = load i32, i32* %8, align 4
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %138, label %176

138:                                              ; preds = %135
  %139 = load i32, i32* %12, align 4
  switch i32 %139, label %158 [
    i32 129, label %140
    i32 128, label %149
  ]

140:                                              ; preds = %138
  %141 = load i32, i32* @R300_CP_PACKET0_REG_MASK, align 4
  %142 = xor i32 %141, -1
  %143 = load i32, i32* %10, align 4
  %144 = and i32 %143, %142
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* @AVIVO_D2MODE_VLINE_START_END, align 4
  %146 = ashr i32 %145, 2
  %147 = load i32, i32* %10, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %10, align 4
  br label %162

149:                                              ; preds = %138
  %150 = load i32, i32* @R300_CP_PACKET0_REG_MASK, align 4
  %151 = xor i32 %150, -1
  %152 = load i32, i32* %10, align 4
  %153 = and i32 %152, %151
  store i32 %153, i32* %10, align 4
  %154 = load i32, i32* @RADEON_CRTC2_GUI_TRIG_VLINE, align 4
  %155 = ashr i32 %154, 2
  %156 = load i32, i32* %10, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %10, align 4
  br label %162

158:                                              ; preds = %138
  %159 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %2, align 4
  br label %178

162:                                              ; preds = %149, %140
  %163 = load i32, i32* %10, align 4
  %164 = load i32*, i32** %13, align 8
  %165 = load i32, i32* %11, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  store volatile i32 %163, i32* %167, align 4
  %168 = load volatile i32, i32* @RADEON_ENG_DISPLAY_SELECT_CRTC1, align 4
  %169 = load i32*, i32** %13, align 8
  %170 = load i32, i32* %11, align 4
  %171 = add nsw i32 %170, 3
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  %174 = load volatile i32, i32* %173, align 4
  %175 = or i32 %174, %168
  store volatile i32 %175, i32* %173, align 4
  br label %176

176:                                              ; preds = %162, %135
  br label %177

177:                                              ; preds = %176, %122
  store i32 0, i32* %2, align 4
  br label %178

178:                                              ; preds = %177, %158, %107, %64, %48, %36, %25
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local i32 @radeon_cs_packet_parse(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*, i64) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @radeon_get_ib_value(%struct.radeon_cs_parser*, i32) #1

declare dso_local i32 @R100_CP_PACKET0_GET_REG(i32) #1

declare dso_local %struct.drm_crtc* @drm_crtc_find(i32, i32, i32) #1

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @PACKET2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
