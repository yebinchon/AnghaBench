; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_gth.c_intel_th_gth_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_gth.c_intel_th_gth_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gth_device = type { i64 }

@REG_GTH_SCRPD0 = common dso_local global i64 0, align 8
@SCRPD_DEBUGGER_IN_USE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SCRPD_STH_IS_ENABLED = common dso_local global i32 0, align 4
@SCRPD_TRIGGER_IS_ENABLED = common dso_local global i32 0, align 4
@GTH_NONE = common dso_local global i64 0, align 8
@REG_GTH_DESTOVR = common dso_local global i64 0, align 8
@REG_GTH_SWDEST0 = common dso_local global i64 0, align 8
@REG_GTH_SCR = common dso_local global i64 0, align 8
@REG_GTH_SCR2 = common dso_local global i64 0, align 8
@CTS_EVENT_ENABLE_IF_ANYTHING = common dso_local global i32 0, align 4
@REG_CTS_C0S0_EN = common dso_local global i64 0, align 8
@CTS_STATE_IDLE = common dso_local global i32 0, align 4
@CTS_ACTION_CONTROL_TRIGGER = common dso_local global i32 0, align 4
@REG_CTS_C0S0_ACT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gth_device*)* @intel_th_gth_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_th_gth_reset(%struct.gth_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gth_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gth_device* %0, %struct.gth_device** %3, align 8
  %7 = load %struct.gth_device*, %struct.gth_device** %3, align 8
  %8 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @REG_GTH_SCRPD0, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @ioread32(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @SCRPD_DEBUGGER_IN_USE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %109

20:                                               ; preds = %1
  %21 = load i32, i32* @SCRPD_STH_IS_ENABLED, align 4
  %22 = load i32, i32* @SCRPD_TRIGGER_IS_ENABLED, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.gth_device*, %struct.gth_device** %3, align 8
  %28 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @REG_GTH_SCRPD0, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @iowrite32(i32 %26, i64 %31)
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %52, %20
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 8
  br i1 %35, label %36, label %55

36:                                               ; preds = %33
  %37 = load %struct.gth_device*, %struct.gth_device** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @TH_OUTPUT_PARM(i32 %39)
  %41 = call i64 @gth_output_parm_get(%struct.gth_device* %37, i32 %38, i32 %40)
  %42 = load i64, i64* @GTH_NONE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %52

45:                                               ; preds = %36
  %46 = load %struct.gth_device*, %struct.gth_device** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @gth_output_set(%struct.gth_device* %46, i32 %47, i32 0)
  %49 = load %struct.gth_device*, %struct.gth_device** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @gth_smcfreq_set(%struct.gth_device* %49, i32 %50, i32 16)
  br label %52

52:                                               ; preds = %45, %44
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %33

55:                                               ; preds = %33
  %56 = load %struct.gth_device*, %struct.gth_device** %3, align 8
  %57 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @REG_GTH_DESTOVR, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @iowrite32(i32 0, i64 %60)
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %76, %55
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 33
  br i1 %64, label %65, label %79

65:                                               ; preds = %62
  %66 = load %struct.gth_device*, %struct.gth_device** %3, align 8
  %67 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @REG_GTH_SWDEST0, align 8
  %70 = add nsw i64 %68, %69
  %71 = load i32, i32* %6, align 4
  %72 = mul nsw i32 %71, 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %70, %73
  %75 = call i32 @iowrite32(i32 0, i64 %74)
  br label %76

76:                                               ; preds = %65
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %62

79:                                               ; preds = %62
  %80 = load %struct.gth_device*, %struct.gth_device** %3, align 8
  %81 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @REG_GTH_SCR, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @iowrite32(i32 0, i64 %84)
  %86 = load %struct.gth_device*, %struct.gth_device** %3, align 8
  %87 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @REG_GTH_SCR2, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @iowrite32(i32 252, i64 %90)
  %92 = load i32, i32* @CTS_EVENT_ENABLE_IF_ANYTHING, align 4
  %93 = load %struct.gth_device*, %struct.gth_device** %3, align 8
  %94 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @REG_CTS_C0S0_EN, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @iowrite32(i32 %92, i64 %97)
  %99 = load i32, i32* @CTS_STATE_IDLE, align 4
  %100 = call i32 @CTS_ACTION_CONTROL_SET_STATE(i32 %99)
  %101 = load i32, i32* @CTS_ACTION_CONTROL_TRIGGER, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.gth_device*, %struct.gth_device** %3, align 8
  %104 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @REG_CTS_C0S0_ACT, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @iowrite32(i32 %102, i64 %107)
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %79, %17
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i64 @gth_output_parm_get(%struct.gth_device*, i32, i32) #1

declare dso_local i32 @TH_OUTPUT_PARM(i32) #1

declare dso_local i32 @gth_output_set(%struct.gth_device*, i32, i32) #1

declare dso_local i32 @gth_smcfreq_set(%struct.gth_device*, i32, i32) #1

declare dso_local i32 @CTS_ACTION_CONTROL_SET_STATE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
