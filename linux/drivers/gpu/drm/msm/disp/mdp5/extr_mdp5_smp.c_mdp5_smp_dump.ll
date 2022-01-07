; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_smp.c_mdp5_smp_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_smp.c_mdp5_smp_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_smp = type { i32 }
%struct.drm_printer = type { i32 }
%struct.mdp5_kms = type { i32, i32, %struct.mdp5_hw_pipe** }
%struct.mdp5_hw_pipe = type { i64, i32 }
%struct.mdp5_hw_pipe_state = type { %struct.drm_plane** }
%struct.drm_plane = type { i32* }
%struct.mdp5_smp_state = type { i8*, i8** }
%struct.mdp5_global_state = type { %struct.mdp5_smp_state, %struct.mdp5_hw_pipe_state }

@.str = private unnamed_addr constant [18 x i8] c"name\09inuse\09plane\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"----\09-----\09-----\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%s:%d\09%d\09%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"TOTAL:\09%d\09(of %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"AVAIL:\09%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdp5_smp_dump(%struct.mdp5_smp* %0, %struct.drm_printer* %1) #0 {
  %3 = alloca %struct.mdp5_smp*, align 8
  %4 = alloca %struct.drm_printer*, align 8
  %5 = alloca %struct.mdp5_kms*, align 8
  %6 = alloca %struct.mdp5_hw_pipe_state*, align 8
  %7 = alloca %struct.mdp5_smp_state*, align 8
  %8 = alloca %struct.mdp5_global_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mdp5_hw_pipe*, align 8
  %13 = alloca %struct.drm_plane*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.mdp5_smp* %0, %struct.mdp5_smp** %3, align 8
  store %struct.drm_printer* %1, %struct.drm_printer** %4, align 8
  %18 = load %struct.mdp5_smp*, %struct.mdp5_smp** %3, align 8
  %19 = call %struct.mdp5_kms* @get_kms(%struct.mdp5_smp* %18)
  store %struct.mdp5_kms* %19, %struct.mdp5_kms** %5, align 8
  store i32 0, i32* %9, align 4
  %20 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %21 = call i32 (%struct.drm_printer*, i8*, ...) @drm_printf(%struct.drm_printer* %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %23 = call i32 (%struct.drm_printer*, i8*, ...) @drm_printf(%struct.drm_printer* %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i64 (...) @drm_can_sleep()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load %struct.mdp5_kms*, %struct.mdp5_kms** %5, align 8
  %28 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %27, i32 0, i32 1
  %29 = call i32 @drm_modeset_lock(i32* %28, i32* null)
  br label %30

30:                                               ; preds = %26, %2
  %31 = load %struct.mdp5_kms*, %struct.mdp5_kms** %5, align 8
  %32 = call %struct.mdp5_global_state* @mdp5_get_existing_global_state(%struct.mdp5_kms* %31)
  store %struct.mdp5_global_state* %32, %struct.mdp5_global_state** %8, align 8
  %33 = load %struct.mdp5_global_state*, %struct.mdp5_global_state** %8, align 8
  %34 = getelementptr inbounds %struct.mdp5_global_state, %struct.mdp5_global_state* %33, i32 0, i32 1
  store %struct.mdp5_hw_pipe_state* %34, %struct.mdp5_hw_pipe_state** %6, align 8
  %35 = load %struct.mdp5_global_state*, %struct.mdp5_global_state** %8, align 8
  %36 = getelementptr inbounds %struct.mdp5_global_state, %struct.mdp5_global_state* %35, i32 0, i32 0
  store %struct.mdp5_smp_state* %36, %struct.mdp5_smp_state** %7, align 8
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %104, %30
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.mdp5_kms*, %struct.mdp5_kms** %5, align 8
  %40 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %107

43:                                               ; preds = %37
  %44 = load %struct.mdp5_kms*, %struct.mdp5_kms** %5, align 8
  %45 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %44, i32 0, i32 2
  %46 = load %struct.mdp5_hw_pipe**, %struct.mdp5_hw_pipe*** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %46, i64 %48
  %50 = load %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %49, align 8
  store %struct.mdp5_hw_pipe* %50, %struct.mdp5_hw_pipe** %12, align 8
  %51 = load %struct.mdp5_hw_pipe_state*, %struct.mdp5_hw_pipe_state** %6, align 8
  %52 = getelementptr inbounds %struct.mdp5_hw_pipe_state, %struct.mdp5_hw_pipe_state* %51, i32 0, i32 0
  %53 = load %struct.drm_plane**, %struct.drm_plane*** %52, align 8
  %54 = load %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %12, align 8
  %55 = getelementptr inbounds %struct.mdp5_hw_pipe, %struct.mdp5_hw_pipe* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.drm_plane*, %struct.drm_plane** %53, i64 %56
  %58 = load %struct.drm_plane*, %struct.drm_plane** %57, align 8
  store %struct.drm_plane* %58, %struct.drm_plane** %13, align 8
  %59 = load %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %12, align 8
  %60 = getelementptr inbounds %struct.mdp5_hw_pipe, %struct.mdp5_hw_pipe* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %100, %43
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @pipe2nclients(i32 %64)
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %103

67:                                               ; preds = %62
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i64 @pipe2client(i32 %68, i32 %69)
  store i64 %70, i64* %15, align 8
  %71 = load %struct.mdp5_smp_state*, %struct.mdp5_smp_state** %7, align 8
  %72 = getelementptr inbounds %struct.mdp5_smp_state, %struct.mdp5_smp_state* %71, i32 0, i32 1
  %73 = load i8**, i8*** %72, align 8
  %74 = load i64, i64* %15, align 8
  %75 = getelementptr inbounds i8*, i8** %73, i64 %74
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %16, align 8
  %77 = load i8*, i8** %16, align 8
  %78 = load %struct.mdp5_smp*, %struct.mdp5_smp** %3, align 8
  %79 = getelementptr inbounds %struct.mdp5_smp, %struct.mdp5_smp* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @bitmap_weight(i8* %77, i32 %80)
  store i32 %81, i32* %17, align 4
  %82 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @pipe2name(i32 %83)
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %17, align 4
  %87 = load %struct.drm_plane*, %struct.drm_plane** %13, align 8
  %88 = icmp ne %struct.drm_plane* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %67
  %90 = load %struct.drm_plane*, %struct.drm_plane** %13, align 8
  %91 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  br label %94

93:                                               ; preds = %67
  br label %94

94:                                               ; preds = %93, %89
  %95 = phi i32* [ %92, %89 ], [ null, %93 ]
  %96 = call i32 (%struct.drm_printer*, i8*, ...) @drm_printf(%struct.drm_printer* %82, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %85, i32 %86, i32* %95)
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %94
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %11, align 4
  br label %62

103:                                              ; preds = %62
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %37

107:                                              ; preds = %37
  %108 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.mdp5_smp*, %struct.mdp5_smp** %3, align 8
  %111 = getelementptr inbounds %struct.mdp5_smp, %struct.mdp5_smp* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (%struct.drm_printer*, i8*, ...) @drm_printf(%struct.drm_printer* %108, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %109, i32 %112)
  %114 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %115 = load %struct.mdp5_smp*, %struct.mdp5_smp** %3, align 8
  %116 = getelementptr inbounds %struct.mdp5_smp, %struct.mdp5_smp* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.mdp5_smp_state*, %struct.mdp5_smp_state** %7, align 8
  %119 = getelementptr inbounds %struct.mdp5_smp_state, %struct.mdp5_smp_state* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.mdp5_smp*, %struct.mdp5_smp** %3, align 8
  %122 = getelementptr inbounds %struct.mdp5_smp, %struct.mdp5_smp* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @bitmap_weight(i8* %120, i32 %123)
  %125 = sub nsw i32 %117, %124
  %126 = call i32 (%struct.drm_printer*, i8*, ...) @drm_printf(%struct.drm_printer* %114, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %125)
  %127 = call i64 (...) @drm_can_sleep()
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %107
  %130 = load %struct.mdp5_kms*, %struct.mdp5_kms** %5, align 8
  %131 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %130, i32 0, i32 1
  %132 = call i32 @drm_modeset_unlock(i32* %131)
  br label %133

133:                                              ; preds = %129, %107
  ret void
}

declare dso_local %struct.mdp5_kms* @get_kms(%struct.mdp5_smp*) #1

declare dso_local i32 @drm_printf(%struct.drm_printer*, i8*, ...) #1

declare dso_local i64 @drm_can_sleep(...) #1

declare dso_local i32 @drm_modeset_lock(i32*, i32*) #1

declare dso_local %struct.mdp5_global_state* @mdp5_get_existing_global_state(%struct.mdp5_kms*) #1

declare dso_local i32 @pipe2nclients(i32) #1

declare dso_local i64 @pipe2client(i32, i32) #1

declare dso_local i32 @bitmap_weight(i8*, i32) #1

declare dso_local i32 @pipe2name(i32) #1

declare dso_local i32 @drm_modeset_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
