; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_resource.c_dcn10_validate_global.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_resource.c_dcn10_validate_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.dc_state = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.dc_plane_state** }
%struct.dc_plane_state = type { i64, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i64 }

@DC_FAIL_UNSUPPORTED_1 = common dso_local global i32 0, align 4
@SURFACE_PIXEL_FORMAT_VIDEO_BEGIN = common dso_local global i64 0, align 8
@DC_FAIL_SURFACE_VALIDATE = common dso_local global i32 0, align 4
@DC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc*, %struct.dc_state*)* @dcn10_validate_global to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcn10_validate_global(%struct.dc* %0, %struct.dc_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dc*, align 8
  %5 = alloca %struct.dc_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dc_plane_state*, align 8
  store %struct.dc* %0, %struct.dc** %4, align 8
  store %struct.dc_state* %1, %struct.dc_state** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %121, %2
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %16 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %124

19:                                               ; preds = %13
  %20 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %21 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %121

30:                                               ; preds = %19
  %31 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %32 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %38, 2
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* @DC_FAIL_UNSUPPORTED_1, align 4
  store i32 %41, i32* %3, align 4
  br label %147

42:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %117, %42
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %46 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %44, %52
  br i1 %53, label %54, label %120

54:                                               ; preds = %43
  %55 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %56 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load %struct.dc_plane_state**, %struct.dc_plane_state*** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.dc_plane_state*, %struct.dc_plane_state** %62, i64 %64
  %66 = load %struct.dc_plane_state*, %struct.dc_plane_state** %65, align 8
  store %struct.dc_plane_state* %66, %struct.dc_plane_state** %12, align 8
  %67 = load %struct.dc_plane_state*, %struct.dc_plane_state** %12, align 8
  %68 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SURFACE_PIXEL_FORMAT_VIDEO_BEGIN, align 8
  %71 = icmp sge i64 %69, %70
  br i1 %71, label %72, label %101

72:                                               ; preds = %54
  %73 = load %struct.dc_plane_state*, %struct.dc_plane_state** %12, align 8
  %74 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.dc_plane_state*, %struct.dc_plane_state** %12, align 8
  %78 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp sgt i32 %76, %80
  br i1 %81, label %92, label %82

82:                                               ; preds = %72
  %83 = load %struct.dc_plane_state*, %struct.dc_plane_state** %12, align 8
  %84 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.dc_plane_state*, %struct.dc_plane_state** %12, align 8
  %88 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp sgt i64 %86, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %82, %72
  store i32 1, i32* %8, align 4
  br label %93

93:                                               ; preds = %92, %82
  %94 = load %struct.dc_plane_state*, %struct.dc_plane_state** %12, align 8
  %95 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp sge i32 %97, 3840
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store i32 1, i32* %9, align 4
  br label %100

100:                                              ; preds = %99, %93
  br label %116

101:                                              ; preds = %54
  %102 = load %struct.dc_plane_state*, %struct.dc_plane_state** %12, align 8
  %103 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp sge i32 %105, 3840
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  store i32 1, i32* %10, align 4
  br label %108

108:                                              ; preds = %107, %101
  %109 = load %struct.dc_plane_state*, %struct.dc_plane_state** %12, align 8
  %110 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %108
  store i32 1, i32* %11, align 4
  br label %115

115:                                              ; preds = %114, %108
  br label %116

116:                                              ; preds = %115, %100
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %43

120:                                              ; preds = %43
  br label %121

121:                                              ; preds = %120, %29
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %6, align 4
  br label %13

124:                                              ; preds = %13
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %145

127:                                              ; preds = %124
  %128 = load i32, i32* %10, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %145

130:                                              ; preds = %127
  %131 = load i32, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %145

133:                                              ; preds = %130
  %134 = load i32, i32* %11, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %133
  %137 = load %struct.dc*, %struct.dc** %4, align 8
  %138 = getelementptr inbounds %struct.dc, %struct.dc* %137, i32 0, i32 0
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %143, label %145

143:                                              ; preds = %136
  %144 = load i32, i32* @DC_FAIL_SURFACE_VALIDATE, align 4
  store i32 %144, i32* %3, align 4
  br label %147

145:                                              ; preds = %136, %133, %130, %127, %124
  %146 = load i32, i32* @DC_OK, align 4
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %145, %143, %40
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
