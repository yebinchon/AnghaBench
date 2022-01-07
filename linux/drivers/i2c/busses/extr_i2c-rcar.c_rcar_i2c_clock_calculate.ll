; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rcar.c_rcar_i2c_clock_calculate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rcar.c_rcar_i2c_clock_calculate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_i2c_priv = type { i32, i32, i32 }
%struct.i2c_timings = type { i32, i32, i32, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"device type error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Input clock %lu too high\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"it is impossible to calculate best SCL\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"clk %d/%d(%lu), round %u, CDF:0x%x, SCGD: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_i2c_priv*, %struct.i2c_timings*)* @rcar_i2c_clock_calculate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_i2c_clock_calculate(%struct.rcar_i2c_priv* %0, %struct.i2c_timings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rcar_i2c_priv*, align 8
  %5 = alloca %struct.i2c_timings*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.device*, align 8
  store %struct.rcar_i2c_priv* %0, %struct.rcar_i2c_priv** %4, align 8
  store %struct.i2c_timings* %1, %struct.i2c_timings** %5, align 8
  %15 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %16 = call %struct.device* @rcar_i2c_priv_to_dev(%struct.rcar_i2c_priv* %15)
  store %struct.device* %16, %struct.device** %14, align 8
  %17 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %18 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %23

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %22, %21
  %24 = phi i32 [ %19, %21 ], [ 100000, %22 ]
  %25 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %26 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %28 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %33

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32, %31
  %34 = phi i32 [ %29, %31 ], [ 35, %32 ]
  %35 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %36 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %38 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %43

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %41
  %44 = phi i32 [ %39, %41 ], [ 200, %42 ]
  %45 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %46 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %48 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %53

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %51
  %54 = phi i32 [ %49, %51 ], [ 50, %52 ]
  %55 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %56 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %58 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  switch i32 %59, label %62 [
    i32 130, label %60
    i32 129, label %61
    i32 128, label %61
  ]

60:                                               ; preds = %53
  store i32 2, i32* %12, align 4
  br label %67

61:                                               ; preds = %53, %53
  store i32 3, i32* %12, align 4
  br label %67

62:                                               ; preds = %53
  %63 = load %struct.device*, %struct.device** %14, align 8
  %64 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %63, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %158

67:                                               ; preds = %61, %60
  %68 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %69 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @clk_get_rate(i32 %70)
  store i64 %71, i64* %13, align 8
  %72 = load i64, i64* %13, align 8
  %73 = udiv i64 %72, 20000000
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %12, align 4
  %77 = shl i32 1, %76
  %78 = icmp uge i32 %75, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %67
  %80 = load %struct.device*, %struct.device** %14, align 8
  %81 = load i64, i64* %13, align 8
  %82 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %80, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %81)
  %83 = load i32, i32* @EIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %158

85:                                               ; preds = %67
  %86 = load i64, i64* %13, align 8
  %87 = load i32, i32* %7, align 4
  %88 = add i32 %87, 1
  %89 = zext i32 %88 to i64
  %90 = udiv i64 %86, %89
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %9, align 4
  %92 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %93 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %96 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %94, %97
  %99 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %100 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %98, %101
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %9, align 4
  %104 = add i32 %103, 500000
  %105 = udiv i32 %104, 1000000
  %106 = load i32, i32* %10, align 4
  %107 = mul i32 %105, %106
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = add i32 %108, 500
  %110 = udiv i32 %109, 1000
  store i32 %110, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %111

111:                                              ; preds = %129, %85
  %112 = load i32, i32* %6, align 4
  %113 = icmp ult i32 %112, 64
  br i1 %113, label %114, label %132

114:                                              ; preds = %111
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %6, align 4
  %117 = mul i32 %116, 8
  %118 = add i32 20, %117
  %119 = load i32, i32* %8, align 4
  %120 = add i32 %118, %119
  %121 = udiv i32 %115, %120
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %124 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp ule i32 %122, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %114
  br label %137

128:                                              ; preds = %114
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %6, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %6, align 4
  br label %111

132:                                              ; preds = %111
  %133 = load %struct.device*, %struct.device** %14, align 8
  %134 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %133, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %135 = load i32, i32* @EIO, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %3, align 4
  br label %158

137:                                              ; preds = %127
  %138 = load %struct.device*, %struct.device** %14, align 8
  %139 = load i32, i32* %11, align 4
  %140 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %141 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %144 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @clk_get_rate(i32 %145)
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* %6, align 4
  %150 = call i32 @dev_dbg(%struct.device* %138, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %139, i32 %142, i64 %146, i32 %147, i32 %148, i32 %149)
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* %12, align 4
  %153 = shl i32 %151, %152
  %154 = load i32, i32* %7, align 4
  %155 = or i32 %153, %154
  %156 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %4, align 8
  %157 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  store i32 0, i32* %3, align 4
  br label %158

158:                                              ; preds = %137, %132, %79, %62
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local %struct.device* @rcar_i2c_priv_to_dev(%struct.rcar_i2c_priv*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
