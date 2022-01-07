; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_s5h1409.c_s5h1409_set_qam_interleave_mode_legacy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_s5h1409.c_s5h1409_set_qam_interleave_mode_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.s5h1409_state* }
%struct.s5h1409_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*)* @s5h1409_set_qam_interleave_mode_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5h1409_set_qam_interleave_mode_legacy(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.s5h1409_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.s5h1409_state*, %struct.s5h1409_state** %8, align 8
  store %struct.s5h1409_state* %9, %struct.s5h1409_state** %3, align 8
  %10 = load %struct.s5h1409_state*, %struct.s5h1409_state** %3, align 8
  %11 = call i32 @s5h1409_readreg(%struct.s5h1409_state* %10, i32 241)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = ashr i32 %12, 15
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %1
  %17 = load %struct.s5h1409_state*, %struct.s5h1409_state** %3, align 8
  %18 = getelementptr inbounds %struct.s5h1409_state, %struct.s5h1409_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 2
  br i1 %20, label %21, label %43

21:                                               ; preds = %16
  %22 = load %struct.s5h1409_state*, %struct.s5h1409_state** %3, align 8
  %23 = getelementptr inbounds %struct.s5h1409_state, %struct.s5h1409_state* %22, i32 0, i32 0
  store i32 2, i32* %23, align 4
  %24 = load %struct.s5h1409_state*, %struct.s5h1409_state** %3, align 8
  %25 = call i32 @s5h1409_readreg(%struct.s5h1409_state* %24, i32 178)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.s5h1409_state*, %struct.s5h1409_state** %3, align 8
  %27 = call i32 @s5h1409_readreg(%struct.s5h1409_state* %26, i32 173)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.s5h1409_state*, %struct.s5h1409_state** %3, align 8
  %29 = call i32 @s5h1409_writereg(%struct.s5h1409_state* %28, i32 150, i32 32)
  %30 = load %struct.s5h1409_state*, %struct.s5h1409_state** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, 61440
  %33 = ashr i32 %32, 4
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 61695
  %36 = or i32 %33, %35
  %37 = call i32 @s5h1409_writereg(%struct.s5h1409_state* %30, i32 173, i32 %36)
  %38 = load %struct.s5h1409_state*, %struct.s5h1409_state** %3, align 8
  %39 = load %struct.s5h1409_state*, %struct.s5h1409_state** %3, align 8
  %40 = call i32 @s5h1409_readreg(%struct.s5h1409_state* %39, i32 171)
  %41 = and i32 %40, 61438
  %42 = call i32 @s5h1409_writereg(%struct.s5h1409_state* %38, i32 171, i32 %41)
  br label %43

43:                                               ; preds = %21, %16
  br label %60

44:                                               ; preds = %1
  %45 = load %struct.s5h1409_state*, %struct.s5h1409_state** %3, align 8
  %46 = getelementptr inbounds %struct.s5h1409_state, %struct.s5h1409_state* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 1
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load %struct.s5h1409_state*, %struct.s5h1409_state** %3, align 8
  %51 = getelementptr inbounds %struct.s5h1409_state, %struct.s5h1409_state* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  %52 = load %struct.s5h1409_state*, %struct.s5h1409_state** %3, align 8
  %53 = call i32 @s5h1409_writereg(%struct.s5h1409_state* %52, i32 150, i32 8)
  %54 = load %struct.s5h1409_state*, %struct.s5h1409_state** %3, align 8
  %55 = load %struct.s5h1409_state*, %struct.s5h1409_state** %3, align 8
  %56 = call i32 @s5h1409_readreg(%struct.s5h1409_state* %55, i32 171)
  %57 = or i32 %56, 4097
  %58 = call i32 @s5h1409_writereg(%struct.s5h1409_state* %54, i32 171, i32 %57)
  br label %59

59:                                               ; preds = %49, %44
  br label %60

60:                                               ; preds = %59, %43
  ret void
}

declare dso_local i32 @s5h1409_readreg(%struct.s5h1409_state*, i32) #1

declare dso_local i32 @s5h1409_writereg(%struct.s5h1409_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
