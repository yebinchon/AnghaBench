; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3305.c_lgdt3305_spectral_inversion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3305.c_lgdt3305_spectral_inversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgdt3305_state = type { i32 }
%struct.dtv_frontend_properties = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"(%d)\0A\00", align 1
@LGDT3305_CR_CTRL_7 = common dso_local global i32 0, align 4
@LGDT3305_FEC_BLOCK_CTRL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgdt3305_state*, %struct.dtv_frontend_properties*, i32)* @lgdt3305_spectral_inversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt3305_spectral_inversion(%struct.lgdt3305_state* %0, %struct.dtv_frontend_properties* %1, i32 %2) #0 {
  %4 = alloca %struct.lgdt3305_state*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lgdt3305_state* %0, %struct.lgdt3305_state** %4, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @lg_dbg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %11 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %29 [
    i32 128, label %13
    i32 129, label %21
    i32 130, label %21
  ]

13:                                               ; preds = %3
  %14 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %15 = load i32, i32* @LGDT3305_CR_CTRL_7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 249, i32 121
  %20 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %14, i32 %15, i32 %19)
  store i32 %20, i32* %7, align 4
  br label %32

21:                                               ; preds = %3, %3
  %22 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %23 = load i32, i32* @LGDT3305_FEC_BLOCK_CTRL, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 253, i32 255
  %28 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %22, i32 %23, i32 %27)
  store i32 %28, i32* %7, align 4
  br label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %29, %21, %13
  %33 = load i32, i32* %7, align 4
  ret i32 %33
}

declare dso_local i32 @lg_dbg(i8*, i32) #1

declare dso_local i32 @lgdt3305_write_reg(%struct.lgdt3305_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
