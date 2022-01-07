; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-mux-pca9541.c_pca9541_arbitrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-mux-pca9541.c_pca9541_arbitrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_mux_core = type { i32 }
%struct.pca9541 = type { i32, i32 }

@PCA9541_CONTROL = common dso_local global i32 0, align 4
@PCA9541_ISTAT = common dso_local global i32 0, align 4
@PCA9541_ISTAT_NMYTEST = common dso_local global i32 0, align 4
@pca9541_control = common dso_local global i32* null, align 8
@PCA9541_CTL_NTESTON = common dso_local global i32 0, align 4
@SELECT_DELAY_SHORT = common dso_local global i32 0, align 4
@SELECT_DELAY_LONG = common dso_local global i32 0, align 4
@PCA9541_CTL_BUSINIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @pca9541_arbitrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pca9541_arbitrate(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.i2c_mux_core*, align 8
  %5 = alloca %struct.pca9541*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = call %struct.i2c_mux_core* @i2c_get_clientdata(%struct.i2c_client* %8)
  store %struct.i2c_mux_core* %9, %struct.i2c_mux_core** %4, align 8
  %10 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %4, align 8
  %11 = call %struct.pca9541* @i2c_mux_priv(%struct.i2c_mux_core* %10)
  store %struct.pca9541* %11, %struct.pca9541** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %13 = load i32, i32* @PCA9541_CONTROL, align 4
  %14 = call i32 @pca9541_reg_read(%struct.i2c_client* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %119

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @busoff(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %58

23:                                               ; preds = %19
  %24 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %25 = load i32, i32* @PCA9541_ISTAT, align 4
  %26 = call i32 @pca9541_reg_read(%struct.i2c_client* %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @PCA9541_ISTAT_NMYTEST, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load %struct.pca9541*, %struct.pca9541** %5, align 8
  %33 = getelementptr inbounds %struct.pca9541, %struct.pca9541* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @time_is_before_eq_jiffies(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %31, %23
  %38 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %39 = load i32, i32* @PCA9541_CONTROL, align 4
  %40 = load i32*, i32** @pca9541_control, align 8
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 15
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PCA9541_CTL_NTESTON, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @pca9541_reg_write(%struct.i2c_client* %38, i32 %39, i32 %47)
  %49 = load i32, i32* @SELECT_DELAY_SHORT, align 4
  %50 = load %struct.pca9541*, %struct.pca9541** %5, align 8
  %51 = getelementptr inbounds %struct.pca9541, %struct.pca9541* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %57

52:                                               ; preds = %31
  %53 = load i32, i32* @SELECT_DELAY_LONG, align 4
  %54 = mul nsw i32 %53, 2
  %55 = load %struct.pca9541*, %struct.pca9541** %5, align 8
  %56 = getelementptr inbounds %struct.pca9541, %struct.pca9541* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %52, %37
  br label %118

58:                                               ; preds = %19
  %59 = load i32, i32* %6, align 4
  %60 = call i64 @mybus(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %58
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @PCA9541_CTL_NTESTON, align 4
  %65 = load i32, i32* @PCA9541_CTL_BUSINIT, align 4
  %66 = or i32 %64, %65
  %67 = and i32 %63, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %62
  %70 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %71 = load i32, i32* @PCA9541_CONTROL, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @PCA9541_CTL_NTESTON, align 4
  %74 = load i32, i32* @PCA9541_CTL_BUSINIT, align 4
  %75 = or i32 %73, %74
  %76 = xor i32 %75, -1
  %77 = and i32 %72, %76
  %78 = call i32 @pca9541_reg_write(%struct.i2c_client* %70, i32 %71, i32 %77)
  br label %79

79:                                               ; preds = %69, %62
  store i32 1, i32* %2, align 4
  br label %119

80:                                               ; preds = %58
  %81 = load i32, i32* @SELECT_DELAY_LONG, align 4
  %82 = load %struct.pca9541*, %struct.pca9541** %5, align 8
  %83 = getelementptr inbounds %struct.pca9541, %struct.pca9541* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load %struct.pca9541*, %struct.pca9541** %5, align 8
  %85 = getelementptr inbounds %struct.pca9541, %struct.pca9541* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @time_is_before_eq_jiffies(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %80
  %90 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %91 = load i32, i32* @PCA9541_CONTROL, align 4
  %92 = load i32*, i32** @pca9541_control, align 8
  %93 = load i32, i32* %6, align 4
  %94 = and i32 %93, 15
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @PCA9541_CTL_BUSINIT, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @PCA9541_CTL_NTESTON, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @pca9541_reg_write(%struct.i2c_client* %90, i32 %91, i32 %101)
  br label %116

103:                                              ; preds = %80
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @PCA9541_CTL_NTESTON, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %103
  %109 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %110 = load i32, i32* @PCA9541_CONTROL, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @PCA9541_CTL_NTESTON, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @pca9541_reg_write(%struct.i2c_client* %109, i32 %110, i32 %113)
  br label %115

115:                                              ; preds = %108, %103
  br label %116

116:                                              ; preds = %115, %89
  br label %117

117:                                              ; preds = %116
  br label %118

118:                                              ; preds = %117, %57
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %118, %79, %17
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local %struct.i2c_mux_core* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.pca9541* @i2c_mux_priv(%struct.i2c_mux_core*) #1

declare dso_local i32 @pca9541_reg_read(%struct.i2c_client*, i32) #1

declare dso_local i64 @busoff(i32) #1

declare dso_local i64 @time_is_before_eq_jiffies(i32) #1

declare dso_local i32 @pca9541_reg_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i64 @mybus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
