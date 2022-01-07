; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_ovl_write_color_conv_coef.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_ovl_write_color_conv_coef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { i32 }
%struct.csc_coef_yuv2rgb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dispc_device*, i32, %struct.csc_coef_yuv2rgb*)* @dispc_ovl_write_color_conv_coef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_ovl_write_color_conv_coef(%struct.dispc_device* %0, i32 %1, %struct.csc_coef_yuv2rgb* %2) #0 {
  %4 = alloca %struct.dispc_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.csc_coef_yuv2rgb*, align 8
  store %struct.dispc_device* %0, %struct.dispc_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.csc_coef_yuv2rgb* %2, %struct.csc_coef_yuv2rgb** %6, align 8
  %7 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @DISPC_OVL_CONV_COEF(i32 %8, i32 0)
  %10 = load %struct.csc_coef_yuv2rgb*, %struct.csc_coef_yuv2rgb** %6, align 8
  %11 = getelementptr inbounds %struct.csc_coef_yuv2rgb, %struct.csc_coef_yuv2rgb* %10, i32 0, i32 9
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @FLD_VAL to i32 (i32, i32, i32, ...)*)(i32 %12, i32 26, i32 16)
  %14 = load %struct.csc_coef_yuv2rgb*, %struct.csc_coef_yuv2rgb** %6, align 8
  %15 = getelementptr inbounds %struct.csc_coef_yuv2rgb, %struct.csc_coef_yuv2rgb* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @FLD_VAL to i32 (i32, i32, i32, ...)*)(i32 %16, i32 10, i32 0)
  %18 = or i32 %13, %17
  %19 = call i32 @dispc_write_reg(%struct.dispc_device* %7, i32 %9, i32 %18)
  %20 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @DISPC_OVL_CONV_COEF(i32 %21, i32 1)
  %23 = load %struct.csc_coef_yuv2rgb*, %struct.csc_coef_yuv2rgb** %6, align 8
  %24 = getelementptr inbounds %struct.csc_coef_yuv2rgb, %struct.csc_coef_yuv2rgb* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @FLD_VAL to i32 (i32, i32, i32, ...)*)(i32 %25, i32 26, i32 16)
  %27 = load %struct.csc_coef_yuv2rgb*, %struct.csc_coef_yuv2rgb** %6, align 8
  %28 = getelementptr inbounds %struct.csc_coef_yuv2rgb, %struct.csc_coef_yuv2rgb* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @FLD_VAL to i32 (i32, i32, i32, ...)*)(i32 %29, i32 10, i32 0)
  %31 = or i32 %26, %30
  %32 = call i32 @dispc_write_reg(%struct.dispc_device* %20, i32 %22, i32 %31)
  %33 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @DISPC_OVL_CONV_COEF(i32 %34, i32 2)
  %36 = load %struct.csc_coef_yuv2rgb*, %struct.csc_coef_yuv2rgb** %6, align 8
  %37 = getelementptr inbounds %struct.csc_coef_yuv2rgb, %struct.csc_coef_yuv2rgb* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @FLD_VAL to i32 (i32, i32, i32, ...)*)(i32 %38, i32 26, i32 16)
  %40 = load %struct.csc_coef_yuv2rgb*, %struct.csc_coef_yuv2rgb** %6, align 8
  %41 = getelementptr inbounds %struct.csc_coef_yuv2rgb, %struct.csc_coef_yuv2rgb* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @FLD_VAL to i32 (i32, i32, i32, ...)*)(i32 %42, i32 10, i32 0)
  %44 = or i32 %39, %43
  %45 = call i32 @dispc_write_reg(%struct.dispc_device* %33, i32 %35, i32 %44)
  %46 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @DISPC_OVL_CONV_COEF(i32 %47, i32 3)
  %49 = load %struct.csc_coef_yuv2rgb*, %struct.csc_coef_yuv2rgb** %6, align 8
  %50 = getelementptr inbounds %struct.csc_coef_yuv2rgb, %struct.csc_coef_yuv2rgb* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @FLD_VAL to i32 (i32, i32, i32, ...)*)(i32 %51, i32 26, i32 16)
  %53 = load %struct.csc_coef_yuv2rgb*, %struct.csc_coef_yuv2rgb** %6, align 8
  %54 = getelementptr inbounds %struct.csc_coef_yuv2rgb, %struct.csc_coef_yuv2rgb* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @FLD_VAL to i32 (i32, i32, i32, ...)*)(i32 %55, i32 10, i32 0)
  %57 = or i32 %52, %56
  %58 = call i32 @dispc_write_reg(%struct.dispc_device* %46, i32 %48, i32 %57)
  %59 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @DISPC_OVL_CONV_COEF(i32 %60, i32 4)
  %62 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @FLD_VAL to i32 (i32, i32, i32, ...)*)(i32 0, i32 26, i32 16)
  %63 = load %struct.csc_coef_yuv2rgb*, %struct.csc_coef_yuv2rgb** %6, align 8
  %64 = getelementptr inbounds %struct.csc_coef_yuv2rgb, %struct.csc_coef_yuv2rgb* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @FLD_VAL to i32 (i32, i32, i32, ...)*)(i32 %65, i32 10, i32 0)
  %67 = or i32 %62, %66
  %68 = call i32 @dispc_write_reg(%struct.dispc_device* %59, i32 %61, i32 %67)
  %69 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @DISPC_OVL_ATTRIBUTES(i32 %70)
  %72 = load %struct.csc_coef_yuv2rgb*, %struct.csc_coef_yuv2rgb** %6, align 8
  %73 = getelementptr inbounds %struct.csc_coef_yuv2rgb, %struct.csc_coef_yuv2rgb* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @REG_FLD_MOD(%struct.dispc_device* %69, i32 %71, i32 %74, i32 11, i32 11)
  ret void
}

declare dso_local i32 @dispc_write_reg(%struct.dispc_device*, i32, i32) #1

declare dso_local i32 @DISPC_OVL_CONV_COEF(i32, i32) #1

declare dso_local i32 @FLD_VAL(...) #1

declare dso_local i32 @REG_FLD_MOD(%struct.dispc_device*, i32, i32, i32, i32) #1

declare dso_local i32 @DISPC_OVL_ATTRIBUTES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
