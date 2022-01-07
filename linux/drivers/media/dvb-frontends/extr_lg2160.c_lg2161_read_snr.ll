; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lg2160.c_lg2161_read_snr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lg2160.c_lg2161_read_snr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.lg216x_state* }
%struct.lg216x_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @lg2161_read_snr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lg2161_read_snr(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.lg216x_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.lg216x_state*, %struct.lg216x_state** %10, align 8
  store %struct.lg216x_state* %11, %struct.lg216x_state** %5, align 8
  %12 = load i32*, i32** %4, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.lg216x_state*, %struct.lg216x_state** %5, align 8
  %14 = call i32 @lg216x_read_reg(%struct.lg216x_state* %13, i32 770, i32* %6)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i64 @lg_fail(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %47

19:                                               ; preds = %2
  %20 = load %struct.lg216x_state*, %struct.lg216x_state** %5, align 8
  %21 = call i32 @lg216x_read_reg(%struct.lg216x_state* %20, i32 771, i32* %7)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @lg_fail(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %47

26:                                               ; preds = %19
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 186
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 253
  br i1 %31, label %32, label %34

32:                                               ; preds = %29, %26
  %33 = load i32*, i32** %4, align 8
  store i32 0, i32* %33, align 4
  br label %46

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = ashr i32 %35, 4
  %37 = mul nsw i32 %36, 100
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 15
  %40 = mul nsw i32 %39, 10
  %41 = add nsw i32 %37, %40
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, 15
  %44 = add nsw i32 %41, %43
  %45 = load i32*, i32** %4, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %34, %32
  br label %47

47:                                               ; preds = %46, %25, %18
  %48 = load i32, i32* %8, align 4
  ret i32 %48
}

declare dso_local i32 @lg216x_read_reg(%struct.lg216x_state*, i32, i32*) #1

declare dso_local i64 @lg_fail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
