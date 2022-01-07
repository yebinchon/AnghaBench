; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_lgdt3306a_set_modulation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_lgdt3306a_set_modulation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgdt3306a_state = type { i32 }
%struct.dtv_frontend_properties = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgdt3306a_state*, %struct.dtv_frontend_properties*)* @lgdt3306a_set_modulation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt3306a_set_modulation(%struct.lgdt3306a_state* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lgdt3306a_state*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca i32, align 4
  store %struct.lgdt3306a_state* %0, %struct.lgdt3306a_state** %4, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %5, align 8
  %7 = call i32 @dbg_info(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %9 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %20 [
    i32 128, label %11
    i32 130, label %14
    i32 131, label %14
    i32 129, label %14
  ]

11:                                               ; preds = %2
  %12 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %4, align 8
  %13 = call i32 @lgdt3306a_set_vsb(%struct.lgdt3306a_state* %12)
  store i32 %13, i32* %6, align 4
  br label %23

14:                                               ; preds = %2, %2, %2
  %15 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %4, align 8
  %16 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %17 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @lgdt3306a_set_qam(%struct.lgdt3306a_state* %15, i32 %18)
  store i32 %19, i32* %6, align 4
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %36

23:                                               ; preds = %14, %11
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @lg_chkerr(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %34

28:                                               ; preds = %23
  %29 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %30 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %4, align 8
  %33 = getelementptr inbounds %struct.lgdt3306a_state, %struct.lgdt3306a_state* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %28, %27
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %20
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @dbg_info(i8*) #1

declare dso_local i32 @lgdt3306a_set_vsb(%struct.lgdt3306a_state*) #1

declare dso_local i32 @lgdt3306a_set_qam(%struct.lgdt3306a_state*, i32) #1

declare dso_local i64 @lg_chkerr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
