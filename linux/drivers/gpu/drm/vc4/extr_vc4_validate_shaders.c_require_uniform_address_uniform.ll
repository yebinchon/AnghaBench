; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_validate_shaders.c_require_uniform_address_uniform.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_validate_shaders.c_require_uniform_address_uniform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_validated_shader_info = type { i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc4_validated_shader_info*)* @require_uniform_address_uniform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @require_uniform_address_uniform(%struct.vc4_validated_shader_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vc4_validated_shader_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vc4_validated_shader_info* %0, %struct.vc4_validated_shader_info** %3, align 8
  %6 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %3, align 8
  %7 = getelementptr inbounds %struct.vc4_validated_shader_info, %struct.vc4_validated_shader_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  %9 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %3, align 8
  %10 = getelementptr inbounds %struct.vc4_validated_shader_info, %struct.vc4_validated_shader_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = sdiv i32 %11, 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %3, align 8
  %14 = getelementptr inbounds %struct.vc4_validated_shader_info, %struct.vc4_validated_shader_info* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32* @krealloc(i32* %15, i32 %20, i32 %21)
  %23 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %3, align 8
  %24 = getelementptr inbounds %struct.vc4_validated_shader_info, %struct.vc4_validated_shader_info* %23, i32 0, i32 2
  store i32* %22, i32** %24, align 8
  %25 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %3, align 8
  %26 = getelementptr inbounds %struct.vc4_validated_shader_info, %struct.vc4_validated_shader_info* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

30:                                               ; preds = %1
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %3, align 8
  %33 = getelementptr inbounds %struct.vc4_validated_shader_info, %struct.vc4_validated_shader_info* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %31, i32* %37, align 4
  %38 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %3, align 8
  %39 = getelementptr inbounds %struct.vc4_validated_shader_info, %struct.vc4_validated_shader_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  store i32 1, i32* %2, align 4
  br label %42

42:                                               ; preds = %30, %29
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32* @krealloc(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
