; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_update_audio_usage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_update_audio_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_context = type { i32* }
%struct.resource_pool = type { i32, %struct.audio** }
%struct.audio = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_audio_usage(%struct.resource_context* %0, %struct.resource_pool* %1, %struct.audio* %2, i32 %3) #0 {
  %5 = alloca %struct.resource_context*, align 8
  %6 = alloca %struct.resource_pool*, align 8
  %7 = alloca %struct.audio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.resource_context* %0, %struct.resource_context** %5, align 8
  store %struct.resource_pool* %1, %struct.resource_pool** %6, align 8
  store %struct.audio* %2, %struct.audio** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %35, %4
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %13 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %10
  %17 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %18 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %17, i32 0, i32 1
  %19 = load %struct.audio**, %struct.audio*** %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.audio*, %struct.audio** %19, i64 %21
  %23 = load %struct.audio*, %struct.audio** %22, align 8
  %24 = load %struct.audio*, %struct.audio** %7, align 8
  %25 = icmp eq %struct.audio* %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %16
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %29 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %27, i32* %33, align 4
  br label %34

34:                                               ; preds = %26, %16
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %10

38:                                               ; preds = %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
