; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_get_lock_tmg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_get_lock_tmg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { i32, i32, i32, i32 }

@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Blind Search\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Normal Search\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stv090x_state*)* @stv090x_get_lock_tmg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stv090x_get_lock_tmg(%struct.stv090x_state* %0) #0 {
  %2 = alloca %struct.stv090x_state*, align 8
  store %struct.stv090x_state* %0, %struct.stv090x_state** %2, align 8
  %3 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %4 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %36 [
    i32 130, label %6
    i32 129, label %35
    i32 128, label %35
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @FE_DEBUG, align 4
  %8 = call i32 @dprintk(i32 %7, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %10 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp sle i32 %11, 1500000
  br i1 %12, label %13, label %18

13:                                               ; preds = %6
  %14 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %15 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %14, i32 0, i32 2
  store i32 1500, i32* %15, align 4
  %16 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %17 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %16, i32 0, i32 3
  store i32 400, i32* %17, align 4
  br label %34

18:                                               ; preds = %6
  %19 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %20 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp sle i32 %21, 5000000
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %25 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %24, i32 0, i32 2
  store i32 1000, i32* %25, align 4
  %26 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %27 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %26, i32 0, i32 3
  store i32 300, i32* %27, align 4
  br label %33

28:                                               ; preds = %18
  %29 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %30 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %29, i32 0, i32 2
  store i32 700, i32* %30, align 4
  %31 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %32 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %31, i32 0, i32 3
  store i32 100, i32* %32, align 4
  br label %33

33:                                               ; preds = %28, %23
  br label %34

34:                                               ; preds = %33, %13
  br label %98

35:                                               ; preds = %1, %1
  br label %36

36:                                               ; preds = %1, %35
  %37 = load i32, i32* @FE_DEBUG, align 4
  %38 = call i32 @dprintk(i32 %37, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %40 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp sle i32 %41, 1000000
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %45 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %44, i32 0, i32 2
  store i32 4500, i32* %45, align 4
  %46 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %47 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %46, i32 0, i32 3
  store i32 1700, i32* %47, align 4
  br label %97

48:                                               ; preds = %36
  %49 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %50 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp sle i32 %51, 2000000
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %55 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %54, i32 0, i32 2
  store i32 2500, i32* %55, align 4
  %56 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %57 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %56, i32 0, i32 3
  store i32 1100, i32* %57, align 4
  br label %96

58:                                               ; preds = %48
  %59 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %60 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp sle i32 %61, 5000000
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %65 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %64, i32 0, i32 2
  store i32 1000, i32* %65, align 4
  %66 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %67 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %66, i32 0, i32 3
  store i32 550, i32* %67, align 4
  br label %95

68:                                               ; preds = %58
  %69 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %70 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp sle i32 %71, 10000000
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %75 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %74, i32 0, i32 2
  store i32 700, i32* %75, align 4
  %76 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %77 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %76, i32 0, i32 3
  store i32 250, i32* %77, align 4
  br label %94

78:                                               ; preds = %68
  %79 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %80 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp sle i32 %81, 20000000
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %85 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %84, i32 0, i32 2
  store i32 400, i32* %85, align 4
  %86 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %87 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %86, i32 0, i32 3
  store i32 130, i32* %87, align 4
  br label %93

88:                                               ; preds = %78
  %89 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %90 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %89, i32 0, i32 2
  store i32 300, i32* %90, align 4
  %91 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %92 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %91, i32 0, i32 3
  store i32 100, i32* %92, align 4
  br label %93

93:                                               ; preds = %88, %83
  br label %94

94:                                               ; preds = %93, %73
  br label %95

95:                                               ; preds = %94, %63
  br label %96

96:                                               ; preds = %95, %53
  br label %97

97:                                               ; preds = %96, %43
  br label %98

98:                                               ; preds = %97, %34
  %99 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %100 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 128
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %105 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = sdiv i32 %106, 2
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %103, %98
  ret void
}

declare dso_local i32 @dprintk(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
