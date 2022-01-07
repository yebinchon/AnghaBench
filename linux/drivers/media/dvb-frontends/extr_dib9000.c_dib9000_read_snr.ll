; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_read_snr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_read_snr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib9000_state* }
%struct.dib9000_state = type { i32, %struct.dvb_frontend** }

@.str = private unnamed_addr constant [24 x i8] c"could not get the lock\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@MAX_NUMBER_OF_FRONTENDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @dib9000_read_snr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib9000_read_snr(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dib9000_state*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.dib9000_state*, %struct.dib9000_state** %10, align 8
  store %struct.dib9000_state* %11, %struct.dib9000_state** %6, align 8
  %12 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %13 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %12, i32 0, i32 0
  %14 = call i64 @mutex_lock_interruptible(i32* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINTR, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %68

20:                                               ; preds = %2
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %22 = call i32 @dib9000_get_snr(%struct.dvb_frontend* %21)
  store i32 %22, i32* %8, align 4
  store i64 1, i64* %7, align 8
  br label %23

23:                                               ; preds = %47, %20
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @MAX_NUMBER_OF_FRONTENDS, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %29 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %28, i32 0, i32 1
  %30 = load %struct.dvb_frontend**, %struct.dvb_frontend*** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds %struct.dvb_frontend*, %struct.dvb_frontend** %30, i64 %31
  %33 = load %struct.dvb_frontend*, %struct.dvb_frontend** %32, align 8
  %34 = icmp ne %struct.dvb_frontend* %33, null
  br label %35

35:                                               ; preds = %27, %23
  %36 = phi i1 [ false, %23 ], [ %34, %27 ]
  br i1 %36, label %37, label %50

37:                                               ; preds = %35
  %38 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %39 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %38, i32 0, i32 1
  %40 = load %struct.dvb_frontend**, %struct.dvb_frontend*** %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds %struct.dvb_frontend*, %struct.dvb_frontend** %40, i64 %41
  %43 = load %struct.dvb_frontend*, %struct.dvb_frontend** %42, align 8
  %44 = call i32 @dib9000_get_snr(%struct.dvb_frontend* %43)
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %37
  %48 = load i64, i64* %7, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %7, align 8
  br label %23

50:                                               ; preds = %35
  %51 = load i32, i32* %8, align 4
  %52 = ashr i32 %51, 16
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  %56 = ashr i32 %55, 16
  %57 = call i32 @intlog10(i32 %56)
  %58 = mul nsw i32 10, %57
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = sdiv i32 %59, 1677721
  %61 = load i32*, i32** %5, align 8
  store i32 %60, i32* %61, align 4
  br label %64

62:                                               ; preds = %50
  %63 = load i32*, i32** %5, align 8
  store i32 0, i32* %63, align 4
  br label %64

64:                                               ; preds = %62, %54
  %65 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %66 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %16
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @dib9000_get_snr(%struct.dvb_frontend*) #1

declare dso_local i32 @intlog10(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
