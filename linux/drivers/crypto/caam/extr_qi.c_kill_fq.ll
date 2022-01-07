; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_qi.c_kill_fq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_qi.c_kill_fq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.qman_fq = type { i64, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"qman_retire_fq failed: %d\0A\00", align 1
@qman_fq_state_retired = common dso_local global i64 0, align 8
@QMAN_FQ_STATE_BLOCKOOS = common dso_local global i32 0, align 4
@QMAN_FQ_STATE_ORL = common dso_local global i32 0, align 4
@QMAN_FQ_STATE_NE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"empty_retired_fq fail for FQ: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"OOS of FQID: %u failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.qman_fq*)* @kill_fq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kill_fq(%struct.device* %0, %struct.qman_fq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.qman_fq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.qman_fq* %1, %struct.qman_fq** %5, align 8
  %8 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %9 = call i32 @qman_retire_fq(%struct.qman_fq* %8, i32* %6)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @dev_err(%struct.device* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %85

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  br label %47

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %46

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %27, %24
  %26 = call i32 @msleep(i32 20)
  br label %27

27:                                               ; preds = %25
  %28 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %29 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @qman_fq_state_retired, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %25, label %33

33:                                               ; preds = %27
  %34 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %35 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @QMAN_FQ_STATE_BLOCKOOS, align 4
  %38 = and i32 %36, %37
  %39 = call i32 @WARN_ON(i32 %38)
  %40 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %41 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @QMAN_FQ_STATE_ORL, align 4
  %44 = and i32 %42, %43
  %45 = call i32 @WARN_ON(i32 %44)
  br label %46

46:                                               ; preds = %33, %21
  br label %47

47:                                               ; preds = %46, %20
  %48 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %49 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @QMAN_FQ_STATE_NE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %47
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %57 = call i32 @empty_retired_fq(%struct.device* %55, %struct.qman_fq* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %63 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_err(%struct.device* %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %3, align 4
  br label %85

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67, %47
  %69 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %70 = call i32 @qman_oos_fq(%struct.qman_fq* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %76 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @dev_err(%struct.device* %74, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %73, %68
  %80 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %81 = call i32 @qman_destroy_fq(%struct.qman_fq* %80)
  %82 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %83 = call i32 @kfree(%struct.qman_fq* %82)
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %79, %60, %12
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @qman_retire_fq(%struct.qman_fq*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @empty_retired_fq(%struct.device*, %struct.qman_fq*) #1

declare dso_local i32 @qman_oos_fq(%struct.qman_fq*) #1

declare dso_local i32 @qman_destroy_fq(%struct.qman_fq*) #1

declare dso_local i32 @kfree(%struct.qman_fq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
