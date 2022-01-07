; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fourcc.c_drm_format_info_block_width.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fourcc.c_drm_format_info_block_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_format_info = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_format_info_block_width(%struct.drm_format_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_format_info*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_format_info* %0, %struct.drm_format_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.drm_format_info*, %struct.drm_format_info** %4, align 8
  %7 = icmp ne %struct.drm_format_info* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.drm_format_info*, %struct.drm_format_info** %4, align 8
  %14 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sge i32 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %8, %2
  store i32 0, i32* %3, align 4
  br label %36

18:                                               ; preds = %11
  %19 = load %struct.drm_format_info*, %struct.drm_format_info** %4, align 8
  %20 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %36

28:                                               ; preds = %18
  %29 = load %struct.drm_format_info*, %struct.drm_format_info** %4, align 8
  %30 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %28, %27, %17
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
