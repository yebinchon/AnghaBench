; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib3000mb.c_dib3000mb_read_snr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib3000mb.c_dib3000mb_read_snr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib3000_state* }
%struct.dib3000_state = type { i32 }

@DIB3000MB_REG_SIGNAL_POWER = common dso_local global i32 0, align 4
@DIB3000MB_REG_NOISE_POWER_MSB = common dso_local global i32 0, align 4
@DIB3000MB_REG_NOISE_POWER_LSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i16*)* @dib3000mb_read_snr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib3000mb_read_snr(%struct.dvb_frontend* %0, i16* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca %struct.dib3000_state*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i16* %1, i16** %4, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.dib3000_state*, %struct.dib3000_state** %9, align 8
  store %struct.dib3000_state* %10, %struct.dib3000_state** %5, align 8
  %11 = load i32, i32* @DIB3000MB_REG_SIGNAL_POWER, align 4
  %12 = call i32 @rd(i32 %11)
  %13 = trunc i32 %12 to i16
  store i16 %13, i16* %6, align 2
  %14 = load i32, i32* @DIB3000MB_REG_NOISE_POWER_MSB, align 4
  %15 = call i32 @rd(i32 %14)
  %16 = and i32 %15, 255
  %17 = shl i32 %16, 16
  %18 = load i32, i32* @DIB3000MB_REG_NOISE_POWER_LSB, align 4
  %19 = call i32 @rd(i32 %18)
  %20 = or i32 %17, %19
  store i32 %20, i32* %7, align 4
  %21 = load i16, i16* %6, align 2
  %22 = sext i16 %21 to i32
  %23 = shl i32 %22, 8
  %24 = load i32, i32* %7, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  br label %29

28:                                               ; preds = %2
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 1, %28 ]
  %31 = sdiv i32 %23, %30
  %32 = trunc i32 %31 to i16
  %33 = load i16*, i16** %4, align 8
  store i16 %32, i16* %33, align 2
  ret i32 0
}

declare dso_local i32 @rd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
