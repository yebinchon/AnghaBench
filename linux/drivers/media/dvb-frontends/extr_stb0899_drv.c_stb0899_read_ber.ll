; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_drv.c_stb0899_read_ber.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_drv.c_stb0899_read_ber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stb0899_state* }
%struct.stb0899_state = type { i32, i32, %struct.stb0899_internal }
%struct.stb0899_internal = type { i32, i32, i32 }

@STB0899_ECNT1L = common dso_local global i32 0, align 4
@STB0899_ECNT1M = common dso_local global i32 0, align 4
@VSTATUS_PRFVIT = common dso_local global i32 0, align 4
@NOE = common dso_local global i32 0, align 4
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unsupported delivery system\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @stb0899_read_ber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb0899_read_ber(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.stb0899_state*, align 8
  %7 = alloca %struct.stb0899_internal*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.stb0899_state*, %struct.stb0899_state** %11, align 8
  store %struct.stb0899_state* %12, %struct.stb0899_state** %6, align 8
  %13 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %14 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %13, i32 0, i32 2
  store %struct.stb0899_internal* %14, %struct.stb0899_internal** %7, align 8
  %15 = load i32*, i32** %5, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %17 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %93 [
    i32 129, label %19
    i32 130, label %19
    i32 128, label %61
  ]

19:                                               ; preds = %2, %2
  %20 = load %struct.stb0899_internal*, %struct.stb0899_internal** %7, align 8
  %21 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %60

24:                                               ; preds = %19
  %25 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %26 = load i32, i32* @STB0899_ECNT1L, align 4
  %27 = call i32 @stb0899_read_reg(%struct.stb0899_state* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %29 = load i32, i32* @STB0899_ECNT1M, align 4
  %30 = call i32 @stb0899_read_reg(%struct.stb0899_state* %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @MAKEWORD16(i32 %31, i32 %32)
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @VSTATUS_PRFVIT, align 4
  %36 = load %struct.stb0899_internal*, %struct.stb0899_internal** %7, align 8
  %37 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @STB0899_GETFIELD(i32 %35, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %24
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %43, 9766
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* @NOE, align 4
  %46 = load %struct.stb0899_internal*, %struct.stb0899_internal** %7, align 8
  %47 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @STB0899_GETFIELD(i32 %45, i32 %48)
  %50 = mul nsw i32 2, %49
  %51 = shl i32 1, %50
  %52 = add nsw i32 -1, %51
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %53, align 4
  %55 = sdiv i32 %54, %52
  store i32 %55, i32* %53, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %56, align 4
  %58 = sdiv i32 %57, 8
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %41, %24
  br label %60

60:                                               ; preds = %59, %19
  br label %101

61:                                               ; preds = %2
  %62 = load %struct.stb0899_internal*, %struct.stb0899_internal** %7, align 8
  %63 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %92

66:                                               ; preds = %61
  %67 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %68 = load i32, i32* @STB0899_ECNT1L, align 4
  %69 = call i32 @stb0899_read_reg(%struct.stb0899_state* %67, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %71 = load i32, i32* @STB0899_ECNT1M, align 4
  %72 = call i32 @stb0899_read_reg(%struct.stb0899_state* %70, i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @MAKEWORD16(i32 %73, i32 %74)
  %76 = load i32*, i32** %5, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %78, 10000000
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* @NOE, align 4
  %81 = load %struct.stb0899_internal*, %struct.stb0899_internal** %7, align 8
  %82 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @STB0899_GETFIELD(i32 %80, i32 %83)
  %85 = mul nsw i32 2, %84
  %86 = add nsw i32 4, %85
  %87 = shl i32 1, %86
  %88 = add nsw i32 -1, %87
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* %89, align 4
  %91 = sdiv i32 %90, %88
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %66, %61
  br label %101

93:                                               ; preds = %2
  %94 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %95 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @FE_DEBUG, align 4
  %98 = call i32 @dprintk(i32 %96, i32 %97, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %102

101:                                              ; preds = %92, %60
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %93
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @stb0899_read_reg(%struct.stb0899_state*, i32) #1

declare dso_local i32 @MAKEWORD16(i32, i32) #1

declare dso_local i32 @STB0899_GETFIELD(i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
