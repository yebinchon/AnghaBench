; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_set_mis.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_set_mis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { i32 }

@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Disable MIS filtering\00", align 1
@PDELCTRL1 = common dso_local global i32 0, align 4
@FILTER_EN_FIELD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Enable MIS filtering - %d\00", align 1
@ISIENTRY = common dso_local global i32 0, align 4
@ISIBITENA = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*, i32)* @stv090x_set_mis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_set_mis(%struct.stv090x_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stv090x_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stv090x_state* %0, %struct.stv090x_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp sgt i32 %10, 255
  br i1 %11, label %12, label %28

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @FE_DEBUG, align 4
  %14 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %13, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %16 = load i32, i32* @PDELCTRL1, align 4
  %17 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @FILTER_EN_FIELD, align 4
  %20 = call i32 @STV090x_SETFIELD_Px(i32 %18, i32 %19, i32 0)
  %21 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %22 = load i32, i32* @PDELCTRL1, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %21, i32 %22, i32 %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %12
  br label %59

27:                                               ; preds = %12
  br label %58

28:                                               ; preds = %9
  %29 = load i32, i32* @FE_DEBUG, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %29, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %33 = load i32, i32* @PDELCTRL1, align 4
  %34 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @FILTER_EN_FIELD, align 4
  %37 = call i32 @STV090x_SETFIELD_Px(i32 %35, i32 %36, i32 1)
  %38 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %39 = load i32, i32* @PDELCTRL1, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %38, i32 %39, i32 %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %28
  br label %59

44:                                               ; preds = %28
  %45 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %46 = load i32, i32* @ISIENTRY, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %45, i32 %46, i32 %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %59

51:                                               ; preds = %44
  %52 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %53 = load i32, i32* @ISIBITENA, align 4
  %54 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %52, i32 %53, i32 255)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %59

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57, %27
  store i32 0, i32* %3, align 4
  br label %62

59:                                               ; preds = %56, %50, %43, %26
  %60 = load i32, i32* @FE_ERROR, align 4
  %61 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %60, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %62

62:                                               ; preds = %59, %58
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @dprintk(i32, i32, i8*, ...) #1

declare dso_local i32 @STV090x_READ_DEMOD(%struct.stv090x_state*, i32) #1

declare dso_local i32 @STV090x_SETFIELD_Px(i32, i32, i32) #1

declare dso_local i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
