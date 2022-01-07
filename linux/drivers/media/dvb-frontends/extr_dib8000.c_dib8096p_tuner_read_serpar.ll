; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8096p_tuner_read_serpar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8096p_tuner_read_serpar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32* }
%struct.dib8000_state = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"TunerITF: read busy (overflow)\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"TunerITF: read busy (empty)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @dib8096p_tuner_read_serpar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8096p_tuner_read_serpar(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dib8000_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %14 = call %struct.dib8000_state* @i2c_get_adapdata(%struct.i2c_adapter* %13)
  store %struct.dib8000_state* %14, %struct.dib8000_state** %7, align 8
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 1000, i32* %10, align 4
  %15 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i64 0
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  br label %21

21:                                               ; preds = %40, %3
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i1 [ false, %21 ], [ %26, %24 ]
  br i1 %28, label %29, label %41

29:                                               ; preds = %27
  %30 = load %struct.dib8000_state*, %struct.dib8000_state** %7, align 8
  %31 = call i32 @dib8000_read_word(%struct.dib8000_state* %30, i32 1984)
  %32 = ashr i32 %31, 1
  %33 = and i32 %32, 1
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = call i32 @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %29
  br label %21

41:                                               ; preds = %27
  %42 = load %struct.dib8000_state*, %struct.dib8000_state** %7, align 8
  %43 = load i32, i32* %11, align 4
  %44 = and i32 %43, 63
  %45 = or i32 0, %44
  %46 = call i32 @dib8000_write_word(%struct.dib8000_state* %42, i32 1985, i32 %45)
  store i32 1000, i32* %10, align 4
  br label %47

47:                                               ; preds = %65, %41
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br label %53

53:                                               ; preds = %50, %47
  %54 = phi i1 [ false, %47 ], [ %52, %50 ]
  br i1 %54, label %55, label %66

55:                                               ; preds = %53
  %56 = load %struct.dib8000_state*, %struct.dib8000_state** %7, align 8
  %57 = call i32 @dib8000_read_word(%struct.dib8000_state* %56, i32 1984)
  %58 = and i32 %57, 1
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = call i32 @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %55
  br label %47

66:                                               ; preds = %53
  %67 = load %struct.dib8000_state*, %struct.dib8000_state** %7, align 8
  %68 = call i32 @dib8000_read_word(%struct.dib8000_state* %67, i32 1987)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = ashr i32 %69, 8
  %71 = and i32 %70, 255
  %72 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %73 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %72, i64 1
  %74 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 %71, i32* %76, align 4
  %77 = load i32, i32* %12, align 4
  %78 = and i32 %77, 255
  %79 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %80 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %79, i64 1
  %81 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  store i32 %78, i32* %83, align 4
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local %struct.dib8000_state* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @dib8000_read_word(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
