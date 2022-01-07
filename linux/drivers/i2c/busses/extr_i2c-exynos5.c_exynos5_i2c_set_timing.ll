; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-exynos5.c_exynos5_i2c_set_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-exynos5.c_exynos5_i2c_set_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos5_i2c = type { i32, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@HSI2C_HS_TX_CLOCK = common dso_local global i32 0, align 4
@HSI2C_FS_TX_CLOCK = common dso_local global i32 0, align 4
@HSI2C_CONF = common dso_local global i64 0, align 8
@I2C_TYPE_EXYNOS7 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"%s clock set-up failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"HS\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"FS\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"tSTART_SU: %X, tSTART_HD: %X, tSTOP_SU: %X\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"tDATA_SU: %X, tSCL_L: %X, tSCL_H: %X\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"nClkDiv: %X, tSR_RELEASE: %X\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"tDATA_HD: %X\0A\00", align 1
@HSI2C_TIMING_HS1 = common dso_local global i64 0, align 8
@HSI2C_TIMING_HS2 = common dso_local global i64 0, align 8
@HSI2C_TIMING_HS3 = common dso_local global i64 0, align 8
@HSI2C_TIMING_FS1 = common dso_local global i64 0, align 8
@HSI2C_TIMING_FS2 = common dso_local global i64 0, align 8
@HSI2C_TIMING_FS3 = common dso_local global i64 0, align 8
@HSI2C_TIMING_SLA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos5_i2c*, i32)* @exynos5_i2c_set_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos5_i2c_set_timing(%struct.exynos5_i2c* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.exynos5_i2c*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.exynos5_i2c* %0, %struct.exynos5_i2c** %4, align 8
  store i32 %1, i32* %5, align 4
  %24 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %4, align 8
  %25 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @clk_get_rate(i32 %26)
  store i32 %27, i32* %19, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %4, align 8
  %32 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  br label %48

34:                                               ; preds = %2
  %35 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %4, align 8
  %36 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @HSI2C_HS_TX_CLOCK, align 4
  %39 = icmp uge i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @HSI2C_FS_TX_CLOCK, align 4
  br label %46

42:                                               ; preds = %34
  %43 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %4, align 8
  %44 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  br label %46

46:                                               ; preds = %42, %40
  %47 = phi i32 [ %41, %40 ], [ %45, %42 ]
  br label %48

48:                                               ; preds = %46, %30
  %49 = phi i32 [ %33, %30 ], [ %47, %46 ]
  store i32 %49, i32* %20, align 4
  %50 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %4, align 8
  %51 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @HSI2C_CONF, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @readl(i64 %54)
  %56 = ashr i32 %55, 16
  %57 = and i32 %56, 7
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* %19, align 4
  %59 = load i32, i32* %20, align 4
  %60 = udiv i32 %58, %59
  %61 = sub i32 %60, 8
  %62 = load i32, i32* %18, align 4
  %63 = sub i32 %61, %62
  store i32 %63, i32* %23, align 4
  %64 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %4, align 8
  %65 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %64, i32 0, i32 3
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @I2C_TYPE_EXYNOS7, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %48
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* %23, align 4
  %74 = sub i32 %73, %72
  store i32 %74, i32* %23, align 4
  br label %75

75:                                               ; preds = %71, %48
  %76 = load i32, i32* %23, align 4
  %77 = sdiv i32 %76, 512
  store i32 %77, i32* %21, align 4
  %78 = load i32, i32* %23, align 4
  %79 = load i32, i32* %21, align 4
  %80 = add nsw i32 %79, 1
  %81 = sdiv i32 %78, %80
  %82 = sub nsw i32 %81, 2
  store i32 %82, i32* %22, align 4
  %83 = load i32, i32* %23, align 4
  %84 = icmp slt i32 %83, 4
  br i1 %84, label %91, label %85

85:                                               ; preds = %75
  %86 = load i32, i32* %21, align 4
  %87 = icmp sge i32 %86, 256
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %22, align 4
  %90 = icmp slt i32 %89, 2
  br i1 %90, label %91, label %102

91:                                               ; preds = %88, %85, %75
  %92 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %4, align 8
  %93 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %99 = call i32 @dev_err(i32 %94, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %98)
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %217

102:                                              ; preds = %88
  %103 = load i32, i32* %22, align 4
  %104 = sdiv i32 %103, 2
  store i32 %104, i32* %15, align 4
  %105 = load i32, i32* %22, align 4
  %106 = sdiv i32 %105, 2
  store i32 %106, i32* %16, align 4
  %107 = load i32, i32* %15, align 4
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %15, align 4
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %15, align 4
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %15, align 4
  %111 = udiv i32 %110, 2
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %15, align 4
  %113 = udiv i32 %112, 2
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %22, align 4
  store i32 %114, i32* %17, align 4
  %115 = load i32, i32* %10, align 4
  %116 = shl i32 %115, 24
  %117 = load i32, i32* %11, align 4
  %118 = shl i32 %117, 16
  %119 = or i32 %116, %118
  %120 = load i32, i32* %12, align 4
  %121 = shl i32 %120, 8
  %122 = or i32 %119, %121
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %13, align 4
  %124 = shl i32 %123, 24
  %125 = load i32, i32* %15, align 4
  %126 = shl i32 %125, 8
  %127 = or i32 %124, %126
  %128 = load i32, i32* %16, align 4
  %129 = shl i32 %128, 0
  %130 = or i32 %127, %129
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %21, align 4
  %132 = shl i32 %131, 16
  %133 = load i32, i32* %17, align 4
  %134 = shl i32 %133, 0
  %135 = or i32 %132, %134
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %14, align 4
  %137 = shl i32 %136, 0
  store i32 %137, i32* %9, align 4
  %138 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %4, align 8
  %139 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %12, align 4
  %144 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %140, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %141, i32 %142, i32 %143)
  %145 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %4, align 8
  %146 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* %15, align 4
  %150 = load i32, i32* %16, align 4
  %151 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %147, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %148, i32 %149, i32 %150)
  %152 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %4, align 8
  %153 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %21, align 4
  %156 = load i32, i32* %17, align 4
  %157 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %154, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %155, i32 %156)
  %158 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %4, align 8
  %159 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %14, align 4
  %162 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %160, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %161)
  %163 = load i32, i32* %5, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %187

