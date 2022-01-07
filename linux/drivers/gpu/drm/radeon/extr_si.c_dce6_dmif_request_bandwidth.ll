; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_dce6_dmif_request_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_dce6_dmif_request_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce6_wm_params = type { i32, i32 }
%struct.TYPE_7__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dce6_wm_params*)* @dce6_dmif_request_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce6_dmif_request_bandwidth(%struct.dce6_wm_params* %0) #0 {
  %2 = alloca %struct.dce6_wm_params*, align 8
  %3 = alloca %struct.TYPE_7__, align 8
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca %struct.TYPE_7__, align 8
  %10 = alloca i32, align 4
  store %struct.dce6_wm_params* %0, %struct.dce6_wm_params** %2, align 8
  %11 = call i8* @dfixed_const(i32 1000)
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i8* %11, i8** %12, align 8
  %13 = load %struct.dce6_wm_params*, %struct.dce6_wm_params** %2, align 8
  %14 = getelementptr inbounds %struct.dce6_wm_params, %struct.dce6_wm_params* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @dfixed_const(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store i8* %16, i8** %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i8* @dfixed_div(i8* %19, i8* %21)
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store i8* %22, i8** %23, align 8
  %24 = load %struct.dce6_wm_params*, %struct.dce6_wm_params** %2, align 8
  %25 = call i32 @dce6_get_dmif_bytes_per_request(%struct.dce6_wm_params* %24)
  %26 = sdiv i32 %25, 2
  %27 = call i8* @dfixed_const(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i8* %27, i8** %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @dfixed_mul(i8* %30, i8* %32)
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i8* %33, i8** %34, align 8
  %35 = call i8* @dfixed_const(i32 1000)
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i8* %35, i8** %36, align 8
  %37 = load %struct.dce6_wm_params*, %struct.dce6_wm_params** %2, align 8
  %38 = getelementptr inbounds %struct.dce6_wm_params, %struct.dce6_wm_params* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @dfixed_const(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i8* %40, i8** %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i8* @dfixed_div(i8* %43, i8* %45)
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i8* %46, i8** %47, align 8
  %48 = load %struct.dce6_wm_params*, %struct.dce6_wm_params** %2, align 8
  %49 = call i32 @dce6_get_dmif_bytes_per_request(%struct.dce6_wm_params* %48)
  %50 = call i8* @dfixed_const(i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i8* %50, i8** %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i8* @dfixed_mul(i8* %53, i8* %55)
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store i8* %56, i8** %57, align 8
  %58 = call i8* @dfixed_const(i32 10)
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i8* %58, i8** %59, align 8
  %60 = call i8* @dfixed_const(i32 8)
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  store i8* %60, i8** %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i8* @dfixed_div(i8* %63, i8* %65)
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  store i8* %66, i8** %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @dfixed_trunc(i8* %69)
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @dfixed_trunc(i8* %72)
  %74 = call i32 @min(i32 %70, i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i8* @dfixed_const(i32 %75)
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i8* %76, i8** %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i8* @dfixed_mul(i8* %79, i8* %81)
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i8* %82, i8** %83, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @dfixed_trunc(i8* %85)
  ret i32 %86
}

declare dso_local i8* @dfixed_const(i32) #1

declare dso_local i8* @dfixed_div(i8*, i8*) #1

declare dso_local i32 @dce6_get_dmif_bytes_per_request(%struct.dce6_wm_params*) #1

declare dso_local i8* @dfixed_mul(i8*, i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @dfixed_trunc(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
