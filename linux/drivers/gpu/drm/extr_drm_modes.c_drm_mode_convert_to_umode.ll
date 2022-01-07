; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_modes.c_drm_mode_convert_to_umode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_modes.c_drm_mode_convert_to_umode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mode_modeinfo = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64*, i32, i32, i32, i32 }
%struct.drm_display_mode = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }

@USHRT_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"timing values too large for mode info\0A\00", align 1
@DRM_MODE_FLAG_PIC_AR_4_3 = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PIC_AR_16_9 = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PIC_AR_64_27 = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PIC_AR_256_135 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Invalid aspect ratio (0%x) on mode\0A\00", align 1
@DRM_MODE_FLAG_PIC_AR_NONE = common dso_local global i32 0, align 4
@DRM_DISPLAY_MODE_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_mode_convert_to_umode(%struct.drm_mode_modeinfo* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.drm_mode_modeinfo*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_mode_modeinfo* %0, %struct.drm_mode_modeinfo** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %5 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %6 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @USHRT_MAX, align 8
  %9 = icmp sgt i64 %7, %8
  br i1 %9, label %64, label %10

10:                                               ; preds = %2
  %11 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %12 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @USHRT_MAX, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %64, label %16

16:                                               ; preds = %10
  %17 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %18 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @USHRT_MAX, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %64, label %22

22:                                               ; preds = %16
  %23 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %24 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @USHRT_MAX, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %64, label %28

28:                                               ; preds = %22
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %30 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @USHRT_MAX, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %64, label %34

34:                                               ; preds = %28
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %36 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @USHRT_MAX, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %64, label %40

40:                                               ; preds = %34
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 6
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @USHRT_MAX, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %64, label %46

46:                                               ; preds = %40
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %48 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %47, i32 0, i32 7
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @USHRT_MAX, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %64, label %52

52:                                               ; preds = %46
  %53 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %54 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %53, i32 0, i32 8
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @USHRT_MAX, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %60 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %59, i32 0, i32 9
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @USHRT_MAX, align 8
  %63 = icmp sgt i64 %61, %62
  br label %64

64:                                               ; preds = %58, %52, %46, %40, %34, %28, %22, %16, %10, %2
  %65 = phi i1 [ true, %52 ], [ true, %46 ], [ true, %40 ], [ true, %34 ], [ true, %28 ], [ true, %22 ], [ true, %16 ], [ true, %10 ], [ true, %2 ], [ %63, %58 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 (i32, i8*, ...) @WARN(i32 %66, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %68 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %69 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %68, i32 0, i32 15
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %3, align 8
  %72 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %71, i32 0, i32 14
  store i32 %70, i32* %72, align 4
  %73 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %74 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %3, align 8
  %77 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %79 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %3, align 8
  %82 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  %83 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %84 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %3, align 8
  %87 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %86, i32 0, i32 2
  store i64 %85, i64* %87, align 8
  %88 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %89 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %3, align 8
  %92 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %91, i32 0, i32 3
  store i64 %90, i64* %92, align 8
  %93 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %94 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %3, align 8
  %97 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %96, i32 0, i32 4
  store i64 %95, i64* %97, align 8
  %98 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %99 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %3, align 8
  %102 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %101, i32 0, i32 5
  store i64 %100, i64* %102, align 8
  %103 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %104 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %103, i32 0, i32 6
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %3, align 8
  %107 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %106, i32 0, i32 6
  store i64 %105, i64* %107, align 8
  %108 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %109 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %108, i32 0, i32 7
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %3, align 8
  %112 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %111, i32 0, i32 7
  store i64 %110, i64* %112, align 8
  %113 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %114 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %113, i32 0, i32 8
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %3, align 8
  %117 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %116, i32 0, i32 8
  store i64 %115, i64* %117, align 8
  %118 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %119 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %118, i32 0, i32 9
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %3, align 8
  %122 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %121, i32 0, i32 9
  store i64 %120, i64* %122, align 8
  %123 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %124 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %123, i32 0, i32 14
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %3, align 8
  %127 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %126, i32 0, i32 13
  store i32 %125, i32* %127, align 8
  %128 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %129 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %128, i32 0, i32 13
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %3, align 8
  %132 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %131, i32 0, i32 11
  store i32 %130, i32* %132, align 8
  %133 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %134 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %133, i32 0, i32 12
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %3, align 8
  %137 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %136, i32 0, i32 12
  store i32 %135, i32* %137, align 4
  %138 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %139 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %138, i32 0, i32 10
  %140 = load i32, i32* %139, align 8
  switch i32 %140, label %165 [
    i32 130, label %141
    i32 132, label %147
    i32 129, label %153
    i32 131, label %159
    i32 128, label %170
  ]

141:                                              ; preds = %64
  %142 = load i32, i32* @DRM_MODE_FLAG_PIC_AR_4_3, align 4
  %143 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %3, align 8
  %144 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %143, i32 0, i32 11
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 8
  br label %176

147:                                              ; preds = %64
  %148 = load i32, i32* @DRM_MODE_FLAG_PIC_AR_16_9, align 4
  %149 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %3, align 8
  %150 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %149, i32 0, i32 11
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 8
  br label %176

153:                                              ; preds = %64
  %154 = load i32, i32* @DRM_MODE_FLAG_PIC_AR_64_27, align 4
  %155 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %3, align 8
  %156 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %155, i32 0, i32 11
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 8
  br label %176

159:                                              ; preds = %64
  %160 = load i32, i32* @DRM_MODE_FLAG_PIC_AR_256_135, align 4
  %161 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %3, align 8
  %162 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %161, i32 0, i32 11
  %163 = load i32, i32* %162, align 8
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 8
  br label %176

165:                                              ; preds = %64
  %166 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %167 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %166, i32 0, i32 10
  %168 = load i32, i32* %167, align 8
  %169 = call i32 (i32, i8*, ...) @WARN(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %168)
  br label %170

170:                                              ; preds = %64, %165
  %171 = load i32, i32* @DRM_MODE_FLAG_PIC_AR_NONE, align 4
  %172 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %3, align 8
  %173 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %172, i32 0, i32 11
  %174 = load i32, i32* %173, align 8
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 8
  br label %176

176:                                              ; preds = %170, %159, %153, %147, %141
  %177 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %3, align 8
  %178 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %177, i32 0, i32 10
  %179 = load i64*, i64** %178, align 8
  %180 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %181 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %180, i32 0, i32 11
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @DRM_DISPLAY_MODE_LEN, align 4
  %184 = call i32 @strncpy(i64* %179, i32 %182, i32 %183)
  %185 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %3, align 8
  %186 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %185, i32 0, i32 10
  %187 = load i64*, i64** %186, align 8
  %188 = load i32, i32* @DRM_DISPLAY_MODE_LEN, align 4
  %189 = sub nsw i32 %188, 1
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i64, i64* %187, i64 %190
  store i64 0, i64* %191, align 8
  ret void
}

declare dso_local i32 @WARN(i32, i8*, ...) #1

declare dso_local i32 @strncpy(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
