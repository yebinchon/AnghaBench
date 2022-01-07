; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_set_output_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_set_output_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib8000_state* }
%struct.dib8000_state = type { i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [44 x i8] c"-I-\09Setting output mode for demod %p to %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Unhandled output_mode passed to be set for demod %p\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @dib8000_set_output_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_set_output_mode(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dib8000_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.dib8000_state*, %struct.dib8000_state** %12, align 8
  store %struct.dib8000_state* %13, %struct.dib8000_state** %6, align 8
  store i32 517, i32* %10, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %16 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  store i32 0, i32* %7, align 4
  store i32 1792, i32* %8, align 4
  %17 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %18 = call i32 @dib8000_read_word(%struct.dib8000_state* %17, i32 299)
  %19 = and i32 %18, 80
  %20 = or i32 %19, 2
  store i32 %20, i32* %9, align 4
  %21 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %22 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %5, align 4
  %26 = call i32 (i8*, i32*, ...) @dprintk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32* %24, i32 %25)
  %27 = load i32, i32* %5, align 4
  switch i32 %27, label %51 [
    i32 129, label %28
    i32 130, label %29
    i32 128, label %30
    i32 133, label %31
    i32 131, label %44
    i32 132, label %47
    i32 134, label %48
  ]

28:                                               ; preds = %2
  store i32 1024, i32* %7, align 4
  br label %59

29:                                               ; preds = %2
  store i32 1088, i32* %7, align 4
  br label %59

30:                                               ; preds = %2
  store i32 1152, i32* %7, align 4
  br label %59

31:                                               ; preds = %2
  %32 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %33 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  store i32 1280, i32* %7, align 4
  %38 = load i32, i32* %10, align 4
  %39 = and i32 %38, 65023
  store i32 %39, i32* %10, align 4
  br label %43

40:                                               ; preds = %31
  %41 = load i32, i32* %10, align 4
  %42 = or i32 %41, 3072
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %40, %37
  br label %59

44:                                               ; preds = %2
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, 6
  store i32 %46, i32* %9, align 4
  store i32 512, i32* %8, align 4
  store i32 1344, i32* %7, align 4
  br label %59

47:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %59

48:                                               ; preds = %2
  store i32 1216, i32* %7, align 4
  %49 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %50 = call i32 @dib8000_set_acquisition_mode(%struct.dib8000_state* %49)
  br label %59

51:                                               ; preds = %2
  %52 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %53 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = call i32 (i8*, i32*, ...) @dprintk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32* %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %81

59:                                               ; preds = %48, %47, %44, %43, %30, %29, %28
  %60 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %61 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* %9, align 4
  %67 = or i32 %66, 32
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %65, %59
  %69 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @dib8000_write_word(%struct.dib8000_state* %69, i32 299, i32 %70)
  %72 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @dib8000_write_word(%struct.dib8000_state* %72, i32 300, i32 %73)
  %75 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @dib8000_write_word(%struct.dib8000_state* %75, i32 1286, i32 %76)
  %78 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @dib8000_write_word(%struct.dib8000_state* %78, i32 1291, i32 %79)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %68, %51
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @dib8000_read_word(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dprintk(i8*, i32*, ...) #1

declare dso_local i32 @dib8000_set_acquisition_mode(%struct.dib8000_state*) #1

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
