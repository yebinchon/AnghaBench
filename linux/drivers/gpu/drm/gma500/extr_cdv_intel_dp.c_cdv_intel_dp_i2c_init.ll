; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_i2c_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_i2c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gma_connector = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.gma_encoder = type { %struct.cdv_intel_dp* }
%struct.cdv_intel_dp = type { %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i8*, %struct.TYPE_7__, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [13 x i8] c"i2c_init %s\0A\00", align 1
@cdv_intel_dp_i2c_aux_ch = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_DDC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gma_connector*, %struct.gma_encoder*, i8*)* @cdv_intel_dp_i2c_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdv_intel_dp_i2c_init(%struct.gma_connector* %0, %struct.gma_encoder* %1, i8* %2) #0 {
  %4 = alloca %struct.gma_connector*, align 8
  %5 = alloca %struct.gma_encoder*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cdv_intel_dp*, align 8
  %8 = alloca i32, align 4
  store %struct.gma_connector* %0, %struct.gma_connector** %4, align 8
  store %struct.gma_encoder* %1, %struct.gma_encoder** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.gma_encoder*, %struct.gma_encoder** %5, align 8
  %10 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %9, i32 0, i32 0
  %11 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %10, align 8
  store %struct.cdv_intel_dp* %11, %struct.cdv_intel_dp** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %7, align 8
  %15 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %7, align 8
  %18 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @cdv_intel_dp_i2c_aux_ch, align 4
  %21 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %7, align 8
  %22 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  %24 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %7, align 8
  %25 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %24, i32 0, i32 0
  %26 = call i32 @memset(%struct.TYPE_9__* %25, i8 signext 0, i32 32)
  %27 = load i32, i32* @THIS_MODULE, align 4
  %28 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %7, align 8
  %29 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 4
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @I2C_CLASS_DDC, align 4
  %32 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %7, align 8
  %33 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 3
  store i32 %31, i32* %34, align 8
  %35 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %7, align 8
  %36 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @strncpy(i8* %38, i8* %39, i32 7)
  %41 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %7, align 8
  %42 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 7
  store i8 0, i8* %45, align 1
  %46 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %7, align 8
  %47 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %46, i32 0, i32 1
  %48 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %7, align 8
  %49 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %50, align 8
  %51 = load %struct.gma_connector*, %struct.gma_connector** %4, align 8
  %52 = getelementptr inbounds %struct.gma_connector, %struct.gma_connector* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %7, align 8
  %56 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i32 %54, i32* %58, align 8
  %59 = load %struct.gma_encoder*, %struct.gma_encoder** %5, align 8
  %60 = call i64 @is_edp(%struct.gma_encoder* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %3
  %63 = load %struct.gma_encoder*, %struct.gma_encoder** %5, align 8
  %64 = call i32 @cdv_intel_edp_panel_vdd_on(%struct.gma_encoder* %63)
  br label %65

65:                                               ; preds = %62, %3
  %66 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %7, align 8
  %67 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %66, i32 0, i32 0
  %68 = call i32 @i2c_dp_aux_add_bus(%struct.TYPE_9__* %67)
  store i32 %68, i32* %8, align 4
  %69 = load %struct.gma_encoder*, %struct.gma_encoder** %5, align 8
  %70 = call i64 @is_edp(%struct.gma_encoder* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load %struct.gma_encoder*, %struct.gma_encoder** %5, align 8
  %74 = call i32 @cdv_intel_edp_panel_vdd_off(%struct.gma_encoder* %73)
  br label %75

75:                                               ; preds = %72, %65
  %76 = load i32, i32* %8, align 4
  ret i32 %76
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i8 signext, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i64 @is_edp(%struct.gma_encoder*) #1

declare dso_local i32 @cdv_intel_edp_panel_vdd_on(%struct.gma_encoder*) #1

declare dso_local i32 @i2c_dp_aux_add_bus(%struct.TYPE_9__*) #1

declare dso_local i32 @cdv_intel_edp_panel_vdd_off(%struct.gma_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
