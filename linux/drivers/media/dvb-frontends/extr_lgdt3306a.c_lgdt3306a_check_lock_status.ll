; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_lgdt3306a_check_lock_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_lgdt3306a_check_lock_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgdt3306a_state = type { i32 }

@LG3306_UNKNOWN_MODE = common dso_local global i32 0, align 4
@LG3306_LOCK = common dso_local global i32 0, align 4
@LG3306_UNLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"SYNC_LOCK=%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"AGC_LOCK=%x\0A\00", align 1
@LG3306_QAM64 = common dso_local global i32 0, align 4
@LG3306_QAM256 = common dso_local global i32 0, align 4
@LG3306_UNKNOWN_LOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"TR_LOCK=%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"FEC_LOCK=%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"UNKNOWN whatLock=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgdt3306a_state*, i32)* @lgdt3306a_check_lock_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt3306a_check_lock_status(%struct.lgdt3306a_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lgdt3306a_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lgdt3306a_state* %0, %struct.lgdt3306a_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @LG3306_UNKNOWN_MODE, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %110 [
    i32 129, label %12
    i32 131, label %30
    i32 128, label %48
    i32 130, label %79
  ]

12:                                               ; preds = %2
  %13 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %4, align 8
  %14 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %13, i32 166, i32* %6)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %116

19:                                               ; preds = %12
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 128
  %22 = icmp eq i32 %21, 128
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @LG3306_LOCK, align 4
  store i32 %24, i32* %9, align 4
  br label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @LG3306_UNLOCK, align 4
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @dbg_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %114

30:                                               ; preds = %2
  %31 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %4, align 8
  %32 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %31, i32 128, i32* %6)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %116

37:                                               ; preds = %30
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 64
  %40 = icmp eq i32 %39, 64
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @LG3306_LOCK, align 4
  store i32 %42, i32* %9, align 4
  br label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @LG3306_UNLOCK, align 4
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @dbg_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %114

48:                                               ; preds = %2
  %49 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %4, align 8
  %50 = call i32 @lgdt3306a_check_oper_mode(%struct.lgdt3306a_state* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @LG3306_QAM64, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @LG3306_QAM256, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %54, %48
  %59 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %4, align 8
  %60 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %59, i32 4244, i32* %6)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %3, align 4
  br label %116

65:                                               ; preds = %58
  %66 = load i32, i32* %6, align 4
  %67 = and i32 %66, 128
  %68 = icmp eq i32 %67, 128
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @LG3306_LOCK, align 4
  store i32 %70, i32* %9, align 4
  br label %73

71:                                               ; preds = %65
  %72 = load i32, i32* @LG3306_UNLOCK, align 4
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %71, %69
  br label %76

74:                                               ; preds = %54
  %75 = load i32, i32* @LG3306_UNKNOWN_LOCK, align 4
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %74, %73
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @dbg_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  br label %114

79:                                               ; preds = %2
  %80 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %4, align 8
  %81 = call i32 @lgdt3306a_check_oper_mode(%struct.lgdt3306a_state* %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @LG3306_QAM64, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @LG3306_QAM256, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %105

89:                                               ; preds = %85, %79
  %90 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %4, align 8
  %91 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %90, i32 128, i32* %6)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %3, align 4
  br label %116

96:                                               ; preds = %89
  %97 = load i32, i32* %6, align 4
  %98 = and i32 %97, 16
  %99 = icmp eq i32 %98, 16
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i32, i32* @LG3306_LOCK, align 4
  store i32 %101, i32* %9, align 4
  br label %104

102:                                              ; preds = %96
  %103 = load i32, i32* @LG3306_UNLOCK, align 4
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %102, %100
  br label %107

105:                                              ; preds = %85
  %106 = load i32, i32* @LG3306_UNKNOWN_LOCK, align 4
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %105, %104
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @dbg_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  br label %114

110:                                              ; preds = %2
  %111 = load i32, i32* @LG3306_UNKNOWN_LOCK, align 4
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @pr_warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %110, %107, %76, %45, %27
  %115 = load i32, i32* %9, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %114, %94, %63, %35, %17
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state*, i32, i32*) #1

declare dso_local i32 @dbg_info(i8*, i32) #1

declare dso_local i32 @lgdt3306a_check_oper_mode(%struct.lgdt3306a_state*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
