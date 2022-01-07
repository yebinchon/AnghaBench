; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_l64781.c_l64781_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_l64781.c_l64781_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.l64781_state* }
%struct.l64781_state = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @l64781_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l64781_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.l64781_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %5 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %4, i32 0, i32 0
  %6 = load %struct.l64781_state*, %struct.l64781_state** %5, align 8
  store %struct.l64781_state* %6, %struct.l64781_state** %3, align 8
  %7 = load %struct.l64781_state*, %struct.l64781_state** %3, align 8
  %8 = call i32 @reset_and_configure(%struct.l64781_state* %7)
  %9 = load %struct.l64781_state*, %struct.l64781_state** %3, align 8
  %10 = call i32 @l64781_writereg(%struct.l64781_state* %9, i32 62, i32 165)
  %11 = load %struct.l64781_state*, %struct.l64781_state** %3, align 8
  %12 = call i32 @l64781_writereg(%struct.l64781_state* %11, i32 42, i32 4)
  %13 = load %struct.l64781_state*, %struct.l64781_state** %3, align 8
  %14 = call i32 @l64781_writereg(%struct.l64781_state* %13, i32 42, i32 0)
  %15 = load %struct.l64781_state*, %struct.l64781_state** %3, align 8
  %16 = call i32 @l64781_writereg(%struct.l64781_state* %15, i32 7, i32 142)
  %17 = load %struct.l64781_state*, %struct.l64781_state** %3, align 8
  %18 = call i32 @l64781_writereg(%struct.l64781_state* %17, i32 11, i32 129)
  %19 = load %struct.l64781_state*, %struct.l64781_state** %3, align 8
  %20 = call i32 @l64781_writereg(%struct.l64781_state* %19, i32 12, i32 132)
  %21 = load %struct.l64781_state*, %struct.l64781_state** %3, align 8
  %22 = call i32 @l64781_writereg(%struct.l64781_state* %21, i32 13, i32 140)
  %23 = load %struct.l64781_state*, %struct.l64781_state** %3, align 8
  %24 = call i32 @l64781_writereg(%struct.l64781_state* %23, i32 30, i32 9)
  %25 = load %struct.l64781_state*, %struct.l64781_state** %3, align 8
  %26 = getelementptr inbounds %struct.l64781_state, %struct.l64781_state* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load %struct.l64781_state*, %struct.l64781_state** %3, align 8
  %31 = getelementptr inbounds %struct.l64781_state, %struct.l64781_state* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = call i32 @msleep(i32 200)
  br label %33

33:                                               ; preds = %29, %1
  ret i32 0
}

declare dso_local i32 @reset_and_configure(%struct.l64781_state*) #1

declare dso_local i32 @l64781_writereg(%struct.l64781_state*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
