; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lg2160.c_lg216x_enable_fic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lg2160.c_lg216x_enable_fic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lg216x_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lg216x_state*, i32)* @lg216x_enable_fic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lg216x_enable_fic(%struct.lg216x_state* %0, i32 %1) #0 {
  %3 = alloca %struct.lg216x_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lg216x_state* %0, %struct.lg216x_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lg216x_state*, %struct.lg216x_state** %3, align 8
  %7 = call i32 @lg216x_write_reg(%struct.lg216x_state* %6, i32 23, i32 35)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @lg_fail(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %61

12:                                               ; preds = %2
  %13 = load %struct.lg216x_state*, %struct.lg216x_state** %3, align 8
  %14 = call i32 @lg216x_write_reg(%struct.lg216x_state* %13, i32 22, i32 252)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @lg_fail(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %61

19:                                               ; preds = %12
  %20 = load %struct.lg216x_state*, %struct.lg216x_state** %3, align 8
  %21 = getelementptr inbounds %struct.lg216x_state, %struct.lg216x_state* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %40 [
    i32 129, label %25
    i32 128, label %33
  ]

25:                                               ; preds = %19
  %26 = load %struct.lg216x_state*, %struct.lg216x_state** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 2, i32 0
  %31 = or i32 252, %30
  %32 = call i32 @lg216x_write_reg(%struct.lg216x_state* %26, i32 22, i32 %31)
  store i32 %32, i32* %5, align 4
  br label %40

33:                                               ; preds = %19
  %34 = load %struct.lg216x_state*, %struct.lg216x_state** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 16, i32 0
  %39 = call i32 @lg216x_write_reg(%struct.lg216x_state* %34, i32 22, i32 %38)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %19, %33, %25
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @lg_fail(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %61

45:                                               ; preds = %40
  %46 = load %struct.lg216x_state*, %struct.lg216x_state** %3, align 8
  %47 = call i32 @lg216x_initialize(%struct.lg216x_state* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i64 @lg_fail(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %61

52:                                               ; preds = %45
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load %struct.lg216x_state*, %struct.lg216x_state** %3, align 8
  %57 = call i32 @lg216x_write_reg(%struct.lg216x_state* %56, i32 23, i32 3)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i64 @lg_fail(i32 %58)
  br label %60

60:                                               ; preds = %55, %52
  br label %61

61:                                               ; preds = %60, %51, %44, %18, %11
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @lg216x_write_reg(%struct.lg216x_state*, i32, i32) #1

declare dso_local i64 @lg_fail(i32) #1

declare dso_local i32 @lg216x_initialize(%struct.lg216x_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
