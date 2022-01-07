; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fourcc.c_drm_format_info_min_pitch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fourcc.c_drm_format_info_min_pitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_format_info = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_format_info_min_pitch(%struct.drm_format_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_format_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_format_info* %0, %struct.drm_format_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.drm_format_info*, %struct.drm_format_info** %5, align 8
  %9 = icmp ne %struct.drm_format_info* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.drm_format_info*, %struct.drm_format_info** %5, align 8
  %16 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sge i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %10, %3
  store i32 0, i32* %4, align 4
  br label %38

20:                                               ; preds = %13
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.drm_format_info*, %struct.drm_format_info** %5, align 8
  %23 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %21, %28
  %30 = load %struct.drm_format_info*, %struct.drm_format_info** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @drm_format_info_block_width(%struct.drm_format_info* %30, i32 %31)
  %33 = load %struct.drm_format_info*, %struct.drm_format_info** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @drm_format_info_block_height(%struct.drm_format_info* %33, i32 %34)
  %36 = mul nsw i32 %32, %35
  %37 = call i32 @DIV_ROUND_UP_ULL(i32 %29, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %20, %19
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @DIV_ROUND_UP_ULL(i32, i32) #1

declare dso_local i32 @drm_format_info_block_width(%struct.drm_format_info*, i32) #1

declare dso_local i32 @drm_format_info_block_height(%struct.drm_format_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
