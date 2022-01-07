; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_aux.c_acquire_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_aux.c_acquire_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_aux = type { i32 }
%struct.aux_engine_dce110 = type { i32 }

@AUX_ARB_CONTROL = common dso_local global i32 0, align 4
@AUX_REG_RW_CNTL_STATUS = common dso_local global i32 0, align 4
@DMCU_CAN_ACCESS_AUX = common dso_local global i64 0, align 8
@AUX_CONTROL = common dso_local global i32 0, align 4
@AUX_EN = common dso_local global i32 0, align 4
@AUX_RESET_MASK = common dso_local global i32 0, align 4
@AUX_RESET = common dso_local global i32 0, align 4
@AUX_RESET_DONE = common dso_local global i32 0, align 4
@AUX_SW_USE_AUX_REG_REQ = common dso_local global i32 0, align 4
@SW_CAN_ACCESS_AUX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dce_aux*)* @acquire_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acquire_engine(%struct.dce_aux* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dce_aux*, align 8
  %4 = alloca %struct.aux_engine_dce110*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.dce_aux* %0, %struct.dce_aux** %3, align 8
  %7 = load %struct.dce_aux*, %struct.dce_aux** %3, align 8
  %8 = call %struct.aux_engine_dce110* @FROM_AUX_ENGINE(%struct.dce_aux* %7)
  store %struct.aux_engine_dce110* %8, %struct.aux_engine_dce110** %4, align 8
  %9 = load i32, i32* @AUX_ARB_CONTROL, align 4
  %10 = call i64 @REG_READ(i32 %9)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i32, i32* @AUX_ARB_CONTROL, align 4
  %13 = load i32, i32* @AUX_REG_RW_CNTL_STATUS, align 4
  %14 = call i64 @get_reg_field_value(i64 %11, i32 %12, i32 %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @DMCU_CAN_ACCESS_AUX, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %77

19:                                               ; preds = %1
  %20 = load i32, i32* @AUX_CONTROL, align 4
  %21 = call i64 @REG_READ(i32 %20)
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i32, i32* @AUX_CONTROL, align 4
  %24 = load i32, i32* @AUX_EN, align 4
  %25 = call i64 @get_reg_field_value(i64 %22, i32 %23, i32 %24)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %63

28:                                               ; preds = %19
  %29 = load i64, i64* %5, align 8
  %30 = load i32, i32* @AUX_CONTROL, align 4
  %31 = load i32, i32* @AUX_EN, align 4
  %32 = call i32 @set_reg_field_value(i64 %29, i32 1, i32 %30, i32 %31)
  %33 = load i32, i32* @AUX_RESET_MASK, align 4
  %34 = call i64 @REG(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load i64, i64* %5, align 8
  %38 = load i32, i32* @AUX_CONTROL, align 4
  %39 = load i32, i32* @AUX_RESET, align 4
  %40 = call i32 @set_reg_field_value(i64 %37, i32 1, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %28
  %42 = load i32, i32* @AUX_CONTROL, align 4
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @REG_WRITE(i32 %42, i64 %43)
  %45 = load i32, i32* @AUX_RESET_MASK, align 4
  %46 = call i64 @REG(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %41
  %49 = load i32, i32* @AUX_CONTROL, align 4
  %50 = load i32, i32* @AUX_RESET_DONE, align 4
  %51 = call i32 @REG_WAIT(i32 %49, i32 %50, i32 1, i32 1, i32 11)
  %52 = load i64, i64* %5, align 8
  %53 = load i32, i32* @AUX_CONTROL, align 4
  %54 = load i32, i32* @AUX_RESET, align 4
  %55 = call i32 @set_reg_field_value(i64 %52, i32 0, i32 %53, i32 %54)
  %56 = load i32, i32* @AUX_CONTROL, align 4
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @REG_WRITE(i32 %56, i64 %57)
  %59 = load i32, i32* @AUX_CONTROL, align 4
  %60 = load i32, i32* @AUX_RESET_DONE, align 4
  %61 = call i32 @REG_WAIT(i32 %59, i32 %60, i32 0, i32 1, i32 11)
  br label %62

62:                                               ; preds = %48, %41
  br label %63

63:                                               ; preds = %62, %19
  %64 = load i32, i32* @AUX_ARB_CONTROL, align 4
  %65 = load i32, i32* @AUX_SW_USE_AUX_REG_REQ, align 4
  %66 = call i32 @REG_UPDATE(i32 %64, i32 %65, i32 1)
  %67 = load i32, i32* @AUX_ARB_CONTROL, align 4
  %68 = call i64 @REG_READ(i32 %67)
  store i64 %68, i64* %5, align 8
  %69 = load i64, i64* %5, align 8
  %70 = load i32, i32* @AUX_ARB_CONTROL, align 4
  %71 = load i32, i32* @AUX_REG_RW_CNTL_STATUS, align 4
  %72 = call i64 @get_reg_field_value(i64 %69, i32 %70, i32 %71)
  store i64 %72, i64* %6, align 8
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* @SW_CAN_ACCESS_AUX, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %63, %18
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.aux_engine_dce110* @FROM_AUX_ENGINE(%struct.dce_aux*) #1

declare dso_local i64 @REG_READ(i32) #1

declare dso_local i64 @get_reg_field_value(i64, i32, i32) #1

declare dso_local i32 @set_reg_field_value(i64, i32, i32, i32) #1

declare dso_local i64 @REG(i32) #1

declare dso_local i32 @REG_WRITE(i32, i64) #1

declare dso_local i32 @REG_WAIT(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
