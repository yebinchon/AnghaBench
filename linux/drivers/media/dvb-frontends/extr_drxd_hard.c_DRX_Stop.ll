; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_DRX_Stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_DRX_Stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drxd_state = type { i64, i64, i64 }

@DRXD_STARTED = common dso_local global i64 0, align 8
@CSCD_SAVED = common dso_local global i64 0, align 8
@DRXD_STOPPED = common dso_local global i64 0, align 8
@EC_OD_REG_COMM_EXEC__A = common dso_local global i32 0, align 4
@SC_COMM_EXEC__A = common dso_local global i32 0, align 4
@SC_COMM_EXEC_CTL_STOP = common dso_local global i32 0, align 4
@LC_COMM_EXEC__A = common dso_local global i32 0, align 4
@B_SC_COMM_EXEC__A = common dso_local global i32 0, align 4
@B_LC_COMM_EXEC__A = common dso_local global i32 0, align 4
@B_FT_COMM_EXEC__A = common dso_local global i32 0, align 4
@B_CP_COMM_EXEC__A = common dso_local global i32 0, align 4
@B_CE_COMM_EXEC__A = common dso_local global i32 0, align 4
@B_EQ_COMM_EXEC__A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drxd_state*)* @DRX_Stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DRX_Stop(%struct.drxd_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drxd_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drxd_state* %0, %struct.drxd_state** %3, align 8
  %6 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %7 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @DRXD_STARTED, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %129

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12
  %14 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %15 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CSCD_SAVED, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %21 = call i32 @DRX_GetLockStatus(%struct.drxd_state* %20, i32* %5)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %127

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %13
  %27 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %28 = call i32 @StopOC(%struct.drxd_state* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %127

32:                                               ; preds = %26
  %33 = load i64, i64* @DRXD_STOPPED, align 8
  %34 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %35 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %37 = call i32 @ConfigureMPEGOutput(%struct.drxd_state* %36, i32 0)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %127

41:                                               ; preds = %32
  %42 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %43 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %70

46:                                               ; preds = %41
  %47 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %48 = load i32, i32* @EC_OD_REG_COMM_EXEC__A, align 4
  %49 = call i32 @Write16(%struct.drxd_state* %47, i32 %48, i32 0, i32 0)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %127

53:                                               ; preds = %46
  %54 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %55 = load i32, i32* @SC_COMM_EXEC__A, align 4
  %56 = load i32, i32* @SC_COMM_EXEC_CTL_STOP, align 4
  %57 = call i32 @Write16(%struct.drxd_state* %54, i32 %55, i32 %56, i32 0)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %127

61:                                               ; preds = %53
  %62 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %63 = load i32, i32* @LC_COMM_EXEC__A, align 4
  %64 = load i32, i32* @SC_COMM_EXEC_CTL_STOP, align 4
  %65 = call i32 @Write16(%struct.drxd_state* %62, i32 %63, i32 %64, i32 0)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %127

69:                                               ; preds = %61
  br label %126

70:                                               ; preds = %41
  %71 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %72 = load i32, i32* @B_SC_COMM_EXEC__A, align 4
  %73 = load i32, i32* @SC_COMM_EXEC_CTL_STOP, align 4
  %74 = call i32 @Write16(%struct.drxd_state* %71, i32 %72, i32 %73, i32 0)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %127

78:                                               ; preds = %70
  %79 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %80 = load i32, i32* @B_LC_COMM_EXEC__A, align 4
  %81 = load i32, i32* @SC_COMM_EXEC_CTL_STOP, align 4
  %82 = call i32 @Write16(%struct.drxd_state* %79, i32 %80, i32 %81, i32 0)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %127

86:                                               ; preds = %78
  %87 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %88 = load i32, i32* @B_FT_COMM_EXEC__A, align 4
  %89 = load i32, i32* @SC_COMM_EXEC_CTL_STOP, align 4
  %90 = call i32 @Write16(%struct.drxd_state* %87, i32 %88, i32 %89, i32 0)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  br label %127

94:                                               ; preds = %86
  %95 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %96 = load i32, i32* @B_CP_COMM_EXEC__A, align 4
  %97 = load i32, i32* @SC_COMM_EXEC_CTL_STOP, align 4
  %98 = call i32 @Write16(%struct.drxd_state* %95, i32 %96, i32 %97, i32 0)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  br label %127

102:                                              ; preds = %94
  %103 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %104 = load i32, i32* @B_CE_COMM_EXEC__A, align 4
  %105 = load i32, i32* @SC_COMM_EXEC_CTL_STOP, align 4
  %106 = call i32 @Write16(%struct.drxd_state* %103, i32 %104, i32 %105, i32 0)
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* %4, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  br label %127

110:                                              ; preds = %102
  %111 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %112 = load i32, i32* @B_EQ_COMM_EXEC__A, align 4
  %113 = load i32, i32* @SC_COMM_EXEC_CTL_STOP, align 4
  %114 = call i32 @Write16(%struct.drxd_state* %111, i32 %112, i32 %113, i32 0)
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* %4, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  br label %127

118:                                              ; preds = %110
  %119 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %120 = load i32, i32* @EC_OD_REG_COMM_EXEC__A, align 4
  %121 = call i32 @Write16(%struct.drxd_state* %119, i32 %120, i32 0, i32 0)
  store i32 %121, i32* %4, align 4
  %122 = load i32, i32* %4, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  br label %127

125:                                              ; preds = %118
  br label %126

126:                                              ; preds = %125, %69
  br label %127

127:                                              ; preds = %126, %124, %117, %109, %101, %93, %85, %77, %68, %60, %52, %40, %31, %24
  %128 = load i32, i32* %4, align 4
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %127, %11
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @DRX_GetLockStatus(%struct.drxd_state*, i32*) #1

declare dso_local i32 @StopOC(%struct.drxd_state*) #1

declare dso_local i32 @ConfigureMPEGOutput(%struct.drxd_state*, i32) #1

declare dso_local i32 @Write16(%struct.drxd_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
