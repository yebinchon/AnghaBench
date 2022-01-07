; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lg2160.c_lg216x_get_sccc_block_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lg2160.c_lg216x_get_sccc_block_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lg216x_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ATSCMH_SCCC_BLK_SEP = common dso_local global i32 0, align 4
@ATSCMH_SCCC_BLK_COMB = common dso_local global i32 0, align 4
@ATSCMH_SCCC_BLK_RES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lg216x_state*, i32*)* @lg216x_get_sccc_block_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lg216x_get_sccc_block_mode(%struct.lg216x_state* %0, i32* %1) #0 {
  %3 = alloca %struct.lg216x_state*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lg216x_state* %0, %struct.lg216x_state** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.lg216x_state*, %struct.lg216x_state** %3, align 8
  %8 = getelementptr inbounds %struct.lg216x_state, %struct.lg216x_state* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %18 [
    i32 129, label %12
    i32 128, label %15
  ]

12:                                               ; preds = %2
  %13 = load %struct.lg216x_state*, %struct.lg216x_state** %3, align 8
  %14 = call i32 @lg216x_read_reg(%struct.lg216x_state* %13, i32 789, i32* %5)
  store i32 %14, i32* %6, align 4
  br label %21

15:                                               ; preds = %2
  %16 = load %struct.lg216x_state*, %struct.lg216x_state** %3, align 8
  %17 = call i32 @lg216x_read_reg(%struct.lg216x_state* %16, i32 1297, i32* %5)
  store i32 %17, i32* %6, align 4
  br label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %18, %15, %12
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @lg_fail(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %39

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, 3
  switch i32 %28, label %35 [
    i32 0, label %29
    i32 1, label %32
  ]

29:                                               ; preds = %26
  %30 = load i32, i32* @ATSCMH_SCCC_BLK_SEP, align 4
  %31 = load i32*, i32** %4, align 8
  store i32 %30, i32* %31, align 4
  br label %38

32:                                               ; preds = %26
  %33 = load i32, i32* @ATSCMH_SCCC_BLK_COMB, align 4
  %34 = load i32*, i32** %4, align 8
  store i32 %33, i32* %34, align 4
  br label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @ATSCMH_SCCC_BLK_RES, align 4
  %37 = load i32*, i32** %4, align 8
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %32, %29
  br label %39

39:                                               ; preds = %38, %25
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @lg216x_read_reg(%struct.lg216x_state*, i32, i32*) #1

declare dso_local i64 @lg_fail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
