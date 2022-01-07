; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_add_all_planes_for_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_add_all_planes_for_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { i32 }
%struct.dc_stream_state = type { i32 }
%struct.dc_validation_set = type { i32, i32*, %struct.dc_stream_state* }
%struct.dc_state = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Stream %p not found in set!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc*, %struct.dc_stream_state*, %struct.dc_validation_set*, i32, %struct.dc_state*)* @add_all_planes_for_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_all_planes_for_stream(%struct.dc* %0, %struct.dc_stream_state* %1, %struct.dc_validation_set* %2, i32 %3, %struct.dc_state* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dc*, align 8
  %8 = alloca %struct.dc_stream_state*, align 8
  %9 = alloca %struct.dc_validation_set*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dc_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %7, align 8
  store %struct.dc_stream_state* %1, %struct.dc_stream_state** %8, align 8
  store %struct.dc_validation_set* %2, %struct.dc_validation_set** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.dc_state* %4, %struct.dc_state** %11, align 8
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %29, %5
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = load %struct.dc_validation_set*, %struct.dc_validation_set** %9, align 8
  %20 = load i32, i32* %12, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.dc_validation_set, %struct.dc_validation_set* %19, i64 %21
  %23 = getelementptr inbounds %struct.dc_validation_set, %struct.dc_validation_set* %22, i32 0, i32 2
  %24 = load %struct.dc_stream_state*, %struct.dc_stream_state** %23, align 8
  %25 = load %struct.dc_stream_state*, %struct.dc_stream_state** %8, align 8
  %26 = icmp eq %struct.dc_stream_state* %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %32

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %12, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %12, align 4
  br label %14

32:                                               ; preds = %27, %14
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load %struct.dc_stream_state*, %struct.dc_stream_state** %8, align 8
  %38 = call i32 @dm_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.dc_stream_state* %37)
  store i32 0, i32* %6, align 4
  br label %71

39:                                               ; preds = %32
  store i32 0, i32* %13, align 4
  br label %40

40:                                               ; preds = %67, %39
  %41 = load i32, i32* %13, align 4
  %42 = load %struct.dc_validation_set*, %struct.dc_validation_set** %9, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.dc_validation_set, %struct.dc_validation_set* %42, i64 %44
  %46 = getelementptr inbounds %struct.dc_validation_set, %struct.dc_validation_set* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %41, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %40
  %50 = load %struct.dc*, %struct.dc** %7, align 8
  %51 = load %struct.dc_stream_state*, %struct.dc_stream_state** %8, align 8
  %52 = load %struct.dc_validation_set*, %struct.dc_validation_set** %9, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.dc_validation_set, %struct.dc_validation_set* %52, i64 %54
  %56 = getelementptr inbounds %struct.dc_validation_set, %struct.dc_validation_set* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.dc_state*, %struct.dc_state** %11, align 8
  %63 = call i32 @dc_add_plane_to_context(%struct.dc* %50, %struct.dc_stream_state* %51, i32 %61, %struct.dc_state* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  br label %71

66:                                               ; preds = %49
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  br label %40

70:                                               ; preds = %40
  store i32 1, i32* %6, align 4
  br label %71

71:                                               ; preds = %70, %65, %36
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i32 @dm_error(i8*, %struct.dc_stream_state*) #1

declare dso_local i32 @dc_add_plane_to_context(%struct.dc*, %struct.dc_stream_state*, i32, %struct.dc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
