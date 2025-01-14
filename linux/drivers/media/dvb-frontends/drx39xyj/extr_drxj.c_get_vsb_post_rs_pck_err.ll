; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_get_vsb_post_rs_pck_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_get_vsb_post_rs_pck_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_device_addr = type { i32 }

@FEC_RS_NR_FAILURES__A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@FEC_RS_NR_FAILURES_FIXED_MANT__M = common dso_local global i32 0, align 4
@FEC_RS_NR_FAILURES_EXP__M = common dso_local global i32 0, align 4
@FEC_RS_NR_FAILURES_EXP__B = common dso_local global i32 0, align 4
@FEC_RS_MEASUREMENT_PERIOD = common dso_local global i32 0, align 4
@FEC_RS_MEASUREMENT_PRESCALE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"error: period and/or prescale is zero!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_device_addr*, i32*, i32*)* @get_vsb_post_rs_pck_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_vsb_post_rs_pck_err(%struct.i2c_device_addr* %0, i32* %1, i32* %2) #0 {
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
  %15 = load i32, i32* @FEC_RS_NR_FAILURES__A, align 4
  %16 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %14, i32 %15, i32* %9, i32 0)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %52

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @FEC_RS_NR_FAILURES_FIXED_MANT__M, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @FEC_RS_NR_FAILURES_EXP__M, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @FEC_RS_NR_FAILURES_EXP__B, align 4
  %30 = ashr i32 %28, %29
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* @FEC_RS_MEASUREMENT_PERIOD, align 4
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* @FEC_RS_MEASUREMENT_PRESCALE, align 4
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = mul nsw i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %22
  %38 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %54

41:                                               ; preds = %22
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = shl i32 1, %43
  %45 = mul nsw i32 %42, %44
  %46 = load i32*, i32** %6, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = mul nsw i32 %47, %48
  %50 = mul nsw i32 %49, 77
  %51 = load i32*, i32** %7, align 8
  store i32 %50, i32* %51, align 4
  store i32 0, i32* %4, align 4
  br label %54

52:                                               ; preds = %19
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %41, %37
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @drxj_dap_read_reg16(%struct.i2c_device_addr*, i32, i32*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
