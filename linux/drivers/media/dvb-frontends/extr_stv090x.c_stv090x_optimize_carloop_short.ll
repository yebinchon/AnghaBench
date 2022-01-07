; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_optimize_carloop_short.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_optimize_carloop_short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_short_frame_crloop = type { i32, i32, i32, i32, i32 }
%struct.stv090x_state = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@stv090x_s2_short_crl_cut30 = common dso_local global %struct.stv090x_short_frame_crloop* null, align 8
@stv090x_s2_short_crl_cut20 = common dso_local global %struct.stv090x_short_frame_crloop* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*)* @stv090x_optimize_carloop_short to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_optimize_carloop_short(%struct.stv090x_state* %0) #0 {
  %2 = alloca %struct.stv090x_state*, align 8
  %3 = alloca %struct.stv090x_short_frame_crloop*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.stv090x_state* %0, %struct.stv090x_state** %2, align 8
  store %struct.stv090x_short_frame_crloop* null, %struct.stv090x_short_frame_crloop** %3, align 8
  store i64 0, i64* %4, align 8
  store i32 11, i32* %5, align 4
  %6 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %7 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %10 [
    i32 128, label %9
    i32 129, label %11
    i32 131, label %12
    i32 130, label %13
  ]

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %1, %9
  store i64 0, i64* %4, align 8
  br label %14

11:                                               ; preds = %1
  store i64 1, i64* %4, align 8
  br label %14

12:                                               ; preds = %1
  store i64 2, i64* %4, align 8
  br label %14

13:                                               ; preds = %1
  store i64 3, i64* %4, align 8
  br label %14

14:                                               ; preds = %13, %12, %11, %10
  %15 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %16 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sge i32 %19, 48
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load %struct.stv090x_short_frame_crloop*, %struct.stv090x_short_frame_crloop** @stv090x_s2_short_crl_cut30, align 8
  store %struct.stv090x_short_frame_crloop* %22, %struct.stv090x_short_frame_crloop** %3, align 8
  br label %25

23:                                               ; preds = %14
  %24 = load %struct.stv090x_short_frame_crloop*, %struct.stv090x_short_frame_crloop** @stv090x_s2_short_crl_cut20, align 8
  store %struct.stv090x_short_frame_crloop* %24, %struct.stv090x_short_frame_crloop** %3, align 8
  br label %25

25:                                               ; preds = %23, %21
  %26 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %27 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp sle i32 %28, 3000000
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.stv090x_short_frame_crloop*, %struct.stv090x_short_frame_crloop** %3, align 8
  %32 = load i64, i64* %4, align 8
  %33 = getelementptr inbounds %struct.stv090x_short_frame_crloop, %struct.stv090x_short_frame_crloop* %31, i64 %32
  %34 = getelementptr inbounds %struct.stv090x_short_frame_crloop, %struct.stv090x_short_frame_crloop* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %5, align 4
  br label %78

36:                                               ; preds = %25
  %37 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %38 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sle i32 %39, 7000000
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.stv090x_short_frame_crloop*, %struct.stv090x_short_frame_crloop** %3, align 8
  %43 = load i64, i64* %4, align 8
  %44 = getelementptr inbounds %struct.stv090x_short_frame_crloop, %struct.stv090x_short_frame_crloop* %42, i64 %43
  %45 = getelementptr inbounds %struct.stv090x_short_frame_crloop, %struct.stv090x_short_frame_crloop* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %5, align 4
  br label %77

47:                                               ; preds = %36
  %48 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %49 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp sle i32 %50, 15000000
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.stv090x_short_frame_crloop*, %struct.stv090x_short_frame_crloop** %3, align 8
  %54 = load i64, i64* %4, align 8
  %55 = getelementptr inbounds %struct.stv090x_short_frame_crloop, %struct.stv090x_short_frame_crloop* %53, i64 %54
  %56 = getelementptr inbounds %struct.stv090x_short_frame_crloop, %struct.stv090x_short_frame_crloop* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %5, align 4
  br label %76

58:                                               ; preds = %47
  %59 = load %struct.stv090x_state*, %struct.stv090x_state** %2, align 8
  %60 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp sle i32 %61, 25000000
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load %struct.stv090x_short_frame_crloop*, %struct.stv090x_short_frame_crloop** %3, align 8
  %65 = load i64, i64* %4, align 8
  %66 = getelementptr inbounds %struct.stv090x_short_frame_crloop, %struct.stv090x_short_frame_crloop* %64, i64 %65
  %67 = getelementptr inbounds %struct.stv090x_short_frame_crloop, %struct.stv090x_short_frame_crloop* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %5, align 4
  br label %75

69:                                               ; preds = %58
  %70 = load %struct.stv090x_short_frame_crloop*, %struct.stv090x_short_frame_crloop** %3, align 8
  %71 = load i64, i64* %4, align 8
  %72 = getelementptr inbounds %struct.stv090x_short_frame_crloop, %struct.stv090x_short_frame_crloop* %70, i64 %71
  %73 = getelementptr inbounds %struct.stv090x_short_frame_crloop, %struct.stv090x_short_frame_crloop* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %69, %63
  br label %76

76:                                               ; preds = %75, %52
  br label %77

77:                                               ; preds = %76, %41
  br label %78

78:                                               ; preds = %77, %30
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
