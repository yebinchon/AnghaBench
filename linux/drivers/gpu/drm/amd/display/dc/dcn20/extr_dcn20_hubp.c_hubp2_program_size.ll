; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hubp.c_hubp2_program_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hubp.c_hubp2_program_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubp = type { i32 }
%struct.plane_size = type { i64, i64 }
%struct.dc_plane_dcc_param = type { i64, i64, i32 }
%struct.dcn20_hubp = type { i32 }

@SURFACE_PIXEL_FORMAT_VIDEO_BEGIN = common dso_local global i32 0, align 4
@SURFACE_PIXEL_FORMAT_SUBSAMPLE_END = common dso_local global i32 0, align 4
@DCSURF_SURFACE_PITCH = common dso_local global i32 0, align 4
@PITCH = common dso_local global i32 0, align 4
@META_PITCH = common dso_local global i32 0, align 4
@DCSURF_SURFACE_PITCH_C = common dso_local global i32 0, align 4
@PITCH_C = common dso_local global i32 0, align 4
@META_PITCH_C = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hubp2_program_size(%struct.hubp* %0, i32 %1, %struct.plane_size* %2, %struct.dc_plane_dcc_param* %3) #0 {
  %5 = alloca %struct.hubp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.plane_size*, align 8
  %8 = alloca %struct.dc_plane_dcc_param*, align 8
  %9 = alloca %struct.dcn20_hubp*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.hubp* %0, %struct.hubp** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.plane_size* %2, %struct.plane_size** %7, align 8
  store %struct.dc_plane_dcc_param* %3, %struct.dc_plane_dcc_param** %8, align 8
  %15 = load %struct.hubp*, %struct.hubp** %5, align 8
  %16 = call %struct.dcn20_hubp* @TO_DCN20_HUBP(%struct.hubp* %15)
  store %struct.dcn20_hubp* %16, %struct.dcn20_hubp** %9, align 8
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @SURFACE_PIXEL_FORMAT_VIDEO_BEGIN, align 4
  %19 = icmp uge i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @SURFACE_PIXEL_FORMAT_SUBSAMPLE_END, align 4
  %23 = icmp ult i32 %21, %22
  br label %24

24:                                               ; preds = %20, %4
  %25 = phi i1 [ false, %4 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %24
  %30 = load %struct.plane_size*, %struct.plane_size** %7, align 8
  %31 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @ASSERT(i32 %34)
  %36 = load %struct.plane_size*, %struct.plane_size** %7, align 8
  %37 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %38, 1
  store i64 %39, i64* %10, align 8
  %40 = load %struct.dc_plane_dcc_param*, %struct.dc_plane_dcc_param** %8, align 8
  %41 = getelementptr inbounds %struct.dc_plane_dcc_param, %struct.dc_plane_dcc_param* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %42, 1
  store i64 %43, i64* %11, align 8
  %44 = load %struct.plane_size*, %struct.plane_size** %7, align 8
  %45 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %46, 1
  store i64 %47, i64* %12, align 8
  %48 = load %struct.dc_plane_dcc_param*, %struct.dc_plane_dcc_param** %8, align 8
  %49 = getelementptr inbounds %struct.dc_plane_dcc_param, %struct.dc_plane_dcc_param* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %50, 1
  store i64 %51, i64* %13, align 8
  br label %61

52:                                               ; preds = %24
  %53 = load %struct.plane_size*, %struct.plane_size** %7, align 8
  %54 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %55, 1
  store i64 %56, i64* %10, align 8
  %57 = load %struct.dc_plane_dcc_param*, %struct.dc_plane_dcc_param** %8, align 8
  %58 = getelementptr inbounds %struct.dc_plane_dcc_param, %struct.dc_plane_dcc_param* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %59, 1
  store i64 %60, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %61

61:                                               ; preds = %52, %29
  %62 = load %struct.dc_plane_dcc_param*, %struct.dc_plane_dcc_param** %8, align 8
  %63 = getelementptr inbounds %struct.dc_plane_dcc_param, %struct.dc_plane_dcc_param* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  store i64 0, i64* %11, align 8
  store i64 0, i64* %13, align 8
  br label %67

67:                                               ; preds = %66, %61
  %68 = load i32, i32* @DCSURF_SURFACE_PITCH, align 4
  %69 = load i32, i32* @PITCH, align 4
  %70 = load i64, i64* %10, align 8
  %71 = load i32, i32* @META_PITCH, align 4
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @REG_UPDATE_2(i32 %68, i32 %69, i64 %70, i32 %71, i64 %72)
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @SURFACE_PIXEL_FORMAT_VIDEO_BEGIN, align 4
  %76 = icmp uge i32 %74, %75
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %67
  %81 = load i32, i32* @DCSURF_SURFACE_PITCH_C, align 4
  %82 = load i32, i32* @PITCH_C, align 4
  %83 = load i64, i64* %12, align 8
  %84 = load i32, i32* @META_PITCH_C, align 4
  %85 = load i64, i64* %13, align 8
  %86 = call i32 @REG_UPDATE_2(i32 %81, i32 %82, i64 %83, i32 %84, i64 %85)
  br label %87

87:                                               ; preds = %80, %67
  ret void
}

declare dso_local %struct.dcn20_hubp* @TO_DCN20_HUBP(%struct.hubp*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
