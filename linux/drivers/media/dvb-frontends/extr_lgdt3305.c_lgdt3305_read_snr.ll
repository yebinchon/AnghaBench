; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3305.c_lgdt3305_read_snr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3305.c_lgdt3305_read_snr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.lgdt3305_state* }
%struct.lgdt3305_state = type { i32, i32 }

@LGDT3305_EQ_MSE_1 = common dso_local global i32 0, align 4
@LGDT3305_EQ_MSE_2 = common dso_local global i32 0, align 4
@LGDT3305_EQ_MSE_3 = common dso_local global i32 0, align 4
@LGDT3305_CR_MSE_1 = common dso_local global i32 0, align 4
@LGDT3305_CR_MSE_2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"noise = 0x%08x, snr = %d.%02d dB\0A\00", align 1
@LGDT3305_PT_MSE_1 = common dso_local global i32 0, align 4
@LGDT3305_PT_MSE_2 = common dso_local global i32 0, align 4
@LGDT3305_PT_MSE_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @lgdt3305_read_snr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt3305_read_snr(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.lgdt3305_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %10, align 8
  store %struct.lgdt3305_state* %11, %struct.lgdt3305_state** %6, align 8
  %12 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %6, align 8
  %13 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %47 [
    i32 128, label %15
    i32 129, label %31
    i32 130, label %31
  ]

15:                                               ; preds = %2
  %16 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %6, align 8
  %17 = load i32, i32* @LGDT3305_EQ_MSE_1, align 4
  %18 = call i32 @read_reg(%struct.lgdt3305_state* %16, i32 %17)
  %19 = and i32 %18, 15
  %20 = shl i32 %19, 16
  %21 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %6, align 8
  %22 = load i32, i32* @LGDT3305_EQ_MSE_2, align 4
  %23 = call i32 @read_reg(%struct.lgdt3305_state* %21, i32 %22)
  %24 = shl i32 %23, 8
  %25 = or i32 %20, %24
  %26 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %6, align 8
  %27 = load i32, i32* @LGDT3305_EQ_MSE_3, align 4
  %28 = call i32 @read_reg(%struct.lgdt3305_state* %26, i32 %27)
  %29 = and i32 %28, 255
  %30 = or i32 %25, %29
  store i32 %30, i32* %7, align 4
  store i32 73957994, i32* %8, align 4
  br label %50

31:                                               ; preds = %2, %2
  %32 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %6, align 8
  %33 = load i32, i32* @LGDT3305_CR_MSE_1, align 4
  %34 = call i32 @read_reg(%struct.lgdt3305_state* %32, i32 %33)
  %35 = shl i32 %34, 8
  %36 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %6, align 8
  %37 = load i32, i32* @LGDT3305_CR_MSE_2, align 4
  %38 = call i32 @read_reg(%struct.lgdt3305_state* %36, i32 %37)
  %39 = and i32 %38, 255
  %40 = or i32 %35, %39
  store i32 %40, i32* %7, align 4
  %41 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %6, align 8
  %42 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 129
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 97939837, i32 98026066
  store i32 %46, i32* %8, align 4
  br label %50

47:                                               ; preds = %2
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %74

50:                                               ; preds = %31, %15
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @calculate_snr(i32 %51, i32 %52)
  %54 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %6, align 8
  %55 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %6, align 8
  %57 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sdiv i32 %58, 1677721
  %60 = load i32*, i32** %5, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %6, align 8
  %63 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %64, 24
  %66 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %6, align 8
  %67 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = ashr i32 %68, 8
  %70 = and i32 %69, 65535
  %71 = mul nsw i32 %70, 100
  %72 = ashr i32 %71, 16
  %73 = call i32 @lg_dbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %65, i32 %72)
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %50, %47
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @read_reg(%struct.lgdt3305_state*, i32) #1

declare dso_local i32 @calculate_snr(i32, i32) #1

declare dso_local i32 @lg_dbg(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
