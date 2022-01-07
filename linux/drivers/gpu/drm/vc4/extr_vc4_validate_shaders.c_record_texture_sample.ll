; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_validate_shaders.c_record_texture_sample.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_validate_shaders.c_record_texture_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_validated_shader_info = type { i32, %struct.vc4_texture_sample_info* }
%struct.vc4_texture_sample_info = type { i32 }
%struct.vc4_shader_validation_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc4_validated_shader_info*, %struct.vc4_shader_validation_state*, i32)* @record_texture_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @record_texture_sample(%struct.vc4_validated_shader_info* %0, %struct.vc4_shader_validation_state* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vc4_validated_shader_info*, align 8
  %6 = alloca %struct.vc4_shader_validation_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vc4_texture_sample_info*, align 8
  store %struct.vc4_validated_shader_info* %0, %struct.vc4_validated_shader_info** %5, align 8
  store %struct.vc4_shader_validation_state* %1, %struct.vc4_shader_validation_state** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %5, align 8
  %12 = getelementptr inbounds %struct.vc4_validated_shader_info, %struct.vc4_validated_shader_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %5, align 8
  %15 = getelementptr inbounds %struct.vc4_validated_shader_info, %struct.vc4_validated_shader_info* %14, i32 0, i32 1
  %16 = load %struct.vc4_texture_sample_info*, %struct.vc4_texture_sample_info** %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.vc4_texture_sample_info* @krealloc(%struct.vc4_texture_sample_info* %16, i32 %21, i32 %22)
  store %struct.vc4_texture_sample_info* %23, %struct.vc4_texture_sample_info** %10, align 8
  %24 = load %struct.vc4_texture_sample_info*, %struct.vc4_texture_sample_info** %10, align 8
  %25 = icmp ne %struct.vc4_texture_sample_info* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %65

27:                                               ; preds = %3
  %28 = load %struct.vc4_texture_sample_info*, %struct.vc4_texture_sample_info** %10, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.vc4_texture_sample_info, %struct.vc4_texture_sample_info* %28, i64 %30
  %32 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %6, align 8
  %33 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = call i32 @memcpy(%struct.vc4_texture_sample_info* %31, %struct.TYPE_2__* %37, i32 4)
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  %41 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %5, align 8
  %42 = getelementptr inbounds %struct.vc4_validated_shader_info, %struct.vc4_validated_shader_info* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.vc4_texture_sample_info*, %struct.vc4_texture_sample_info** %10, align 8
  %44 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %5, align 8
  %45 = getelementptr inbounds %struct.vc4_validated_shader_info, %struct.vc4_validated_shader_info* %44, i32 0, i32 1
  store %struct.vc4_texture_sample_info* %43, %struct.vc4_texture_sample_info** %45, align 8
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %61, %27
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 4
  br i1 %48, label %49, label %64

49:                                               ; preds = %46
  %50 = load %struct.vc4_shader_validation_state*, %struct.vc4_shader_validation_state** %6, align 8
  %51 = getelementptr inbounds %struct.vc4_shader_validation_state, %struct.vc4_shader_validation_state* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 -1, i32* %60, align 4
  br label %61

61:                                               ; preds = %49
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %46

64:                                               ; preds = %46
  store i32 1, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %26
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.vc4_texture_sample_info* @krealloc(%struct.vc4_texture_sample_info*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.vc4_texture_sample_info*, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
