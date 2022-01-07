; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_frontend.c_sun4i_frontend_scaler_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_frontend.c_sun4i_frontend_scaler_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_frontend = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@SUN4I_FRONTEND_FRM_CTRL_REG = common dso_local global i32 0, align 4
@SUN4I_FRONTEND_FRM_CTRL_COEF_ACCESS_CTRL = common dso_local global i32 0, align 4
@sun4i_frontend_horz_coef = common dso_local global i32* null, align 8
@sun4i_frontend_vert_coef = common dso_local global i32* null, align 8
@SUN4I_FRONTEND_FRM_CTRL_COEF_RDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sun4i_frontend*)* @sun4i_frontend_scaler_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4i_frontend_scaler_init(%struct.sun4i_frontend* %0) #0 {
  %2 = alloca %struct.sun4i_frontend*, align 8
  %3 = alloca i32, align 4
  store %struct.sun4i_frontend* %0, %struct.sun4i_frontend** %2, align 8
  %4 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %2, align 8
  %5 = getelementptr inbounds %struct.sun4i_frontend, %struct.sun4i_frontend* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %2, align 8
  %12 = getelementptr inbounds %struct.sun4i_frontend, %struct.sun4i_frontend* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @SUN4I_FRONTEND_FRM_CTRL_REG, align 4
  %15 = load i32, i32* @SUN4I_FRONTEND_FRM_CTRL_COEF_ACCESS_CTRL, align 4
  %16 = load i32, i32* @SUN4I_FRONTEND_FRM_CTRL_COEF_ACCESS_CTRL, align 4
  %17 = call i32 @regmap_write_bits(i32 %13, i32 %14, i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %10, %1
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %95, %18
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 32
  br i1 %21, label %22, label %98

22:                                               ; preds = %19
  %23 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %2, align 8
  %24 = getelementptr inbounds %struct.sun4i_frontend, %struct.sun4i_frontend* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @SUN4I_FRONTEND_CH0_HORZCOEF0_REG(i32 %26)
  %28 = load i32*, i32** @sun4i_frontend_horz_coef, align 8
  %29 = load i32, i32* %3, align 4
  %30 = mul nsw i32 2, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @regmap_write(i32 %25, i32 %27, i32 %33)
  %35 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %2, align 8
  %36 = getelementptr inbounds %struct.sun4i_frontend, %struct.sun4i_frontend* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @SUN4I_FRONTEND_CH1_HORZCOEF0_REG(i32 %38)
  %40 = load i32*, i32** @sun4i_frontend_horz_coef, align 8
  %41 = load i32, i32* %3, align 4
  %42 = mul nsw i32 2, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @regmap_write(i32 %37, i32 %39, i32 %45)
  %47 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %2, align 8
  %48 = getelementptr inbounds %struct.sun4i_frontend, %struct.sun4i_frontend* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @SUN4I_FRONTEND_CH0_HORZCOEF1_REG(i32 %50)
  %52 = load i32*, i32** @sun4i_frontend_horz_coef, align 8
  %53 = load i32, i32* %3, align 4
  %54 = mul nsw i32 2, %53
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @regmap_write(i32 %49, i32 %51, i32 %58)
  %60 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %2, align 8
  %61 = getelementptr inbounds %struct.sun4i_frontend, %struct.sun4i_frontend* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @SUN4I_FRONTEND_CH1_HORZCOEF1_REG(i32 %63)
  %65 = load i32*, i32** @sun4i_frontend_horz_coef, align 8
  %66 = load i32, i32* %3, align 4
  %67 = mul nsw i32 2, %66
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @regmap_write(i32 %62, i32 %64, i32 %71)
  %73 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %2, align 8
  %74 = getelementptr inbounds %struct.sun4i_frontend, %struct.sun4i_frontend* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @SUN4I_FRONTEND_CH0_VERTCOEF_REG(i32 %76)
  %78 = load i32*, i32** @sun4i_frontend_vert_coef, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @regmap_write(i32 %75, i32 %77, i32 %82)
  %84 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %2, align 8
  %85 = getelementptr inbounds %struct.sun4i_frontend, %struct.sun4i_frontend* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @SUN4I_FRONTEND_CH1_VERTCOEF_REG(i32 %87)
  %89 = load i32*, i32** @sun4i_frontend_vert_coef, align 8
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @regmap_write(i32 %86, i32 %88, i32 %93)
  br label %95

95:                                               ; preds = %22
  %96 = load i32, i32* %3, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %3, align 4
  br label %19

98:                                               ; preds = %19
  %99 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %2, align 8
  %100 = getelementptr inbounds %struct.sun4i_frontend, %struct.sun4i_frontend* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %98
  %106 = load %struct.sun4i_frontend*, %struct.sun4i_frontend** %2, align 8
  %107 = getelementptr inbounds %struct.sun4i_frontend, %struct.sun4i_frontend* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @SUN4I_FRONTEND_FRM_CTRL_REG, align 4
  %110 = load i32, i32* @SUN4I_FRONTEND_FRM_CTRL_COEF_RDY, align 4
  %111 = load i32, i32* @SUN4I_FRONTEND_FRM_CTRL_COEF_RDY, align 4
  %112 = call i32 @regmap_write_bits(i32 %108, i32 %109, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %105, %98
  ret void
}

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @SUN4I_FRONTEND_CH0_HORZCOEF0_REG(i32) #1

declare dso_local i32 @SUN4I_FRONTEND_CH1_HORZCOEF0_REG(i32) #1

declare dso_local i32 @SUN4I_FRONTEND_CH0_HORZCOEF1_REG(i32) #1

declare dso_local i32 @SUN4I_FRONTEND_CH1_HORZCOEF1_REG(i32) #1

declare dso_local i32 @SUN4I_FRONTEND_CH0_VERTCOEF_REG(i32) #1

declare dso_local i32 @SUN4I_FRONTEND_CH1_VERTCOEF_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
