; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0367.c_stv0367ter_snr_readreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0367.c_stv0367ter_snr_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv0367_state* }
%struct.stv0367_state = type { i32 }

@F367TER_IDENTIFICATIONREG = common dso_local global i32 0, align 4
@F367TER_CHCSNR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @stv0367ter_snr_readreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0367ter_snr_readreg(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.stv0367_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.stv0367_state*, %struct.stv0367_state** %8, align 8
  store %struct.stv0367_state* %9, %struct.stv0367_state** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load %struct.stv0367_state*, %struct.stv0367_state** %3, align 8
  %11 = load i32, i32* @F367TER_IDENTIFICATIONREG, align 4
  %12 = call i32 @stv0367_readbits(%struct.stv0367_state* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  br label %13

13:                                               ; preds = %34, %1
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 10
  br i1 %15, label %16, label %37

16:                                               ; preds = %13
  %17 = call i32 @usleep_range(i32 2000, i32 3000)
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 80
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load %struct.stv0367_state*, %struct.stv0367_state** %3, align 8
  %22 = load i32, i32* @F367TER_CHCSNR, align 4
  %23 = call i32 @stv0367_readbits(%struct.stv0367_state* %21, i32 %22)
  %24 = sdiv i32 %23, 4
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %4, align 4
  br label %34

27:                                               ; preds = %16
  %28 = load %struct.stv0367_state*, %struct.stv0367_state** %3, align 8
  %29 = load i32, i32* @F367TER_CHCSNR, align 4
  %30 = call i32 @stv0367_readbits(%struct.stv0367_state* %28, i32 %29)
  %31 = mul nsw i32 125, %30
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %27, %20
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %13

37:                                               ; preds = %13
  %38 = load i32, i32* %4, align 4
  %39 = sdiv i32 %38, 10
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @stv0367_readbits(%struct.stv0367_state*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
