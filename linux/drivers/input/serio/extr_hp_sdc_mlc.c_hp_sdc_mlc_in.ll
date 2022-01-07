; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_hp_sdc_mlc.c_hp_sdc_mlc_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_hp_sdc_mlc.c_hp_sdc_mlc_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32, i32, i64, i64, %struct.hp_sdc_mlc_priv_s* }
%struct.hp_sdc_mlc_priv_s = type { i64 }

@HIL_ERR_INT = common dso_local global i32 0, align 4
@HIL_PKT_CMD = common dso_local global i32 0, align 4
@HIL_PKT_ADDR_MASK = common dso_local global i32 0, align 4
@HIL_PKT_DATA_MASK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @hp_sdc_mlc_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp_sdc_mlc_in(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hp_sdc_mlc_priv_s*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 2, i32* %6, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 6
  %9 = load %struct.hp_sdc_mlc_priv_s*, %struct.hp_sdc_mlc_priv_s** %8, align 8
  store %struct.hp_sdc_mlc_priv_s* %9, %struct.hp_sdc_mlc_priv_s** %5, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  %12 = call i64 @down_trylock(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %53

14:                                               ; preds = %2
  %15 = load %struct.hp_sdc_mlc_priv_s*, %struct.hp_sdc_mlc_priv_s** %5, align 8
  %16 = getelementptr inbounds %struct.hp_sdc_mlc_priv_s, %struct.hp_sdc_mlc_priv_s* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %14
  %20 = load i32, i32* @HIL_ERR_INT, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @HIL_PKT_CMD, align 4
  %25 = load i32, i32* @HIL_PKT_ADDR_MASK, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @HIL_PKT_DATA_MASK, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %23, %28
  %30 = or i32 %20, %29
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %30, i32* %34, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  store i32 14, i32* %36, align 4
  br label %54

37:                                               ; preds = %14
  %38 = load i32, i32* @jiffies, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  %46 = call i64 @time_after(i32 %38, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  store i32 1, i32* %6, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = call i32 @up(i32* %50)
  br label %52

52:                                               ; preds = %48, %37
  br label %58

53:                                               ; preds = %2
  br label %54

54:                                               ; preds = %53, %19
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = call i32 @up(i32* %56)
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %54, %52
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i64 @down_trylock(i32*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
