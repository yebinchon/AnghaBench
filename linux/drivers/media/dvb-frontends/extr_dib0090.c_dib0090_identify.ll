; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0090.c_dib0090_identify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0090.c_dib0090_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib0090_state* }
%struct.dib0090_state = type { %struct.dib0090_identity }
%struct.dib0090_identity = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"Tuner identification (Version = 0x%04x)\0A\00", align 1
@KROSUS_PLL_LOCKED = common dso_local global i32 0, align 4
@KROSUS = common dso_local global i32 0, align 4
@SOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"SOC 8090 P1-G11R1 Has been detected\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"SOC 8090 P1-G21R1 Has been detected\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"SOC 7090 P1-G11R1 Has been detected\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"SOC 7090 P1-G21R1 Has been detected\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"MP001 : 9090/8096\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"MP005 : Single Sband\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"MP008 : diversity VHF-UHF-LBAND\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"MP009 : diversity 29098 CBAND-UHF-LBAND-SBAND\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"P1G_21R2 detected\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"P1G detected\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"P1D/E/F detected\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"P1C detected\0A\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"P1-A/B detected: driver is deactivated - not available\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib0090_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib0090_identify(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dib0090_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dib0090_identity*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.dib0090_state*, %struct.dib0090_state** %8, align 8
  store %struct.dib0090_state* %9, %struct.dib0090_state** %4, align 8
  %10 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %11 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %10, i32 0, i32 0
  store %struct.dib0090_identity* %11, %struct.dib0090_identity** %6, align 8
  %12 = load %struct.dib0090_state*, %struct.dib0090_state** %4, align 8
  %13 = call i32 @dib0090_read_reg(%struct.dib0090_state* %12, i32 26)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.dib0090_identity*, %struct.dib0090_identity** %6, align 8
  %15 = getelementptr inbounds %struct.dib0090_identity, %struct.dib0090_identity* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = load %struct.dib0090_identity*, %struct.dib0090_identity** %6, align 8
  %17 = getelementptr inbounds %struct.dib0090_identity, %struct.dib0090_identity* %16, i32 0, i32 1
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @KROSUS_PLL_LOCKED, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, 255
  %26 = load %struct.dib0090_identity*, %struct.dib0090_identity** %6, align 8
  %27 = getelementptr inbounds %struct.dib0090_identity, %struct.dib0090_identity* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = ashr i32 %28, 8
  %30 = and i32 %29, 15
  %31 = load %struct.dib0090_identity*, %struct.dib0090_identity** %6, align 8
  %32 = getelementptr inbounds %struct.dib0090_identity, %struct.dib0090_identity* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.dib0090_identity*, %struct.dib0090_identity** %6, align 8
  %34 = getelementptr inbounds %struct.dib0090_identity, %struct.dib0090_identity* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @KROSUS, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %1
  br label %107

39:                                               ; preds = %1
  %40 = load %struct.dib0090_identity*, %struct.dib0090_identity** %6, align 8
  %41 = getelementptr inbounds %struct.dib0090_identity, %struct.dib0090_identity* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 3
  %44 = load i32, i32* @SOC, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %39
  %47 = load %struct.dib0090_identity*, %struct.dib0090_identity** %6, align 8
  %48 = getelementptr inbounds %struct.dib0090_identity, %struct.dib0090_identity* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  %49 = load %struct.dib0090_identity*, %struct.dib0090_identity** %6, align 8
  %50 = getelementptr inbounds %struct.dib0090_identity, %struct.dib0090_identity* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %68 [
    i32 129, label %52
    i32 128, label %56
    i32 131, label %60
    i32 130, label %64
  ]

52:                                               ; preds = %46
  %53 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.dib0090_identity*, %struct.dib0090_identity** %6, align 8
  %55 = getelementptr inbounds %struct.dib0090_identity, %struct.dib0090_identity* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  br label %69

56:                                               ; preds = %46
  %57 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.dib0090_identity*, %struct.dib0090_identity** %6, align 8
  %59 = getelementptr inbounds %struct.dib0090_identity, %struct.dib0090_identity* %58, i32 0, i32 0
  store i32 1, i32* %59, align 4
  br label %69

60:                                               ; preds = %46
  %61 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %62 = load %struct.dib0090_identity*, %struct.dib0090_identity** %6, align 8
  %63 = getelementptr inbounds %struct.dib0090_identity, %struct.dib0090_identity* %62, i32 0, i32 0
  store i32 1, i32* %63, align 4
  br label %69

64:                                               ; preds = %46
  %65 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %66 = load %struct.dib0090_identity*, %struct.dib0090_identity** %6, align 8
  %67 = getelementptr inbounds %struct.dib0090_identity, %struct.dib0090_identity* %66, i32 0, i32 0
  store i32 1, i32* %67, align 4
  br label %69

68:                                               ; preds = %46
  br label %107

69:                                               ; preds = %64, %60, %56, %52
  br label %106

70:                                               ; preds = %39
  %71 = load %struct.dib0090_identity*, %struct.dib0090_identity** %6, align 8
  %72 = getelementptr inbounds %struct.dib0090_identity, %struct.dib0090_identity* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = ashr i32 %73, 5
  %75 = and i32 %74, 7
  switch i32 %75, label %84 [
    i32 140, label %76
    i32 139, label %78
    i32 138, label %80
    i32 137, label %82
  ]

76:                                               ; preds = %70
  %77 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %85

78:                                               ; preds = %70
  %79 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %85

80:                                               ; preds = %70
  %81 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %85

82:                                               ; preds = %70
  %83 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0))
  br label %85

84:                                               ; preds = %70
  br label %107

85:                                               ; preds = %82, %80, %78, %76
  %86 = load %struct.dib0090_identity*, %struct.dib0090_identity** %6, align 8
  %87 = getelementptr inbounds %struct.dib0090_identity, %struct.dib0090_identity* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 31
  switch i32 %89, label %104 [
    i32 132, label %90
    i32 133, label %94
    i32 134, label %98
    i32 135, label %100
    i32 136, label %102
  ]

90:                                               ; preds = %85
  %91 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %92 = load %struct.dib0090_identity*, %struct.dib0090_identity** %6, align 8
  %93 = getelementptr inbounds %struct.dib0090_identity, %struct.dib0090_identity* %92, i32 0, i32 0
  store i32 1, i32* %93, align 4
  br label %105

94:                                               ; preds = %85
  %95 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %96 = load %struct.dib0090_identity*, %struct.dib0090_identity** %6, align 8
  %97 = getelementptr inbounds %struct.dib0090_identity, %struct.dib0090_identity* %96, i32 0, i32 0
  store i32 1, i32* %97, align 4
  br label %105

98:                                               ; preds = %85
  %99 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  br label %105

100:                                              ; preds = %85
  %101 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  br label %105

102:                                              ; preds = %85
  %103 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.13, i64 0, i64 0))
  br label %107

104:                                              ; preds = %85
  br label %107

105:                                              ; preds = %100, %98, %94, %90
  br label %106

106:                                              ; preds = %105, %69
  store i32 0, i32* %2, align 4
  br label %110

107:                                              ; preds = %104, %102, %84, %68, %38
  %108 = load i32, i32* @EIO, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %107, %106
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @dib0090_read_reg(%struct.dib0090_state*, i32) #1

declare dso_local i32 @dprintk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
