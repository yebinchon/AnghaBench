; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubp.c_hubp1_program_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubp.c_hubp1_program_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubp = type { i32 }
%struct.plane_size = type { i64, i64 }
%struct.dc_plane_dcc_param = type { i64, i64, i32 }
%struct.dcn10_hubp = type { i32 }

@SURFACE_PIXEL_FORMAT_VIDEO_BEGIN = common dso_local global i32 0, align 4
@SURFACE_PIXEL_FORMAT_SUBSAMPLE_END = common dso_local global i32 0, align 4
@DCSURF_SURFACE_PITCH = common dso_local global i32 0, align 4
@PITCH = common dso_local global i32 0, align 4
@META_PITCH = common dso_local global i32 0, align 4
@DCSURF_SURFACE_PITCH_C = common dso_local global i32 0, align 4
@PITCH_C = common dso_local global i32 0, align 4
@META_PITCH_C = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hubp1_program_size(%struct.hubp* %0, i32 %1, %struct.plane_size* %2, %struct.dc_plane_dcc_param* %3) #0 {
  %5 = alloca %struct.hubp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.plane_size*, align 8
  %8 = alloca %struct.dc_plane_dcc_param*, align 8
  %9 = alloca %struct.dcn10_hubp*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.hubp* %0, %struct.hubp** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.plane_size* %2, %struct.plane_size** %7, align 8
  store %struct.dc_plane_dcc_param* %3, %struct.dc_plane_dcc_param** %8, align 8
  %14 = load %struct.hubp*, %struct.hubp** %5, align 8
  %15 = call %struct.dcn10_hubp* @TO_DCN10_HUBP(%struct.hubp* %14)
  store %struct.dcn10_hubp* %15, %struct.dcn10_hubp** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @SURFACE_PIXEL_FORMAT_VIDEO_BEGIN, align 4
  %18 = icmp uge i32 %16, %17
  br i1 %18, label %19, label %46

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @SURFACE_PIXEL_FORMAT_SUBSAMPLE_END, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %19
  %24 = load %struct.plane_size*, %struct.plane_size** %7, align 8
  %25 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @ASSERT(i32 %28)
  %30 = load %struct.plane_size*, %struct.plane_size** %7, align 8
  %31 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %32, 1
  store i64 %33, i64* %10, align 8
  %34 = load %struct.dc_plane_dcc_param*, %struct.dc_plane_dcc_param** %8, align 8
  %35 = getelementptr inbounds %struct.dc_plane_dcc_param, %struct.dc_plane_dcc_param* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %36, 1
  store i64 %37, i64* %11, align 8
  %38 = load %struct.plane_size*, %struct.plane_size** %7, align 8
  %39 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %40, 1
  store i64 %41, i64* %12, align 8
  %42 = load %struct.dc_plane_dcc_param*, %struct.dc_plane_dcc_param** %8, align 8
  %43 = getelementptr inbounds %struct.dc_plane_dcc_param, %struct.dc_plane_dcc_param* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %44, 1
  store i64 %45, i64* %13, align 8
  br label %55

46:                                               ; preds = %19, %4
  %47 = load %struct.plane_size*, %struct.plane_size** %7, align 8
  %48 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %49, 1
  store i64 %50, i64* %10, align 8
  %51 = load %struct.dc_plane_dcc_param*, %struct.dc_plane_dcc_param** %8, align 8
  %52 = getelementptr inbounds %struct.dc_plane_dcc_param, %struct.dc_plane_dcc_param* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %53, 1
  store i64 %54, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %55

55:                                               ; preds = %46, %23
  %56 = load %struct.dc_plane_dcc_param*, %struct.dc_plane_dcc_param** %8, align 8
  %57 = getelementptr inbounds %struct.dc_plane_dcc_param, %struct.dc_plane_dcc_param* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  store i64 0, i64* %11, align 8
  store i64 0, i64* %13, align 8
  br label %61

61:                                               ; preds = %60, %55
  %62 = load i32, i32* @DCSURF_SURFACE_PITCH, align 4
  %63 = load i32, i32* @PITCH, align 4
  %64 = load i64, i64* %10, align 8
  %65 = load i32, i32* @META_PITCH, align 4
  %66 = load i64, i64* %11, align 8
  %67 = call i32 @REG_UPDATE_2(i32 %62, i32 %63, i64 %64, i32 %65, i64 %66)
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @SURFACE_PIXEL_FORMAT_VIDEO_BEGIN, align 4
  %70 = icmp uge i32 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %61
  %72 = load i32, i32* @DCSURF_SURFACE_PITCH_C, align 4
  %73 = load i32, i32* @PITCH_C, align 4
  %74 = load i64, i64* %12, align 8
  %75 = load i32, i32* @META_PITCH_C, align 4
  %76 = load i64, i64* %13, align 8
  %77 = call i32 @REG_UPDATE_2(i32 %72, i32 %73, i64 %74, i32 %75, i64 %76)
  br label %78

78:                                               ; preds = %71, %61
  ret void
}

declare dso_local %struct.dcn10_hubp* @TO_DCN10_HUBP(%struct.hubp*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
