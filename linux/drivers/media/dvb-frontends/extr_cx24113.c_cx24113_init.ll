; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24113.c_cx24113_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24113.c_cx24113_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cx24113_state* }
%struct.cx24113_state = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i64, i32, i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i64 }
%struct.TYPE_2__ = type { i32 }

@ICP_LEVEL4 = common dso_local global i8* null, align 8
@ICP_LEVEL3 = common dso_local global i8* null, align 8
@ICP_LEVEL2 = common dso_local global i8* null, align 8
@ICP_LEVEL1 = common dso_local global i32 0, align 4
@VCOBANDSEL_1 = common dso_local global i32 0, align 4
@LNA_MAX_GAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @cx24113_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24113_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.cx24113_state*, align 8
  %4 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 0
  %7 = load %struct.cx24113_state*, %struct.cx24113_state** %6, align 8
  store %struct.cx24113_state* %7, %struct.cx24113_state** %3, align 8
  %8 = load %struct.cx24113_state*, %struct.cx24113_state** %3, align 8
  %9 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %8, i32 0, i32 0
  store i32 -50, i32* %9, align 8
  %10 = load %struct.cx24113_state*, %struct.cx24113_state** %3, align 8
  %11 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %10, i32 0, i32 1
  store i32 255, i32* %11, align 4
  %12 = load %struct.cx24113_state*, %struct.cx24113_state** %3, align 8
  %13 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %12, i32 0, i32 20
  store i64 0, i64* %13, align 8
  %14 = load %struct.cx24113_state*, %struct.cx24113_state** %3, align 8
  %15 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %14, i32 0, i32 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 11000
  br i1 %19, label %20, label %33

20:                                               ; preds = %1
  %21 = load i8*, i8** @ICP_LEVEL4, align 8
  %22 = load %struct.cx24113_state*, %struct.cx24113_state** %3, align 8
  %23 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %22, i32 0, i32 19
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** @ICP_LEVEL4, align 8
  %25 = load %struct.cx24113_state*, %struct.cx24113_state** %3, align 8
  %26 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %25, i32 0, i32 18
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** @ICP_LEVEL3, align 8
  %28 = load %struct.cx24113_state*, %struct.cx24113_state** %3, align 8
  %29 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %28, i32 0, i32 17
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** @ICP_LEVEL3, align 8
  %31 = load %struct.cx24113_state*, %struct.cx24113_state** %3, align 8
  %32 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %31, i32 0, i32 16
  store i8* %30, i8** %32, align 8
  br label %46

33:                                               ; preds = %1
  %34 = load i8*, i8** @ICP_LEVEL4, align 8
  %35 = load %struct.cx24113_state*, %struct.cx24113_state** %3, align 8
  %36 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %35, i32 0, i32 19
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** @ICP_LEVEL4, align 8
  %38 = load %struct.cx24113_state*, %struct.cx24113_state** %3, align 8
  %39 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %38, i32 0, i32 18
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** @ICP_LEVEL3, align 8
  %41 = load %struct.cx24113_state*, %struct.cx24113_state** %3, align 8
  %42 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %41, i32 0, i32 17
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** @ICP_LEVEL2, align 8
  %44 = load %struct.cx24113_state*, %struct.cx24113_state** %3, align 8
  %45 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %44, i32 0, i32 16
  store i8* %43, i8** %45, align 8
  br label %46

