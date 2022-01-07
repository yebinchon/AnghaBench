; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0070.c_dib0070_wbd_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0070.c_dib0070_wbd_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.dib0070_state* }
%struct.TYPE_4__ = type { i32 }
%struct.dib0070_state = type { i32, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.dib0070_wbd_gain_cfg* }
%struct.dib0070_wbd_gain_cfg = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dib0070_wbd_offset(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dib0070_state*, align 8
  %4 = alloca %struct.dib0070_wbd_gain_cfg*, align 8
  %5 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 1
  %8 = load %struct.dib0070_state*, %struct.dib0070_state** %7, align 8
  store %struct.dib0070_state* %8, %struct.dib0070_state** %3, align 8
  %9 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %10 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.dib0070_wbd_gain_cfg*, %struct.dib0070_wbd_gain_cfg** %12, align 8
  store %struct.dib0070_wbd_gain_cfg* %13, %struct.dib0070_wbd_gain_cfg** %4, align 8
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %15 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sdiv i32 %17, 1000
  store i32 %18, i32* %5, align 4
  %19 = load %struct.dib0070_wbd_gain_cfg*, %struct.dib0070_wbd_gain_cfg** %4, align 8
  %20 = icmp ne %struct.dib0070_wbd_gain_cfg* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %29, %21
  %23 = load i32, i32* %5, align 4
  %24 = sdiv i32 %23, 1000
  %25 = load %struct.dib0070_wbd_gain_cfg*, %struct.dib0070_wbd_gain_cfg** %4, align 8
  %26 = getelementptr inbounds %struct.dib0070_wbd_gain_cfg, %struct.dib0070_wbd_gain_cfg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct.dib0070_wbd_gain_cfg*, %struct.dib0070_wbd_gain_cfg** %4, align 8
  %31 = getelementptr inbounds %struct.dib0070_wbd_gain_cfg, %struct.dib0070_wbd_gain_cfg* %30, i32 1
  store %struct.dib0070_wbd_gain_cfg* %31, %struct.dib0070_wbd_gain_cfg** %4, align 8
  br label %22

32:                                               ; preds = %22
  %33 = load %struct.dib0070_wbd_gain_cfg*, %struct.dib0070_wbd_gain_cfg** %4, align 8
  %34 = getelementptr inbounds %struct.dib0070_wbd_gain_cfg, %struct.dib0070_wbd_gain_cfg* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %37 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  br label %41

38:                                               ; preds = %1
  %39 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %40 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %39, i32 0, i32 0
  store i32 6, i32* %40, align 8
  br label %41

41:                                               ; preds = %38, %32
  %42 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %43 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %46 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 6
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %44, i64 %49
  %51 = load i32, i32* %50, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
