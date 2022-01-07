; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_get_vs_bpost_viterbi_ber.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_get_vs_bpost_viterbi_ber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_device_addr = type { i32 }

@FEC_RS_NR_BIT_ERRORS__A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@FEC_RS_MEASUREMENT_PERIOD = common dso_local global i32 0, align 4
@FEC_RS_MEASUREMENT_PRESCALE = common dso_local global i32 0, align 4
@FEC_RS_NR_BIT_ERRORS_FIXED_MANT__M = common dso_local global i32 0, align 4
@FEC_RS_NR_BIT_ERRORS_EXP__M = common dso_local global i32 0, align 4
@FEC_RS_NR_BIT_ERRORS_EXP__B = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"error: period and/or prescale is zero!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_device_addr*, i32*, i32*)* @get_vs_bpost_viterbi_ber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_vs_bpost_viterbi_ber(%struct.i2c_device_addr* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_device_addr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i2c_device_addr* %0, %struct.i2c_device_addr** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %5, align 8
  %15 = load i32, i32* @FEC_RS_NR_BIT_ERRORS__A, align 4
  %16 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %14, i32 %15, i32* %9, i32 0)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %76

22:                                               ; preds = %3
  %23 = load i32, i32* @FEC_RS_MEASUREMENT_PERIOD, align 4
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* @FEC_RS_MEASUREMENT_PRESCALE, align 4
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @FEC_RS_NR_BIT_ERRORS_FIXED_MANT__M, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @FEC_RS_NR_BIT_ERRORS_EXP__M, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @FEC_RS_NR_BIT_ERRORS_EXP__B, align 4
  %32 = ashr i32 %30, %31
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = mul nsw i32 %33, %34
  %36 = mul nsw i32 %35, 207
  %37 = load i32, i32* %13, align 4
  %38 = icmp sgt i32 %37, 2
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 8
  %41 = mul nsw i32 %36, %40
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %13, align 4
  %45 = shl i32 %43, %44
  %46 = ashr i32 %45, 3
  %47 = icmp sgt i32 %46, 68700
  br i1 %47, label %48, label %53

48:                                               ; preds = %22
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %50, 26570
  %52 = load i32*, i32** %6, align 8
  store i32 %51, i32* %52, align 4
  br label %75

53:                                               ; preds = %22
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = mul nsw i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %78

62:                                               ; preds = %53
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp sgt i32 %64, 2
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* %13, align 4
  %68 = sub nsw i32 %67, 3
  br label %71

69:                                               ; preds = %62
  %70 = load i32, i32* %13, align 4
  br label %71

71:                                               ; preds = %69, %66
  %72 = phi i32 [ %68, %66 ], [ %70, %69 ]
  %73 = shl i32 %63, %72
  %74 = load i32*, i32** %6, align 8
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %71, %48
  store i32 0, i32* %4, align 4
  br label %78

76:                                               ; preds = %19
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %76, %75, %58
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @drxj_dap_read_reg16(%struct.i2c_device_addr*, i32, i32*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
