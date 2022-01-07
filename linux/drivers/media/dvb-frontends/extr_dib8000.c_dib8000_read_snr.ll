; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_read_snr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_read_snr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib8000_state* }
%struct.dib8000_state = type { %struct.dvb_frontend** }

@MAX_NUMBER_OF_FRONTENDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @dib8000_read_snr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_read_snr(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dib8000_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  store %struct.dib8000_state* %10, %struct.dib8000_state** %5, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %12 = call i32 @dib8000_get_snr(%struct.dvb_frontend* %11)
  store i32 %12, i32* %7, align 4
  store i64 1, i64* %6, align 8
  br label %13

13:                                               ; preds = %37, %2
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @MAX_NUMBER_OF_FRONTENDS, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %19 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %18, i32 0, i32 0
  %20 = load %struct.dvb_frontend**, %struct.dvb_frontend*** %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.dvb_frontend*, %struct.dvb_frontend** %20, i64 %21
  %23 = load %struct.dvb_frontend*, %struct.dvb_frontend** %22, align 8
  %24 = icmp ne %struct.dvb_frontend* %23, null
  br label %25

25:                                               ; preds = %17, %13
  %26 = phi i1 [ false, %13 ], [ %24, %17 ]
  br i1 %26, label %27, label %40

27:                                               ; preds = %25
  %28 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %29 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %28, i32 0, i32 0
  %30 = load %struct.dvb_frontend**, %struct.dvb_frontend*** %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds %struct.dvb_frontend*, %struct.dvb_frontend** %30, i64 %31
  %33 = load %struct.dvb_frontend*, %struct.dvb_frontend** %32, align 8
  %34 = call i32 @dib8000_get_snr(%struct.dvb_frontend* %33)
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %27
  %38 = load i64, i64* %6, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %6, align 8
  br label %13

40:                                               ; preds = %25
  %41 = load i32, i32* %7, align 4
  %42 = ashr i32 %41, 16
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = ashr i32 %45, 16
  %47 = call i32 @intlog10(i32 %46)
  %48 = mul nsw i32 10, %47
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = sdiv i32 %49, 1677721
  %51 = load i32*, i32** %4, align 8
  store i32 %50, i32* %51, align 4
  br label %54

52:                                               ; preds = %40
  %53 = load i32*, i32** %4, align 8
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %52, %44
  ret i32 0
}

declare dso_local i32 @dib8000_get_snr(%struct.dvb_frontend*) #1

declare dso_local i32 @intlog10(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
