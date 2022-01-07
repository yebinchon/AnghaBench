; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_aux.c_msm_edp_aux_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_aux.c_msm_edp_aux_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edp_aux = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"enable=%d\00", align 1
@REG_EDP_AUX_CTRL = common dso_local global i64 0, align 8
@EDP_AUX_CTRL_RESET = common dso_local global i32 0, align 4
@EDP_AUX_CTRL_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_edp_aux_ctrl(%struct.edp_aux* %0, i32 %1) #0 {
  %3 = alloca %struct.edp_aux*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.edp_aux* %0, %struct.edp_aux** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @DBG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.edp_aux*, %struct.edp_aux** %3, align 8
  %9 = getelementptr inbounds %struct.edp_aux, %struct.edp_aux* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @REG_EDP_AUX_CTRL, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @edp_read(i64 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %2
  %17 = load i32, i32* @EDP_AUX_CTRL_RESET, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load %struct.edp_aux*, %struct.edp_aux** %3, align 8
  %21 = getelementptr inbounds %struct.edp_aux, %struct.edp_aux* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @REG_EDP_AUX_CTRL, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @edp_write(i64 %24, i32 %25)
  %27 = call i32 (...) @wmb()
  %28 = call i32 @usleep_range(i32 500, i32 1000)
  %29 = load i32, i32* @EDP_AUX_CTRL_RESET, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @EDP_AUX_CTRL_ENABLE, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load %struct.edp_aux*, %struct.edp_aux** %3, align 8
  %37 = getelementptr inbounds %struct.edp_aux, %struct.edp_aux* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @REG_EDP_AUX_CTRL, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @edp_write(i64 %40, i32 %41)
  br label %55

43:                                               ; preds = %2
  %44 = load i32, i32* @EDP_AUX_CTRL_ENABLE, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load %struct.edp_aux*, %struct.edp_aux** %3, align 8
  %49 = getelementptr inbounds %struct.edp_aux, %struct.edp_aux* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @REG_EDP_AUX_CTRL, align 8
  %52 = add nsw i64 %50, %51
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @edp_write(i64 %52, i32 %53)
  br label %55

55:                                               ; preds = %43, %16
  ret void
}

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @edp_read(i64) #1

declare dso_local i32 @edp_write(i64, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
