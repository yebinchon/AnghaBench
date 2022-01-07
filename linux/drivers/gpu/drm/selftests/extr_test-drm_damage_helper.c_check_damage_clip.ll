; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/selftests/extr_test-drm_damage_helper.c_check_damage_clip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/selftests/extr_test-drm_damage_helper.c_check_damage_clip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.drm_rect = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"Cannot have damage clip with no dimension.\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Damage cannot be outside rounded plane src.\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Damage = %d %d %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane_state*, %struct.drm_rect*, i32, i32, i32, i32)* @check_damage_clip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_damage_clip(%struct.drm_plane_state* %0, %struct.drm_rect* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_plane_state*, align 8
  %9 = alloca %struct.drm_rect*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.drm_plane_state* %0, %struct.drm_plane_state** %8, align 8
  store %struct.drm_rect* %1, %struct.drm_rect** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %19 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 16
  store i32 %22, i32* %14, align 4
  %23 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %24 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 16
  store i32 %27, i32* %15, align 4
  %28 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %29 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 16
  %33 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %34 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 65535
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = add nsw i32 %32, %41
  store i32 %42, i32* %16, align 4
  %43 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %44 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 16
  %48 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %49 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 65535
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = add nsw i32 %47, %56
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %6
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp sge i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61, %6
  %66 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %124

67:                                               ; preds = %61
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %83, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %15, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %83, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %16, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %17, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79, %75, %71, %67
  %84 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %124

85:                                               ; preds = %79
  %86 = load %struct.drm_rect*, %struct.drm_rect** %9, align 8
  %87 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %109, label %91

91:                                               ; preds = %85
  %92 = load %struct.drm_rect*, %struct.drm_rect** %9, align 8
  %93 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %109, label %97

97:                                               ; preds = %91
  %98 = load %struct.drm_rect*, %struct.drm_rect** %9, align 8
  %99 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %109, label %103

103:                                              ; preds = %97
  %104 = load %struct.drm_rect*, %struct.drm_rect** %9, align 8
  %105 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %103, %97, %91, %85
  %110 = load %struct.drm_rect*, %struct.drm_rect** %9, align 8
  %111 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.drm_rect*, %struct.drm_rect** %9, align 8
  %114 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.drm_rect*, %struct.drm_rect** %9, align 8
  %117 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.drm_rect*, %struct.drm_rect** %9, align 8
  %120 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %112, i32 %115, i32 %118, i32 %121)
  store i32 0, i32* %7, align 4
  br label %124

123:                                              ; preds = %103
  store i32 1, i32* %7, align 4
  br label %124

124:                                              ; preds = %123, %109, %83, %65
  %125 = load i32, i32* %7, align 4
  ret i32 %125
}

declare dso_local i32 @pr_err(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
