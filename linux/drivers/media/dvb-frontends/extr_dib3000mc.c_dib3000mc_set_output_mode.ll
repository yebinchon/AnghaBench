; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib3000mc.c_dib3000mc_set_output_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib3000mc.c_dib3000mc_set_output_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib3000mc_state = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [45 x i8] c"-I-  Setting output mode for demod %p to %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Unhandled output_mode passed to be set for demod %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib3000mc_state*, i32)* @dib3000mc_set_output_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib3000mc_set_output_mode(%struct.dib3000mc_state* %0, i32 %1) #0 {
  %3 = alloca %struct.dib3000mc_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dib3000mc_state* %0, %struct.dib3000mc_state** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 1792, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %11 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %12 = call i32 @dib3000mc_read_word(%struct.dib3000mc_state* %11, i32 206)
  %13 = and i32 %12, 16
  store i32 %13, i32* %10, align 4
  %14 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %15 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %14, i32 0, i32 1
  %16 = load i32, i32* %4, align 4
  %17 = call i32 (i8*, i32*, ...) @dprintk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32* %15, i32 %16)
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %27 [
    i32 132, label %19
    i32 129, label %20
    i32 130, label %21
    i32 128, label %22
    i32 131, label %23
    i32 133, label %26
  ]

19:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %31

20:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %31

21:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %31

22:                                               ; preds = %2
  store i32 2, i32* %8, align 4
  br label %31

23:                                               ; preds = %2
  store i32 3, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = or i32 %24, 6
  store i32 %25, i32* %10, align 4
  store i32 512, i32* %6, align 4
  store i32 5, i32* %8, align 4
  br label %31

26:                                               ; preds = %2
  store i32 4, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %31

27:                                               ; preds = %2
  %28 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %29 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %28, i32 0, i32 1
  %30 = call i32 (i8*, i32*, ...) @dprintk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32* %29)
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %27, %26, %23, %22, %21, %20, %19
  %32 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %33 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* %10, align 4
  %40 = or i32 %39, 32
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %38, %31
  %42 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %43 = call i32 @dib3000mc_read_word(%struct.dib3000mc_state* %42, i32 244)
  %44 = and i32 %43, 2047
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = shl i32 %45, 11
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %49, i32 244, i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %54, i32 206, i32 %55)
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %59, i32 207, i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  %64 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %64, i32 1040, i32 %65)
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @dib3000mc_read_word(%struct.dib3000mc_state*, i32) #1

declare dso_local i32 @dprintk(i8*, i32*, ...) #1

declare dso_local i32 @dib3000mc_write_word(%struct.dib3000mc_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
