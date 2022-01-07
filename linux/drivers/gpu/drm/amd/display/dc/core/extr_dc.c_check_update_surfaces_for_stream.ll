; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_check_update_surfaces_for_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_check_update_surfaces_for_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { i32 }
%struct.dc_surface_update = type { i32 }
%struct.dc_stream_update = type { i64, i64, i64, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.dc_stream_status = type { i32 }

@UPDATE_TYPE_FAST = common dso_local global i32 0, align 4
@UPDATE_TYPE_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc*, %struct.dc_surface_update*, i32, %struct.dc_stream_update*, %struct.dc_stream_status*)* @check_update_surfaces_for_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_update_surfaces_for_stream(%struct.dc* %0, %struct.dc_surface_update* %1, i32 %2, %struct.dc_stream_update* %3, %struct.dc_stream_status* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dc*, align 8
  %8 = alloca %struct.dc_surface_update*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dc_stream_update*, align 8
  %11 = alloca %struct.dc_stream_status*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %7, align 8
  store %struct.dc_surface_update* %1, %struct.dc_surface_update** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.dc_stream_update* %3, %struct.dc_stream_update** %10, align 8
  store %struct.dc_stream_status* %4, %struct.dc_stream_status** %11, align 8
  %15 = load i32, i32* @UPDATE_TYPE_FAST, align 4
  store i32 %15, i32* %13, align 4
  %16 = load %struct.dc_stream_status*, %struct.dc_stream_status** %11, align 8
  %17 = icmp eq %struct.dc_stream_status* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %5
  %19 = load %struct.dc_stream_status*, %struct.dc_stream_status** %11, align 8
  %20 = getelementptr inbounds %struct.dc_stream_status, %struct.dc_stream_status* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18, %5
  %25 = load i32, i32* @UPDATE_TYPE_FULL, align 4
  store i32 %25, i32* %6, align 4
  br label %104

26:                                               ; preds = %18
  %27 = load %struct.dc_stream_update*, %struct.dc_stream_update** %10, align 8
  %28 = icmp ne %struct.dc_stream_update* %27, null
  br i1 %28, label %29, label %79

29:                                               ; preds = %26
  %30 = load %struct.dc_stream_update*, %struct.dc_stream_update** %10, align 8
  %31 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load %struct.dc_stream_update*, %struct.dc_stream_update** %10, align 8
  %37 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @UPDATE_TYPE_FULL, align 4
  store i32 %42, i32* %6, align 4
  br label %104

43:                                               ; preds = %35, %29
  %44 = load %struct.dc_stream_update*, %struct.dc_stream_update** %10, align 8
  %45 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load %struct.dc_stream_update*, %struct.dc_stream_update** %10, align 8
  %51 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @UPDATE_TYPE_FULL, align 4
  store i32 %56, i32* %6, align 4
  br label %104

57:                                               ; preds = %49, %43
  %58 = load %struct.dc_stream_update*, %struct.dc_stream_update** %10, align 8
  %59 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @UPDATE_TYPE_FULL, align 4
  store i32 %63, i32* %6, align 4
  br label %104

64:                                               ; preds = %57
  %65 = load %struct.dc_stream_update*, %struct.dc_stream_update** %10, align 8
  %66 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* @UPDATE_TYPE_FULL, align 4
  store i32 %70, i32* %6, align 4
  br label %104

71:                                               ; preds = %64
  %72 = load %struct.dc_stream_update*, %struct.dc_stream_update** %10, align 8
  %73 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* @UPDATE_TYPE_FULL, align 4
  store i32 %77, i32* %6, align 4
  br label %104

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %78, %26
  store i32 0, i32* %12, align 4
  br label %80

80:                                               ; preds = %99, %79
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %102

84:                                               ; preds = %80
  %85 = load %struct.dc*, %struct.dc** %7, align 8
  %86 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %86, i64 %88
  %90 = call i32 @det_surface_update(%struct.dc* %85, %struct.dc_surface_update* %89)
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* @UPDATE_TYPE_FULL, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %84
  %95 = load i32, i32* %14, align 4
  store i32 %95, i32* %6, align 4
  br label %104

96:                                               ; preds = %84
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @elevate_update_type(i32* %13, i32 %97)
  br label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %12, align 4
  br label %80

102:                                              ; preds = %80
  %103 = load i32, i32* %13, align 4
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %102, %94, %76, %69, %62, %55, %41, %24
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i32 @det_surface_update(%struct.dc*, %struct.dc_surface_update*) #1

declare dso_local i32 @elevate_update_type(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
