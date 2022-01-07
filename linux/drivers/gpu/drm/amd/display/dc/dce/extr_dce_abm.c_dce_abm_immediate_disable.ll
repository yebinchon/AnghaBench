; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_abm.c_dce_abm_immediate_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_abm.c_dce_abm_immediate_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abm = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i8*, i8* }
%struct.dce_abm = type { i32 }

@MCP_DISABLE_ABM_IMMEDIATELY = common dso_local global i32 0, align 4
@BL_PWM_CNTL = common dso_local global i32 0, align 4
@BL_PWM_CNTL2 = common dso_local global i32 0, align 4
@BL_PWM_PERIOD_CNTL = common dso_local global i32 0, align 4
@LVTMA_PWRSEQ_REF_DIV = common dso_local global i32 0, align 4
@BL_PWM_REF_DIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.abm*)* @dce_abm_immediate_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_abm_immediate_disable(%struct.abm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.abm*, align 8
  %4 = alloca %struct.dce_abm*, align 8
  store %struct.abm* %0, %struct.abm** %3, align 8
  %5 = load %struct.abm*, %struct.abm** %3, align 8
  %6 = call %struct.dce_abm* @TO_DCE_ABM(%struct.abm* %5)
  store %struct.dce_abm* %6, %struct.dce_abm** %4, align 8
  %7 = load %struct.abm*, %struct.abm** %3, align 8
  %8 = getelementptr inbounds %struct.abm, %struct.abm* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %37

12:                                               ; preds = %1
  %13 = load %struct.abm*, %struct.abm** %3, align 8
  %14 = load i32, i32* @MCP_DISABLE_ABM_IMMEDIATELY, align 4
  %15 = call i32 @dce_abm_set_pipe(%struct.abm* %13, i32 %14)
  %16 = load i32, i32* @BL_PWM_CNTL, align 4
  %17 = call i8* @REG_READ(i32 %16)
  %18 = load %struct.abm*, %struct.abm** %3, align 8
  %19 = getelementptr inbounds %struct.abm, %struct.abm* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  store i8* %17, i8** %20, align 8
  %21 = load i32, i32* @BL_PWM_CNTL2, align 4
  %22 = call i8* @REG_READ(i32 %21)
  %23 = load %struct.abm*, %struct.abm** %3, align 8
  %24 = getelementptr inbounds %struct.abm, %struct.abm* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  store i8* %22, i8** %25, align 8
  %26 = load i32, i32* @BL_PWM_PERIOD_CNTL, align 4
  %27 = call i8* @REG_READ(i32 %26)
  %28 = load %struct.abm*, %struct.abm** %3, align 8
  %29 = getelementptr inbounds %struct.abm, %struct.abm* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i8* %27, i8** %30, align 8
  %31 = load i32, i32* @LVTMA_PWRSEQ_REF_DIV, align 4
  %32 = load i32, i32* @BL_PWM_REF_DIV, align 4
  %33 = load %struct.abm*, %struct.abm** %3, align 8
  %34 = getelementptr inbounds %struct.abm, %struct.abm* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @REG_GET(i32 %31, i32 %32, i32* %35)
  store i32 1, i32* %2, align 4
  br label %37

37:                                               ; preds = %12, %11
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.dce_abm* @TO_DCE_ABM(%struct.abm*) #1

declare dso_local i32 @dce_abm_set_pipe(%struct.abm*, i32) #1

declare dso_local i8* @REG_READ(i32) #1

declare dso_local i32 @REG_GET(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
