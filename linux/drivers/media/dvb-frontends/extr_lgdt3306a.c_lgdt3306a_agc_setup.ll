; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_lgdt3306a_agc_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_lgdt3306a_agc_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgdt3306a_state = type { i32 }
%struct.dtv_frontend_properties = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgdt3306a_state*, %struct.dtv_frontend_properties*)* @lgdt3306a_agc_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt3306a_agc_setup(%struct.lgdt3306a_state* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lgdt3306a_state*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  store %struct.lgdt3306a_state* %0, %struct.lgdt3306a_state** %4, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %5, align 8
  %6 = call i32 @dbg_info(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %8 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %12 [
    i32 128, label %10
    i32 130, label %11
    i32 131, label %11
    i32 129, label %11
  ]

10:                                               ; preds = %2
  br label %15

11:                                               ; preds = %2, %2, %2
  br label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %16

15:                                               ; preds = %11, %10
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %15, %12
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i32 @dbg_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
