; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_bcm3510.c_bcm3510_set_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_bcm3510.c_bcm3510_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.bcm3510_state*, %struct.dtv_frontend_properties }
%struct.bcm3510_state = type { i32, %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire }
%struct.bcm3510_hab_cmd_ext_acquire = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32 }
%struct.bcm3510_hab_cmd_bert_control = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@CMD_ACQUIRE = common dso_local global i32 0, align 4
@MSGID_EXT_TUNER_ACQUIRE = common dso_local global i32 0, align 4
@CMD_STATE_CONTROL = common dso_local global i32 0, align 4
@MSGID_BERT_CONTROL = common dso_local global i32 0, align 4
@MSGID_BERT_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @bcm3510_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm3510_set_frontend(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.bcm3510_state*, align 8
  %6 = alloca %struct.bcm3510_hab_cmd_ext_acquire, align 8
  %7 = alloca %struct.bcm3510_hab_cmd_bert_control, align 8
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 1
  store %struct.dtv_frontend_properties* %10, %struct.dtv_frontend_properties** %4, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.bcm3510_state*, %struct.bcm3510_state** %12, align 8
  store %struct.bcm3510_state* %13, %struct.bcm3510_state** %5, align 8
  %14 = call i32 @memset(%struct.bcm3510_hab_cmd_ext_acquire* %6, i32 0, i32 40)
  %15 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %16 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %46 [
    i32 132, label %18
    i32 130, label %25
    i32 128, label %32
    i32 129, label %39
  ]

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %6, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %6, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %6, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  br label %49

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %6, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 2, i32* %27, align 8
  %28 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %6, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 2, i32* %29, align 8
  %30 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %6, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  br label %49

32:                                               ; preds = %1
  %33 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %6, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 8, i32* %34, align 8
  %35 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %6, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %6, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i32 0, i32* %38, align 4
  br label %49

39:                                               ; preds = %1
  %40 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %6, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 9, i32* %41, align 8
  %42 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %6, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %6, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i32 0, i32* %45, align 4
  br label %49

46:                                               ; preds = %1
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %96

49:                                               ; preds = %39, %32, %25, %18
  %50 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %6, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 4
  store i64 0, i64* %51, align 8
  %52 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %6, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  %54 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %6, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  store i32 1, i32* %55, align 8
  %56 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %6, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  store i64 0, i64* %57, align 8
  %58 = load %struct.bcm3510_state*, %struct.bcm3510_state** %5, align 8
  %59 = load i32, i32* @CMD_ACQUIRE, align 4
  %60 = load i32, i32* @MSGID_EXT_TUNER_ACQUIRE, align 4
  %61 = bitcast %struct.bcm3510_hab_cmd_ext_acquire* %6 to i32*
  %62 = call i32 @bcm3510_do_hab_cmd(%struct.bcm3510_state* %58, i32 %59, i32 %60, i32* %61, i32 40, i32* null, i32 0)
  %63 = getelementptr inbounds %struct.bcm3510_hab_cmd_bert_control, %struct.bcm3510_hab_cmd_bert_control* %7, i32 0, i32 1
  store i64 0, i64* %63, align 8
  %64 = getelementptr inbounds %struct.bcm3510_hab_cmd_bert_control, %struct.bcm3510_hab_cmd_bert_control* %7, i32 0, i32 0
  store i64 0, i64* %64, align 8
  %65 = load %struct.bcm3510_state*, %struct.bcm3510_state** %5, align 8
  %66 = load i32, i32* @CMD_STATE_CONTROL, align 4
  %67 = load i32, i32* @MSGID_BERT_CONTROL, align 4
  %68 = bitcast %struct.bcm3510_hab_cmd_bert_control* %7 to i32*
  %69 = call i32 @bcm3510_do_hab_cmd(%struct.bcm3510_state* %65, i32 %66, i32 %67, i32* %68, i32 16, i32* null, i32 0)
  %70 = load %struct.bcm3510_state*, %struct.bcm3510_state** %5, align 8
  %71 = load i32, i32* @CMD_STATE_CONTROL, align 4
  %72 = load i32, i32* @MSGID_BERT_SET, align 4
  %73 = bitcast %struct.bcm3510_hab_cmd_bert_control* %7 to i32*
  %74 = call i32 @bcm3510_do_hab_cmd(%struct.bcm3510_state* %70, i32 %71, i32 %72, i32* %73, i32 16, i32* null, i32 0)
  %75 = load %struct.bcm3510_state*, %struct.bcm3510_state** %5, align 8
  %76 = call i32 @bcm3510_bert_reset(%struct.bcm3510_state* %75)
  %77 = load %struct.bcm3510_state*, %struct.bcm3510_state** %5, align 8
  %78 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %79 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @bcm3510_set_freq(%struct.bcm3510_state* %77, i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %49
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %2, align 4
  br label %96

86:                                               ; preds = %49
  %87 = load %struct.bcm3510_state*, %struct.bcm3510_state** %5, align 8
  %88 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %87, i32 0, i32 2
  %89 = call i32 @memset(%struct.bcm3510_hab_cmd_ext_acquire* %88, i32 0, i32 40)
  %90 = load %struct.bcm3510_state*, %struct.bcm3510_state** %5, align 8
  %91 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %90, i32 0, i32 1
  %92 = call i32 @memset(%struct.bcm3510_hab_cmd_ext_acquire* %91, i32 0, i32 40)
  %93 = load %struct.bcm3510_state*, %struct.bcm3510_state** %5, align 8
  %94 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %93, i32 0, i32 0
  store i32 500, i32* %94, align 8
  %95 = call i32 @msleep(i32 200)
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %86, %84, %46
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @memset(%struct.bcm3510_hab_cmd_ext_acquire*, i32, i32) #1

declare dso_local i32 @bcm3510_do_hab_cmd(%struct.bcm3510_state*, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @bcm3510_bert_reset(%struct.bcm3510_state*) #1

declare dso_local i32 @bcm3510_set_freq(%struct.bcm3510_state*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
