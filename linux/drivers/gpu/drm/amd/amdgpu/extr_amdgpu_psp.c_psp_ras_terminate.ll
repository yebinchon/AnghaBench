; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_ras_terminate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_ras_terminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psp_context*)* @psp_ras_terminate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_ras_terminate(%struct.psp_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psp_context*, align 8
  %4 = alloca i32, align 4
  store %struct.psp_context* %0, %struct.psp_context** %3, align 8
  %5 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %6 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

11:                                               ; preds = %1
  %12 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %13 = call i32 @psp_ras_unload(%struct.psp_context* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %32

18:                                               ; preds = %11
  %19 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %20 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %23 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %26 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %29 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @amdgpu_bo_free_kernel(i32* %24, i32* %27, i32* %30)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %18, %16, %10
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @psp_ras_unload(%struct.psp_context*) #1

declare dso_local i32 @amdgpu_bo_free_kernel(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
