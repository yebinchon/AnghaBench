; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic.c_drm_atomic_get_private_obj_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic.c_drm_atomic_get_private_obj_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_private_state = type { %struct.drm_atomic_state* }
%struct.drm_atomic_state = type { i32, %struct.__drm_private_objs_state*, i32 }
%struct.__drm_private_objs_state = type { %struct.drm_private_obj*, %struct.drm_private_state*, i32, %struct.drm_private_state* }
%struct.drm_private_obj = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.drm_private_state* (%struct.drm_private_obj*)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Added new private object %p state %p to %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_private_state* @drm_atomic_get_private_obj_state(%struct.drm_atomic_state* %0, %struct.drm_private_obj* %1) #0 {
  %3 = alloca %struct.drm_private_state*, align 8
  %4 = alloca %struct.drm_atomic_state*, align 8
  %5 = alloca %struct.drm_private_obj*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.__drm_private_objs_state*, align 8
  %12 = alloca %struct.drm_private_state*, align 8
  store %struct.drm_atomic_state* %0, %struct.drm_atomic_state** %4, align 8
  store %struct.drm_private_obj* %1, %struct.drm_private_obj** %5, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %40, %2
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %16 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %13
  %20 = load %struct.drm_private_obj*, %struct.drm_private_obj** %5, align 8
  %21 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %22 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %21, i32 0, i32 1
  %23 = load %struct.__drm_private_objs_state*, %struct.__drm_private_objs_state** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.__drm_private_objs_state, %struct.__drm_private_objs_state* %23, i64 %25
  %27 = getelementptr inbounds %struct.__drm_private_objs_state, %struct.__drm_private_objs_state* %26, i32 0, i32 0
  %28 = load %struct.drm_private_obj*, %struct.drm_private_obj** %27, align 8
  %29 = icmp eq %struct.drm_private_obj* %20, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %19
  %31 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %32 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %31, i32 0, i32 1
  %33 = load %struct.__drm_private_objs_state*, %struct.__drm_private_objs_state** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.__drm_private_objs_state, %struct.__drm_private_objs_state* %33, i64 %35
  %37 = getelementptr inbounds %struct.__drm_private_objs_state, %struct.__drm_private_objs_state* %36, i32 0, i32 3
  %38 = load %struct.drm_private_state*, %struct.drm_private_state** %37, align 8
  store %struct.drm_private_state* %38, %struct.drm_private_state** %3, align 8
  br label %148

39:                                               ; preds = %19
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %13

