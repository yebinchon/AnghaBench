; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb6100.c_stb6100_read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb6100.c_stb6100_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb6100_state = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.i2c_msg = type { i32*, i32, i32, i64 }

@STB6100_NUMREGS = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid register offset 0x%x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FE_DEBUG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"    Read from 0x%02x\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"        %s: 0x%02x\00", align 1
@stb6100_regnames = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stb6100_state*, i32)* @stb6100_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb6100_read_reg(%struct.stb6100_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stb6100_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.i2c_msg, align 8
  %9 = alloca i32, align 4
  store %struct.stb6100_state* %0, %struct.stb6100_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @STB6100_NUMREGS, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 0
  store i32* %13, i32** %14, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 1
  store i32 1, i32* %15, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 2
  %17 = load i32, i32* @I2C_M_RD, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 3
  %19 = load %struct.stb6100_state*, %struct.stb6100_state** %4, align 8
  %20 = getelementptr inbounds %struct.stb6100_state, %struct.stb6100_state* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  store i64 %26, i64* %18, align 8
  %27 = load %struct.stb6100_state*, %struct.stb6100_state** %4, align 8
  %28 = getelementptr inbounds %struct.stb6100_state, %struct.stb6100_state* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @i2c_transfer(i32 %29, %struct.i2c_msg* %8, i32 1)
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @STB6100_NUMREGS, align 4
  %33 = icmp sge i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %2
  %38 = load i64, i64* @verbose, align 8
  %39 = load i32, i32* @FE_ERROR, align 4
  %40 = sext i32 %39 to i64
  %41 = load i32, i32* %5, align 4
  %42 = call i32 (i64, i64, i32, i8*, i32, ...) @dprintk(i64 %38, i64 %40, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %75

45:                                               ; preds = %2
  %46 = load i64, i64* @verbose, align 8
  %47 = load i64, i64* @FE_DEBUG, align 8
  %48 = icmp sgt i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %45
  %53 = load i64, i64* @verbose, align 8
  %54 = load i64, i64* @FE_DEBUG, align 8
  %55 = load %struct.stb6100_state*, %struct.stb6100_state** %4, align 8
  %56 = getelementptr inbounds %struct.stb6100_state, %struct.stb6100_state* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 (i64, i64, i32, i8*, i32, ...) @dprintk(i64 %53, i64 %54, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i64, i64* @verbose, align 8
  %63 = load i64, i64* @FE_DEBUG, align 8
  %64 = load i32*, i32** @stb6100_regnames, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds i32, i32* %13, i64 0
  %70 = load i32, i32* %69, align 16
  %71 = call i32 (i64, i64, i32, i8*, i32, ...) @dprintk(i64 %62, i64 %63, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %70)
  br label %72

72:                                               ; preds = %52, %45
  %73 = getelementptr inbounds i32, i32* %13, i64 0
  %74 = load i32, i32* %73, align 16
  store i32 %74, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %75

75:                                               ; preds = %72, %37
  %76 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @dprintk(i64, i64, i32, i8*, i32, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
