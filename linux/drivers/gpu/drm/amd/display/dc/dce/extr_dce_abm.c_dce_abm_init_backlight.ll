; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_abm.c_dce_abm_init_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_abm.c_dce_abm_init_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }
%struct.dce_abm = type { i32 }

@BL_PWM_CNTL = common dso_local global i32 0, align 4
@BL_ACTIVE_INT_FRAC_CNT = common dso_local global i32 0, align 4
@BL_PWM_CNTL2 = common dso_local global i32 0, align 4
@BL_PWM_PERIOD_CNTL = common dso_local global i32 0, align 4
@LVTMA_PWRSEQ_REF_DIV = common dso_local global i32 0, align 4
@BL_PWM_REF_DIV = common dso_local global i32 0, align 4
@BIOS_SCRATCH_2 = common dso_local global i32 0, align 4
@ATOM_S2_VRI_BRIGHT_ENABLE = common dso_local global i32 0, align 4
@BL_PWM_EN = common dso_local global i32 0, align 4
@BL_PWM_GRP1_REG_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.abm*)* @dce_abm_init_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_abm_init_backlight(%struct.abm* %0) #0 {
  %2 = alloca %struct.abm*, align 8
  %3 = alloca %struct.dce_abm*, align 8
  %4 = alloca i32, align 4
  store %struct.abm* %0, %struct.abm** %2, align 8
  %5 = load %struct.abm*, %struct.abm** %2, align 8
  %6 = call %struct.dce_abm* @TO_DCE_ABM(%struct.abm* %5)
  store %struct.dce_abm* %6, %struct.dce_abm** %3, align 8
  %7 = load i32, i32* @BL_PWM_CNTL, align 4
  %8 = load i32, i32* @BL_ACTIVE_INT_FRAC_CNT, align 4
  %9 = call i32 @REG_GET(i32 %7, i32 %8, i32* %4)
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %54

15:                                               ; preds = %12, %1
  %16 = load %struct.abm*, %struct.abm** %2, align 8
  %17 = getelementptr inbounds %struct.abm, %struct.abm* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %15
  %22 = load i32, i32* @BL_PWM_CNTL, align 4
  %23 = load %struct.abm*, %struct.abm** %2, align 8
  %24 = getelementptr inbounds %struct.abm, %struct.abm* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @REG_WRITE(i32 %22, i32 %27)
  %29 = load i32, i32* @BL_PWM_CNTL2, align 4
  %30 = load %struct.abm*, %struct.abm** %2, align 8
  %31 = getelementptr inbounds %struct.abm, %struct.abm* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @REG_WRITE(i32 %29, i32 %33)
  %35 = load i32, i32* @BL_PWM_PERIOD_CNTL, align 4
  %36 = load %struct.abm*, %struct.abm** %2, align 8
  %37 = getelementptr inbounds %struct.abm, %struct.abm* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @REG_WRITE(i32 %35, i32 %39)
  %41 = load i32, i32* @LVTMA_PWRSEQ_REF_DIV, align 4
  %42 = load i32, i32* @BL_PWM_REF_DIV, align 4
  %43 = load %struct.abm*, %struct.abm** %2, align 8
  %44 = getelementptr inbounds %struct.abm, %struct.abm* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @REG_UPDATE(i32 %41, i32 %42, i32 %46)
  br label %53

48:                                               ; preds = %15
  %49 = load i32, i32* @BL_PWM_CNTL, align 4
  %50 = call i32 @REG_WRITE(i32 %49, i32 -1073677824)
  %51 = load i32, i32* @BL_PWM_PERIOD_CNTL, align 4
  %52 = call i32 @REG_WRITE(i32 %51, i32 790432)
  br label %53

53:                                               ; preds = %48, %21
  br label %79

54:                                               ; preds = %12
  %55 = load i32, i32* @BL_PWM_CNTL, align 4
  %56 = call i8* @REG_READ(i32 %55)
  %57 = ptrtoint i8* %56 to i64
  %58 = load %struct.abm*, %struct.abm** %2, align 8
  %59 = getelementptr inbounds %struct.abm, %struct.abm* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i64 %57, i64* %60, align 8
  %61 = load i32, i32* @BL_PWM_CNTL2, align 4
  %62 = call i8* @REG_READ(i32 %61)
  %63 = ptrtoint i8* %62 to i32
  %64 = load %struct.abm*, %struct.abm** %2, align 8
  %65 = getelementptr inbounds %struct.abm, %struct.abm* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 8
  %67 = load i32, i32* @BL_PWM_PERIOD_CNTL, align 4
  %68 = call i8* @REG_READ(i32 %67)
  %69 = ptrtoint i8* %68 to i32
  %70 = load %struct.abm*, %struct.abm** %2, align 8
  %71 = getelementptr inbounds %struct.abm, %struct.abm* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* @LVTMA_PWRSEQ_REF_DIV, align 4
  %74 = load i32, i32* @BL_PWM_REF_DIV, align 4
  %75 = load %struct.abm*, %struct.abm** %2, align 8
  %76 = getelementptr inbounds %struct.abm, %struct.abm* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  %78 = call i32 @REG_GET(i32 %73, i32 %74, i32* %77)
  br label %79

79:                                               ; preds = %54, %53
  %80 = load i32, i32* @BIOS_SCRATCH_2, align 4
  %81 = call i8* @REG_READ(i32 %80)
  %82 = ptrtoint i8* %81 to i32
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* @ATOM_S2_VRI_BRIGHT_ENABLE, align 4
  %84 = load i32, i32* %4, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* @BIOS_SCRATCH_2, align 4
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @REG_WRITE(i32 %86, i32 %87)
  %89 = load i32, i32* @BL_PWM_CNTL, align 4
  %90 = load i32, i32* @BL_PWM_EN, align 4
  %91 = call i32 @REG_UPDATE(i32 %89, i32 %90, i32 1)
  %92 = load i32, i32* @BL_PWM_GRP1_REG_LOCK, align 4
  %93 = load i32, i32* @BL_PWM_GRP1_REG_LOCK, align 4
  %94 = call i32 @REG_UPDATE(i32 %92, i32 %93, i32 0)
  ret i32 1
}

declare dso_local %struct.dce_abm* @TO_DCE_ABM(%struct.abm*) #1

declare dso_local i32 @REG_GET(i32, i32, i32*) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i8* @REG_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
