; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_sspp.c__sspp_subblk_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_sspp.c__sspp_subblk_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_pipe = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.dpu_sspp_sub_blks* }
%struct.dpu_sspp_sub_blks = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_hw_pipe*, i32, i32*)* @_sspp_subblk_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_sspp_subblk_offset(%struct.dpu_hw_pipe* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpu_hw_pipe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dpu_sspp_sub_blks*, align 8
  store %struct.dpu_hw_pipe* %0, %struct.dpu_hw_pipe** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %5, align 8
  %11 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.dpu_sspp_sub_blks*, %struct.dpu_sspp_sub_blks** %13, align 8
  store %struct.dpu_sspp_sub_blks* %14, %struct.dpu_sspp_sub_blks** %9, align 8
  %15 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %5, align 8
  %16 = icmp ne %struct.dpu_hw_pipe* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %45

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %40 [
    i32 128, label %22
    i32 131, label %28
    i32 130, label %28
    i32 129, label %28
    i32 133, label %34
    i32 132, label %34
  ]

22:                                               ; preds = %20
  %23 = load %struct.dpu_sspp_sub_blks*, %struct.dpu_sspp_sub_blks** %9, align 8
  %24 = getelementptr inbounds %struct.dpu_sspp_sub_blks, %struct.dpu_sspp_sub_blks* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  br label %43

28:                                               ; preds = %20, %20, %20
  %29 = load %struct.dpu_sspp_sub_blks*, %struct.dpu_sspp_sub_blks** %9, align 8
  %30 = getelementptr inbounds %struct.dpu_sspp_sub_blks, %struct.dpu_sspp_sub_blks* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  br label %43

34:                                               ; preds = %20, %20
  %35 = load %struct.dpu_sspp_sub_blks*, %struct.dpu_sspp_sub_blks** %9, align 8
  %36 = getelementptr inbounds %struct.dpu_sspp_sub_blks, %struct.dpu_sspp_sub_blks* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  br label %43

40:                                               ; preds = %20
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %40, %34, %28, %22
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %17
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
