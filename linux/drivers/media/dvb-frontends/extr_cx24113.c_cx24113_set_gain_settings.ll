; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24113.c_cx24113_set_gain_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24113.c_cx24113_set_gain_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx24113_state = type { i64, i64 }

@.str = private unnamed_addr constant [52 x i8] c"power estimation: %d, thres: %d, gain_level: %d/%d\0A\00", align 1
@RFVGA_0 = common dso_local global i32 0, align 4
@VGA_7 = common dso_local global i32 0, align 4
@RFVGA_2 = common dso_local global i32 0, align 4
@VGA_6 = common dso_local global i32 0, align 4
@VGA_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx24113_state*, i64)* @cx24113_set_gain_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24113_set_gain_settings(%struct.cx24113_state* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx24113_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.cx24113_state* %0, %struct.cx24113_state** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.cx24113_state*, %struct.cx24113_state** %4, align 8
  %11 = call i32 @cx24113_readreg(%struct.cx24113_state* %10, i32 29)
  %12 = and i32 %11, 240
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %6, align 8
  %14 = load %struct.cx24113_state*, %struct.cx24113_state** %4, align 8
  %15 = call i32 @cx24113_readreg(%struct.cx24113_state* %14, i32 31)
  %16 = and i32 %15, 63
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %7, align 8
  %18 = load %struct.cx24113_state*, %struct.cx24113_state** %4, align 8
  %19 = call i32 @cx24113_readreg(%struct.cx24113_state* %18, i32 32)
  %20 = and i32 %19, 243
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.cx24113_state*, %struct.cx24113_state** %4, align 8
  %24 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %22, %25
  %27 = zext i1 %26 to i32
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.cx24113_state*, %struct.cx24113_state** %4, align 8
  %31 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.cx24113_state*, %struct.cx24113_state** %4, align 8
  %34 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @dprintk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %29, i64 %32, i64 %35, i64 %36)
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.cx24113_state*, %struct.cx24113_state** %4, align 8
  %40 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %88

44:                                               ; preds = %2
  %45 = load i64, i64* %6, align 8
  %46 = or i64 %45, 15
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %9, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %44
  %50 = load i32, i32* @RFVGA_0, align 4
  %51 = shl i32 %50, 2
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %8, align 8
  %54 = or i64 %53, %52
  store i64 %54, i64* %8, align 8
  %55 = load i32, i32* @VGA_7, align 4
  %56 = shl i32 %55, 3
  %57 = load i32, i32* @VGA_7, align 4
  %58 = or i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %7, align 8
  %61 = or i64 %60, %59
  store i64 %61, i64* %7, align 8
  br label %75

62:                                               ; preds = %44
  %63 = load i32, i32* @RFVGA_2, align 4
  %64 = shl i32 %63, 2
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %8, align 8
  %67 = or i64 %66, %65
  store i64 %67, i64* %8, align 8
  %68 = load i32, i32* @VGA_6, align 4
  %69 = shl i32 %68, 3
  %70 = load i32, i32* @VGA_2, align 4
  %71 = or i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* %7, align 8
  %74 = or i64 %73, %72
  store i64 %74, i64* %7, align 8
  br label %75

75:                                               ; preds = %62, %49
  %76 = load i64, i64* %9, align 8
  %77 = load %struct.cx24113_state*, %struct.cx24113_state** %4, align 8
  %78 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load %struct.cx24113_state*, %struct.cx24113_state** %4, align 8
  %80 = load i64, i64* %6, align 8
  %81 = call i32 @cx24113_writereg(%struct.cx24113_state* %79, i32 29, i64 %80)
  %82 = load %struct.cx24113_state*, %struct.cx24113_state** %4, align 8
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @cx24113_writereg(%struct.cx24113_state* %82, i32 31, i64 %83)
  %85 = load %struct.cx24113_state*, %struct.cx24113_state** %4, align 8
  %86 = load i64, i64* %8, align 8
  %87 = call i32 @cx24113_writereg(%struct.cx24113_state* %85, i32 32, i64 %86)
  store i32 1, i32* %3, align 4
  br label %88

88:                                               ; preds = %75, %43
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @cx24113_readreg(%struct.cx24113_state*, i32) #1

declare dso_local i32 @dprintk(i8*, i64, i64, i64, i64) #1

declare dso_local i32 @cx24113_writereg(%struct.cx24113_state*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
