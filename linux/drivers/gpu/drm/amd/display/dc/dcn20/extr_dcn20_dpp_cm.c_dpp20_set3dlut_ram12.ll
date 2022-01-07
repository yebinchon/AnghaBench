; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dpp_cm.c_dpp20_set3dlut_ram12.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dpp_cm.c_dpp20_set3dlut_ram12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp = type { i32 }
%struct.dc_rgb = type { i32, i32, i32 }
%struct.dcn20_dpp = type { i32 }

@CM_3DLUT_DATA = common dso_local global i32 0, align 4
@CM_3DLUT_DATA0 = common dso_local global i32 0, align 4
@CM_3DLUT_DATA1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpp*, %struct.dc_rgb*, i32)* @dpp20_set3dlut_ram12 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpp20_set3dlut_ram12(%struct.dpp* %0, %struct.dc_rgb* %1, i32 %2) #0 {
  %4 = alloca %struct.dpp*, align 8
  %5 = alloca %struct.dc_rgb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dcn20_dpp*, align 8
  store %struct.dpp* %0, %struct.dpp** %4, align 8
  store %struct.dc_rgb* %1, %struct.dc_rgb** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.dpp*, %struct.dpp** %4, align 8
  %16 = call %struct.dcn20_dpp* @TO_DCN20_DPP(%struct.dpp* %15)
  store %struct.dcn20_dpp* %16, %struct.dcn20_dpp** %14, align 8
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %85, %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %88

21:                                               ; preds = %17
  %22 = load %struct.dc_rgb*, %struct.dc_rgb** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.dc_rgb, %struct.dc_rgb* %22, i64 %24
  %26 = getelementptr inbounds %struct.dc_rgb, %struct.dc_rgb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 4
  store i32 %28, i32* %8, align 4
  %29 = load %struct.dc_rgb*, %struct.dc_rgb** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.dc_rgb, %struct.dc_rgb* %29, i64 %31
  %33 = getelementptr inbounds %struct.dc_rgb, %struct.dc_rgb* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 4
  store i32 %35, i32* %9, align 4
  %36 = load %struct.dc_rgb*, %struct.dc_rgb** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.dc_rgb, %struct.dc_rgb* %36, i64 %38
  %40 = getelementptr inbounds %struct.dc_rgb, %struct.dc_rgb* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 4
  store i32 %42, i32* %10, align 4
  %43 = load %struct.dc_rgb*, %struct.dc_rgb** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.dc_rgb, %struct.dc_rgb* %43, i64 %46
  %48 = getelementptr inbounds %struct.dc_rgb, %struct.dc_rgb* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 4
  store i32 %50, i32* %11, align 4
  %51 = load %struct.dc_rgb*, %struct.dc_rgb** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.dc_rgb, %struct.dc_rgb* %51, i64 %54
  %56 = getelementptr inbounds %struct.dc_rgb, %struct.dc_rgb* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 4
  store i32 %58, i32* %12, align 4
  %59 = load %struct.dc_rgb*, %struct.dc_rgb** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.dc_rgb, %struct.dc_rgb* %59, i64 %62
  %64 = getelementptr inbounds %struct.dc_rgb, %struct.dc_rgb* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 4
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* @CM_3DLUT_DATA, align 4
  %68 = load i32, i32* @CM_3DLUT_DATA0, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @CM_3DLUT_DATA1, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @REG_SET_2(i32 %67, i32 0, i32 %68, i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* @CM_3DLUT_DATA, align 4
  %74 = load i32, i32* @CM_3DLUT_DATA0, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @CM_3DLUT_DATA1, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @REG_SET_2(i32 %73, i32 0, i32 %74, i32 %75, i32 %76, i32 %77)
  %79 = load i32, i32* @CM_3DLUT_DATA, align 4
  %80 = load i32, i32* @CM_3DLUT_DATA0, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @CM_3DLUT_DATA1, align 4
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @REG_SET_2(i32 %79, i32 0, i32 %80, i32 %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %21
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 2
  store i32 %87, i32* %7, align 4
  br label %17

88:                                               ; preds = %17
  ret void
}

declare dso_local %struct.dcn20_dpp* @TO_DCN20_DPP(%struct.dpp*) #1

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
