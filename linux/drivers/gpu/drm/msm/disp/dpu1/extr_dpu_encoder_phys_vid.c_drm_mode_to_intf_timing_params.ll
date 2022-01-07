; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_vid.c_drm_mode_to_intf_timing_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_vid.c_drm_mode_to_intf_timing_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.drm_display_mode = type { i64, i64, i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.intf_timing_params = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [56 x i8] c"invalid params - hstart:%d,hend:%d,htot:%d,hdisplay:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"vstart:%d,vend:%d,vtot:%d,vdisplay:%d\0A\00", align 1
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@INTF_DSI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_encoder_phys*, %struct.drm_display_mode*, %struct.intf_timing_params*)* @drm_mode_to_intf_timing_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_mode_to_intf_timing_params(%struct.dpu_encoder_phys* %0, %struct.drm_display_mode* %1, %struct.intf_timing_params* %2) #0 {
  %4 = alloca %struct.dpu_encoder_phys*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.intf_timing_params*, align 8
  store %struct.dpu_encoder_phys* %0, %struct.dpu_encoder_phys** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.intf_timing_params* %2, %struct.intf_timing_params** %6, align 8
  %7 = load %struct.intf_timing_params*, %struct.intf_timing_params** %6, align 8
  %8 = call i32 @memset(%struct.intf_timing_params* %7, i32 0, i32 104)
  %9 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %10 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %13 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %11, %14
  br i1 %15, label %56, label %16

16:                                               ; preds = %3
  %17 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %18 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %21 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %56, label %24

24:                                               ; preds = %16
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %29 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %56, label %32

32:                                               ; preds = %24
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %37 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %36, i32 0, i32 7
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %35, %38
  br i1 %39, label %56, label %40

40:                                               ; preds = %32
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %45 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %43, %46
  br i1 %47, label %56, label %48

48:                                               ; preds = %40
  %49 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %50 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %53 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %52, i32 0, i32 6
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %51, %54
  br i1 %55, label %56, label %83

56:                                               ; preds = %48, %40, %32, %24, %16, %3
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %58 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %61 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %64 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %67 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %59, i64 %62, i64 %65, i64 %68)
  %70 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %71 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %70, i32 0, i32 6
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %74 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %77 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %80 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %79, i32 0, i32 7
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %72, i64 %75, i64 %78, i64 %81)
  br label %201

83:                                               ; preds = %48
  %84 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %85 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.intf_timing_params*, %struct.intf_timing_params** %6, align 8
  %88 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %90 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %89, i32 0, i32 7
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.intf_timing_params*, %struct.intf_timing_params** %6, align 8
  %93 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  %94 = load %struct.intf_timing_params*, %struct.intf_timing_params** %6, align 8
  %95 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.intf_timing_params*, %struct.intf_timing_params** %6, align 8
  %98 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %97, i32 0, i32 2
  store i64 %96, i64* %98, align 8
  %99 = load %struct.intf_timing_params*, %struct.intf_timing_params** %6, align 8
  %100 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.intf_timing_params*, %struct.intf_timing_params** %6, align 8
  %103 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %102, i32 0, i32 3
  store i64 %101, i64* %103, align 8
  %104 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %105 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %108 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %106, %109
  %111 = load %struct.intf_timing_params*, %struct.intf_timing_params** %6, align 8
  %112 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %111, i32 0, i32 4
  store i64 %110, i64* %112, align 8
  %113 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %114 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %117 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = sub nsw i64 %115, %118
  %120 = load %struct.intf_timing_params*, %struct.intf_timing_params** %6, align 8
  %121 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %120, i32 0, i32 5
  store i64 %119, i64* %121, align 8
  %122 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %123 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %126 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %125, i32 0, i32 5
  %127 = load i64, i64* %126, align 8
  %128 = sub nsw i64 %124, %127
  %129 = load %struct.intf_timing_params*, %struct.intf_timing_params** %6, align 8
  %130 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %129, i32 0, i32 6
  store i64 %128, i64* %130, align 8
  %131 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %132 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %131, i32 0, i32 6
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %135 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %134, i32 0, i32 7
  %136 = load i64, i64* %135, align 8
  %137 = sub nsw i64 %133, %136
  %138 = load %struct.intf_timing_params*, %struct.intf_timing_params** %6, align 8
  %139 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %138, i32 0, i32 7
  store i64 %137, i64* %139, align 8
  %140 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %141 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %144 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = sub nsw i64 %142, %145
  %147 = load %struct.intf_timing_params*, %struct.intf_timing_params** %6, align 8
  %148 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %147, i32 0, i32 8
  store i64 %146, i64* %148, align 8
  %149 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %150 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %149, i32 0, i32 5
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %153 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %152, i32 0, i32 6
  %154 = load i64, i64* %153, align 8
  %155 = sub nsw i64 %151, %154
  %156 = load %struct.intf_timing_params*, %struct.intf_timing_params** %6, align 8
  %157 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %156, i32 0, i32 9
  store i64 %155, i64* %157, align 8
  %158 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %159 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %158, i32 0, i32 8
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i32 1, i32 0
  %166 = load %struct.intf_timing_params*, %struct.intf_timing_params** %6, align 8
  %167 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %166, i32 0, i32 10
  store i32 %165, i32* %167, align 8
  %168 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %169 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %168, i32 0, i32 8
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  %174 = zext i1 %173 to i64
  %175 = select i1 %173, i32 1, i32 0
  %176 = load %struct.intf_timing_params*, %struct.intf_timing_params** %6, align 8
  %177 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %176, i32 0, i32 11
  store i32 %175, i32* %177, align 4
  %178 = load %struct.intf_timing_params*, %struct.intf_timing_params** %6, align 8
  %179 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %178, i32 0, i32 14
  store i64 0, i64* %179, align 8
  %180 = load %struct.intf_timing_params*, %struct.intf_timing_params** %6, align 8
  %181 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %180, i32 0, i32 12
  store i32 255, i32* %181, align 8
  %182 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %183 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %182, i32 0, i32 9
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.intf_timing_params*, %struct.intf_timing_params** %6, align 8
  %186 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %185, i32 0, i32 13
  store i32 %184, i32* %186, align 4
  %187 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %188 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %187, i32 0, i32 0
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @INTF_DSI, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %201

196:                                              ; preds = %83
  %197 = load %struct.intf_timing_params*, %struct.intf_timing_params** %6, align 8
  %198 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %197, i32 0, i32 10
  store i32 0, i32* %198, align 8
  %199 = load %struct.intf_timing_params*, %struct.intf_timing_params** %6, align 8
  %200 = getelementptr inbounds %struct.intf_timing_params, %struct.intf_timing_params* %199, i32 0, i32 11
  store i32 0, i32* %200, align 4
  br label %201

201:                                              ; preds = %56, %196, %83
  ret void
}

declare dso_local i32 @memset(%struct.intf_timing_params*, i32, i32) #1

declare dso_local i32 @DPU_ERROR(i8*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
