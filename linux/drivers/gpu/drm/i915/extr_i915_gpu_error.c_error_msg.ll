; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_error_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_error_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_gpu_state = type { i8*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"GPU HANG: ecode %d:%x:0x%08x\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c", in %s [%d]\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.i915_gpu_state*, i32, i8*)* @error_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @error_msg(%struct.i915_gpu_state* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.i915_gpu_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.i915_gpu_state* %0, %struct.i915_gpu_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %9 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %12 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @INTEL_GEN(i32 %13)
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %19 = call i32 @i915_error_generate_code(%struct.i915_gpu_state* %18)
  %20 = call i32 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %10, i32 8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %17, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %22 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %25, label %53

25:                                               ; preds = %3
  %26 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %27 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = sub i64 8, %33
  %35 = trunc i64 %34 to i32
  %36 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %37 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %45 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %31, i32 %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %43, i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %25, %3
  %54 = load i8*, i8** %6, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %71

56:                                               ; preds = %53
  %57 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %58 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = sub i64 8, %64
  %66 = trunc i64 %65 to i32
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %62, i32 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %67)
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %56, %53
  %72 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %73 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  ret i8* %74
}

declare dso_local i32 @scnprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @INTEL_GEN(i32) #1

declare dso_local i32 @i915_error_generate_code(%struct.i915_gpu_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
