; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_dc_link_set_preferred_training_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_dc_link_set_preferred_training_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { i32 }
%struct.dc_link_settings = type { i32, i32 }
%struct.dc_link_training_overrides = type { i32 }
%struct.dc_link = type { %struct.dc_link_settings, %struct.dc_link_training_overrides }

@LANE_COUNT_UNKNOWN = common dso_local global i32 0, align 4
@LINK_RATE_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dc_link_set_preferred_training_settings(%struct.dc* %0, %struct.dc_link_settings* %1, %struct.dc_link_training_overrides* %2, %struct.dc_link* %3, i32 %4) #0 {
  %6 = alloca %struct.dc*, align 8
  %7 = alloca %struct.dc_link_settings*, align 8
  %8 = alloca %struct.dc_link_training_overrides*, align 8
  %9 = alloca %struct.dc_link*, align 8
  %10 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %6, align 8
  store %struct.dc_link_settings* %1, %struct.dc_link_settings** %7, align 8
  store %struct.dc_link_training_overrides* %2, %struct.dc_link_training_overrides** %8, align 8
  store %struct.dc_link* %3, %struct.dc_link** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.dc_link_training_overrides*, %struct.dc_link_training_overrides** %8, align 8
  %12 = icmp ne %struct.dc_link_training_overrides* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %5
  %14 = load %struct.dc_link*, %struct.dc_link** %9, align 8
  %15 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %14, i32 0, i32 1
  %16 = load %struct.dc_link_training_overrides*, %struct.dc_link_training_overrides** %8, align 8
  %17 = bitcast %struct.dc_link_training_overrides* %15 to i8*
  %18 = bitcast %struct.dc_link_training_overrides* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 4, i1 false)
  br label %23

19:                                               ; preds = %5
  %20 = load %struct.dc_link*, %struct.dc_link** %9, align 8
  %21 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %20, i32 0, i32 1
  %22 = call i32 @memset(%struct.dc_link_training_overrides* %21, i32 0, i32 4)
  br label %23

23:                                               ; preds = %19, %13
  %24 = load %struct.dc_link_settings*, %struct.dc_link_settings** %7, align 8
  %25 = icmp ne %struct.dc_link_settings* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.dc_link*, %struct.dc_link** %9, align 8
  %28 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %27, i32 0, i32 0
  %29 = load %struct.dc_link_settings*, %struct.dc_link_settings** %7, align 8
  %30 = bitcast %struct.dc_link_settings* %28 to i8*
  %31 = bitcast %struct.dc_link_settings* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 8, i1 false)
  br label %41

32:                                               ; preds = %23
  %33 = load i32, i32* @LANE_COUNT_UNKNOWN, align 4
  %34 = load %struct.dc_link*, %struct.dc_link** %9, align 8
  %35 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @LINK_RATE_UNKNOWN, align 4
  %38 = load %struct.dc_link*, %struct.dc_link** %9, align 8
  %39 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  br label %41

41:                                               ; preds = %32, %26
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load %struct.dc*, %struct.dc** %6, align 8
  %46 = load %struct.dc_link*, %struct.dc_link** %9, align 8
  %47 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %46, i32 0, i32 0
  %48 = load %struct.dc_link*, %struct.dc_link** %9, align 8
  %49 = call i32 @dc_link_set_preferred_link_settings(%struct.dc* %45, %struct.dc_link_settings* %47, %struct.dc_link* %48)
  br label %50

50:                                               ; preds = %44, %41
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.dc_link_training_overrides*, i32, i32) #2

declare dso_local i32 @dc_link_set_preferred_link_settings(%struct.dc*, %struct.dc_link_settings*, %struct.dc_link*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
