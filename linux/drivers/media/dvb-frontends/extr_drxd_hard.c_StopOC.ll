; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_StopOC.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_StopOC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drxd_state = type { i32, i32 }

@EC_OC_REG_SNC_ISC_LVL__A = common dso_local global i32 0, align 4
@EC_OC_REG_RCN_MAP_LOP__A = common dso_local global i32 0, align 4
@EC_OC_REG_RCN_MAP_HIP__A = common dso_local global i32 0, align 4
@EC_OC_REG_DTO_INC_LOP__A = common dso_local global i32 0, align 4
@EC_OC_REG_DTO_INC_HIP__A = common dso_local global i32 0, align 4
@EC_OC_REG_OC_MODE_LOP_DTO_CTR_SRC__M = common dso_local global i32 0, align 4
@EC_OC_REG_OC_MODE_LOP_DTO_CTR_SRC_STATIC = common dso_local global i32 0, align 4
@EC_OC_REG_OC_MODE_LOP__A = common dso_local global i32 0, align 4
@EC_OC_REG_COMM_EXEC__A = common dso_local global i32 0, align 4
@EC_OC_REG_COMM_EXEC_CTL_HOLD = common dso_local global i32 0, align 4
@EC_OC_REG_OCR_MPG_UOS__A = common dso_local global i32 0, align 4
@EC_OC_REG_OCR_MPG_UOS__M = common dso_local global i32 0, align 4
@EC_OC_REG_SNC_ISC_LVL_OSC__M = common dso_local global i32 0, align 4
@EC_OC_REG_OC_MODE_LOP_PAR_ENA__M = common dso_local global i32 0, align 4
@EC_OC_REG_OC_MODE_LOP_PAR_ENA_ENABLE = common dso_local global i32 0, align 4
@EC_OC_REG_COMM_INT_STA__A = common dso_local global i32 0, align 4
@EC_OC_REG_COMM_EXEC_CTL_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drxd_state*)* @StopOC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @StopOC(%struct.drxd_state* %0) #0 {
  %2 = alloca %struct.drxd_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drxd_state* %0, %struct.drxd_state** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %8 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %9 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %1
  %12 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %13 = load i32, i32* @EC_OC_REG_SNC_ISC_LVL__A, align 4
  %14 = call i32 @Read16(%struct.drxd_state* %12, i32 %13, i32* %4, i32 0)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %128

18:                                               ; preds = %11
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %21 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %23 = load i32, i32* @EC_OC_REG_RCN_MAP_LOP__A, align 4
  %24 = call i32 @Read16(%struct.drxd_state* %22, i32 %23, i32* %6, i32 0)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %128

28:                                               ; preds = %18
  %29 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %30 = load i32, i32* @EC_OC_REG_RCN_MAP_HIP__A, align 4
  %31 = call i32 @Read16(%struct.drxd_state* %29, i32 %30, i32* %7, i32 0)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %128

35:                                               ; preds = %28
  %36 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %37 = load i32, i32* @EC_OC_REG_DTO_INC_LOP__A, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @Write16(%struct.drxd_state* %36, i32 %37, i32 %38, i32 0)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %128

43:                                               ; preds = %35
  %44 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %45 = load i32, i32* @EC_OC_REG_DTO_INC_HIP__A, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @Write16(%struct.drxd_state* %44, i32 %45, i32 %46, i32 0)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %128

51:                                               ; preds = %43
  %52 = load i32, i32* @EC_OC_REG_OC_MODE_LOP_DTO_CTR_SRC__M, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* @EC_OC_REG_OC_MODE_LOP_DTO_CTR_SRC_STATIC, align 4
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %60 = load i32, i32* @EC_OC_REG_OC_MODE_LOP__A, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @Write16(%struct.drxd_state* %59, i32 %60, i32 %61, i32 0)
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %3, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %51
  br label %128

66:                                               ; preds = %51
  %67 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %68 = load i32, i32* @EC_OC_REG_COMM_EXEC__A, align 4
  %69 = load i32, i32* @EC_OC_REG_COMM_EXEC_CTL_HOLD, align 4
  %70 = call i32 @Write16(%struct.drxd_state* %67, i32 %68, i32 %69, i32 0)
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* %3, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %128

74:                                               ; preds = %66
  %75 = call i32 @msleep(i32 1)
  %76 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %77 = load i32, i32* @EC_OC_REG_OCR_MPG_UOS__A, align 4
  %78 = load i32, i32* @EC_OC_REG_OCR_MPG_UOS__M, align 4
  %79 = call i32 @Write16(%struct.drxd_state* %76, i32 %77, i32 %78, i32 0)
  store i32 %79, i32* %3, align 4
  %80 = load i32, i32* %3, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %128

83:                                               ; preds = %74
  %84 = load i32, i32* @EC_OC_REG_SNC_ISC_LVL_OSC__M, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %4, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %4, align 4
  %88 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %89 = load i32, i32* @EC_OC_REG_SNC_ISC_LVL__A, align 4
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @Write16(%struct.drxd_state* %88, i32 %89, i32 %90, i32 0)
  store i32 %91, i32* %3, align 4
  %92 = load i32, i32* %3, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  br label %128

95:                                               ; preds = %83
  %96 = load i32, i32* @EC_OC_REG_OC_MODE_LOP_PAR_ENA__M, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %5, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* @EC_OC_REG_OC_MODE_LOP_PAR_ENA_ENABLE, align 4
  %101 = load i32, i32* %5, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %5, align 4
  %104 = or i32 %103, 2
  store i32 %104, i32* %5, align 4
  %105 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %106 = load i32, i32* @EC_OC_REG_OC_MODE_LOP__A, align 4
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @Write16(%struct.drxd_state* %105, i32 %106, i32 %107, i32 0)
  store i32 %108, i32* %3, align 4
  %109 = load i32, i32* %3, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %95
  br label %128

112:                                              ; preds = %95
  %113 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %114 = load i32, i32* @EC_OC_REG_COMM_INT_STA__A, align 4
  %115 = call i32 @Write16(%struct.drxd_state* %113, i32 %114, i32 0, i32 0)
  store i32 %115, i32* %3, align 4
  %116 = load i32, i32* %3, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %128

119:                                              ; preds = %112
  %120 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %121 = load i32, i32* @EC_OC_REG_COMM_EXEC__A, align 4
  %122 = load i32, i32* @EC_OC_REG_COMM_EXEC_CTL_ACTIVE, align 4
  %123 = call i32 @Write16(%struct.drxd_state* %120, i32 %121, i32 %122, i32 0)
  store i32 %123, i32* %3, align 4
  %124 = load i32, i32* %3, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  br label %128

127:                                              ; preds = %119
  br label %128

128:                                              ; preds = %127, %126, %118, %111, %94, %82, %73, %65, %50, %42, %34, %27, %17
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @Read16(%struct.drxd_state*, i32, i32*, i32) #1

declare dso_local i32 @Write16(%struct.drxd_state*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
