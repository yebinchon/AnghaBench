; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_ddc.c_defer_delay_converter_wa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_ddc.c_defer_delay_converter_wa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddc_service = type { %struct.dc_link* }
%struct.dc_link = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@DP_BRANCH_DEVICE_ID_0080E1 = common dso_local global i64 0, align 8
@DP_DVI_CONVERTER_ID_4 = common dso_local global i32 0, align 4
@I2C_OVER_AUX_DEFER_WA_DELAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ddc_service*, i64)* @defer_delay_converter_wa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @defer_delay_converter_wa(%struct.ddc_service* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ddc_service*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dc_link*, align 8
  store %struct.ddc_service* %0, %struct.ddc_service** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.ddc_service*, %struct.ddc_service** %4, align 8
  %8 = getelementptr inbounds %struct.ddc_service, %struct.ddc_service* %7, i32 0, i32 0
  %9 = load %struct.dc_link*, %struct.dc_link** %8, align 8
  store %struct.dc_link* %9, %struct.dc_link** %6, align 8
  %10 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %11 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DP_BRANCH_DEVICE_ID_0080E1, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %2
  %17 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %18 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @DP_DVI_CONVERTER_ID_4, align 4
  %22 = call i32 @memcmp(i32 %20, i32 %21, i32 4)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %16
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @I2C_OVER_AUX_DEFER_WA_DELAY, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i64, i64* %5, align 8
  br label %32

30:                                               ; preds = %24
  %31 = load i64, i64* @I2C_OVER_AUX_DEFER_WA_DELAY, align 8
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i64 [ %29, %28 ], [ %31, %30 ]
  store i64 %33, i64* %3, align 8
  br label %36

34:                                               ; preds = %16, %2
  %35 = load i64, i64* %5, align 8
  store i64 %35, i64* %3, align 8
  br label %36

36:                                               ; preds = %34, %32
  %37 = load i64, i64* %3, align 8
  ret i64 %37
}

declare dso_local i32 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
