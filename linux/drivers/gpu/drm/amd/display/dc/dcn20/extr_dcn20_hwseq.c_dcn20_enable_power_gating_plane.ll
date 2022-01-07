; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_enable_power_gating_plane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_enable_power_gating_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_hwseq = type { i32 }

@DOMAIN0_PG_CONFIG = common dso_local global i32 0, align 4
@DOMAIN0_POWER_FORCEON = common dso_local global i32 0, align 4
@DOMAIN2_PG_CONFIG = common dso_local global i32 0, align 4
@DOMAIN2_POWER_FORCEON = common dso_local global i32 0, align 4
@DOMAIN4_PG_CONFIG = common dso_local global i32 0, align 4
@DOMAIN4_POWER_FORCEON = common dso_local global i32 0, align 4
@DOMAIN6_PG_CONFIG = common dso_local global i32 0, align 4
@DOMAIN6_POWER_FORCEON = common dso_local global i32 0, align 4
@DOMAIN8_PG_CONFIG = common dso_local global i32 0, align 4
@DOMAIN8_POWER_FORCEON = common dso_local global i32 0, align 4
@DOMAIN10_PG_CONFIG = common dso_local global i32 0, align 4
@DOMAIN1_PG_CONFIG = common dso_local global i32 0, align 4
@DOMAIN1_POWER_FORCEON = common dso_local global i32 0, align 4
@DOMAIN3_PG_CONFIG = common dso_local global i32 0, align 4
@DOMAIN3_POWER_FORCEON = common dso_local global i32 0, align 4
@DOMAIN5_PG_CONFIG = common dso_local global i32 0, align 4
@DOMAIN5_POWER_FORCEON = common dso_local global i32 0, align 4
@DOMAIN7_PG_CONFIG = common dso_local global i32 0, align 4
@DOMAIN7_POWER_FORCEON = common dso_local global i32 0, align 4
@DOMAIN9_PG_CONFIG = common dso_local global i32 0, align 4
@DOMAIN9_POWER_FORCEON = common dso_local global i32 0, align 4
@DOMAIN11_PG_CONFIG = common dso_local global i32 0, align 4
@DOMAIN16_PG_CONFIG = common dso_local global i32 0, align 4
@DOMAIN16_POWER_FORCEON = common dso_local global i32 0, align 4
@DOMAIN17_PG_CONFIG = common dso_local global i32 0, align 4
@DOMAIN17_POWER_FORCEON = common dso_local global i32 0, align 4
@DOMAIN18_PG_CONFIG = common dso_local global i32 0, align 4
@DOMAIN18_POWER_FORCEON = common dso_local global i32 0, align 4
@DOMAIN19_PG_CONFIG = common dso_local global i32 0, align 4
@DOMAIN19_POWER_FORCEON = common dso_local global i32 0, align 4
@DOMAIN20_PG_CONFIG = common dso_local global i32 0, align 4
@DOMAIN20_POWER_FORCEON = common dso_local global i32 0, align 4
@DOMAIN21_PG_CONFIG = common dso_local global i32 0, align 4
@DOMAIN21_POWER_FORCEON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_hwseq*, i32)* @dcn20_enable_power_gating_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn20_enable_power_gating_plane(%struct.dce_hwseq* %0, i32 %1) #0 {
  %3 = alloca %struct.dce_hwseq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dce_hwseq* %0, %struct.dce_hwseq** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %8, %2
  %10 = load i32, i32* @DOMAIN0_PG_CONFIG, align 4
  %11 = load i32, i32* @DOMAIN0_POWER_FORCEON, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @REG_UPDATE(i32 %10, i32 %11, i32 %12)
  %14 = load i32, i32* @DOMAIN2_PG_CONFIG, align 4
  %15 = load i32, i32* @DOMAIN2_POWER_FORCEON, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @REG_UPDATE(i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* @DOMAIN4_PG_CONFIG, align 4
  %19 = load i32, i32* @DOMAIN4_POWER_FORCEON, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @REG_UPDATE(i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* @DOMAIN6_PG_CONFIG, align 4
  %23 = load i32, i32* @DOMAIN6_POWER_FORCEON, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @REG_UPDATE(i32 %22, i32 %23, i32 %24)
  %26 = load i32, i32* @DOMAIN8_PG_CONFIG, align 4
  %27 = call i64 @REG(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %9
  %30 = load i32, i32* @DOMAIN8_PG_CONFIG, align 4
  %31 = load i32, i32* @DOMAIN8_POWER_FORCEON, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @REG_UPDATE(i32 %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %9
  %35 = load i32, i32* @DOMAIN10_PG_CONFIG, align 4
  %36 = call i64 @REG(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i32, i32* @DOMAIN10_PG_CONFIG, align 4
  %40 = load i32, i32* @DOMAIN8_POWER_FORCEON, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @REG_UPDATE(i32 %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %38, %34
  %44 = load i32, i32* @DOMAIN1_PG_CONFIG, align 4
  %45 = load i32, i32* @DOMAIN1_POWER_FORCEON, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @REG_UPDATE(i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* @DOMAIN3_PG_CONFIG, align 4
  %49 = load i32, i32* @DOMAIN3_POWER_FORCEON, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @REG_UPDATE(i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* @DOMAIN5_PG_CONFIG, align 4
  %53 = load i32, i32* @DOMAIN5_POWER_FORCEON, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @REG_UPDATE(i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* @DOMAIN7_PG_CONFIG, align 4
  %57 = load i32, i32* @DOMAIN7_POWER_FORCEON, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @REG_UPDATE(i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* @DOMAIN9_PG_CONFIG, align 4
  %61 = call i64 @REG(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %43
  %64 = load i32, i32* @DOMAIN9_PG_CONFIG, align 4
  %65 = load i32, i32* @DOMAIN9_POWER_FORCEON, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @REG_UPDATE(i32 %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %63, %43
  %69 = load i32, i32* @DOMAIN11_PG_CONFIG, align 4
  %70 = call i64 @REG(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i32, i32* @DOMAIN11_PG_CONFIG, align 4
  %74 = load i32, i32* @DOMAIN9_POWER_FORCEON, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @REG_UPDATE(i32 %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %72, %68
  %78 = load i32, i32* @DOMAIN16_PG_CONFIG, align 4
  %79 = load i32, i32* @DOMAIN16_POWER_FORCEON, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @REG_UPDATE(i32 %78, i32 %79, i32 %80)
  %82 = load i32, i32* @DOMAIN17_PG_CONFIG, align 4
  %83 = load i32, i32* @DOMAIN17_POWER_FORCEON, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @REG_UPDATE(i32 %82, i32 %83, i32 %84)
  %86 = load i32, i32* @DOMAIN18_PG_CONFIG, align 4
  %87 = load i32, i32* @DOMAIN18_POWER_FORCEON, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @REG_UPDATE(i32 %86, i32 %87, i32 %88)
  %90 = load i32, i32* @DOMAIN19_PG_CONFIG, align 4
  %91 = call i64 @REG(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %77
  %94 = load i32, i32* @DOMAIN19_PG_CONFIG, align 4
  %95 = load i32, i32* @DOMAIN19_POWER_FORCEON, align 4
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @REG_UPDATE(i32 %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %93, %77
  %99 = load i32, i32* @DOMAIN20_PG_CONFIG, align 4
  %100 = call i64 @REG(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i32, i32* @DOMAIN20_PG_CONFIG, align 4
  %104 = load i32, i32* @DOMAIN20_POWER_FORCEON, align 4
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @REG_UPDATE(i32 %103, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %102, %98
  %108 = load i32, i32* @DOMAIN21_PG_CONFIG, align 4
  %109 = call i64 @REG(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = load i32, i32* @DOMAIN21_PG_CONFIG, align 4
  %113 = load i32, i32* @DOMAIN21_POWER_FORCEON, align 4
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @REG_UPDATE(i32 %112, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %111, %107
  ret void
}

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i64 @REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
