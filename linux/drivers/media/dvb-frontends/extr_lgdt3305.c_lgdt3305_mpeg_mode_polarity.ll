; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3305.c_lgdt3305_mpeg_mode_polarity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3305.c_lgdt3305_mpeg_mode_polarity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgdt3305_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"edge = %d, valid = %d\0A\00", align 1
@LGDT3305_TP_CTRL_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgdt3305_state*)* @lgdt3305_mpeg_mode_polarity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt3305_mpeg_mode_polarity(%struct.lgdt3305_state* %0) #0 {
  %2 = alloca %struct.lgdt3305_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lgdt3305_state* %0, %struct.lgdt3305_state** %2, align 8
  %8 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %2, align 8
  %9 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %2, align 8
  %14 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %2, align 8
  %19 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @lg_dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %2, align 8
  %27 = load i32, i32* @LGDT3305_TP_CTRL_1, align 4
  %28 = call i32 @lgdt3305_read_reg(%struct.lgdt3305_state* %26, i32 %27, i32* %3)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @lg_fail(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  br label %65

33:                                               ; preds = %1
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, -10
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %3, align 4
  %40 = or i32 %39, 8
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %33
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, 64
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %50, %47
  %54 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %2, align 8
  %55 = load i32, i32* @LGDT3305_TP_CTRL_1, align 4
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %54, i32 %55, i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i64 @lg_fail(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %65

62:                                               ; preds = %53
  %63 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %2, align 8
  %64 = call i32 @lgdt3305_soft_reset(%struct.lgdt3305_state* %63)
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %62, %61, %32
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @lg_dbg(i8*, i32, i32) #1

declare dso_local i32 @lgdt3305_read_reg(%struct.lgdt3305_state*, i32, i32*) #1

declare dso_local i64 @lg_fail(i32) #1

declare dso_local i32 @lgdt3305_write_reg(%struct.lgdt3305_state*, i32, i32) #1

declare dso_local i32 @lgdt3305_soft_reset(%struct.lgdt3305_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
