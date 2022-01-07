; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_si2165.c_si2165_set_if_freq_shift.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_si2165.c_si2165_set_if_freq_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si2165_state = type { %struct.TYPE_8__, %struct.TYPE_5__*, %struct.dvb_frontend }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.dvb_frontend = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.dvb_frontend.0*, i32*)* }
%struct.dvb_frontend.0 = type opaque

@.str = private unnamed_addr constant [72 x i8] c"Error: get_if_frequency() not defined at tuner. Can't work without it!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@REG_IF_FREQ_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si2165_state*)* @si2165_set_if_freq_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si2165_set_if_freq_shift(%struct.si2165_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.si2165_state*, align 8
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.si2165_state* %0, %struct.si2165_state** %3, align 8
  %9 = load %struct.si2165_state*, %struct.si2165_state** %3, align 8
  %10 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %9, i32 0, i32 2
  store %struct.dvb_frontend* %10, %struct.dvb_frontend** %4, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.si2165_state*, %struct.si2165_state** %3, align 8
  %12 = call i32 @si2165_get_fe_clk(%struct.si2165_state* %11)
  store i32 %12, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32 (%struct.dvb_frontend.0*, i32*)*, i32 (%struct.dvb_frontend.0*, i32*)** %16, align 8
  %18 = icmp ne i32 (%struct.dvb_frontend.0*, i32*)* %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %1
  %20 = load %struct.si2165_state*, %struct.si2165_state** %3, align 8
  %21 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %64

27:                                               ; preds = %1
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %64

33:                                               ; preds = %27
  %34 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %35 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32 (%struct.dvb_frontend.0*, i32*)*, i32 (%struct.dvb_frontend.0*, i32*)** %37, align 8
  %39 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %40 = bitcast %struct.dvb_frontend* %39 to %struct.dvb_frontend.0*
  %41 = call i32 %38(%struct.dvb_frontend.0* %40, i32* %8)
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = shl i32 %43, 29
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @do_div(i32 %45, i32 %46)
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %6, align 4
  %49 = load %struct.si2165_state*, %struct.si2165_state** %3, align 8
  %50 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %33
  %55 = load i32, i32* %6, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %54, %33
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, 536870911
  store i32 %59, i32* %6, align 4
  %60 = load %struct.si2165_state*, %struct.si2165_state** %3, align 8
  %61 = load i32, i32* @REG_IF_FREQ_SHIFT, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @si2165_writereg32(%struct.si2165_state* %60, i32 %61, i32 %62)
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %57, %30, %19
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @si2165_get_fe_clk(%struct.si2165_state*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @si2165_writereg32(%struct.si2165_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
