; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/selftests/extr_test-drm_plane_helper.c_check_src_eq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/selftests/extr_test-drm_plane_helper.c_check_src_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@.str = private unnamed_addr constant [46 x i8] c"src x coordinate %x should never be below 0.\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"src: \00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"src y coordinate %x should never be below 0.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane_state*, i32, i32, i32, i32)* @check_src_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_src_eq(%struct.drm_plane_state* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_plane_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_plane_state* %0, %struct.drm_plane_state** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %13 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %5
  %18 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %19 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %24 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %23, i32 0, i32 0
  %25 = call i32 @drm_rect_debug_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_4__* %24, i32 1)
  store i32 0, i32* %6, align 4
  br label %74

26:                                               ; preds = %5
  %27 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %28 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %34 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %36)
  %38 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %39 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %38, i32 0, i32 0
  %40 = call i32 @drm_rect_debug_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_4__* %39, i32 1)
  store i32 0, i32* %6, align 4
  br label %74

41:                                               ; preds = %26
  %42 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %43 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = icmp ne i64 %45, %47
  br i1 %48, label %69, label %49

49:                                               ; preds = %41
  %50 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %51 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = zext i32 %54 to i64
  %56 = icmp ne i64 %53, %55
  br i1 %56, label %69, label %57

57:                                               ; preds = %49
  %58 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %59 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %58, i32 0, i32 0
  %60 = call i32 @drm_rect_width(%struct.TYPE_4__* %59)
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %65 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %64, i32 0, i32 0
  %66 = call i32 @drm_rect_height(%struct.TYPE_4__* %65)
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63, %57, %49, %41
  %70 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %71 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %70, i32 0, i32 0
  %72 = call i32 @drm_rect_debug_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_4__* %71, i32 1)
  store i32 0, i32* %6, align 4
  br label %74

73:                                               ; preds = %63
  store i32 1, i32* %6, align 4
  br label %74

74:                                               ; preds = %73, %69, %32, %17
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @drm_rect_debug_print(i8*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @drm_rect_width(%struct.TYPE_4__*) #1

declare dso_local i32 @drm_rect_height(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
