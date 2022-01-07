; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3305.c_lgdt3305_set_modulation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3305.c_lgdt3305_set_modulation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgdt3305_state = type { i32 }
%struct.dtv_frontend_properties = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@LGDT3305_GEN_CTRL_1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgdt3305_state*, %struct.dtv_frontend_properties*)* @lgdt3305_set_modulation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt3305_set_modulation(%struct.lgdt3305_state* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lgdt3305_state*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lgdt3305_state* %0, %struct.lgdt3305_state** %4, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %5, align 8
  %8 = call i32 @lg_dbg(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %10 = load i32, i32* @LGDT3305_GEN_CTRL_1, align 4
  %11 = call i32 @lgdt3305_read_reg(%struct.lgdt3305_state* %9, i32 %10, i32* %6)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @lg_fail(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %38

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, -4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %20 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %30 [
    i32 128, label %22
    i32 129, label %25
    i32 130, label %27
  ]

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %23, 3
  store i32 %24, i32* %6, align 4
  br label %33

25:                                               ; preds = %16
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %6, align 4
  br label %33

27:                                               ; preds = %16
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %33

30:                                               ; preds = %16
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %40

33:                                               ; preds = %27, %25, %22
  %34 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %35 = load i32, i32* @LGDT3305_GEN_CTRL_1, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %34, i32 %35, i32 %36)
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %33, %15
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %30
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @lg_dbg(i8*) #1

declare dso_local i32 @lgdt3305_read_reg(%struct.lgdt3305_state*, i32, i32*) #1

declare dso_local i64 @lg_fail(i32) #1

declare dso_local i32 @lgdt3305_write_reg(%struct.lgdt3305_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
