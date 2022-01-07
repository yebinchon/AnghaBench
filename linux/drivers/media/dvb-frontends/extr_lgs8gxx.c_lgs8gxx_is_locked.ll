; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgs8gxx.c_lgs8gxx_is_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgs8gxx.c_lgs8gxx_is_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgs8gxx_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@LGS8GXX_PROD_LGS8G75 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgs8gxx_state*, i32*)* @lgs8gxx_is_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgs8gxx_is_locked(%struct.lgs8gxx_state* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lgs8gxx_state*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lgs8gxx_state* %0, %struct.lgs8gxx_state** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %4, align 8
  %9 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @LGS8GXX_PROD_LGS8G75, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %4, align 8
  %17 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %16, i32 19, i32* %7)
  store i32 %17, i32* %6, align 4
  br label %21

18:                                               ; preds = %2
  %19 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %4, align 8
  %20 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %19, i32 75, i32* %7)
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %49

26:                                               ; preds = %21
  %27 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %4, align 8
  %28 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @LGS8GXX_PROD_LGS8G75, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 128
  %37 = icmp eq i32 %36, 128
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  br label %48

41:                                               ; preds = %26
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, 192
  %44 = icmp eq i32 %43, 192
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  %47 = load i32*, i32** %5, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %41, %34
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %24
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
