; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-riic.c_riic_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-riic.c_riic_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.riic_dev = type { %struct.TYPE_3__, i64, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.i2c_timings = type { i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"unsupported bus speed (%dHz). 400000 max\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"invalid speed (%lu). Too slow.\0A\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"i2c-riic: freq=%lu, duty=%d, fall=%lu, rise=%lu, cks=%d, brl=%d, brh=%d\0A\00", align 1
@ICCR1_IICRST = common dso_local global i32 0, align 4
@ICCR1_SOWP = common dso_local global i32 0, align 4
@RIIC_ICCR1 = common dso_local global i64 0, align 8
@ICCR1_ICE = common dso_local global i32 0, align 4
@RIIC_ICMR1 = common dso_local global i64 0, align 8
@ICBR_RESERVED = common dso_local global i32 0, align 4
@RIIC_ICBRH = common dso_local global i64 0, align 8
@RIIC_ICBRL = common dso_local global i64 0, align 8
@RIIC_ICSER = common dso_local global i64 0, align 8
@ICMR3_ACKWP = common dso_local global i32 0, align 4
@ICMR3_RDRFS = common dso_local global i32 0, align 4
@RIIC_ICMR3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.riic_dev*, %struct.i2c_timings*)* @riic_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @riic_init_hw(%struct.riic_dev* %0, %struct.i2c_timings* %1) #0 {
  %3 = alloca %struct.riic_dev*, align 8
  %4 = alloca %struct.i2c_timings*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.riic_dev* %0, %struct.riic_dev** %3, align 8
  store %struct.i2c_timings* %1, %struct.i2c_timings** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.riic_dev*, %struct.riic_dev** %3, align 8
  %12 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @pm_runtime_get_sync(i32 %15)
  %17 = load %struct.i2c_timings*, %struct.i2c_timings** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %19, 400000
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load %struct.riic_dev*, %struct.riic_dev** %3, align 8
  %23 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.i2c_timings*, %struct.i2c_timings** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = call i32 @dev_err(%struct.TYPE_4__* %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %212

32:                                               ; preds = %2
  %33 = load %struct.riic_dev*, %struct.riic_dev** %3, align 8
  %34 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @clk_get_rate(i32 %35)
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.i2c_timings*, %struct.i2c_timings** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = call i32 @DIV_ROUND_UP(i64 %37, i64 %41)
  store i32 %42, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %58, %32
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 7
  br i1 %45, label %46, label %61

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = mul nsw i32 %47, 6
  %49 = sdiv i32 %48, 10
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp sle i32 %50, 34
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %61

53:                                               ; preds = %46
  %54 = load i32, i32* %7, align 4
  %55 = sdiv i32 %54, 2
  store i32 %55, i32* %7, align 4
  %56 = load i64, i64* %6, align 8
  %57 = udiv i64 %56, 2
  store i64 %57, i64* %6, align 8
  br label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %43

61:                                               ; preds = %52, %43
  %62 = load i32, i32* %9, align 4
  %63 = icmp sgt i32 %62, 34
  br i1 %63, label %64, label %75

64:                                               ; preds = %61
  %65 = load %struct.riic_dev*, %struct.riic_dev** %3, align 8
  %66 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load %struct.i2c_timings*, %struct.i2c_timings** %4, align 8
  %69 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = call i32 @dev_err(%struct.TYPE_4__* %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %212

75:                                               ; preds = %61
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %9, align 4
  %78 = sub nsw i32 %76, %77
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load i32, i32* %9, align 4
  %83 = sub nsw i32 %82, 4
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = sub nsw i32 %84, 4
  store i32 %85, i32* %10, align 4
  br label %91

86:                                               ; preds = %75
  %87 = load i32, i32* %9, align 4
  %88 = sub nsw i32 %87, 3
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %10, align 4
  %90 = sub nsw i32 %89, 3
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %86, %81
  %92 = load %struct.i2c_timings*, %struct.i2c_timings** %4, align 8
  %93 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* %6, align 8
  %97 = udiv i64 1000000000, %96
  %98 = udiv i64 %95, %97
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = sub i64 %100, %98
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %9, align 4
  %103 = load %struct.i2c_timings*, %struct.i2c_timings** %4, align 8
  %104 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* %6, align 8
  %108 = udiv i64 1000000000, %107
  %109 = udiv i64 %106, %108
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = sub i64 %111, %109
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp slt i32 %114, 1
  br i1 %115, label %116, label %117

116:                                              ; preds = %91
  store i32 1, i32* %9, align 4
  br label %117

117:                                              ; preds = %116, %91
  %118 = load i32, i32* %10, align 4
  %119 = icmp slt i32 %118, 1
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store i32 1, i32* %10, align 4
  br label %121

121:                                              ; preds = %120, %117
  %122 = load i64, i64* %6, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = udiv i64 %122, %124
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 3
  %128 = mul nsw i32 %127, 100
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %129, %130
  %132 = add nsw i32 %131, 6
  %133 = sdiv i32 %128, %132
  %134 = load %struct.i2c_timings*, %struct.i2c_timings** %4, align 8
  %135 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = load i64, i64* %6, align 8
  %139 = udiv i64 1000000000, %138
  %140 = udiv i64 %137, %139
  %141 = trunc i64 %140 to i32
  %142 = load %struct.i2c_timings*, %struct.i2c_timings** %4, align 8
  %143 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = load i64, i64* %6, align 8
  %147 = udiv i64 1000000000, %146
  %148 = udiv i64 %145, %147
  %149 = trunc i64 %148 to i32
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* %10, align 4
  %153 = call i32 @pr_debug(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i64 %125, i32 %133, i32 %141, i32 %149, i32 %150, i32 %151, i32 %152)
  %154 = load i32, i32* @ICCR1_IICRST, align 4
  %155 = load i32, i32* @ICCR1_SOWP, align 4
  %156 = or i32 %154, %155
  %157 = load %struct.riic_dev*, %struct.riic_dev** %3, align 8
  %158 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @RIIC_ICCR1, align 8
  %161 = add nsw i64 %159, %160
  %162 = call i32 @writeb(i32 %156, i64 %161)
  %163 = load %struct.riic_dev*, %struct.riic_dev** %3, align 8
  %164 = load i32, i32* @ICCR1_ICE, align 4
  %165 = load i64, i64* @RIIC_ICCR1, align 8
  %166 = call i32 @riic_clear_set_bit(%struct.riic_dev* %163, i32 0, i32 %164, i64 %165)
  %167 = load i32, i32* %8, align 4
  %168 = call i32 @ICMR1_CKS(i32 %167)
  %169 = load %struct.riic_dev*, %struct.riic_dev** %3, align 8
  %170 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @RIIC_ICMR1, align 8
  %173 = add nsw i64 %171, %172
  %174 = call i32 @writeb(i32 %168, i64 %173)
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* @ICBR_RESERVED, align 4
  %177 = or i32 %175, %176
  %178 = load %struct.riic_dev*, %struct.riic_dev** %3, align 8
  %179 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @RIIC_ICBRH, align 8
  %182 = add nsw i64 %180, %181
  %183 = call i32 @writeb(i32 %177, i64 %182)
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* @ICBR_RESERVED, align 4
  %186 = or i32 %184, %185
  %187 = load %struct.riic_dev*, %struct.riic_dev** %3, align 8
  %188 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @RIIC_ICBRL, align 8
  %191 = add nsw i64 %189, %190
  %192 = call i32 @writeb(i32 %186, i64 %191)
  %193 = load %struct.riic_dev*, %struct.riic_dev** %3, align 8
  %194 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @RIIC_ICSER, align 8
  %197 = add nsw i64 %195, %196
  %198 = call i32 @writeb(i32 0, i64 %197)
  %199 = load i32, i32* @ICMR3_ACKWP, align 4
  %200 = load i32, i32* @ICMR3_RDRFS, align 4
  %201 = or i32 %199, %200
  %202 = load %struct.riic_dev*, %struct.riic_dev** %3, align 8
  %203 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @RIIC_ICMR3, align 8
  %206 = add nsw i64 %204, %205
  %207 = call i32 @writeb(i32 %201, i64 %206)
  %208 = load %struct.riic_dev*, %struct.riic_dev** %3, align 8
  %209 = load i32, i32* @ICCR1_IICRST, align 4
  %210 = load i64, i64* @RIIC_ICCR1, align 8
  %211 = call i32 @riic_clear_set_bit(%struct.riic_dev* %208, i32 %209, i32 0, i64 %210)
  br label %212

212:                                              ; preds = %121, %64, %21
  %213 = load %struct.riic_dev*, %struct.riic_dev** %3, align 8
  %214 = getelementptr inbounds %struct.riic_dev, %struct.riic_dev* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @pm_runtime_put(i32 %217)
  %219 = load i32, i32* %5, align 4
  ret i32 %219
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, i64) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i64) #1

declare dso_local i32 @pr_debug(i8*, i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @riic_clear_set_bit(%struct.riic_dev*, i32, i32, i64) #1

declare dso_local i32 @ICMR1_CKS(i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
