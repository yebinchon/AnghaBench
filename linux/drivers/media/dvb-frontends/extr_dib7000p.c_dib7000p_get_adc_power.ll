; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_get_adc_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_get_adc_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib7000p_state* }
%struct.dib7000p_state = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"raw pow_i = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c" mant = %d exp = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c" ix = %d\0A\00", align 1
@lut_1000ln_mant = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c" pow_i = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib7000p_get_adc_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000p_get_adc_power(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dib7000p_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca i64, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.dib7000p_state*, %struct.dib7000p_state** %11, align 8
  store %struct.dib7000p_state* %12, %struct.dib7000p_state** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i64 0, i64* %9, align 8
  %13 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %14 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %13, i32 388)
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %14, i32* %15, align 4
  %16 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %17 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %16, i32 389)
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 16
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %21, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %32, %1
  %29 = load i32, i32* %4, align 4
  %30 = ashr i32 %29, 1
  store i32 %30, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %28

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 %36, 1000
  %38 = load i32, i32* %5, align 4
  %39 = shl i32 1, %38
  %40 = sdiv i32 %37, %39
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = sdiv i32 %41, 1000
  %43 = load i32, i32* %5, align 4
  %44 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = sub nsw i32 %45, 1000
  %47 = sdiv i32 %46, 100
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %9, align 8
  %49 = load i64, i64* %9, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i32*, i32** @lut_1000ln_mant, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %5, align 4
  %57 = sub nsw i32 %56, 20
  %58 = mul nsw i32 693, %57
  %59 = add nsw i32 %55, %58
  %60 = sub nsw i32 %59, 6908
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = shl i32 %61, 8
  %63 = sdiv i32 %62, 1000
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32 @dib7000p_read_word(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dprintk(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
