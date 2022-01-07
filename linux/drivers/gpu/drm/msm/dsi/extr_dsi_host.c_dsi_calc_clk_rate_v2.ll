; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_calc_clk_rate_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_calc_clk_rate_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dsi_host = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"esc=%d, src=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsi_calc_clk_rate_v2(%struct.msm_dsi_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msm_dsi_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.msm_dsi_host* %0, %struct.msm_dsi_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %12 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dsi_get_bpp(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @dsi_calc_pclk(%struct.msm_dsi_host* %15, i32 %16)
  %18 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @dsi_get_pclk_rate(%struct.msm_dsi_host* %18, i32 %19)
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* %6, align 4
  %23 = mul nsw i32 %21, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @do_div(i32 %24, i32 8)
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %28 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %30 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %31, 1000000
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %10, align 8
  store i32 20, i32* %8, align 4
  br label %34

34:                                               ; preds = %48, %2
  %35 = load i32, i32* %8, align 4
  %36 = icmp uge i32 %35, 5
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = load i64, i64* %10, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @DIV_ROUND_UP(i64 %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp uge i32 %41, 1
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32, i32* %9, align 4
  %45 = icmp ule i32 %44, 16
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %51

47:                                               ; preds = %43, %37
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %8, align 4
  %50 = add i32 %49, -1
  store i32 %50, i32* %8, align 4
  br label %34

51:                                               ; preds = %46, %34
  %52 = load i32, i32* %8, align 4
  %53 = icmp ult i32 %52, 5
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %72

57:                                               ; preds = %51
  %58 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %59 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = udiv i32 %60, %61
  %63 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %64 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %66 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %69 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %57, %54
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @dsi_get_bpp(i32) #1

declare dso_local i32 @dsi_calc_pclk(%struct.msm_dsi_host*, i32) #1

declare dso_local i64 @dsi_get_pclk_rate(%struct.msm_dsi_host*, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @DBG(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
