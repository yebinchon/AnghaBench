; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_modesetting.c_hgsmi_get_mode_hints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_modesetting.c_hgsmi_get_mode_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gen_pool = type { i32 }
%struct.vbva_modehint = type { i32 }
%struct.vbva_query_mode_hints = type { i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@HGSMI_CH_VBVA = common dso_local global i32 0, align 4
@VBVA_QUERY_MODE_HINTS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VERR_NOT_SUPPORTED = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hgsmi_get_mode_hints(%struct.gen_pool* %0, i32 %1, %struct.vbva_modehint* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gen_pool*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vbva_modehint*, align 8
  %8 = alloca %struct.vbva_query_mode_hints*, align 8
  %9 = alloca i64, align 8
  store %struct.gen_pool* %0, %struct.gen_pool** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.vbva_modehint* %2, %struct.vbva_modehint** %7, align 8
  %10 = load %struct.vbva_modehint*, %struct.vbva_modehint** %7, align 8
  %11 = icmp ne %struct.vbva_modehint* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %67

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = mul i64 %21, 4
  store i64 %22, i64* %9, align 8
  %23 = load %struct.gen_pool*, %struct.gen_pool** %5, align 8
  %24 = load i64, i64* %9, align 8
  %25 = add i64 16, %24
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @HGSMI_CH_VBVA, align 4
  %28 = load i32, i32* @VBVA_QUERY_MODE_HINTS, align 4
  %29 = call %struct.vbva_query_mode_hints* @hgsmi_buffer_alloc(%struct.gen_pool* %23, i32 %26, i32 %27, i32 %28)
  store %struct.vbva_query_mode_hints* %29, %struct.vbva_query_mode_hints** %8, align 8
  %30 = load %struct.vbva_query_mode_hints*, %struct.vbva_query_mode_hints** %8, align 8
  %31 = icmp ne %struct.vbva_query_mode_hints* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %19
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %67

35:                                               ; preds = %19
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.vbva_query_mode_hints*, %struct.vbva_query_mode_hints** %8, align 8
  %38 = getelementptr inbounds %struct.vbva_query_mode_hints, %struct.vbva_query_mode_hints* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.vbva_query_mode_hints*, %struct.vbva_query_mode_hints** %8, align 8
  %40 = getelementptr inbounds %struct.vbva_query_mode_hints, %struct.vbva_query_mode_hints* %39, i32 0, i32 1
  store i32 4, i32* %40, align 4
  %41 = load i64, i64* @VERR_NOT_SUPPORTED, align 8
  %42 = load %struct.vbva_query_mode_hints*, %struct.vbva_query_mode_hints** %8, align 8
  %43 = getelementptr inbounds %struct.vbva_query_mode_hints, %struct.vbva_query_mode_hints* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load %struct.gen_pool*, %struct.gen_pool** %5, align 8
  %45 = load %struct.vbva_query_mode_hints*, %struct.vbva_query_mode_hints** %8, align 8
  %46 = call i32 @hgsmi_buffer_submit(%struct.gen_pool* %44, %struct.vbva_query_mode_hints* %45)
  %47 = load %struct.vbva_query_mode_hints*, %struct.vbva_query_mode_hints** %8, align 8
  %48 = getelementptr inbounds %struct.vbva_query_mode_hints, %struct.vbva_query_mode_hints* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %35
  %52 = load %struct.gen_pool*, %struct.gen_pool** %5, align 8
  %53 = load %struct.vbva_query_mode_hints*, %struct.vbva_query_mode_hints** %8, align 8
  %54 = call i32 @hgsmi_buffer_free(%struct.gen_pool* %52, %struct.vbva_query_mode_hints* %53)
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %67

57:                                               ; preds = %35
  %58 = load %struct.vbva_modehint*, %struct.vbva_modehint** %7, align 8
  %59 = load %struct.vbva_query_mode_hints*, %struct.vbva_query_mode_hints** %8, align 8
  %60 = bitcast %struct.vbva_query_mode_hints* %59 to i32*
  %61 = getelementptr inbounds i32, i32* %60, i64 16
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @memcpy(%struct.vbva_modehint* %58, i32* %61, i64 %62)
  %64 = load %struct.gen_pool*, %struct.gen_pool** %5, align 8
  %65 = load %struct.vbva_query_mode_hints*, %struct.vbva_query_mode_hints** %8, align 8
  %66 = call i32 @hgsmi_buffer_free(%struct.gen_pool* %64, %struct.vbva_query_mode_hints* %65)
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %57, %51, %32, %16
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.vbva_query_mode_hints* @hgsmi_buffer_alloc(%struct.gen_pool*, i32, i32, i32) #1

declare dso_local i32 @hgsmi_buffer_submit(%struct.gen_pool*, %struct.vbva_query_mode_hints*) #1

declare dso_local i32 @hgsmi_buffer_free(%struct.gen_pool*, %struct.vbva_query_mode_hints*) #1

declare dso_local i32 @memcpy(%struct.vbva_modehint*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
