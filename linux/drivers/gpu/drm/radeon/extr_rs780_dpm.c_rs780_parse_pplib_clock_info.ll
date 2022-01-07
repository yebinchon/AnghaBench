; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_parse_pplib_clock_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_parse_pplib_clock_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.radeon_ps = type { i32 }
%union.pplib_clock_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.igp_ps = type { i32, i32, i8*, i8*, i32 }

@RS780_VDDC_LEVEL_UNKNOWN = common dso_local global i8* null, align 8
@RS780_VDDC_LEVEL_LOW = common dso_local global i8* null, align 8
@RS780_VDDC_LEVEL_HIGH = common dso_local global i8* null, align 8
@ATOM_PPLIB_CLASSIFICATION_BOOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*, %union.pplib_clock_info*)* @rs780_parse_pplib_clock_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs780_parse_pplib_clock_info(%struct.radeon_device* %0, %struct.radeon_ps* %1, %union.pplib_clock_info* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %union.pplib_clock_info*, align 8
  %7 = alloca %struct.igp_ps*, align 8
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %5, align 8
  store %union.pplib_clock_info* %2, %union.pplib_clock_info** %6, align 8
  %9 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %10 = call %struct.igp_ps* @rs780_get_ps(%struct.radeon_ps* %9)
  store %struct.igp_ps* %10, %struct.igp_ps** %7, align 8
  %11 = load %union.pplib_clock_info*, %union.pplib_clock_info** %6, align 8
  %12 = bitcast %union.pplib_clock_info* %11 to %struct.TYPE_3__*
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le16_to_cpu(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load %union.pplib_clock_info*, %union.pplib_clock_info** %6, align 8
  %17 = bitcast %union.pplib_clock_info* %16 to %struct.TYPE_3__*
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 16
  %21 = load i32, i32* %8, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.igp_ps*, %struct.igp_ps** %7, align 8
  %25 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %union.pplib_clock_info*, %union.pplib_clock_info** %6, align 8
  %27 = bitcast %union.pplib_clock_info* %26 to %struct.TYPE_3__*
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le16_to_cpu(i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %union.pplib_clock_info*, %union.pplib_clock_info** %6, align 8
  %32 = bitcast %union.pplib_clock_info* %31 to %struct.TYPE_3__*
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 16
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.igp_ps*, %struct.igp_ps** %7, align 8
  %40 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %union.pplib_clock_info*, %union.pplib_clock_info** %6, align 8
  %42 = bitcast %union.pplib_clock_info* %41 to %struct.TYPE_3__*
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le16_to_cpu(i32 %44)
  switch i32 %45, label %47 [
    i32 129, label %46
    i32 130, label %54
    i32 131, label %61
    i32 128, label %68
  ]

46:                                               ; preds = %3
  br label %47

47:                                               ; preds = %3, %46
  %48 = load i8*, i8** @RS780_VDDC_LEVEL_UNKNOWN, align 8
  %49 = load %struct.igp_ps*, %struct.igp_ps** %7, align 8
  %50 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** @RS780_VDDC_LEVEL_UNKNOWN, align 8
  %52 = load %struct.igp_ps*, %struct.igp_ps** %7, align 8
  %53 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  br label %75

54:                                               ; preds = %3
  %55 = load i8*, i8** @RS780_VDDC_LEVEL_LOW, align 8
  %56 = load %struct.igp_ps*, %struct.igp_ps** %7, align 8
  %57 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** @RS780_VDDC_LEVEL_LOW, align 8
  %59 = load %struct.igp_ps*, %struct.igp_ps** %7, align 8
  %60 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  br label %75

61:                                               ; preds = %3
  %62 = load i8*, i8** @RS780_VDDC_LEVEL_HIGH, align 8
  %63 = load %struct.igp_ps*, %struct.igp_ps** %7, align 8
  %64 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** @RS780_VDDC_LEVEL_HIGH, align 8
  %66 = load %struct.igp_ps*, %struct.igp_ps** %7, align 8
  %67 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  br label %75

68:                                               ; preds = %3
  %69 = load i8*, i8** @RS780_VDDC_LEVEL_LOW, align 8
  %70 = load %struct.igp_ps*, %struct.igp_ps** %7, align 8
  %71 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %70, i32 0, i32 3
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** @RS780_VDDC_LEVEL_HIGH, align 8
  %73 = load %struct.igp_ps*, %struct.igp_ps** %7, align 8
  %74 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  br label %75

75:                                               ; preds = %68, %61, %54, %47
  %76 = load %union.pplib_clock_info*, %union.pplib_clock_info** %6, align 8
  %77 = bitcast %union.pplib_clock_info* %76 to %struct.TYPE_3__*
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @le32_to_cpu(i32 %79)
  %81 = load %struct.igp_ps*, %struct.igp_ps** %7, align 8
  %82 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  %83 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %84 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_BOOT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %108

89:                                               ; preds = %75
  %90 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %91 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.igp_ps*, %struct.igp_ps** %7, align 8
  %95 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %97 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.igp_ps*, %struct.igp_ps** %7, align 8
  %101 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load i8*, i8** @RS780_VDDC_LEVEL_HIGH, align 8
  %103 = load %struct.igp_ps*, %struct.igp_ps** %7, align 8
  %104 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %103, i32 0, i32 3
  store i8* %102, i8** %104, align 8
  %105 = load i8*, i8** @RS780_VDDC_LEVEL_HIGH, align 8
  %106 = load %struct.igp_ps*, %struct.igp_ps** %7, align 8
  %107 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %106, i32 0, i32 2
  store i8* %105, i8** %107, align 8
  br label %108

108:                                              ; preds = %89, %75
  ret void
}

declare dso_local %struct.igp_ps* @rs780_get_ps(%struct.radeon_ps*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
