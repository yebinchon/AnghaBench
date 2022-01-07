; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mb86a16.c_mb86a16_read_ber.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mb86a16.c_mb86a16_read_ber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.mb86a16_state* }
%struct.mb86a16_state = type { i32 }

@MB86A16_BERMON = common dso_local global i32 0, align 4
@MB86A16_BERTAB = common dso_local global i32 0, align 4
@MB86A16_BERLSB = common dso_local global i32 0, align 4
@MB86A16_BERMID = common dso_local global i32 0, align 4
@MB86A16_BERMSB = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@MB86A16_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"BER coarse=[0x%02x]\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"BER fine=[0x%02x]\00", align 1
@MB86A16_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"I2C transfer error\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @mb86a16_read_ber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mb86a16_read_ber(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mb86a16_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %16 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %15, i32 0, i32 0
  %17 = load %struct.mb86a16_state*, %struct.mb86a16_state** %16, align 8
  store %struct.mb86a16_state* %17, %struct.mb86a16_state** %14, align 8
  %18 = load i32*, i32** %5, align 8
  store i32 0, i32* %18, align 4
  %19 = load %struct.mb86a16_state*, %struct.mb86a16_state** %14, align 8
  %20 = load i32, i32* @MB86A16_BERMON, align 4
  %21 = call i32 @mb86a16_read(%struct.mb86a16_state* %19, i32 %20, i32* %6)
  %22 = icmp ne i32 %21, 2
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %129

24:                                               ; preds = %2
  %25 = load %struct.mb86a16_state*, %struct.mb86a16_state** %14, align 8
  %26 = load i32, i32* @MB86A16_BERTAB, align 4
  %27 = call i32 @mb86a16_read(%struct.mb86a16_state* %25, i32 %26, i32* %7)
  %28 = icmp ne i32 %27, 2
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %129

30:                                               ; preds = %24
  %31 = load %struct.mb86a16_state*, %struct.mb86a16_state** %14, align 8
  %32 = load i32, i32* @MB86A16_BERLSB, align 4
  %33 = call i32 @mb86a16_read(%struct.mb86a16_state* %31, i32 %32, i32* %8)
  %34 = icmp ne i32 %33, 2
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %129

36:                                               ; preds = %30
  %37 = load %struct.mb86a16_state*, %struct.mb86a16_state** %14, align 8
  %38 = load i32, i32* @MB86A16_BERMID, align 4
  %39 = call i32 @mb86a16_read(%struct.mb86a16_state* %37, i32 %38, i32* %9)
  %40 = icmp ne i32 %39, 2
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %129

42:                                               ; preds = %36
  %43 = load %struct.mb86a16_state*, %struct.mb86a16_state** %14, align 8
  %44 = load i32, i32* @MB86A16_BERMSB, align 4
  %45 = call i32 @mb86a16_read(%struct.mb86a16_state* %43, i32 %44, i32* %10)
  %46 = icmp ne i32 %45, 2
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %129

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %128

52:                                               ; preds = %48
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, 31
  %55 = load i32*, i32** %5, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @verbose, align 4
  %57 = load i32, i32* @MB86A16_DEBUG, align 4
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %56, i32 %57, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, 1
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %100

64:                                               ; preds = %52
  %65 = load i32, i32* %6, align 4
  %66 = ashr i32 %65, 3
  %67 = and i32 %66, 3
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %10, align 4
  %69 = shl i32 %68, 8
  %70 = load i32, i32* %9, align 4
  %71 = or i32 %69, %70
  %72 = shl i32 %71, 8
  %73 = load i32, i32* %8, align 4
  %74 = or i32 %72, %73
  %75 = load i32*, i32** %5, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %64
  store i32 12500000, i32* %13, align 4
  br label %90

79:                                               ; preds = %64
  %80 = load i32, i32* %12, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 25000000, i32* %13, align 4
  br label %89

83:                                               ; preds = %79
  %84 = load i32, i32* %12, align 4
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 50000000, i32* %13, align 4
  br label %88

87:                                               ; preds = %83
  store i32 100000000, i32* %13, align 4
  br label %88

88:                                               ; preds = %87, %86
  br label %89

89:                                               ; preds = %88, %82
  br label %90

90:                                               ; preds = %89, %78
  %91 = load i32, i32* %13, align 4
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* %92, align 4
  %94 = sdiv i32 %93, %91
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* @verbose, align 4
  %96 = load i32, i32* @MB86A16_DEBUG, align 4
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %95, i32 %96, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  br label %127

100:                                              ; preds = %52
  %101 = load i32, i32* %6, align 4
  %102 = ashr i32 %101, 1
  %103 = and i32 %102, 1
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %10, align 4
  %105 = shl i32 %104, 8
  %106 = load i32, i32* %9, align 4
  %107 = or i32 %105, %106
  %108 = shl i32 %107, 8
  %109 = load i32, i32* %8, align 4
  %110 = or i32 %108, %109
  %111 = load i32*, i32** %5, align 8
  store i32 %110, i32* %111, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %100
  store i32 16, i32* %13, align 4
  br label %116

115:                                              ; preds = %100
  store i32 24, i32* %13, align 4
  br label %116

116:                                              ; preds = %115, %114
  %117 = load i32, i32* %13, align 4
  %118 = xor i32 2, %117
  %119 = load i32*, i32** %5, align 8
  %120 = load i32, i32* %119, align 4
  %121 = sdiv i32 %120, %118
  store i32 %121, i32* %119, align 4
  %122 = load i32, i32* @verbose, align 4
  %123 = load i32, i32* @MB86A16_DEBUG, align 4
  %124 = load i32*, i32** %5, align 8
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %122, i32 %123, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %116, %90
  br label %128

128:                                              ; preds = %127, %48
  store i32 0, i32* %3, align 4
  br label %135

129:                                              ; preds = %47, %41, %35, %29, %23
  %130 = load i32, i32* @verbose, align 4
  %131 = load i32, i32* @MB86A16_ERROR, align 4
  %132 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %130, i32 %131, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %133 = load i32, i32* @EREMOTEIO, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %129, %128
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @mb86a16_read(%struct.mb86a16_state*, i32, i32*) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
