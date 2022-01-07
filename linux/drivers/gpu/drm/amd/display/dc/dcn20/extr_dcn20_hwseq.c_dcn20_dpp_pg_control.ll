; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_dpp_pg_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_dpp_pg_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_hwseq = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@DOMAIN1_PG_CONFIG = common dso_local global i32 0, align 4
@DOMAIN1_POWER_GATE = common dso_local global i32 0, align 4
@DOMAIN1_PG_STATUS = common dso_local global i32 0, align 4
@DOMAIN1_PGFSM_PWR_STATUS = common dso_local global i32 0, align 4
@DOMAIN3_PG_CONFIG = common dso_local global i32 0, align 4
@DOMAIN3_POWER_GATE = common dso_local global i32 0, align 4
@DOMAIN3_PG_STATUS = common dso_local global i32 0, align 4
@DOMAIN3_PGFSM_PWR_STATUS = common dso_local global i32 0, align 4
@DOMAIN5_PG_CONFIG = common dso_local global i32 0, align 4
@DOMAIN5_POWER_GATE = common dso_local global i32 0, align 4
@DOMAIN5_PG_STATUS = common dso_local global i32 0, align 4
@DOMAIN5_PGFSM_PWR_STATUS = common dso_local global i32 0, align 4
@DOMAIN7_PG_CONFIG = common dso_local global i32 0, align 4
@DOMAIN7_POWER_GATE = common dso_local global i32 0, align 4
@DOMAIN7_PG_STATUS = common dso_local global i32 0, align 4
@DOMAIN7_PGFSM_PWR_STATUS = common dso_local global i32 0, align 4
@DOMAIN9_PG_CONFIG = common dso_local global i32 0, align 4
@DOMAIN9_POWER_GATE = common dso_local global i32 0, align 4
@DOMAIN9_PG_STATUS = common dso_local global i32 0, align 4
@DOMAIN9_PGFSM_PWR_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_hwseq*, i32, i32)* @dcn20_dpp_pg_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn20_dpp_pg_control(%struct.dce_hwseq* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dce_hwseq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dce_hwseq* %0, %struct.dce_hwseq** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 0, i32 1
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 0, i32 2
  store i32 %16, i32* %8, align 4
  %17 = load %struct.dce_hwseq*, %struct.dce_hwseq** %4, align 8
  %18 = getelementptr inbounds %struct.dce_hwseq, %struct.dce_hwseq* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %82

27:                                               ; preds = %3
  %28 = load i32, i32* @DOMAIN1_PG_CONFIG, align 4
  %29 = call i64 @REG(i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %82

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  switch i32 %33, label %80 [
    i32 0, label %34
    i32 1, label %43
    i32 2, label %52
    i32 3, label %61
    i32 4, label %70
    i32 5, label %79
  ]

34:                                               ; preds = %32
  %35 = load i32, i32* @DOMAIN1_PG_CONFIG, align 4
  %36 = load i32, i32* @DOMAIN1_POWER_GATE, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @REG_UPDATE(i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* @DOMAIN1_PG_STATUS, align 4
  %40 = load i32, i32* @DOMAIN1_PGFSM_PWR_STATUS, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @REG_WAIT(i32 %39, i32 %40, i32 %41, i32 1, i32 1000)
  br label %82

43:                                               ; preds = %32
  %44 = load i32, i32* @DOMAIN3_PG_CONFIG, align 4
  %45 = load i32, i32* @DOMAIN3_POWER_GATE, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @REG_UPDATE(i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* @DOMAIN3_PG_STATUS, align 4
  %49 = load i32, i32* @DOMAIN3_PGFSM_PWR_STATUS, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @REG_WAIT(i32 %48, i32 %49, i32 %50, i32 1, i32 1000)
  br label %82

52:                                               ; preds = %32
  %53 = load i32, i32* @DOMAIN5_PG_CONFIG, align 4
  %54 = load i32, i32* @DOMAIN5_POWER_GATE, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @REG_UPDATE(i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* @DOMAIN5_PG_STATUS, align 4
  %58 = load i32, i32* @DOMAIN5_PGFSM_PWR_STATUS, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @REG_WAIT(i32 %57, i32 %58, i32 %59, i32 1, i32 1000)
  br label %82

61:                                               ; preds = %32
  %62 = load i32, i32* @DOMAIN7_PG_CONFIG, align 4
  %63 = load i32, i32* @DOMAIN7_POWER_GATE, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @REG_UPDATE(i32 %62, i32 %63, i32 %64)
  %66 = load i32, i32* @DOMAIN7_PG_STATUS, align 4
  %67 = load i32, i32* @DOMAIN7_PGFSM_PWR_STATUS, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @REG_WAIT(i32 %66, i32 %67, i32 %68, i32 1, i32 1000)
  br label %82

70:                                               ; preds = %32
  %71 = load i32, i32* @DOMAIN9_PG_CONFIG, align 4
  %72 = load i32, i32* @DOMAIN9_POWER_GATE, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @REG_UPDATE(i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* @DOMAIN9_PG_STATUS, align 4
  %76 = load i32, i32* @DOMAIN9_PGFSM_PWR_STATUS, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @REG_WAIT(i32 %75, i32 %76, i32 %77, i32 1, i32 1000)
  br label %82

79:                                               ; preds = %32
  br label %82

80:                                               ; preds = %32
  %81 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %82

82:                                               ; preds = %26, %31, %80, %79, %70, %61, %52, %43, %34
  ret void
}

declare dso_local i64 @REG(i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_WAIT(i32, i32, i32, i32, i32) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
