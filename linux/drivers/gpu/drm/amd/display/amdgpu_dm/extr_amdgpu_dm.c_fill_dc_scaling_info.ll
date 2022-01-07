; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_fill_dc_scaling_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_fill_dc_scaling_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane_state = type { i32, i32, i32, i32, i64, i64, i32, i32 }
%struct.dc_scaling_info = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane_state*, %struct.dc_scaling_info*)* @fill_dc_scaling_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_dc_scaling_info(%struct.drm_plane_state* %0, %struct.dc_scaling_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.dc_scaling_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_plane_state* %0, %struct.drm_plane_state** %4, align 8
  store %struct.dc_scaling_info* %1, %struct.dc_scaling_info** %5, align 8
  %8 = load %struct.dc_scaling_info*, %struct.dc_scaling_info** %5, align 8
  %9 = call i32 @memset(%struct.dc_scaling_info* %8, i32 0, i32 64)
  %10 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %11 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = ashr i32 %12, 16
  %14 = load %struct.dc_scaling_info*, %struct.dc_scaling_info** %5, align 8
  %15 = getelementptr inbounds %struct.dc_scaling_info, %struct.dc_scaling_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 8
  %17 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %18 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 16
  %21 = load %struct.dc_scaling_info*, %struct.dc_scaling_info** %5, align 8
  %22 = getelementptr inbounds %struct.dc_scaling_info, %struct.dc_scaling_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  %24 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %25 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = ashr i32 %26, 16
  %28 = load %struct.dc_scaling_info*, %struct.dc_scaling_info** %5, align 8
  %29 = getelementptr inbounds %struct.dc_scaling_info, %struct.dc_scaling_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 8
  %31 = load %struct.dc_scaling_info*, %struct.dc_scaling_info** %5, align 8
  %32 = getelementptr inbounds %struct.dc_scaling_info, %struct.dc_scaling_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %144

39:                                               ; preds = %2
  %40 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %41 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 16
  %44 = load %struct.dc_scaling_info*, %struct.dc_scaling_info** %5, align 8
  %45 = getelementptr inbounds %struct.dc_scaling_info, %struct.dc_scaling_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 3
  store i32 %43, i32* %46, align 4
  %47 = load %struct.dc_scaling_info*, %struct.dc_scaling_info** %5, align 8
  %48 = getelementptr inbounds %struct.dc_scaling_info, %struct.dc_scaling_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %39
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %144

55:                                               ; preds = %39
  %56 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %57 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.dc_scaling_info*, %struct.dc_scaling_info** %5, align 8
  %60 = getelementptr inbounds %struct.dc_scaling_info, %struct.dc_scaling_info* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  store i32 %58, i32* %61, align 4
  %62 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %63 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.dc_scaling_info*, %struct.dc_scaling_info** %5, align 8
  %66 = getelementptr inbounds %struct.dc_scaling_info, %struct.dc_scaling_info* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  store i32 %64, i32* %67, align 8
  %68 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %69 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %55
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %144

75:                                               ; preds = %55
  %76 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %77 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.dc_scaling_info*, %struct.dc_scaling_info** %5, align 8
  %80 = getelementptr inbounds %struct.dc_scaling_info, %struct.dc_scaling_info* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i64 %78, i64* %81, align 8
  %82 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %83 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %75
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %144

89:                                               ; preds = %75
  %90 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %91 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.dc_scaling_info*, %struct.dc_scaling_info** %5, align 8
  %94 = getelementptr inbounds %struct.dc_scaling_info, %struct.dc_scaling_info* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  store i64 %92, i64* %95, align 8
  %96 = load %struct.dc_scaling_info*, %struct.dc_scaling_info** %5, align 8
  %97 = getelementptr inbounds %struct.dc_scaling_info, %struct.dc_scaling_info* %96, i32 0, i32 2
  %98 = load %struct.dc_scaling_info*, %struct.dc_scaling_info** %5, align 8
  %99 = getelementptr inbounds %struct.dc_scaling_info, %struct.dc_scaling_info* %98, i32 0, i32 1
  %100 = bitcast %struct.TYPE_3__* %97 to i8*
  %101 = bitcast %struct.TYPE_3__* %99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %100, i8* align 8 %101, i64 24, i1 false)
  %102 = load %struct.dc_scaling_info*, %struct.dc_scaling_info** %5, align 8
  %103 = getelementptr inbounds %struct.dc_scaling_info, %struct.dc_scaling_info* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = mul nsw i64 %105, 1000
  %107 = load %struct.dc_scaling_info*, %struct.dc_scaling_info** %5, align 8
  %108 = getelementptr inbounds %struct.dc_scaling_info, %struct.dc_scaling_info* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = sdiv i64 %106, %111
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp slt i32 %114, 250
  br i1 %115, label %119, label %116

116:                                              ; preds = %89
  %117 = load i32, i32* %6, align 4
  %118 = icmp sgt i32 %117, 16000
  br i1 %118, label %119, label %122

119:                                              ; preds = %116, %89
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %3, align 4
  br label %144

122:                                              ; preds = %116
  %123 = load %struct.dc_scaling_info*, %struct.dc_scaling_info** %5, align 8
  %124 = getelementptr inbounds %struct.dc_scaling_info, %struct.dc_scaling_info* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = mul nsw i64 %126, 1000
  %128 = load %struct.dc_scaling_info*, %struct.dc_scaling_info** %5, align 8
  %129 = getelementptr inbounds %struct.dc_scaling_info, %struct.dc_scaling_info* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = sdiv i64 %127, %132
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %7, align 4
  %136 = icmp slt i32 %135, 250
  br i1 %136, label %140, label %137

137:                                              ; preds = %122
  %138 = load i32, i32* %7, align 4
  %139 = icmp sgt i32 %138, 16000
  br i1 %139, label %140, label %143

140:                                              ; preds = %137, %122
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %3, align 4
  br label %144

143:                                              ; preds = %137
  store i32 0, i32* %3, align 4
  br label %144

144:                                              ; preds = %143, %140, %119, %86, %72, %52, %36
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @memset(%struct.dc_scaling_info*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
