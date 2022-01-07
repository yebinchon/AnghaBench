; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0367.c_stv0367cab_get_mclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0367.c_stv0367cab_get_mclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv0367_state* }
%struct.stv0367_state = type { i32 }

@F367CAB_BYPASS_PLLXN = common dso_local global i32 0, align 4
@F367CAB_PLL_NDIV = common dso_local global i32 0, align 4
@F367CAB_PLL_MDIV = common dso_local global i32 0, align 4
@F367CAB_PLL_PDIV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"stv0367cab_get_mclk BYPASS_PLLXN mclk_Hz=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"stv0367cab_get_mclk final mclk_Hz=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @stv0367cab_get_mclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0367cab_get_mclk(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stv0367_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.stv0367_state*, %struct.stv0367_state** %11, align 8
  store %struct.stv0367_state* %12, %struct.stv0367_state** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.stv0367_state*, %struct.stv0367_state** %5, align 8
  %14 = load i32, i32* @F367CAB_BYPASS_PLLXN, align 4
  %15 = call i64 @stv0367_readbits(%struct.stv0367_state* %13, i32 %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %57

17:                                               ; preds = %2
  %18 = load %struct.stv0367_state*, %struct.stv0367_state** %5, align 8
  %19 = load i32, i32* @F367CAB_PLL_NDIV, align 4
  %20 = call i64 @stv0367_readbits(%struct.stv0367_state* %18, i32 %19)
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %24, %17
  %28 = load %struct.stv0367_state*, %struct.stv0367_state** %5, align 8
  %29 = load i32, i32* @F367CAB_PLL_MDIV, align 4
  %30 = call i64 @stv0367_readbits(%struct.stv0367_state* %28, i32 %29)
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %34, %27
  %38 = load %struct.stv0367_state*, %struct.stv0367_state** %5, align 8
  %39 = load i32, i32* @F367CAB_PLL_PDIV, align 4
  %40 = call i64 @stv0367_readbits(%struct.stv0367_state* %38, i32 %39)
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp sgt i32 %42, 5
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 5, i32* %9, align 4
  br label %45

45:                                               ; preds = %44, %37
  %46 = load i32, i32* %4, align 4
  %47 = sdiv i32 %46, 2
  %48 = load i32, i32* %8, align 4
  %49 = mul nsw i32 %47, %48
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %9, align 4
  %52 = shl i32 1, %51
  %53 = mul nsw i32 %50, %52
  %54 = sdiv i32 %49, %53
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @dprintk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %59

57:                                               ; preds = %2
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %57, %45
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i64 @stv0367_readbits(%struct.stv0367_state*, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
