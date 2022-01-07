; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24120.c_cx24120_get_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24120.c_cx24120_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cx24120_state* }
%struct.cx24120_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dtv_frontend_properties = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@CX24120_REG_STATUS = common dso_local global i32 0, align 4
@CX24120_HAS_LOCK = common dso_local global i32 0, align 4
@CX24120_REG_FREQ1 = common dso_local global i32 0, align 4
@CX24120_REG_FREQ2 = common dso_local global i32 0, align 4
@CX24120_REG_FREQ3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"frequency = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @cx24120_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24120_get_frontend(%struct.dvb_frontend* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca %struct.cx24120_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %5, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.cx24120_state*, %struct.cx24120_state** %12, align 8
  store %struct.cx24120_state* %13, %struct.cx24120_state** %6, align 8
  %14 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %15 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %20 = load i32, i32* @CX24120_REG_STATUS, align 4
  %21 = call i32 @cx24120_readreg(%struct.cx24120_state* %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @CX24120_HAS_LOCK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %56

27:                                               ; preds = %2
  %28 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %29 = load i32, i32* @CX24120_REG_FREQ1, align 4
  %30 = call i32 @cx24120_readreg(%struct.cx24120_state* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %32 = load i32, i32* @CX24120_REG_FREQ2, align 4
  %33 = call i32 @cx24120_readreg(%struct.cx24120_state* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %35 = load i32, i32* @CX24120_REG_FREQ3, align 4
  %36 = call i32 @cx24120_readreg(%struct.cx24120_state* %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = shl i32 %37, 16
  %39 = load i32, i32* %8, align 4
  %40 = shl i32 %39, 8
  %41 = or i32 %38, %40
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %45 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %47 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %51 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %55 = call i32 @cx24120_get_fec(%struct.dvb_frontend* %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %27, %26
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @cx24120_readreg(%struct.cx24120_state*, i32) #1

declare dso_local i32 @cx24120_get_fec(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
