; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_drv.c_stb0899_set_tone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_drv.c_stb0899_set_tone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stb0899_state* }
%struct.stb0899_state = type { %struct.stb0899_internal }
%struct.stb0899_internal = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@STB0899_DISEQCOCFG = common dso_local global i32 0, align 4
@STB0899_ACRPRESC = common dso_local global i32 0, align 4
@ACRPRESC = common dso_local global i32 0, align 4
@STB0899_ACRDIV1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @stb0899_set_tone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb0899_set_tone(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stb0899_state*, align 8
  %7 = alloca %struct.stb0899_internal*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.stb0899_state*, %struct.stb0899_state** %11, align 8
  store %struct.stb0899_state* %12, %struct.stb0899_state** %6, align 8
  %13 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %14 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %13, i32 0, i32 0
  store %struct.stb0899_internal* %14, %struct.stb0899_internal** %7, align 8
  %15 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %16 = call i64 @stb0899_wait_diseqc_txidle(%struct.stb0899_state* %15, i32 100)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ETIMEDOUT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %57

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %53 [
    i32 128, label %23
    i32 129, label %49
  ]

23:                                               ; preds = %21
  %24 = load %struct.stb0899_internal*, %struct.stb0899_internal** %7, align 8
  %25 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %26, 100
  %28 = sdiv i32 %27, 5632
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 5
  %31 = sdiv i32 %30, 10
  store i32 %31, i32* %8, align 4
  %32 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %33 = load i32, i32* @STB0899_DISEQCOCFG, align 4
  %34 = call i32 @stb0899_write_reg(%struct.stb0899_state* %32, i32 %33, i32 102)
  %35 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %36 = load i32, i32* @STB0899_ACRPRESC, align 4
  %37 = call i32 @stb0899_read_reg(%struct.stb0899_state* %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* @ACRPRESC, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @STB0899_SETFIELD_VAL(i32 %38, i32 %39, i32 3)
  %41 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %42 = load i32, i32* @STB0899_ACRPRESC, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @stb0899_write_reg(%struct.stb0899_state* %41, i32 %42, i32 %43)
  %45 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %46 = load i32, i32* @STB0899_ACRDIV1, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @stb0899_write_reg(%struct.stb0899_state* %45, i32 %46, i32 %47)
  br label %56

49:                                               ; preds = %21
  %50 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %51 = load i32, i32* @STB0899_DISEQCOCFG, align 4
  %52 = call i32 @stb0899_write_reg(%struct.stb0899_state* %50, i32 %51, i32 32)
  br label %56

53:                                               ; preds = %21
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %57

56:                                               ; preds = %49, %23
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %53, %18
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @stb0899_wait_diseqc_txidle(%struct.stb0899_state*, i32) #1

declare dso_local i32 @stb0899_write_reg(%struct.stb0899_state*, i32, i32) #1

declare dso_local i32 @stb0899_read_reg(%struct.stb0899_state*, i32) #1

declare dso_local i32 @STB0899_SETFIELD_VAL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
