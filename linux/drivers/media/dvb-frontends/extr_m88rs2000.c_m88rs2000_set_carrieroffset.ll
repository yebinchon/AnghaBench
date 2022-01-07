; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88rs2000.c_m88rs2000_set_carrieroffset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88rs2000.c_m88rs2000_set_carrieroffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.m88rs2000_state* }
%struct.m88rs2000_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @m88rs2000_set_carrieroffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m88rs2000_set_carrieroffset(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.m88rs2000_state*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %12, align 8
  store %struct.m88rs2000_state* %13, %struct.m88rs2000_state** %6, align 8
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %15 = call i64 @m88rs2000_get_mclk(%struct.dvb_frontend* %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %56

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = mul nsw i32 %22, 4096
  %24 = load i64, i64* %7, align 8
  %25 = trunc i64 %24 to i32
  %26 = sdiv i32 %25, 2
  %27 = add nsw i32 %23, %26
  %28 = load i64, i64* %7, align 8
  %29 = trunc i64 %28 to i32
  %30 = sdiv i32 %27, %29
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 4096
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %33, %21
  %37 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = ashr i32 %38, 4
  %40 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %37, i32 156, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %6, align 8
  %42 = call i32 @m88rs2000_readreg(%struct.m88rs2000_state* %41, i32 157)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, 15
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, 15
  %47 = shl i32 %46, 4
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %9, align 4
  %50 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %50, i32 157, i32 %51)
  %53 = load i32, i32* %10, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %36, %18
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @m88rs2000_get_mclk(%struct.dvb_frontend*) #1

declare dso_local i32 @m88rs2000_writereg(%struct.m88rs2000_state*, i32, i32) #1

declare dso_local i32 @m88rs2000_readreg(%struct.m88rs2000_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
