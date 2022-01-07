; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_fw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_fw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib9000_state* }
%struct.dib9000_state = type { i32, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DIB9000_POWER_ALL = common dso_local global i32 0, align 4
@DIB9000_POWER_INTERFACE_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib9000_fw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib9000_fw_reset(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dib9000_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 0
  %7 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  store %struct.dib9000_state* %7, %struct.dib9000_state** %4, align 8
  %8 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %9 = call i32 @dib9000_write_word(%struct.dib9000_state* %8, i32 1817, i32 3)
  %10 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %11 = call i32 @dib9000_write_word(%struct.dib9000_state* %10, i32 1227, i32 1)
  %12 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %13 = call i32 @dib9000_write_word(%struct.dib9000_state* %12, i32 1227, i32 0)
  %14 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %15 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %14, i32 0, i32 3
  %16 = call i32 @dib9000_identify(i32* %15)
  %17 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %18 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  switch i32 %16, label %22 [
    i32 16387, label %19
    i32 16388, label %19
    i32 16389, label %19
  ]

19:                                               ; preds = %1, %1, %1
  %20 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %21 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  br label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %72

25:                                               ; preds = %19
  %26 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %27 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %26, i32 0, i32 2
  %28 = call i32 @dibx000_reset_i2c_master(i32* %27)
  %29 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %30 = load i32, i32* @DIB9000_POWER_ALL, align 4
  %31 = call i32 @dib9000_set_power_mode(%struct.dib9000_state* %29, i32 %30)
  %32 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %33 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %34 = call i32 @dib9000_read_word(%struct.dib9000_state* %33, i32 1794)
  %35 = and i32 %34, -3
  %36 = call i32 @dib9000_write_word(%struct.dib9000_state* %32, i32 1794, i32 %35)
  %37 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %38 = call i32 @dib9000_write_word(%struct.dib9000_state* %37, i32 1796, i32 0)
  %39 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %40 = call i32 @dib9000_write_word(%struct.dib9000_state* %39, i32 1805, i32 2053)
  %41 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %42 = call i32 @dib9000_write_word(%struct.dib9000_state* %41, i32 898, i32 65535)
  %43 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %44 = call i32 @dib9000_write_word(%struct.dib9000_state* %43, i32 899, i32 65535)
  %45 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %46 = call i32 @dib9000_write_word(%struct.dib9000_state* %45, i32 900, i32 1)
  %47 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %48 = call i32 @dib9000_write_word(%struct.dib9000_state* %47, i32 901, i32 65305)
  %49 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %50 = call i32 @dib9000_write_word(%struct.dib9000_state* %49, i32 902, i32 60)
  %51 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %52 = call i32 @dib9000_write_word(%struct.dib9000_state* %51, i32 898, i32 0)
  %53 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %54 = call i32 @dib9000_write_word(%struct.dib9000_state* %53, i32 899, i32 0)
  %55 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %56 = call i32 @dib9000_write_word(%struct.dib9000_state* %55, i32 900, i32 0)
  %57 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %58 = call i32 @dib9000_write_word(%struct.dib9000_state* %57, i32 901, i32 0)
  %59 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %60 = call i32 @dib9000_write_word(%struct.dib9000_state* %59, i32 902, i32 0)
  %61 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %62 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %63 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dib9000_write_word(%struct.dib9000_state* %61, i32 911, i32 %67)
  %69 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %70 = load i32, i32* @DIB9000_POWER_INTERFACE_ONLY, align 4
  %71 = call i32 @dib9000_set_power_mode(%struct.dib9000_state* %69, i32 %70)
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %25, %22
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @dib9000_write_word(%struct.dib9000_state*, i32, i32) #1

declare dso_local i32 @dib9000_identify(i32*) #1

declare dso_local i32 @dibx000_reset_i2c_master(i32*) #1

declare dso_local i32 @dib9000_set_power_mode(%struct.dib9000_state*, i32) #1

declare dso_local i32 @dib9000_read_word(%struct.dib9000_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