46:                                               ; preds = %33, %20
  %47 = load i8*, i8** @ICP_LEVEL3, align 8
  %48 = load %struct.cx24113_state*, %struct.cx24113_state** %3, align 8
  %49 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %48, i32 0, i32 15
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* @ICP_LEVEL1, align 4
  %51 = load %struct.cx24113_state*, %struct.cx24113_state** %3, align 8
  %52 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %51, i32 0, i32 14
  store i32 %50, i32* %52, align 8
  %53 = load %struct.cx24113_state*, %struct.cx24113_state** %3, align 8
  %54 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %53, i32 0, i32 2
  store i32 1, i32* %54, align 8
  %55 = load %struct.cx24113_state*, %struct.cx24113_state** %3, align 8
  %56 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %55, i32 0, i32 13
  store i64 0, i64* %56, align 8
  %57 = load %struct.cx24113_state*, %struct.cx24113_state** %3, align 8
  %58 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %57, i32 0, i32 12
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* @VCOBANDSEL_1, align 4
  %60 = load %struct.cx24113_state*, %struct.cx24113_state** %3, align 8
  %61 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %60, i32 0, i32 11
  store i32 %59, i32* %61, align 8
  %62 = load %struct.cx24113_state*, %struct.cx24113_state** %3, align 8
  %63 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %62, i32 0, i32 3
  store i32 8, i32* %63, align 4
  %64 = load %struct.cx24113_state*, %struct.cx24113_state** %3, align 8
  %65 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %64, i32 0, i32 4
  store i32 4095, i32* %65, align 8
  %66 = load %struct.cx24113_state*, %struct.cx24113_state** %3, align 8
  %67 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %66, i32 0, i32 5
  store i32 4095, i32* %67, align 4
  %68 = load %struct.cx24113_state*, %struct.cx24113_state** %3, align 8
  %69 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %68, i32 0, i32 10
  store i64 0, i64* %69, align 8
  %70 = load i32, i32* @LNA_MAX_GAIN, align 4
  %71 = load %struct.cx24113_state*, %struct.cx24113_state** %3, align 8
  %72 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %71, i32 0, i32 9
  store i32 %70, i32* %72, align 8
  %73 = load %struct.cx24113_state*, %struct.cx24113_state** %3, align 8
  %74 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %73, i32 0, i32 6
  store i32 1, i32* %74, align 8
  %75 = load %struct.cx24113_state*, %struct.cx24113_state** %3, align 8
  %76 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %75, i32 0, i32 7
  store i32 1, i32* %76, align 4
  %77 = load %struct.cx24113_state*, %struct.cx24113_state** %3, align 8
  %78 = call i32 @cx24113_set_Fref(%struct.cx24113_state* %77, i32 0)
  %79 = load %struct.cx24113_state*, %struct.cx24113_state** %3, align 8
  %80 = call i32 @cx24113_enable(%struct.cx24113_state* %79, i32 61)
  %81 = load %struct.cx24113_state*, %struct.cx24113_state** %3, align 8
  %82 = call i32 @cx24113_set_parameters(%struct.cx24113_state* %81)
  %83 = load %struct.cx24113_state*, %struct.cx24113_state** %3, align 8
  %84 = call i32 @cx24113_set_gain_settings(%struct.cx24113_state* %83, i32 -30)
  %85 = load %struct.cx24113_state*, %struct.cx24113_state** %3, align 8
  %86 = call i32 @cx24113_set_bandwidth(%struct.cx24113_state* %85, i32 18025)
  %87 = load %struct.cx24113_state*, %struct.cx24113_state** %3, align 8
  %88 = call i32 @cx24113_set_clk_inversion(%struct.cx24113_state* %87, i32 1)
  %89 = load %struct.cx24113_state*, %struct.cx24113_state** %3, align 8
  %90 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %89, i32 0, i32 8
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp sge i32 %93, 40000
  br i1 %94, label %95, label %102

95:                                               ; preds = %46
  %96 = load %struct.cx24113_state*, %struct.cx24113_state** %3, align 8
  %97 = load %struct.cx24113_state*, %struct.cx24113_state** %3, align 8
  %98 = call i32 @cx24113_readreg(%struct.cx24113_state* %97, i32 2)
  %99 = and i32 %98, 251
  %100 = or i32 %99, 4
  %101 = call i32 @cx24113_writereg(%struct.cx24113_state* %96, i32 2, i32 %100)
  store i32 %101, i32* %4, align 4
  br label %108

102:                                              ; preds = %46
  %103 = load %struct.cx24113_state*, %struct.cx24113_state** %3, align 8
  %104 = load %struct.cx24113_state*, %struct.cx24113_state** %3, align 8
  %105 = call i32 @cx24113_readreg(%struct.cx24113_state* %104, i32 2)
  %106 = and i32 %105, 251
  %107 = call i32 @cx24113_writereg(%struct.cx24113_state* %103, i32 2, i32 %106)
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %102, %95
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @cx24113_set_Fref(%struct.cx24113_state*, i32) #1

declare dso_local i32 @cx24113_enable(%struct.cx24113_state*, i32) #1

declare dso_local i32 @cx24113_set_parameters(%struct.cx24113_state*) #1

declare dso_local i32 @cx24113_set_gain_settings(%struct.cx24113_state*, i32) #1

declare dso_local i32 @cx24113_set_bandwidth(%struct.cx24113_state*, i32) #1

declare dso_local i32 @cx24113_set_clk_inversion(%struct.cx24113_state*, i32) #1

declare dso_local i32 @cx24113_writereg(%struct.cx24113_state*, i32, i32) #1

declare dso_local i32 @cx24113_readreg(%struct.cx24113_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