165:                                              ; preds = %102
  %166 = load i32, i32* %6, align 4
  %167 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %4, align 8
  %168 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @HSI2C_TIMING_HS1, align 8
  %171 = add nsw i64 %169, %170
  %172 = call i32 @writel(i32 %166, i64 %171)
  %173 = load i32, i32* %7, align 4
  %174 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %4, align 8
  %175 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @HSI2C_TIMING_HS2, align 8
  %178 = add nsw i64 %176, %177
  %179 = call i32 @writel(i32 %173, i64 %178)
  %180 = load i32, i32* %8, align 4
  %181 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %4, align 8
  %182 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @HSI2C_TIMING_HS3, align 8
  %185 = add nsw i64 %183, %184
  %186 = call i32 @writel(i32 %180, i64 %185)
  br label %209

187:                                              ; preds = %102
  %188 = load i32, i32* %6, align 4
  %189 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %4, align 8
  %190 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @HSI2C_TIMING_FS1, align 8
  %193 = add nsw i64 %191, %192
  %194 = call i32 @writel(i32 %188, i64 %193)
  %195 = load i32, i32* %7, align 4
  %196 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %4, align 8
  %197 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @HSI2C_TIMING_FS2, align 8
  %200 = add nsw i64 %198, %199
  %201 = call i32 @writel(i32 %195, i64 %200)
  %202 = load i32, i32* %8, align 4
  %203 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %4, align 8
  %204 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @HSI2C_TIMING_FS3, align 8
  %207 = add nsw i64 %205, %206
  %208 = call i32 @writel(i32 %202, i64 %207)
  br label %209

209:                                              ; preds = %187, %165
  %210 = load i32, i32* %9, align 4
  %211 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %4, align 8
  %212 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @HSI2C_TIMING_SLA, align 8
  %215 = add nsw i64 %213, %214
  %216 = call i32 @writel(i32 %210, i64 %215)
  store i32 0, i32* %3, align 4
  br label %217

217:                                              ; preds = %209, %91
  %218 = load i32, i32* %3, align 4
  ret i32 %218
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
