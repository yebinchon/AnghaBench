; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_fw_set_output_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_fw_set_output_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib9000_state* }
%struct.dib9000_state = type { %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"setting output mode for demod %p to %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Unhandled output_mode passed to be set for demod %p\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OUT_MSG_SET_OUTPUT_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @dib9000_fw_set_output_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib9000_fw_set_output_mode(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dib9000_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.dib9000_state*, %struct.dib9000_state** %10, align 8
  store %struct.dib9000_state* %11, %struct.dib9000_state** %6, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 (i8*, %struct.dvb_frontend*, ...) @dprintk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.dvb_frontend* %12, i32 %13)
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %22 [
    i32 129, label %16
    i32 130, label %17
    i32 128, label %18
    i32 133, label %19
    i32 131, label %20
    i32 132, label %21
  ]

16:                                               ; preds = %2
  store i32 1024, i32* %7, align 4
  br label %31

17:                                               ; preds = %2
  store i32 1088, i32* %7, align 4
  br label %31

18:                                               ; preds = %2
  store i32 1152, i32* %7, align 4
  br label %31

19:                                               ; preds = %2
  store i32 1280, i32* %7, align 4
  br label %31

20:                                               ; preds = %2
  store i32 1344, i32* %7, align 4
  br label %31

21:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %31

22:                                               ; preds = %2
  %23 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %24 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = bitcast i32* %26 to %struct.dvb_frontend*
  %28 = call i32 (i8*, %struct.dvb_frontend*, ...) @dprintk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), %struct.dvb_frontend* %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %61

31:                                               ; preds = %21, %20, %19, %18, %17, %16
  %32 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @dib9000_write_word(%struct.dib9000_state* %32, i32 1795, i32 %33)
  %35 = load i32, i32* %5, align 4
  switch i32 %35, label %55 [
    i32 129, label %36
    i32 130, label %36
    i32 128, label %36
    i32 131, label %36
  ]

36:                                               ; preds = %31, %31, %31, %31
  %37 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %38 = call i32 @dib9000_read_word(%struct.dib9000_state* %37, i32 295)
  %39 = and i32 %38, 16
  %40 = or i32 %39, 2
  store i32 %40, i32* %8, align 4
  %41 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %42 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %36
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, 32
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %48, %36
  %52 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @dib9000_write_word(%struct.dib9000_state* %52, i32 295, i32 %53)
  br label %55

55:                                               ; preds = %31, %51
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @to_fw_output_mode(i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %59 = load i32, i32* @OUT_MSG_SET_OUTPUT_MODE, align 4
  %60 = call i32 @dib9000_mbx_send(%struct.dib9000_state* %58, i32 %59, i32* %7, i32 1)
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %55, %22
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @dprintk(i8*, %struct.dvb_frontend*, ...) #1

declare dso_local i32 @dib9000_write_word(%struct.dib9000_state*, i32, i32) #1

declare dso_local i32 @dib9000_read_word(%struct.dib9000_state*, i32) #1

declare dso_local i32 @to_fw_output_mode(i32) #1

declare dso_local i32 @dib9000_mbx_send(%struct.dib9000_state*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
