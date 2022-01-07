; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dwb_scl.c_wbscl_get_filter_8tap_16p.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dwb_scl.c_wbscl_get_filter_8tap_16p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.fixed31_32 = type { i64 }
%struct.TYPE_4__ = type { i64 }

@dc_fixpt_one = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@filter_8tap_16p_upscale = common dso_local global i32* null, align 8
@filter_8tap_16p_117 = common dso_local global i32* null, align 8
@filter_8tap_16p_150 = common dso_local global i32* null, align 8
@filter_8tap_16p_183 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64)* @wbscl_get_filter_8tap_16p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @wbscl_get_filter_8tap_16p(i64 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.fixed31_32, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  store i64 %0, i64* %6, align 8
  %7 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dc_fixpt_one, i32 0, i32 0), align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32*, i32** @filter_8tap_16p_upscale, align 8
  store i32* %12, i32** %2, align 8
  br label %35

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @dc_fixpt_from_fraction(i32 4, i32 3)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i64 %16, i64* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %15, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32*, i32** @filter_8tap_16p_117, align 8
  store i32* %22, i32** %2, align 8
  br label %35

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @dc_fixpt_from_fraction(i32 5, i32 3)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %25, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32*, i32** @filter_8tap_16p_150, align 8
  store i32* %32, i32** %2, align 8
  br label %35

33:                                               ; preds = %23
  %34 = load i32*, i32** @filter_8tap_16p_183, align 8
  store i32* %34, i32** %2, align 8
  br label %35

35:                                               ; preds = %33, %31, %21, %11
  %36 = load i32*, i32** %2, align 8
  ret i32* %36
}

declare dso_local i64 @dc_fixpt_from_fraction(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
