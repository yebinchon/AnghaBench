; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_set_mclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_set_mclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { %struct.TYPE_2__*, %struct.stv090x_config* }
%struct.TYPE_2__ = type { i32 }
%struct.stv090x_config = type { i32 }

@STV090x_SYNTCTRL = common dso_local global i32 0, align 4
@SELX1RATIO_FIELD = common dso_local global i32 0, align 4
@STV090x_NCOARSE = common dso_local global i32 0, align 4
@M_DIV_FIELD = common dso_local global i32 0, align 4
@F22TX = common dso_local global i32 0, align 4
@F22RX = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*, i32, i32)* @stv090x_set_mclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_set_mclk(%struct.stv090x_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stv090x_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stv090x_config*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.stv090x_state* %0, %struct.stv090x_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %13 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %12, i32 0, i32 1
  %14 = load %struct.stv090x_config*, %struct.stv090x_config** %13, align 8
  store %struct.stv090x_config* %14, %struct.stv090x_config** %8, align 8
  %15 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %16 = load i32, i32* @STV090x_SYNTCTRL, align 4
  %17 = call i32 @stv090x_read_reg(%struct.stv090x_state* %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @SELX1RATIO_FIELD, align 4
  %20 = call i32 @STV090x_GETFIELD(i32 %18, i32 %19)
  %21 = icmp eq i32 %20, 1
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 4, i32 6
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %6, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load %struct.stv090x_config*, %struct.stv090x_config** %8, align 8
  %28 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %26, %29
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %10, align 4
  %32 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %33 = load i32, i32* @STV090x_NCOARSE, align 4
  %34 = call i32 @stv090x_read_reg(%struct.stv090x_state* %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @M_DIV_FIELD, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @STV090x_SETFIELD(i32 %35, i32 %36, i32 %37)
  %39 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %40 = load i32, i32* @STV090x_NCOARSE, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @stv090x_write_reg(%struct.stv090x_state* %39, i32 %40, i32 %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %3
  br label %72

45:                                               ; preds = %3
  %46 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %47 = call i32 @stv090x_get_mclk(%struct.stv090x_state* %46)
  %48 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %49 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 4
  %52 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %53 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sdiv i32 %56, 704000
  store i32 %57, i32* %10, align 4
  %58 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %59 = load i32, i32* @F22TX, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %58, i32 %59, i32 %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %45
  br label %72

64:                                               ; preds = %45
  %65 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %66 = load i32, i32* @F22RX, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %65, i32 %66, i32 %67)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %72

71:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %75

72:                                               ; preds = %70, %63, %44
  %73 = load i32, i32* @FE_ERROR, align 4
  %74 = call i32 @dprintk(i32 %73, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %75

75:                                               ; preds = %72, %71
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @stv090x_read_reg(%struct.stv090x_state*, i32) #1

declare dso_local i32 @STV090x_GETFIELD(i32, i32) #1

declare dso_local i32 @STV090x_SETFIELD(i32, i32, i32) #1

declare dso_local i64 @stv090x_write_reg(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @stv090x_get_mclk(%struct.stv090x_state*) #1

declare dso_local i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
