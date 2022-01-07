; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_set_srate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_set_srate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SFRINIT1 = common dso_local global i32 0, align 4
@SFRINIT0 = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*, i32)* @stv090x_set_srate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_set_srate(%struct.stv090x_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stv090x_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stv090x_state* %0, %struct.stv090x_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp sgt i32 %7, 60000000
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = shl i32 %10, 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %13 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = ashr i32 %16, 12
  %18 = load i32, i32* %6, align 4
  %19 = sdiv i32 %18, %17
  store i32 %19, i32* %6, align 4
  br label %46

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp sgt i32 %21, 6000000
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = shl i32 %24, 6
  store i32 %25, i32* %6, align 4
  %26 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %27 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 10
  %32 = load i32, i32* %6, align 4
  %33 = sdiv i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %45

34:                                               ; preds = %20
  %35 = load i32, i32* %5, align 4
  %36 = shl i32 %35, 9
  store i32 %36, i32* %6, align 4
  %37 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %38 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 7
  %43 = load i32, i32* %6, align 4
  %44 = sdiv i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %34, %23
  br label %46

46:                                               ; preds = %45, %9
  %47 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %48 = load i32, i32* @SFRINIT1, align 4
  %49 = load i32, i32* %6, align 4
  %50 = ashr i32 %49, 8
  %51 = and i32 %50, 127
  %52 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %47, i32 %48, i32 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %64

55:                                               ; preds = %46
  %56 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %57 = load i32, i32* @SFRINIT0, align 4
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, 255
  %60 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %56, i32 %57, i32 %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %64

63:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %67

64:                                               ; preds = %62, %54
  %65 = load i32, i32* @FE_ERROR, align 4
  %66 = call i32 @dprintk(i32 %65, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %63
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
