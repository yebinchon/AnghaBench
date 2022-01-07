; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3305.c_lgdt3305_set_agc_power_ref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3305.c_lgdt3305_set_agc_power_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgdt3305_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.dtv_frontend_properties = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"set manual mode: 0x%04x\0A\00", align 1
@LGDT3305_AGC_CTRL_1 = common dso_local global i32 0, align 4
@LGDT3305_AGC_POWER_REF_1 = common dso_local global i32 0, align 4
@LGDT3305_AGC_POWER_REF_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgdt3305_state*, %struct.dtv_frontend_properties*)* @lgdt3305_set_agc_power_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt3305_set_agc_power_ref(%struct.lgdt3305_state* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lgdt3305_state*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca i32, align 4
  store %struct.lgdt3305_state* %0, %struct.lgdt3305_state** %4, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %8 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %52 [
    i32 128, label %10
    i32 129, label %24
    i32 130, label %38
  ]

10:                                               ; preds = %2
  %11 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %12 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  %18 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %19 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %17, %10
  br label %55

24:                                               ; preds = %2
  %25 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %26 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %33 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %31, %24
  br label %55

38:                                               ; preds = %2
  %39 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %40 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %47 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %45, %38
  br label %55

52:                                               ; preds = %2
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %77

55:                                               ; preds = %51, %37, %23
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @lg_dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %62 = load i32, i32* @LGDT3305_AGC_CTRL_1, align 4
  %63 = call i32 @lgdt3305_set_reg_bit(%struct.lgdt3305_state* %61, i32 %62, i32 3, i32 1)
  %64 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %65 = load i32, i32* @LGDT3305_AGC_POWER_REF_1, align 4
  %66 = load i32, i32* %6, align 4
  %67 = ashr i32 %66, 8
  %68 = and i32 255, %67
  %69 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %64, i32 %65, i32 %68)
  %70 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %71 = load i32, i32* @LGDT3305_AGC_POWER_REF_2, align 4
  %72 = load i32, i32* %6, align 4
  %73 = ashr i32 %72, 0
  %74 = and i32 255, %73
  %75 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %70, i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %58, %55
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %52
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @lg_dbg(i8*, i32) #1

declare dso_local i32 @lgdt3305_set_reg_bit(%struct.lgdt3305_state*, i32, i32, i32) #1

declare dso_local i32 @lgdt3305_write_reg(%struct.lgdt3305_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
