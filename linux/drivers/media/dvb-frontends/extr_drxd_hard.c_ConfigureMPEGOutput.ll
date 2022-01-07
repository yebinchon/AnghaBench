; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_ConfigureMPEGOutput.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_ConfigureMPEGOutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drxd_state = type { i64, i32, i64, i64 }

@OM_DVBT_Diversity_Front = common dso_local global i64 0, align 8
@B_EC_OC_REG_OC_MODE_HIP_MPG_BUS_SRC_MONITOR = common dso_local global i32 0, align 4
@EC_OC_REG_OC_MPG_SIO__M = common dso_local global i32 0, align 4
@EC_OC_REG_OC_MODE_LOP_PAR_ENA_DISABLE = common dso_local global i32 0, align 4
@EC_OC_REG_OC_MODE_LOP_PAR_ENA__M = common dso_local global i32 0, align 4
@EC_OC_REG_OC_MODE_HIP_MPG_PAR_VAL__M = common dso_local global i32 0, align 4
@EC_OC_REG_OC_MODE_HIP_MPG_PAR_VAL_ENABLE = common dso_local global i32 0, align 4
@EC_OC_REG_OC_MODE_HIP_MPG_PAR_VAL_DISABLE = common dso_local global i32 0, align 4
@EC_OC_REG_OC_MODE_LOP_MPG_TRM_MDE__M = common dso_local global i32 0, align 4
@EC_OC_REG_OC_MODE_LOP_MPG_TRM_MDE_SERIAL = common dso_local global i32 0, align 4
@EC_OC_REG_IPR_INV_MPG__A = common dso_local global i32 0, align 4
@EC_OC_REG_OC_MODE_LOP__A = common dso_local global i32 0, align 4
@EC_OC_REG_OC_MODE_HIP__A = common dso_local global i32 0, align 4
@EC_OC_REG_OC_MPG_SIO__A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drxd_state*, i32)* @ConfigureMPEGOutput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ConfigureMPEGOutput(%struct.drxd_state* %0, i32 %1) #0 {
  %3 = alloca %struct.drxd_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drxd_state* %0, %struct.drxd_state** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %10

10:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %12 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @OM_DVBT_Diversity_Front, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* @B_EC_OC_REG_OC_MODE_HIP_MPG_BUS_SRC_MONITOR, align 4
  %21 = load i32, i32* %8, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %8, align 4
  br label %27

23:                                               ; preds = %16
  %24 = load i32, i32* @EC_OC_REG_OC_MPG_SIO__M, align 4
  %25 = load i32, i32* %9, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = load i32, i32* @EC_OC_REG_OC_MODE_LOP_PAR_ENA_DISABLE, align 4
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  br label %89

31:                                               ; preds = %10
  %32 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %33 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load i32, i32* @EC_OC_REG_OC_MPG_SIO__M, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %9, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %9, align 4
  br label %46

42:                                               ; preds = %31
  %43 = load i32, i32* @EC_OC_REG_OC_MPG_SIO__M, align 4
  %44 = load i32, i32* %9, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %42, %37
  %47 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %48 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = load i32, i32* @EC_OC_REG_OC_MODE_LOP_PAR_ENA__M, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %7, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* @EC_OC_REG_OC_MODE_HIP_MPG_PAR_VAL__M, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %8, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* @EC_OC_REG_OC_MODE_HIP_MPG_PAR_VAL_ENABLE, align 4
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %8, align 4
  br label %74

63:                                               ; preds = %46
  %64 = load i32, i32* @EC_OC_REG_OC_MODE_LOP_PAR_ENA_DISABLE, align 4
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* @EC_OC_REG_OC_MODE_HIP_MPG_PAR_VAL__M, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* @EC_OC_REG_OC_MODE_HIP_MPG_PAR_VAL_DISABLE, align 4
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %63, %51
  %75 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %76 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i32, i32* @EC_OC_REG_OC_MODE_LOP_MPG_TRM_MDE__M, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %7, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %7, align 4
  br label %88

84:                                               ; preds = %74
  %85 = load i32, i32* @EC_OC_REG_OC_MODE_LOP_MPG_TRM_MDE_SERIAL, align 4
  %86 = load i32, i32* %7, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %84, %79
  br label %89

89:                                               ; preds = %88, %27
  %90 = load i32, i32* %6, align 4
  %91 = and i32 %90, -256
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = and i32 %92, -257
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = and i32 %94, -513
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = and i32 %96, -1025
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = and i32 %98, -2049
  store i32 %99, i32* %6, align 4
  %100 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %101 = load i32, i32* @EC_OC_REG_IPR_INV_MPG__A, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @Write16(%struct.drxd_state* %100, i32 %101, i32 %102, i32 0)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %89
  br label %132

107:                                              ; preds = %89
  %108 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %109 = load i32, i32* @EC_OC_REG_OC_MODE_LOP__A, align 4
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @Write16(%struct.drxd_state* %108, i32 %109, i32 %110, i32 0)
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  br label %132

115:                                              ; preds = %107
  %116 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %117 = load i32, i32* @EC_OC_REG_OC_MODE_HIP__A, align 4
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @Write16(%struct.drxd_state* %116, i32 %117, i32 %118, i32 0)
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %5, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  br label %132

123:                                              ; preds = %115
  %124 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %125 = load i32, i32* @EC_OC_REG_OC_MPG_SIO__A, align 4
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @Write16(%struct.drxd_state* %124, i32 %125, i32 %126, i32 0)
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* %5, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  br label %132

131:                                              ; preds = %123
  br label %132

132:                                              ; preds = %131, %130, %122, %114, %106
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @Write16(%struct.drxd_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
