; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_transform_v.c_calculate_inits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_transform_v.c_calculate_inits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_transform = type { i32 }
%struct.scaler_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.sclv_ratios_inits = type { i32, i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.rect = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_transform*, %struct.scaler_data*, %struct.sclv_ratios_inits*, %struct.rect*, %struct.rect*)* @calculate_inits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calculate_inits(%struct.dce_transform* %0, %struct.scaler_data* %1, %struct.sclv_ratios_inits* %2, %struct.rect* %3, %struct.rect* %4) #0 {
  %6 = alloca %struct.dce_transform*, align 8
  %7 = alloca %struct.scaler_data*, align 8
  %8 = alloca %struct.sclv_ratios_inits*, align 8
  %9 = alloca %struct.rect*, align 8
  %10 = alloca %struct.rect*, align 8
  store %struct.dce_transform* %0, %struct.dce_transform** %6, align 8
  store %struct.scaler_data* %1, %struct.scaler_data** %7, align 8
  store %struct.sclv_ratios_inits* %2, %struct.sclv_ratios_inits** %8, align 8
  store %struct.rect* %3, %struct.rect** %9, align 8
  store %struct.rect* %4, %struct.rect** %10, align 8
  %11 = load %struct.scaler_data*, %struct.scaler_data** %7, align 8
  %12 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dc_fixpt_u2d19(i32 %14)
  %16 = shl i32 %15, 5
  %17 = load %struct.sclv_ratios_inits*, %struct.sclv_ratios_inits** %8, align 8
  %18 = getelementptr inbounds %struct.sclv_ratios_inits, %struct.sclv_ratios_inits* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.scaler_data*, %struct.scaler_data** %7, align 8
  %20 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dc_fixpt_u2d19(i32 %22)
  %24 = shl i32 %23, 5
  %25 = load %struct.sclv_ratios_inits*, %struct.sclv_ratios_inits** %8, align 8
  %26 = getelementptr inbounds %struct.sclv_ratios_inits, %struct.sclv_ratios_inits* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.scaler_data*, %struct.scaler_data** %7, align 8
  %28 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dc_fixpt_u2d19(i32 %30)
  %32 = shl i32 %31, 5
  %33 = load %struct.sclv_ratios_inits*, %struct.sclv_ratios_inits** %8, align 8
  %34 = getelementptr inbounds %struct.sclv_ratios_inits, %struct.sclv_ratios_inits* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.scaler_data*, %struct.scaler_data** %7, align 8
  %36 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dc_fixpt_u2d19(i32 %38)
  %40 = shl i32 %39, 5
  %41 = load %struct.sclv_ratios_inits*, %struct.sclv_ratios_inits** %8, align 8
  %42 = getelementptr inbounds %struct.sclv_ratios_inits, %struct.sclv_ratios_inits* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.sclv_ratios_inits*, %struct.sclv_ratios_inits** %8, align 8
  %44 = getelementptr inbounds %struct.sclv_ratios_inits, %struct.sclv_ratios_inits* %43, i32 0, i32 7
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  %46 = load %struct.sclv_ratios_inits*, %struct.sclv_ratios_inits** %8, align 8
  %47 = getelementptr inbounds %struct.sclv_ratios_inits, %struct.sclv_ratios_inits* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  %49 = load %struct.sclv_ratios_inits*, %struct.sclv_ratios_inits** %8, align 8
  %50 = getelementptr inbounds %struct.sclv_ratios_inits, %struct.sclv_ratios_inits* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  %52 = load %struct.sclv_ratios_inits*, %struct.sclv_ratios_inits** %8, align 8
  %53 = getelementptr inbounds %struct.sclv_ratios_inits, %struct.sclv_ratios_inits* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  ret void
}

declare dso_local i32 @dc_fixpt_u2d19(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
