; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0299.c_stv0299_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0299.c_stv0299_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv0299_state* }
%struct.stv0299_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i64 }

@.str = private unnamed_addr constant [20 x i8] c"stv0299: init chip\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @stv0299_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0299_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.stv0299_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.stv0299_state*, %struct.stv0299_state** %8, align 8
  store %struct.stv0299_state* %9, %struct.stv0299_state** %3, align 8
  %10 = call i32 @dprintk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.stv0299_state*, %struct.stv0299_state** %3, align 8
  %12 = load %struct.stv0299_state*, %struct.stv0299_state** %3, align 8
  %13 = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = or i32 48, %14
  %16 = call i32 @stv0299_writeregI(%struct.stv0299_state* %11, i32 2, i32 %15)
  %17 = call i32 @msleep(i32 50)
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %70, %1
  %19 = load %struct.stv0299_state*, %struct.stv0299_state** %3, align 8
  %20 = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  %28 = load %struct.stv0299_state*, %struct.stv0299_state** %3, align 8
  %29 = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 255
  br i1 %39, label %40, label %44

40:                                               ; preds = %18
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 255
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %73

44:                                               ; preds = %40, %18
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 12
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load %struct.stv0299_state*, %struct.stv0299_state** %3, align 8
  %49 = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, -17
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %54, %47, %44
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, 15
  %63 = load %struct.stv0299_state*, %struct.stv0299_state** %3, align 8
  %64 = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %60, %57
  %66 = load %struct.stv0299_state*, %struct.stv0299_state** %3, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @stv0299_writeregI(%struct.stv0299_state* %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 2
  store i32 %72, i32* %4, align 4
  br label %18

73:                                               ; preds = %43
  ret i32 0
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @stv0299_writeregI(%struct.stv0299_state*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
