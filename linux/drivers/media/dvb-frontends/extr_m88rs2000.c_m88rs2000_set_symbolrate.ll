; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88rs2000.c_m88rs2000_set_symbolrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88rs2000.c_m88rs2000_set_symbolrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.m88rs2000_state* }
%struct.m88rs2000_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"m88rs2000: m88rs2000_set_symbolrate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @m88rs2000_set_symbolrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m88rs2000_set_symbolrate(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.m88rs2000_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32], align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %12, align 8
  store %struct.m88rs2000_state* %13, %struct.m88rs2000_state** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 1000000
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp sgt i32 %17, 45000000
  br i1 %18, label %19, label %22

19:                                               ; preds = %16, %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %106

22:                                               ; preds = %16
  %23 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %24 = call i32 @m88rs2000_get_mclk(%struct.dvb_frontend* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %106

30:                                               ; preds = %22
  %31 = load i32, i32* %5, align 4
  %32 = sdiv i32 %31, 1000
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = mul nsw i32 %33, 16777216
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @do_div(i32 %35, i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = ashr i32 %38, 16
  %40 = and i32 %39, 255
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %8, align 4
  %43 = ashr i32 %42, 8
  %44 = and i32 %43, 255
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, 255
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  store i32 %47, i32* %48, align 4
  %49 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %6, align 8
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %49, i32 147, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %6, align 8
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %53, i32 148, i32 %55)
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  %59 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %6, align 8
  %60 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %59, i32 149, i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp sgt i32 %65, 10000000
  br i1 %66, label %67, label %72

67:                                               ; preds = %30
  %68 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %6, align 8
  %69 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %68, i32 160, i32 32)
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  br label %77

72:                                               ; preds = %30
  %73 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %6, align 8
  %74 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %73, i32 160, i32 96)
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %72, %67
  %78 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %6, align 8
  %79 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %78, i32 161, i32 224)
  %80 = load i32, i32* %7, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp sgt i32 %82, 12000000
  br i1 %83, label %84, label %89

84:                                               ; preds = %77
  %85 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %6, align 8
  %86 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %85, i32 163, i32 32)
  %87 = load i32, i32* %7, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %7, align 4
  br label %103

89:                                               ; preds = %77
  %90 = load i32, i32* %5, align 4
  %91 = icmp sgt i32 %90, 2800000
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %6, align 8
  %94 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %93, i32 163, i32 152)
  %95 = load i32, i32* %7, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %7, align 4
  br label %102

97:                                               ; preds = %89
  %98 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %6, align 8
  %99 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %98, i32 163, i32 144)
  %100 = load i32, i32* %7, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %97, %92
  br label %103

103:                                              ; preds = %102, %84
  %104 = call i32 @deb_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %103, %27, %19
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @m88rs2000_get_mclk(%struct.dvb_frontend*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @m88rs2000_writereg(%struct.m88rs2000_state*, i32, i32) #1

declare dso_local i32 @deb_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
