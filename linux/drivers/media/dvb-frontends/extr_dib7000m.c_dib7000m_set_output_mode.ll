; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000m.c_dib7000m_set_output_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000m.c_dib7000m_set_output_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000m_state = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [40 x i8] c"setting output mode for demod %p to %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Unhandled output_mode passed to be set for demod %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib7000m_state*, i32)* @dib7000m_set_output_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000m_set_output_mode(%struct.dib7000m_state* %0, i32 %1) #0 {
  %3 = alloca %struct.dib7000m_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dib7000m_state* %0, %struct.dib7000m_state** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 5, i32* %9, align 4
  store i32 0, i32* %6, align 4
  store i32 1792, i32* %7, align 4
  %11 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %12 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %13 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 294, %14
  %16 = call i32 @dib7000m_read_word(%struct.dib7000m_state* %11, i32 %15)
  %17 = and i32 %16, 16
  %18 = or i32 %17, 2
  store i32 %18, i32* %8, align 4
  %19 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %20 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %19, i32 0, i32 3
  %21 = load i32, i32* %4, align 4
  %22 = call i32 (i8*, i32*, ...) @dprintk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32* %20, i32 %21)
  %23 = load i32, i32* %4, align 4
  switch i32 %23, label %42 [
    i32 129, label %24
    i32 130, label %25
    i32 128, label %26
    i32 133, label %27
    i32 131, label %38
    i32 132, label %41
  ]

24:                                               ; preds = %2
  store i32 1024, i32* %6, align 4
  br label %46

25:                                               ; preds = %2
  store i32 1088, i32* %6, align 4
  br label %46

26:                                               ; preds = %2
  store i32 1152, i32* %6, align 4
  br label %46

27:                                               ; preds = %2
  %28 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %29 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 1280, i32* %6, align 4
  br label %37

34:                                               ; preds = %27
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %35, 3072
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %34, %33
  br label %46

38:                                               ; preds = %2
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, 6
  store i32 %40, i32* %8, align 4
  store i32 512, i32* %7, align 4
  store i32 1344, i32* %6, align 4
  br label %46

41:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %46

42:                                               ; preds = %2
  %43 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %44 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %43, i32 0, i32 3
  %45 = call i32 (i8*, i32*, ...) @dprintk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32* %44)
  br label %46

46:                                               ; preds = %42, %41, %38, %37, %26, %25, %24
  %47 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %48 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, 32
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %52, %46
  %56 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %57 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %58 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 294, %59
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %56, i32 %60, i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %5, align 4
  %65 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %66 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %67 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 295, %68
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %65, i32 %69, i32 %70)
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  %74 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %74, i32 1795, i32 %75)
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %5, align 4
  %79 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %79, i32 1805, i32 %80)
  %82 = load i32, i32* %5, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %5, align 4
  %84 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %85 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 16387
  br i1 %87, label %88, label %101

88:                                               ; preds = %55
  %89 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %90 = call i32 @dib7000m_read_word(%struct.dib7000m_state* %89, i32 909)
  %91 = and i32 %90, 65533
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp eq i32 %92, 133
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i32, i32* %10, align 4
  %96 = or i32 %95, 2
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %94, %88
  %98 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %98, i32 909, i32 %99)
  br label %101

101:                                              ; preds = %97, %55
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @dib7000m_read_word(%struct.dib7000m_state*, i32) #1

declare dso_local i32 @dprintk(i8*, i32*, ...) #1

declare dso_local i32 @dib7000m_write_word(%struct.dib7000m_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
