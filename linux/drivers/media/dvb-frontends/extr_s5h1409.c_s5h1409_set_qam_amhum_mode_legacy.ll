; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_s5h1409.c_s5h1409_set_qam_amhum_mode_legacy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_s5h1409.c_s5h1409_set_qam_amhum_mode_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.s5h1409_state* }
%struct.s5h1409_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*)* @s5h1409_set_qam_amhum_mode_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5h1409_set_qam_amhum_mode_legacy(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.s5h1409_state*, align 8
  %4 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 0
  %7 = load %struct.s5h1409_state*, %struct.s5h1409_state** %6, align 8
  store %struct.s5h1409_state* %7, %struct.s5h1409_state** %3, align 8
  %8 = load %struct.s5h1409_state*, %struct.s5h1409_state** %3, align 8
  %9 = getelementptr inbounds %struct.s5h1409_state, %struct.s5h1409_state* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %50

13:                                               ; preds = %1
  %14 = load %struct.s5h1409_state*, %struct.s5h1409_state** %3, align 8
  %15 = call i32 @s5h1409_readreg(%struct.s5h1409_state* %14, i32 240)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = ashr i32 %16, 13
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %13
  %21 = load %struct.s5h1409_state*, %struct.s5h1409_state** %3, align 8
  %22 = getelementptr inbounds %struct.s5h1409_state, %struct.s5h1409_state* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, 255
  store i32 %24, i32* %4, align 4
  %25 = load %struct.s5h1409_state*, %struct.s5h1409_state** %3, align 8
  %26 = call i32 @s5h1409_writereg(%struct.s5h1409_state* %25, i32 150, i32 12)
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 56
  br i1 %28, label %32, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %4, align 4
  %31 = icmp sgt i32 %30, 104
  br i1 %31, label %32, label %37

32:                                               ; preds = %29, %20
  %33 = load %struct.s5h1409_state*, %struct.s5h1409_state** %3, align 8
  %34 = call i32 @s5h1409_writereg(%struct.s5h1409_state* %33, i32 147, i32 13106)
  %35 = load %struct.s5h1409_state*, %struct.s5h1409_state** %3, align 8
  %36 = call i32 @s5h1409_writereg(%struct.s5h1409_state* %35, i32 158, i32 11319)
  br label %42

37:                                               ; preds = %29
  %38 = load %struct.s5h1409_state*, %struct.s5h1409_state** %3, align 8
  %39 = call i32 @s5h1409_writereg(%struct.s5h1409_state* %38, i32 147, i32 12592)
  %40 = load %struct.s5h1409_state*, %struct.s5h1409_state** %3, align 8
  %41 = call i32 @s5h1409_writereg(%struct.s5h1409_state* %40, i32 158, i32 10294)
  br label %42

42:                                               ; preds = %37, %32
  br label %50

43:                                               ; preds = %13
  %44 = load %struct.s5h1409_state*, %struct.s5h1409_state** %3, align 8
  %45 = call i32 @s5h1409_writereg(%struct.s5h1409_state* %44, i32 150, i32 8)
  %46 = load %struct.s5h1409_state*, %struct.s5h1409_state** %3, align 8
  %47 = call i32 @s5h1409_writereg(%struct.s5h1409_state* %46, i32 147, i32 13106)
  %48 = load %struct.s5h1409_state*, %struct.s5h1409_state** %3, align 8
  %49 = call i32 @s5h1409_writereg(%struct.s5h1409_state* %48, i32 158, i32 11319)
  br label %50

50:                                               ; preds = %12, %43, %42
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
