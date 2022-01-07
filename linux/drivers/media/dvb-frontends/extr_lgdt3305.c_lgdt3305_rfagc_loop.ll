; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3305.c_lgdt3305_rfagc_loop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3305.c_lgdt3305_rfagc_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgdt3305_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.dtv_frontend_properties = type { i32 }

@LGDT3304 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"agcdelay: 0x%04x, rfbw: 0x%04x\0A\00", align 1
@LGDT3305_AGC_DELAY_PT_1 = common dso_local global i32 0, align 4
@LGDT3305_AGC_DELAY_PT_2 = common dso_local global i32 0, align 4
@LGDT3305_RFAGC_LOOP_FLTR_BW_1 = common dso_local global i32 0, align 4
@LGDT3305_RFAGC_LOOP_FLTR_BW_2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"ifbw: 0x%04x\0A\00", align 1
@LGDT3305_IFBW_1 = common dso_local global i32 0, align 4
@LGDT3305_IFBW_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgdt3305_state*, %struct.dtv_frontend_properties*)* @lgdt3305_rfagc_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt3305_rfagc_loop(%struct.lgdt3305_state* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lgdt3305_state*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lgdt3305_state* %0, %struct.lgdt3305_state** %4, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %5, align 8
  %9 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %10 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %24 [
    i32 128, label %12
    i32 129, label %13
    i32 130, label %13
  ]

12:                                               ; preds = %2
  store i32 1216, i32* %8, align 4
  store i32 32768, i32* %7, align 4
  store i32 32768, i32* %6, align 4
  br label %27

13:                                               ; preds = %2, %2
  store i32 1131, i32* %8, align 4
  store i32 34953, i32* %7, align 4
  %14 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %15 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @LGDT3304, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i32 26214, i32* %6, align 4
  br label %23

22:                                               ; preds = %13
  store i32 34952, i32* %6, align 4
  br label %23

23:                                               ; preds = %22, %21
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %72

27:                                               ; preds = %23, %12
  %28 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %29 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %27
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 (i8*, i32, ...) @lg_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %39 = load i32, i32* @LGDT3305_AGC_DELAY_PT_1, align 4
  %40 = load i32, i32* %8, align 4
  %41 = ashr i32 %40, 8
  %42 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %38, i32 %39, i32 %41)
  %43 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %44 = load i32, i32* @LGDT3305_AGC_DELAY_PT_2, align 4
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, 255
  %47 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %43, i32 %44, i32 %46)
  %48 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %49 = load i32, i32* @LGDT3305_RFAGC_LOOP_FLTR_BW_1, align 4
  %50 = load i32, i32* %7, align 4
  %51 = ashr i32 %50, 8
  %52 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %48, i32 %49, i32 %51)
  %53 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %54 = load i32, i32* @LGDT3305_RFAGC_LOOP_FLTR_BW_2, align 4
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, 255
  %57 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %53, i32 %54, i32 %56)
  br label %71

58:                                               ; preds = %27
  %59 = load i32, i32* %6, align 4
  %60 = call i32 (i8*, i32, ...) @lg_dbg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %62 = load i32, i32* @LGDT3305_IFBW_1, align 4
  %63 = load i32, i32* %6, align 4
  %64 = ashr i32 %63, 8
  %65 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %61, i32 %62, i32 %64)
  %66 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %67 = load i32, i32* @LGDT3305_IFBW_2, align 4
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %68, 255
  %70 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %66, i32 %67, i32 %69)
  br label %71

71:                                               ; preds = %58, %34
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %24
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @lg_dbg(i8*, i32, ...) #1

declare dso_local i32 @lgdt3305_write_reg(%struct.lgdt3305_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
