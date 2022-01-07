; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_w7090p_tuner_write_serpar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_w7090p_tuner_write_serpar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i64* }
%struct.dib7000p_state = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Tuner ITF: write busy (overflow)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @w7090p_tuner_write_serpar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w7090p_tuner_write_serpar(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dib7000p_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %12 = call %struct.dib7000p_state* @i2c_get_adapdata(%struct.i2c_adapter* %11)
  store %struct.dib7000p_state* %12, %struct.dib7000p_state** %7, align 8
  store i32 1, i32* %8, align 4
  store i64 1000, i64* %9, align 8
  %13 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i64 0
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %10, align 8
  br label %19

19:                                               ; preds = %38, %3
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i64, i64* %9, align 8
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi i1 [ false, %19 ], [ %24, %22 ]
  br i1 %26, label %27, label %39

27:                                               ; preds = %25
  %28 = load %struct.dib7000p_state*, %struct.dib7000p_state** %7, align 8
  %29 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %28, i32 1984)
  %30 = ashr i32 %29, 1
  %31 = and i32 %30, 1
  store i32 %31, i32* %8, align 4
  %32 = load i64, i64* %9, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = call i32 @dprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %27
  br label %19

39:                                               ; preds = %25
  %40 = load %struct.dib7000p_state*, %struct.dib7000p_state** %7, align 8
  %41 = load i64, i64* %10, align 8
  %42 = and i64 %41, 63
  %43 = or i64 64, %42
  %44 = trunc i64 %43 to i32
  %45 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %40, i32 1985, i32 %44)
  %46 = load %struct.dib7000p_state*, %struct.dib7000p_state** %7, align 8
  %47 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %48 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %47, i64 0
  %49 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 1
  %52 = load i64, i64* %51, align 8
  %53 = shl i64 %52, 8
  %54 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %55 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %54, i64 0
  %56 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 2
  %59 = load i64, i64* %58, align 8
  %60 = or i64 %53, %59
  %61 = trunc i64 %60 to i32
  %62 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %46, i32 1986, i32 %61)
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local %struct.dib7000p_state* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @dib7000p_read_word(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @dib7000p_write_word(%struct.dib7000p_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
