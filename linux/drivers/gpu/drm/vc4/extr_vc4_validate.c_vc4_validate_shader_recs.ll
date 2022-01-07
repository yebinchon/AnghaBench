; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_validate.c_vc4_validate_shader_recs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_validate.c_vc4_validate_shader_recs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.vc4_exec_info = type { i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc4_validate_shader_recs(%struct.drm_device* %0, %struct.vc4_exec_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.vc4_exec_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.vc4_exec_info* %1, %struct.vc4_exec_info** %5, align 8
  store i32 0, i32* %7, align 4
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %28, %2
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %5, align 8
  %11 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %8
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %5, align 8
  %17 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %5, align 8
  %18 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = call i32 @validate_gl_shader_rec(%struct.drm_device* %15, %struct.vc4_exec_info* %16, i32* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %33

27:                                               ; preds = %14
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* %6, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %6, align 8
  br label %8

31:                                               ; preds = %8
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %25
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @validate_gl_shader_rec(%struct.drm_device*, %struct.vc4_exec_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
