; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0288.c_stv0288_set_symbolrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0288.c_stv0288_set_symbolrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv0288_state* }
%struct.stv0288_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"stv0288: stv0288_set_symbolrate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @stv0288_set_symbolrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0288_set_symbolrate(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stv0288_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x i8], align 1
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.stv0288_state*, %struct.stv0288_state** %10, align 8
  store %struct.stv0288_state* %11, %struct.stv0288_state** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 1000000
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp sgt i32 %15, 45000000
  br i1 %16, label %17, label %20

17:                                               ; preds = %14, %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %71

20:                                               ; preds = %14
  %21 = load %struct.stv0288_state*, %struct.stv0288_state** %6, align 8
  %22 = call i32 @stv0288_writeregI(%struct.stv0288_state* %21, i32 34, i8 zeroext 0)
  %23 = load %struct.stv0288_state*, %struct.stv0288_state** %6, align 8
  %24 = call i32 @stv0288_writeregI(%struct.stv0288_state* %23, i32 35, i8 zeroext 0)
  %25 = load %struct.stv0288_state*, %struct.stv0288_state** %6, align 8
  %26 = call i32 @stv0288_writeregI(%struct.stv0288_state* %25, i32 43, i8 zeroext -1)
  %27 = load %struct.stv0288_state*, %struct.stv0288_state** %6, align 8
  %28 = call i32 @stv0288_writeregI(%struct.stv0288_state* %27, i32 44, i8 zeroext -9)
  %29 = load i32, i32* %5, align 4
  %30 = udiv i32 %29, 1000
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = mul i32 %31, 32768
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = udiv i32 %33, 25
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = udiv i32 %35, 125
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = lshr i32 %37, 12
  %39 = and i32 %38, 255
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  store i8 %40, i8* %41, align 1
  %42 = load i32, i32* %7, align 4
  %43 = lshr i32 %42, 4
  %44 = and i32 %43, 255
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 1
  store i8 %45, i8* %46, align 1
  %47 = load i32, i32* %7, align 4
  %48 = shl i32 %47, 4
  %49 = and i32 %48, 240
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 2
  store i8 %50, i8* %51, align 1
  %52 = load %struct.stv0288_state*, %struct.stv0288_state** %6, align 8
  %53 = call i32 @stv0288_writeregI(%struct.stv0288_state* %52, i32 40, i8 zeroext -128)
  %54 = load %struct.stv0288_state*, %struct.stv0288_state** %6, align 8
  %55 = call i32 @stv0288_writeregI(%struct.stv0288_state* %54, i32 41, i8 zeroext 0)
  %56 = load %struct.stv0288_state*, %struct.stv0288_state** %6, align 8
  %57 = call i32 @stv0288_writeregI(%struct.stv0288_state* %56, i32 42, i8 zeroext 0)
  %58 = load %struct.stv0288_state*, %struct.stv0288_state** %6, align 8
  %59 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = call i32 @stv0288_writeregI(%struct.stv0288_state* %58, i32 40, i8 zeroext %60)
  %62 = load %struct.stv0288_state*, %struct.stv0288_state** %6, align 8
  %63 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = call i32 @stv0288_writeregI(%struct.stv0288_state* %62, i32 41, i8 zeroext %64)
  %66 = load %struct.stv0288_state*, %struct.stv0288_state** %6, align 8
  %67 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 2
  %68 = load i8, i8* %67, align 1
  %69 = call i32 @stv0288_writeregI(%struct.stv0288_state* %66, i32 42, i8 zeroext %68)
  %70 = call i32 @dprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %20, %17
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @stv0288_writeregI(%struct.stv0288_state*, i32, i8 zeroext) #1

declare dso_local i32 @dprintk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
