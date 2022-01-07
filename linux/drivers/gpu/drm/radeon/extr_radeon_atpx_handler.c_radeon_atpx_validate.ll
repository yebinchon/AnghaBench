; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atpx_handler.c_radeon_atpx_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atpx_handler.c_radeon_atpx_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.radeon_atpx = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i64 }
%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.atpx_px_params = type { i32, i32 }

@ATPX_FUNCTION_GET_PX_PARAMETERS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ATPX buffer is too small: %zu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ATPX_SEPARATE_MUX_FOR_I2C = common dso_local global i32 0, align 4
@ATPX_CRT1_RGB_SIGNAL_MUXED = common dso_local global i32 0, align 4
@ATPX_TV_SIGNAL_MUXED = common dso_local global i32 0, align 4
@ATPX_DFP_SIGNAL_MUXED = common dso_local global i32 0, align 4
@ATPX_DYNAMIC_PX_SUPPORTED = common dso_local global i32 0, align 4
@ATPX_DYNAMIC_DGPU_POWER_OFF_SUPPORTED = common dso_local global i32 0, align 4
@ATPX_MS_HYBRID_GFX_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"ATPX Hybrid Graphics\0A\00", align 1
@radeon_atpx_priv = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_atpx*)* @radeon_atpx_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_atpx_validate(%struct.radeon_atpx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_atpx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_object*, align 8
  %6 = alloca %struct.atpx_px_params, align 4
  %7 = alloca i64, align 8
  store %struct.radeon_atpx* %0, %struct.radeon_atpx** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.radeon_atpx*, %struct.radeon_atpx** %3, align 8
  %9 = getelementptr inbounds %struct.radeon_atpx, %struct.radeon_atpx* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %57

13:                                               ; preds = %1
  %14 = load %struct.radeon_atpx*, %struct.radeon_atpx** %3, align 8
  %15 = getelementptr inbounds %struct.radeon_atpx, %struct.radeon_atpx* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @ATPX_FUNCTION_GET_PX_PARAMETERS, align 4
  %18 = call %union.acpi_object* @radeon_atpx_call(i32 %16, i32 %17, i32* null)
  store %union.acpi_object* %18, %union.acpi_object** %5, align 8
  %19 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %20 = icmp ne %union.acpi_object* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %13
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %112

24:                                               ; preds = %13
  %25 = call i32 @memset(%struct.atpx_px_params* %6, i32 0, i32 8)
  %26 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %27 = bitcast %union.acpi_object* %26 to %struct.TYPE_4__*
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i64*
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp ult i64 %32, 10
  br i1 %33, label %34, label %41

34:                                               ; preds = %24
  %35 = load i64, i64* %7, align 8
  %36 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %38 = call i32 @kfree(%union.acpi_object* %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %112

41:                                               ; preds = %24
  %42 = load i64, i64* %7, align 8
  %43 = call i64 @min(i32 8, i64 %42)
  store i64 %43, i64* %7, align 8
  %44 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %45 = bitcast %union.acpi_object* %44 to %struct.TYPE_4__*
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @memcpy(%struct.atpx_px_params* %6, i64 %47, i64 %48)
  %50 = getelementptr inbounds %struct.atpx_px_params, %struct.atpx_px_params* %6, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.atpx_px_params, %struct.atpx_px_params* %6, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %51, %53
  store i32 %54, i32* %4, align 4
  %55 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %56 = call i32 @kfree(%union.acpi_object* %55)
  br label %57

57:                                               ; preds = %41, %1
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @ATPX_SEPARATE_MUX_FOR_I2C, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load %struct.radeon_atpx*, %struct.radeon_atpx** %3, align 8
  %64 = getelementptr inbounds %struct.radeon_atpx, %struct.radeon_atpx* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load %struct.radeon_atpx*, %struct.radeon_atpx** %3, align 8
  %67 = getelementptr inbounds %struct.radeon_atpx, %struct.radeon_atpx* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  br label %69

69:                                               ; preds = %62, %57
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @ATPX_CRT1_RGB_SIGNAL_MUXED, align 4
  %72 = load i32, i32* @ATPX_TV_SIGNAL_MUXED, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @ATPX_DFP_SIGNAL_MUXED, align 4
  %75 = or i32 %73, %74
  %76 = and i32 %70, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %69
  %79 = load %struct.radeon_atpx*, %struct.radeon_atpx** %3, align 8
  %80 = getelementptr inbounds %struct.radeon_atpx, %struct.radeon_atpx* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  store i32 1, i32* %81, align 4
  br label %82

82:                                               ; preds = %78, %69
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @ATPX_DYNAMIC_PX_SUPPORTED, align 4
  %85 = load i32, i32* @ATPX_DYNAMIC_DGPU_POWER_OFF_SUPPORTED, align 4
  %86 = or i32 %84, %85
  %87 = and i32 %83, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = load %struct.radeon_atpx*, %struct.radeon_atpx** %3, align 8
  %91 = getelementptr inbounds %struct.radeon_atpx, %struct.radeon_atpx* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  store i32 1, i32* %92, align 8
  br label %93

93:                                               ; preds = %89, %82
  %94 = load %struct.radeon_atpx*, %struct.radeon_atpx** %3, align 8
  %95 = getelementptr inbounds %struct.radeon_atpx, %struct.radeon_atpx* %94, i32 0, i32 0
  store i32 0, i32* %95, align 8
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @ATPX_MS_HYBRID_GFX_SUPPORTED, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %93
  %101 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @radeon_atpx_priv, i32 0, i32 0), align 4
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = load %struct.radeon_atpx*, %struct.radeon_atpx** %3, align 8
  %107 = getelementptr inbounds %struct.radeon_atpx, %struct.radeon_atpx* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 2
  store i32 %105, i32* %108, align 8
  %109 = load %struct.radeon_atpx*, %struct.radeon_atpx** %3, align 8
  %110 = getelementptr inbounds %struct.radeon_atpx, %struct.radeon_atpx* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  br label %111

111:                                              ; preds = %100, %93
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %111, %34, %21
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %union.acpi_object* @radeon_atpx_call(i32, i32, i32*) #1

declare dso_local i32 @memset(%struct.atpx_px_params*, i32, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @memcpy(%struct.atpx_px_params*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
