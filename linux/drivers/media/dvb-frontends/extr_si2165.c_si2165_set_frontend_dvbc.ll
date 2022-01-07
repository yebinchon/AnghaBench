; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_si2165.c_si2165_set_frontend_dvbc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_si2165.c_si2165_set_frontend_dvbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.si2165_state* }
%struct.dtv_frontend_properties = type { i64, i32 }
%struct.si2165_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@REG_REQ_CONSTELLATION = common dso_local global i32 0, align 4
@REG_LOCK_TIMEOUT = common dso_local global i32 0, align 4
@dvbc_regs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @si2165_set_frontend_dvbc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si2165_set_frontend_dvbc(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.si2165_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dtv_frontend_properties*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 1
  %11 = load %struct.si2165_state*, %struct.si2165_state** %10, align 8
  store %struct.si2165_state* %11, %struct.si2165_state** %4, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  store %struct.dtv_frontend_properties* %13, %struct.dtv_frontend_properties** %6, align 8
  %14 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %15 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load %struct.si2165_state*, %struct.si2165_state** %4, align 8
  %18 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %84

24:                                               ; preds = %1
  %25 = load i64, i64* %7, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %84

30:                                               ; preds = %24
  %31 = load %struct.si2165_state*, %struct.si2165_state** %4, align 8
  %32 = call i32 @si2165_adjust_pll_divl(%struct.si2165_state* %31, i32 14)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %84

37:                                               ; preds = %30
  %38 = load %struct.si2165_state*, %struct.si2165_state** %4, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @si2165_set_oversamp(%struct.si2165_state* %38, i64 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %84

45:                                               ; preds = %37
  %46 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %47 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %55 [
    i32 128, label %49
    i32 132, label %50
    i32 130, label %51
    i32 129, label %52
    i32 133, label %53
    i32 131, label %54
  ]

49:                                               ; preds = %45
  store i32 3, i32* %8, align 4
  br label %56

50:                                               ; preds = %45
  store i32 7, i32* %8, align 4
  br label %56

51:                                               ; preds = %45
  store i32 8, i32* %8, align 4
  br label %56

52:                                               ; preds = %45
  store i32 9, i32* %8, align 4
  br label %56

53:                                               ; preds = %45
  store i32 10, i32* %8, align 4
  br label %56

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %45, %54
  store i32 11, i32* %8, align 4
  br label %56

56:                                               ; preds = %55, %53, %52, %51, %50, %49
  %57 = load %struct.si2165_state*, %struct.si2165_state** %4, align 8
  %58 = load i32, i32* @REG_REQ_CONSTELLATION, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @si2165_writereg8(%struct.si2165_state* %57, i32 %58, i32 %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %84

65:                                               ; preds = %56
  %66 = load %struct.si2165_state*, %struct.si2165_state** %4, align 8
  %67 = load i32, i32* @REG_LOCK_TIMEOUT, align 4
  %68 = call i32 @si2165_writereg32(%struct.si2165_state* %66, i32 %67, i32 8000000)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %84

73:                                               ; preds = %65
  %74 = load %struct.si2165_state*, %struct.si2165_state** %4, align 8
  %75 = load i32, i32* @dvbc_regs, align 4
  %76 = load i32, i32* @dvbc_regs, align 4
  %77 = call i32 @ARRAY_SIZE(i32 %76)
  %78 = call i32 @si2165_write_reg_list(%struct.si2165_state* %74, i32 %75, i32 %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %2, align 4
  br label %84

83:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %81, %71, %63, %43, %35, %27, %21
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @si2165_adjust_pll_divl(%struct.si2165_state*, i32) #1

declare dso_local i32 @si2165_set_oversamp(%struct.si2165_state*, i64) #1

declare dso_local i32 @si2165_writereg8(%struct.si2165_state*, i32, i32) #1

declare dso_local i32 @si2165_writereg32(%struct.si2165_state*, i32, i32) #1

declare dso_local i32 @si2165_write_reg_list(%struct.si2165_state*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
