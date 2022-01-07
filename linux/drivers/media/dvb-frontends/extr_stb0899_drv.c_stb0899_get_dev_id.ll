; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_drv.c_stb0899_get_dev_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_drv.c_stb0899_get_dev_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb0899_state = type { i32 }

@STB0899_DEV_ID = common dso_local global i32 0, align 4
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"ID reg=[0x%02x]\00", align 1
@CHIP_ID = common dso_local global i32 0, align 4
@CHIP_REL = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Device ID=[%d], Release=[%d]\00", align 1
@STB0899_S2DEMOD = common dso_local global i32 0, align 4
@DMD_CORE_ID = common dso_local global i32 0, align 4
@DMD_VERSION_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Demodulator Core ID=[%s], Version=[%d]\00", align 1
@STB0899_S2FEC = common dso_local global i32 0, align 4
@FEC_CORE_ID_REG = common dso_local global i32 0, align 4
@FEC_VER_ID_REG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"couldn't find a STB 0899\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"FEC Core ID=[%s], Version=[%d]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stb0899_state*)* @stb0899_get_dev_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb0899_get_dev_id(%struct.stb0899_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stb0899_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [5 x i8], align 1
  %10 = alloca [5 x i8], align 1
  store %struct.stb0899_state* %0, %struct.stb0899_state** %3, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %11 = bitcast [5 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %11, i8 0, i64 5, i1 false)
  %12 = bitcast [5 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %12, i8 0, i64 5, i1 false)
  %13 = load %struct.stb0899_state*, %struct.stb0899_state** %3, align 8
  %14 = load i32, i32* @STB0899_DEV_ID, align 4
  %15 = call i32 @stb0899_read_reg(%struct.stb0899_state* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.stb0899_state*, %struct.stb0899_state** %3, align 8
  %17 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @FE_DEBUG, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %18, i32 %19, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @CHIP_ID, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @STB0899_GETFIELD(i32 %22, i32 %23)
  store i64 %24, i64* %4, align 8
  %25 = load i32, i32* @CHIP_REL, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @STB0899_GETFIELD(i32 %25, i32 %26)
  store i64 %27, i64* %5, align 8
  %28 = load %struct.stb0899_state*, %struct.stb0899_state** %3, align 8
  %29 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @FE_ERROR, align 4
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %30, i32 %31, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %32, i64 %33)
  %35 = load i32, i32* @STB0899_S2DEMOD, align 4
  %36 = load i32, i32* @DMD_CORE_ID, align 4
  %37 = call i64 @STB0899_READ_S2REG(i32 %35, i32 %36)
  %38 = bitcast [5 x i8]* %9 to i8*
  %39 = call i32 @CONVERT32(i64 %37, i8* %38)
  %40 = load i32, i32* @STB0899_S2DEMOD, align 4
  %41 = load i32, i32* @DMD_VERSION_ID, align 4
  %42 = call i64 @STB0899_READ_S2REG(i32 %40, i32 %41)
  store i64 %42, i64* %7, align 8
  %43 = load %struct.stb0899_state*, %struct.stb0899_state** %3, align 8
  %44 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @FE_ERROR, align 4
  %47 = bitcast [5 x i8]* %9 to i8*
  %48 = load i64, i64* %7, align 8
  %49 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %45, i32 %46, i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %47, i64 %48)
  %50 = load i32, i32* @STB0899_S2FEC, align 4
  %51 = load i32, i32* @FEC_CORE_ID_REG, align 4
  %52 = call i64 @STB0899_READ_S2REG(i32 %50, i32 %51)
  %53 = bitcast [5 x i8]* %10 to i8*
  %54 = call i32 @CONVERT32(i64 %52, i8* %53)
  %55 = load i32, i32* @STB0899_S2FEC, align 4
  %56 = load i32, i32* @FEC_VER_ID_REG, align 4
  %57 = call i64 @STB0899_READ_S2REG(i32 %55, i32 %56)
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %4, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %1
  %61 = load %struct.stb0899_state*, %struct.stb0899_state** %3, align 8
  %62 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @FE_ERROR, align 4
  %65 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %63, i32 %64, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %66 = load i32, i32* @ENODEV, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %76

68:                                               ; preds = %1
  %69 = load %struct.stb0899_state*, %struct.stb0899_state** %3, align 8
  %70 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @FE_ERROR, align 4
  %73 = bitcast [5 x i8]* %10 to i8*
  %74 = load i64, i64* %8, align 8
  %75 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %71, i32 %72, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %73, i64 %74)
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %68, %60
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @stb0899_read_reg(%struct.stb0899_state*, i32) #2

declare dso_local i32 @dprintk(i32, i32, i32, i8*, ...) #2

declare dso_local i64 @STB0899_GETFIELD(i32, i32) #2

declare dso_local i32 @CONVERT32(i64, i8*) #2

declare dso_local i64 @STB0899_READ_S2REG(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
