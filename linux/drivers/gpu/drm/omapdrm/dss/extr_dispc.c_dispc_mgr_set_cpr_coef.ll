; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_mgr_set_cpr_coef.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_mgr_set_cpr_coef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { i32 }
%struct.omap_dss_cpr_coefs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dispc_device*, i32, %struct.omap_dss_cpr_coefs*)* @dispc_mgr_set_cpr_coef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_mgr_set_cpr_coef(%struct.dispc_device* %0, i32 %1, %struct.omap_dss_cpr_coefs* %2) #0 {
  %4 = alloca %struct.dispc_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.omap_dss_cpr_coefs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dispc_device* %0, %struct.dispc_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.omap_dss_cpr_coefs* %2, %struct.omap_dss_cpr_coefs** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @dss_mgr_is_lcd(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %72

14:                                               ; preds = %3
  %15 = load %struct.omap_dss_cpr_coefs*, %struct.omap_dss_cpr_coefs** %6, align 8
  %16 = getelementptr inbounds %struct.omap_dss_cpr_coefs, %struct.omap_dss_cpr_coefs* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @FLD_VAL(i32 %17, i32 31, i32 22)
  %19 = load %struct.omap_dss_cpr_coefs*, %struct.omap_dss_cpr_coefs** %6, align 8
  %20 = getelementptr inbounds %struct.omap_dss_cpr_coefs, %struct.omap_dss_cpr_coefs* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @FLD_VAL(i32 %21, i32 20, i32 11)
  %23 = or i32 %18, %22
  %24 = load %struct.omap_dss_cpr_coefs*, %struct.omap_dss_cpr_coefs** %6, align 8
  %25 = getelementptr inbounds %struct.omap_dss_cpr_coefs, %struct.omap_dss_cpr_coefs* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @FLD_VAL(i32 %26, i32 9, i32 0)
  %28 = or i32 %23, %27
  store i32 %28, i32* %7, align 4
  %29 = load %struct.omap_dss_cpr_coefs*, %struct.omap_dss_cpr_coefs** %6, align 8
  %30 = getelementptr inbounds %struct.omap_dss_cpr_coefs, %struct.omap_dss_cpr_coefs* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @FLD_VAL(i32 %31, i32 31, i32 22)
  %33 = load %struct.omap_dss_cpr_coefs*, %struct.omap_dss_cpr_coefs** %6, align 8
  %34 = getelementptr inbounds %struct.omap_dss_cpr_coefs, %struct.omap_dss_cpr_coefs* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @FLD_VAL(i32 %35, i32 20, i32 11)
  %37 = or i32 %32, %36
  %38 = load %struct.omap_dss_cpr_coefs*, %struct.omap_dss_cpr_coefs** %6, align 8
  %39 = getelementptr inbounds %struct.omap_dss_cpr_coefs, %struct.omap_dss_cpr_coefs* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @FLD_VAL(i32 %40, i32 9, i32 0)
  %42 = or i32 %37, %41
  store i32 %42, i32* %8, align 4
  %43 = load %struct.omap_dss_cpr_coefs*, %struct.omap_dss_cpr_coefs** %6, align 8
  %44 = getelementptr inbounds %struct.omap_dss_cpr_coefs, %struct.omap_dss_cpr_coefs* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @FLD_VAL(i32 %45, i32 31, i32 22)
  %47 = load %struct.omap_dss_cpr_coefs*, %struct.omap_dss_cpr_coefs** %6, align 8
  %48 = getelementptr inbounds %struct.omap_dss_cpr_coefs, %struct.omap_dss_cpr_coefs* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @FLD_VAL(i32 %49, i32 20, i32 11)
  %51 = or i32 %46, %50
  %52 = load %struct.omap_dss_cpr_coefs*, %struct.omap_dss_cpr_coefs** %6, align 8
  %53 = getelementptr inbounds %struct.omap_dss_cpr_coefs, %struct.omap_dss_cpr_coefs* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @FLD_VAL(i32 %54, i32 9, i32 0)
  %56 = or i32 %51, %55
  store i32 %56, i32* %9, align 4
  %57 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @DISPC_CPR_COEF_R(i32 %58)
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @dispc_write_reg(%struct.dispc_device* %57, i32 %59, i32 %60)
  %62 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @DISPC_CPR_COEF_G(i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @dispc_write_reg(%struct.dispc_device* %62, i32 %64, i32 %65)
  %67 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @DISPC_CPR_COEF_B(i32 %68)
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @dispc_write_reg(%struct.dispc_device* %67, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @dss_mgr_is_lcd(i32) #1

declare dso_local i32 @FLD_VAL(i32, i32, i32) #1

declare dso_local i32 @dispc_write_reg(%struct.dispc_device*, i32, i32) #1

declare dso_local i32 @DISPC_CPR_COEF_R(i32) #1

declare dso_local i32 @DISPC_CPR_COEF_G(i32) #1

declare dso_local i32 @DISPC_CPR_COEF_B(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
