; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_ch7006_mode.c_ch7006_setup_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_ch7006_mode.c_ch7006_setup_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.i2c_client = type { i32 }
%struct.ch7006_priv = type { %struct.ch7006_mode*, %struct.TYPE_3__ }
%struct.ch7006_mode = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32* }

@CH7006_MAXN = common dso_local global i32 0, align 4
@CH7006_MAXM = common dso_local global i32 0, align 4
@CH7006_FREQ0 = common dso_local global i32 0, align 4
@CH7006_PLLOV_N_8 = common dso_local global i32 0, align 4
@CH7006_PLLOV_M_8 = common dso_local global i32 0, align 4
@CH7006_PLLOV = common dso_local global i64 0, align 8
@CH7006_PLLM_0 = common dso_local global i32 0, align 4
@CH7006_PLLM = common dso_local global i64 0, align 8
@CH7006_PLLN_0 = common dso_local global i32 0, align 4
@CH7006_PLLN = common dso_local global i64 0, align 8
@CH7006_PLL_CONTROL_CAPACITOR = common dso_local global i32 0, align 4
@CH7006_PLL_CONTROL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"n=%d m=%d f=%d c=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ch7006_setup_pll(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.ch7006_priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ch7006_mode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %14 = call %struct.i2c_client* @drm_i2c_encoder_get_client(%struct.drm_encoder* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %3, align 8
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %16 = call %struct.ch7006_priv* @to_ch7006_priv(%struct.drm_encoder* %15)
  store %struct.ch7006_priv* %16, %struct.ch7006_priv** %4, align 8
  %17 = load %struct.ch7006_priv*, %struct.ch7006_priv** %4, align 8
  %18 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %5, align 8
  %21 = load %struct.ch7006_priv*, %struct.ch7006_priv** %4, align 8
  %22 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %21, i32 0, i32 0
  %23 = load %struct.ch7006_mode*, %struct.ch7006_mode** %22, align 8
  store %struct.ch7006_mode* %23, %struct.ch7006_mode** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %67, %1
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @CH7006_MAXN, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %70

28:                                               ; preds = %24
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %63, %28
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @CH7006_MAXM, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %66

33:                                               ; preds = %29
  %34 = load i32, i32* @CH7006_FREQ0, align 4
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 2
  %37 = mul nsw i32 %34, %36
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 2
  %40 = sdiv i32 %37, %39
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = load %struct.ch7006_mode*, %struct.ch7006_mode** %6, align 8
  %44 = getelementptr inbounds %struct.ch7006_mode, %struct.ch7006_mode* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %42, %46
  %48 = call i64 @abs(i64 %47)
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = load %struct.ch7006_mode*, %struct.ch7006_mode** %6, align 8
  %52 = getelementptr inbounds %struct.ch7006_mode, %struct.ch7006_mode* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %50, %54
  %56 = call i64 @abs(i64 %55)
  %57 = icmp slt i64 %48, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %33
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %58, %33
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %29

66:                                               ; preds = %29
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %24

70:                                               ; preds = %24
  %71 = load i32, i32* @CH7006_PLLOV_N_8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @bitf(i32 %71, i32 %72)
  %74 = load i32, i32* @CH7006_PLLOV_M_8, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @bitf(i32 %74, i32 %75)
  %77 = or i32 %73, %76
  %78 = load i32*, i32** %5, align 8
  %79 = load i64, i64* @CH7006_PLLOV, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* @CH7006_PLLM_0, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @bitf(i32 %81, i32 %82)
  %84 = load i32*, i32** %5, align 8
  %85 = load i64, i64* @CH7006_PLLM, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* @CH7006_PLLN_0, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @bitf(i32 %87, i32 %88)
  %90 = load i32*, i32** %5, align 8
  %91 = load i64, i64* @CH7006_PLLN, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32 %89, i32* %92, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %93, 108
  br i1 %94, label %95, label %102

95:                                               ; preds = %70
  %96 = load i32, i32* @CH7006_PLL_CONTROL_CAPACITOR, align 4
  %97 = load i32*, i32** %5, align 8
  %98 = load i64, i64* @CH7006_PLL_CONTROL, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %96
  store i32 %101, i32* %99, align 4
  br label %110

102:                                              ; preds = %70
  %103 = load i32, i32* @CH7006_PLL_CONTROL_CAPACITOR, align 4
  %104 = xor i32 %103, -1
  %105 = load i32*, i32** %5, align 8
  %106 = load i64, i64* @CH7006_PLL_CONTROL, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, %104
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %102, %95
  %111 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp slt i32 %115, 108
  %117 = zext i1 %116 to i32
  %118 = call i32 @ch7006_dbg(%struct.i2c_client* %111, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %112, i32 %113, i32 %114, i32 %117)
  ret void
}

declare dso_local %struct.i2c_client* @drm_i2c_encoder_get_client(%struct.drm_encoder*) #1

declare dso_local %struct.ch7006_priv* @to_ch7006_priv(%struct.drm_encoder*) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @bitf(i32, i32) #1

declare dso_local i32 @ch7006_dbg(%struct.i2c_client*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
