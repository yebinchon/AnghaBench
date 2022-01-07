; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { i64*, i32, %struct.stv090x_config* }
%struct.stv090x_config = type { i32 }
%struct.i2c_msg = type { i32*, i32, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Read error, Reg=[0x%02x], Status=%d\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@FE_DEBUGREG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Reg=[0x%02x], data=%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*, i32)* @stv090x_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_read_reg(%struct.stv090x_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stv090x_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stv090x_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.stv090x_state* %0, %struct.stv090x_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %12 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %11, i32 0, i32 2
  %13 = load %struct.stv090x_config*, %struct.stv090x_config** %12, align 8
  store %struct.stv090x_config* %13, %struct.stv090x_config** %6, align 8
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %15 = load i32, i32* %5, align 4
  %16 = lshr i32 %15, 8
  store i32 %16, i32* %14, align 4
  %17 = getelementptr inbounds i32, i32* %14, i64 1
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 255
  store i32 %19, i32* %17, align 4
  %20 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 0
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32* %22, i32** %21, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 1
  store i32 2, i32* %23, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 2
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 3
  %26 = load %struct.stv090x_config*, %struct.stv090x_config** %6, align 8
  %27 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %25, align 8
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i64 1
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i32 0, i32 0
  store i32* %9, i32** %30, align 8
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i32 0, i32 1
  store i32 1, i32* %31, align 8
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i32 0, i32 2
  %33 = load i32, i32* @I2C_M_RD, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i32 0, i32 3
  %35 = load %struct.stv090x_config*, %struct.stv090x_config** %6, align 8
  %36 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %34, align 8
  %38 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %39 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %42 = call i32 @i2c_transfer(i32 %40, %struct.i2c_msg* %41, i32 2)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 2
  br i1 %44, label %45, label %65

45:                                               ; preds = %2
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @ERESTARTSYS, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp ne i32 %46, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i32, i32* @FE_ERROR, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @dprintk(i32 %51, i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %45
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* %7, align 4
  br label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @EREMOTEIO, align 4
  %62 = sub nsw i32 0, %61
  br label %63

63:                                               ; preds = %60, %58
  %64 = phi i32 [ %59, %58 ], [ %62, %60 ]
  store i32 %64, i32* %3, align 4
  br label %82

65:                                               ; preds = %2
  %66 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %67 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @FE_DEBUGREG, align 8
  %71 = icmp sge i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %65
  %76 = load i32, i32* @FE_ERROR, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @dprintk(i32 %76, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %75, %65
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %63
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
