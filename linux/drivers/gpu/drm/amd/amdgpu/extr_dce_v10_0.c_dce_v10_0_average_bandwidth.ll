; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v10_0.c_dce_v10_0_average_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v10_0.c_dce_v10_0_average_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce10_wm_params = type { i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dce10_wm_params*)* @dce_v10_0_average_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_v10_0_average_bandwidth(%struct.dce10_wm_params* %0) #0 {
  %2 = alloca %struct.dce10_wm_params*, align 8
  %3 = alloca %struct.TYPE_7__, align 8
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  store %struct.dce10_wm_params* %0, %struct.dce10_wm_params** %2, align 8
  %8 = call i8* @dfixed_const(i32 1000)
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i8* %8, i8** %9, align 8
  %10 = load %struct.dce10_wm_params*, %struct.dce10_wm_params** %2, align 8
  %11 = getelementptr inbounds %struct.dce10_wm_params, %struct.dce10_wm_params* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.dce10_wm_params*, %struct.dce10_wm_params** %2, align 8
  %14 = getelementptr inbounds %struct.dce10_wm_params, %struct.dce10_wm_params* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %12, %15
  %17 = call i8* @dfixed_const(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store i8* %17, i8** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i8* @dfixed_div(i8* %20, i8* %22)
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store i8* %23, i8** %24, align 8
  %25 = load %struct.dce10_wm_params*, %struct.dce10_wm_params** %2, align 8
  %26 = getelementptr inbounds %struct.dce10_wm_params, %struct.dce10_wm_params* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @dfixed_const(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  store i8* %28, i8** %29, align 8
  %30 = load %struct.dce10_wm_params*, %struct.dce10_wm_params** %2, align 8
  %31 = getelementptr inbounds %struct.dce10_wm_params, %struct.dce10_wm_params* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @dfixed_const(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i8* %33, i8** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i8* @dfixed_mul(i8* %36, i8* %38)
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i8* %39, i8** %40, align 8
  %41 = load %struct.dce10_wm_params*, %struct.dce10_wm_params** %2, align 8
  %42 = getelementptr inbounds %struct.dce10_wm_params, %struct.dce10_wm_params* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i8* @dfixed_mul(i8* %44, i8* %46)
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i8* %47, i8** %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i8* @dfixed_div(i8* %50, i8* %52)
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i8* %53, i8** %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @dfixed_trunc(i8* %56)
  ret i32 %57
}

declare dso_local i8* @dfixed_const(i32) #1

declare dso_local i8* @dfixed_div(i8*, i8*) #1

declare dso_local i8* @dfixed_mul(i8*, i8*) #1

declare dso_local i32 @dfixed_trunc(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
