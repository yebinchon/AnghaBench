; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_xgmi_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_xgmi_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_context = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ta_xgmi_shared_memory = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@TA_COMMAND_XGMI__INITIALIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psp_context*)* @psp_xgmi_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_xgmi_initialize(%struct.psp_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psp_context*, align 8
  %4 = alloca %struct.ta_xgmi_shared_memory*, align 8
  %5 = alloca i32, align 4
  store %struct.psp_context* %0, %struct.psp_context** %3, align 8
  %6 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %7 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %6, i32 0, i32 1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %54

16:                                               ; preds = %1
  %17 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %18 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %16
  %23 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %24 = call i32 @psp_xgmi_init_shared_buf(%struct.psp_context* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %54

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %16
  %31 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %32 = call i32 @psp_xgmi_load(%struct.psp_context* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %54

37:                                               ; preds = %30
  %38 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %39 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.ta_xgmi_shared_memory*
  store %struct.ta_xgmi_shared_memory* %42, %struct.ta_xgmi_shared_memory** %4, align 8
  %43 = load %struct.ta_xgmi_shared_memory*, %struct.ta_xgmi_shared_memory** %4, align 8
  %44 = call i32 @memset(%struct.ta_xgmi_shared_memory* %43, i32 0, i32 4)
  %45 = load i32, i32* @TA_COMMAND_XGMI__INITIALIZE, align 4
  %46 = load %struct.ta_xgmi_shared_memory*, %struct.ta_xgmi_shared_memory** %4, align 8
  %47 = getelementptr inbounds %struct.ta_xgmi_shared_memory, %struct.ta_xgmi_shared_memory* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %49 = load %struct.ta_xgmi_shared_memory*, %struct.ta_xgmi_shared_memory** %4, align 8
  %50 = getelementptr inbounds %struct.ta_xgmi_shared_memory, %struct.ta_xgmi_shared_memory* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @psp_xgmi_invoke(%struct.psp_context* %48, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %37, %35, %27, %13
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @psp_xgmi_init_shared_buf(%struct.psp_context*) #1

declare dso_local i32 @psp_xgmi_load(%struct.psp_context*) #1

declare dso_local i32 @memset(%struct.ta_xgmi_shared_memory*, i32, i32) #1

declare dso_local i32 @psp_xgmi_invoke(%struct.psp_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
