; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3305.c_lgdt3305_set_if.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3305.c_lgdt3305_set_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgdt3305_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dtv_frontend_properties = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@LGDT3305_CR_CTR_FREQ_1 = common dso_local global i32 0, align 4
@LGDT3305_CR_CTR_FREQ_2 = common dso_local global i32 0, align 4
@LGDT3305_CR_CTR_FREQ_3 = common dso_local global i32 0, align 4
@LGDT3305_CR_CTR_FREQ_4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%d KHz -> [%02x%02x%02x%02x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgdt3305_state*, %struct.dtv_frontend_properties*)* @lgdt3305_set_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt3305_set_if(%struct.lgdt3305_state* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lgdt3305_state*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.lgdt3305_state* %0, %struct.lgdt3305_state** %4, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %5, align 8
  %12 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %13 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %27 [
    i32 128, label %15
    i32 129, label %21
    i32 130, label %21
  ]

15:                                               ; preds = %2
  %16 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %17 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  br label %30

21:                                               ; preds = %2, %2
  %22 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %23 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  br label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %85

30:                                               ; preds = %21, %15
  %31 = load i32, i32* %6, align 4
  %32 = sdiv i32 %31, 10
  store i32 %32, i32* %11, align 4
  %33 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %34 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %46 [
    i32 128, label %36
    i32 129, label %41
    i32 130, label %41
  ]

36:                                               ; preds = %30
  %37 = load i32, i32* %11, align 4
  %38 = shl i32 %37, 24
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @do_div(i32 %39, i32 625)
  br label %49

41:                                               ; preds = %30, %30
  %42 = load i32, i32* %11, align 4
  %43 = shl i32 %42, 28
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @do_div(i32 %44, i32 625)
  br label %49

46:                                               ; preds = %30
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %85

49:                                               ; preds = %41, %36
  %50 = load i32, i32* %11, align 4
  %51 = ashr i32 %50, 24
  %52 = and i32 %51, 63
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, 64
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %11, align 4
  %56 = ashr i32 %55, 16
  %57 = and i32 %56, 255
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %11, align 4
  %59 = ashr i32 %58, 8
  %60 = and i32 %59, 255
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %11, align 4
  %62 = and i32 %61, 255
  store i32 %62, i32* %10, align 4
  %63 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %64 = load i32, i32* @LGDT3305_CR_CTR_FREQ_1, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %63, i32 %64, i32 %65)
  %67 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %68 = load i32, i32* @LGDT3305_CR_CTR_FREQ_2, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %67, i32 %68, i32 %69)
  %71 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %72 = load i32, i32* @LGDT3305_CR_CTR_FREQ_3, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %71, i32 %72, i32 %73)
  %75 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %76 = load i32, i32* @LGDT3305_CR_CTR_FREQ_4, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %75, i32 %76, i32 %77)
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @lg_dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %80, i32 %81, i32 %82, i32 %83)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %49, %46, %27
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @lgdt3305_write_reg(%struct.lgdt3305_state*, i32, i32) #1

declare dso_local i32 @lg_dbg(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
