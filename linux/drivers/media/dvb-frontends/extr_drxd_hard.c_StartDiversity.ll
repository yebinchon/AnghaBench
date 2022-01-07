; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_StartDiversity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_StartDiversity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drxd_state = type { i64, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@OM_DVBT_Diversity_Front = common dso_local global i64 0, align 8
@OM_DVBT_Diversity_End = common dso_local global i64 0, align 8
@B_EQ_REG_RC_SEL_CAR__A = common dso_local global i32 0, align 4
@B_EQ_REG_RC_SEL_CAR_FFTMODE__M = common dso_local global i32 0, align 4
@B_EQ_REG_RC_SEL_CAR_DIV_ON = common dso_local global i32 0, align 4
@B_EQ_REG_RC_SEL_CAR_MEAS_A_CC = common dso_local global i32 0, align 4
@B_EQ_REG_RC_SEL_CAR_PASS_A_CC = common dso_local global i32 0, align 4
@B_EQ_REG_RC_SEL_CAR_LOCAL_A_CC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drxd_state*)* @StartDiversity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @StartDiversity(%struct.drxd_state* %0) #0 {
  %2 = alloca %struct.drxd_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.drxd_state* %0, %struct.drxd_state** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %1
  %6 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %7 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @OM_DVBT_Diversity_Front, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %5
  %12 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %13 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %14 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @WriteTable(%struct.drxd_state* %12, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  br label %93

20:                                               ; preds = %11
  br label %92

21:                                               ; preds = %5
  %22 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %23 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @OM_DVBT_Diversity_End, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %91

27:                                               ; preds = %21
  %28 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %29 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %30 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @WriteTable(%struct.drxd_state* %28, i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %93

36:                                               ; preds = %27
  %37 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %38 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 8000000
  br i1 %41, label %42, label %52

42:                                               ; preds = %36
  %43 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %44 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %45 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @WriteTable(%struct.drxd_state* %43, i32 %46)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %93

51:                                               ; preds = %42
  br label %62

52:                                               ; preds = %36
  %53 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %54 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %55 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @WriteTable(%struct.drxd_state* %53, i32 %56)
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %93

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61, %51
  %63 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %64 = load i32, i32* @B_EQ_REG_RC_SEL_CAR__A, align 4
  %65 = call i32 @Read16(%struct.drxd_state* %63, i32 %64, i32* %4, i32 0)
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %3, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %93

69:                                               ; preds = %62
  %70 = load i32, i32* @B_EQ_REG_RC_SEL_CAR_FFTMODE__M, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %4, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* @B_EQ_REG_RC_SEL_CAR_DIV_ON, align 4
  %75 = load i32, i32* @B_EQ_REG_RC_SEL_CAR_MEAS_A_CC, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @B_EQ_REG_RC_SEL_CAR_PASS_A_CC, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @B_EQ_REG_RC_SEL_CAR_LOCAL_A_CC, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* %4, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %4, align 4
  %83 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %84 = load i32, i32* @B_EQ_REG_RC_SEL_CAR__A, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @Write16(%struct.drxd_state* %83, i32 %84, i32 %85, i32 0)
  store i32 %86, i32* %3, align 4
  %87 = load i32, i32* %3, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %69
  br label %93

90:                                               ; preds = %69
  br label %91

91:                                               ; preds = %90, %21
  br label %92

92:                                               ; preds = %91, %20
  br label %93

93:                                               ; preds = %92, %89, %68, %60, %50, %35, %19
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @WriteTable(%struct.drxd_state*, i32) #1

declare dso_local i32 @Read16(%struct.drxd_state*, i32, i32*, i32) #1

declare dso_local i32 @Write16(%struct.drxd_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