43:                                               ; preds = %13
  %44 = load %struct.drm_private_obj*, %struct.drm_private_obj** %5, align 8
  %45 = getelementptr inbounds %struct.drm_private_obj, %struct.drm_private_obj* %44, i32 0, i32 2
  %46 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %47 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @drm_modeset_lock(i32* %45, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* %9, align 4
  %54 = call %struct.drm_private_state* @ERR_PTR(i32 %53)
  store %struct.drm_private_state* %54, %struct.drm_private_state** %3, align 8
  br label %148

55:                                               ; preds = %43
  %56 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %57 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 32, %61
  store i64 %62, i64* %10, align 8
  %63 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %64 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %63, i32 0, i32 1
  %65 = load %struct.__drm_private_objs_state*, %struct.__drm_private_objs_state** %64, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call %struct.__drm_private_objs_state* @krealloc(%struct.__drm_private_objs_state* %65, i64 %66, i32 %67)
  store %struct.__drm_private_objs_state* %68, %struct.__drm_private_objs_state** %11, align 8
  %69 = load %struct.__drm_private_objs_state*, %struct.__drm_private_objs_state** %11, align 8
  %70 = icmp ne %struct.__drm_private_objs_state* %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %55
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  %74 = call %struct.drm_private_state* @ERR_PTR(i32 %73)
  store %struct.drm_private_state* %74, %struct.drm_private_state** %3, align 8
  br label %148

75:                                               ; preds = %55
  %76 = load %struct.__drm_private_objs_state*, %struct.__drm_private_objs_state** %11, align 8
  %77 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %78 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %77, i32 0, i32 1
  store %struct.__drm_private_objs_state* %76, %struct.__drm_private_objs_state** %78, align 8
  %79 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %80 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %6, align 4
  %82 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %83 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %82, i32 0, i32 1
  %84 = load %struct.__drm_private_objs_state*, %struct.__drm_private_objs_state** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.__drm_private_objs_state, %struct.__drm_private_objs_state* %84, i64 %86
  %88 = call i32 @memset(%struct.__drm_private_objs_state* %87, i32 0, i32 32)
  %89 = load %struct.drm_private_obj*, %struct.drm_private_obj** %5, align 8
  %90 = getelementptr inbounds %struct.drm_private_obj, %struct.drm_private_obj* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load %struct.drm_private_state* (%struct.drm_private_obj*)*, %struct.drm_private_state* (%struct.drm_private_obj*)** %92, align 8
  %94 = load %struct.drm_private_obj*, %struct.drm_private_obj** %5, align 8
  %95 = call %struct.drm_private_state* %93(%struct.drm_private_obj* %94)
  store %struct.drm_private_state* %95, %struct.drm_private_state** %12, align 8
  %96 = load %struct.drm_private_state*, %struct.drm_private_state** %12, align 8
  %97 = icmp ne %struct.drm_private_state* %96, null
  br i1 %97, label %102, label %98

98:                                               ; preds = %75
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  %101 = call %struct.drm_private_state* @ERR_PTR(i32 %100)
  store %struct.drm_private_state* %101, %struct.drm_private_state** %3, align 8
  br label %148

102:                                              ; preds = %75
  %103 = load %struct.drm_private_state*, %struct.drm_private_state** %12, align 8
  %104 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %105 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %104, i32 0, i32 1
  %106 = load %struct.__drm_private_objs_state*, %struct.__drm_private_objs_state** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.__drm_private_objs_state, %struct.__drm_private_objs_state* %106, i64 %108
  %110 = getelementptr inbounds %struct.__drm_private_objs_state, %struct.__drm_private_objs_state* %109, i32 0, i32 3
  store %struct.drm_private_state* %103, %struct.drm_private_state** %110, align 8
  %111 = load %struct.drm_private_obj*, %struct.drm_private_obj** %5, align 8
  %112 = getelementptr inbounds %struct.drm_private_obj, %struct.drm_private_obj* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %115 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %114, i32 0, i32 1
  %116 = load %struct.__drm_private_objs_state*, %struct.__drm_private_objs_state** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.__drm_private_objs_state, %struct.__drm_private_objs_state* %116, i64 %118
  %120 = getelementptr inbounds %struct.__drm_private_objs_state, %struct.__drm_private_objs_state* %119, i32 0, i32 2
  store i32 %113, i32* %120, align 8
  %121 = load %struct.drm_private_state*, %struct.drm_private_state** %12, align 8
  %122 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %123 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %122, i32 0, i32 1
  %124 = load %struct.__drm_private_objs_state*, %struct.__drm_private_objs_state** %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.__drm_private_objs_state, %struct.__drm_private_objs_state* %124, i64 %126
  %128 = getelementptr inbounds %struct.__drm_private_objs_state, %struct.__drm_private_objs_state* %127, i32 0, i32 1
  store %struct.drm_private_state* %121, %struct.drm_private_state** %128, align 8
  %129 = load %struct.drm_private_obj*, %struct.drm_private_obj** %5, align 8
  %130 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %131 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %130, i32 0, i32 1
  %132 = load %struct.__drm_private_objs_state*, %struct.__drm_private_objs_state** %131, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.__drm_private_objs_state, %struct.__drm_private_objs_state* %132, i64 %134
  %136 = getelementptr inbounds %struct.__drm_private_objs_state, %struct.__drm_private_objs_state* %135, i32 0, i32 0
  store %struct.drm_private_obj* %129, %struct.drm_private_obj** %136, align 8
  %137 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %138 = load %struct.drm_private_state*, %struct.drm_private_state** %12, align 8
  %139 = getelementptr inbounds %struct.drm_private_state, %struct.drm_private_state* %138, i32 0, i32 0
  store %struct.drm_atomic_state* %137, %struct.drm_atomic_state** %139, align 8
  %140 = load i32, i32* %7, align 4
  %141 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %142 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load %struct.drm_private_obj*, %struct.drm_private_obj** %5, align 8
  %144 = load %struct.drm_private_state*, %struct.drm_private_state** %12, align 8
  %145 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %146 = call i32 @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), %struct.drm_private_obj* %143, %struct.drm_private_state* %144, %struct.drm_atomic_state* %145)
  %147 = load %struct.drm_private_state*, %struct.drm_private_state** %12, align 8
  store %struct.drm_private_state* %147, %struct.drm_private_state** %3, align 8
  br label %148

148:                                              ; preds = %102, %98, %71, %52, %30
  %149 = load %struct.drm_private_state*, %struct.drm_private_state** %3, align 8
  ret %struct.drm_private_state* %149
}

declare dso_local i32 @drm_modeset_lock(i32*, i32) #1

declare dso_local %struct.drm_private_state* @ERR_PTR(i32) #1

declare dso_local %struct.__drm_private_objs_state* @krealloc(%struct.__drm_private_objs_state*, i64, i32) #1

declare dso_local i32 @memset(%struct.__drm_private_objs_state*, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_ATOMIC(i8*, %struct.drm_private_obj*, %struct.drm_private_state*, %struct.drm_atomic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
