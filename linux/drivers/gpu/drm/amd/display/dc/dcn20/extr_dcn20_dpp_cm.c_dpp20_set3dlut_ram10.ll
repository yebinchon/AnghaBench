; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dpp_cm.c_dpp20_set3dlut_ram10.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dpp_cm.c_dpp20_set3dlut_ram10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp = type { i32 }
%struct.dc_rgb = type { i64, i64, i64 }
%struct.dcn20_dpp = type { i32 }

@CM_3DLUT_DATA_30BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpp*, %struct.dc_rgb*, i64)* @dpp20_set3dlut_ram10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpp20_set3dlut_ram10(%struct.dpp* %0, %struct.dc_rgb* %1, i64 %2) #0 {
  %4 = alloca %struct.dpp*, align 8
  %5 = alloca %struct.dc_rgb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.dcn20_dpp*, align 8
  store %struct.dpp* %0, %struct.dpp** %4, align 8
  store %struct.dc_rgb* %1, %struct.dc_rgb** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.dpp*, %struct.dpp** %4, align 8
  %14 = call %struct.dcn20_dpp* @TO_DCN20_DPP(%struct.dpp* %13)
  store %struct.dcn20_dpp* %14, %struct.dcn20_dpp** %12, align 8
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %46, %3
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %49

19:                                               ; preds = %15
  %20 = load %struct.dc_rgb*, %struct.dc_rgb** %5, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds %struct.dc_rgb, %struct.dc_rgb* %20, i64 %21
  %23 = getelementptr inbounds %struct.dc_rgb, %struct.dc_rgb* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %8, align 8
  %25 = load %struct.dc_rgb*, %struct.dc_rgb** %5, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.dc_rgb, %struct.dc_rgb* %25, i64 %26
  %28 = getelementptr inbounds %struct.dc_rgb, %struct.dc_rgb* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %9, align 8
  %30 = load %struct.dc_rgb*, %struct.dc_rgb** %5, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds %struct.dc_rgb, %struct.dc_rgb* %30, i64 %31
  %33 = getelementptr inbounds %struct.dc_rgb, %struct.dc_rgb* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %8, align 8
  %36 = shl i64 %35, 20
  %37 = load i64, i64* %9, align 8
  %38 = shl i64 %37, 10
  %39 = or i64 %36, %38
  %40 = load i64, i64* %10, align 8
  %41 = or i64 %39, %40
  store i64 %41, i64* %11, align 8
  %42 = load i32, i32* @CM_3DLUT_DATA_30BIT, align 4
  %43 = load i32, i32* @CM_3DLUT_DATA_30BIT, align 4
  %44 = load i64, i64* %11, align 8
  %45 = call i32 @REG_SET(i32 %42, i32 0, i32 %43, i64 %44)
  br label %46

46:                                               ; preds = %19
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %7, align 8
  br label %15

49:                                               ; preds = %15
  ret void
}

declare dso_local %struct.dcn20_dpp* @TO_DCN20_DPP(%struct.dpp*) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
