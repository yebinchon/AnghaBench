; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3305.c_lgdt3305_agc_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3305.c_lgdt3305_agc_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgdt3305_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dtv_frontend_properties = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"lockdten = %d, acqen = %d\0A\00", align 1
@LGDT3305_AGC_CTRL_4 = common dso_local global i32 0, align 4
@LGDT3305_AGC_CTRL_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgdt3305_state*, %struct.dtv_frontend_properties*)* @lgdt3305_agc_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt3305_agc_setup(%struct.lgdt3305_state* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lgdt3305_state*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lgdt3305_state* %0, %struct.lgdt3305_state** %4, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %5, align 8
  %8 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %9 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %13 [
    i32 128, label %11
    i32 129, label %12
    i32 130, label %12
  ]

11:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %16

12:                                               ; preds = %2, %2
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %52

16:                                               ; preds = %12, %11
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @lg_dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %21 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %45 [
    i32 132, label %25
    i32 131, label %34
  ]

25:                                               ; preds = %16
  %26 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = shl i32 %27, 1
  %29 = or i32 225, %28
  %30 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %26, i32 788, i32 %29)
  %31 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @lgdt3305_set_reg_bit(%struct.lgdt3305_state* %31, i32 782, i32 2, i32 %32)
  br label %48

34:                                               ; preds = %16
  %35 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %36 = load i32, i32* @LGDT3305_AGC_CTRL_4, align 4
  %37 = load i32, i32* %6, align 4
  %38 = shl i32 %37, 1
  %39 = or i32 225, %38
  %40 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %35, i32 %36, i32 %39)
  %41 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %42 = load i32, i32* @LGDT3305_AGC_CTRL_1, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @lgdt3305_set_reg_bit(%struct.lgdt3305_state* %41, i32 %42, i32 2, i32 %43)
  br label %48

45:                                               ; preds = %16
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %52

48:                                               ; preds = %34, %25
  %49 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %50 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %51 = call i32 @lgdt3305_rfagc_loop(%struct.lgdt3305_state* %49, %struct.dtv_frontend_properties* %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %48, %45, %13
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @lg_dbg(i8*, i32, i32) #1

declare dso_local i32 @lgdt3305_write_reg(%struct.lgdt3305_state*, i32, i32) #1

declare dso_local i32 @lgdt3305_set_reg_bit(%struct.lgdt3305_state*, i32, i32, i32) #1

declare dso_local i32 @lgdt3305_rfagc_loop(%struct.lgdt3305_state*, %struct.dtv_frontend_properties*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
