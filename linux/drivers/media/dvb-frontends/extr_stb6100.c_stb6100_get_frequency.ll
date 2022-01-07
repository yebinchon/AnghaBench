; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb6100.c_stb6100_get_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb6100.c_stb6100_get_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stb6100_state* }
%struct.stb6100_state = type { i32, i32 }

@STB6100_NUMREGS = common dso_local global i32 0, align 4
@STB6100_VCO = common dso_local global i64 0, align 8
@STB6100_VCO_ODIV = common dso_local global i32 0, align 4
@STB6100_VCO_ODIV_SHIFT = common dso_local global i32 0, align 4
@STB6100_K = common dso_local global i64 0, align 8
@STB6100_K_PSD2 = common dso_local global i32 0, align 4
@STB6100_K_PSD2_SHIFT = common dso_local global i32 0, align 4
@STB6100_NI = common dso_local global i64 0, align 8
@STB6100_K_NF_MSB = common dso_local global i32 0, align 4
@STB6100_NF_LSB = common dso_local global i64 0, align 8
@verbose = common dso_local global i32 0, align 4
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [94 x i8] c"frequency = %u kHz, odiv = %u, psd2 = %u, fxtal = %u kHz, fvco = %u kHz, N(I) = %u, N(F) = %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @stb6100_get_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb6100_get_frequency(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.stb6100_state*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 0
  %18 = load %struct.stb6100_state*, %struct.stb6100_state** %17, align 8
  store %struct.stb6100_state* %18, %struct.stb6100_state** %12, align 8
  %19 = load i32, i32* @STB6100_NUMREGS, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %13, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  %23 = load %struct.stb6100_state*, %struct.stb6100_state** %12, align 8
  %24 = call i32 @stb6100_read_regs(%struct.stb6100_state* %23, i32* %22)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %94

29:                                               ; preds = %2
  %30 = load i64, i64* @STB6100_VCO, align 8
  %31 = getelementptr inbounds i32, i32* %22, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @STB6100_VCO_ODIV, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @STB6100_VCO_ODIV_SHIFT, align 4
  %36 = ashr i32 %34, %35
  store i32 %36, i32* %11, align 4
  %37 = load i64, i64* @STB6100_K, align 8
  %38 = getelementptr inbounds i32, i32* %22, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @STB6100_K_PSD2, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @STB6100_K_PSD2_SHIFT, align 4
  %43 = ashr i32 %41, %42
  store i32 %43, i32* %10, align 4
  %44 = load i64, i64* @STB6100_NI, align 8
  %45 = getelementptr inbounds i32, i32* %22, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %7, align 4
  %47 = load i64, i64* @STB6100_K, align 8
  %48 = getelementptr inbounds i32, i32* %22, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @STB6100_K_NF_MSB, align 4
  %51 = and i32 %49, %50
  %52 = shl i32 %51, 8
  %53 = load i64, i64* @STB6100_NF_LSB, align 8
  %54 = getelementptr inbounds i32, i32* %22, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %52, %55
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.stb6100_state*, %struct.stb6100_state** %12, align 8
  %59 = getelementptr inbounds %struct.stb6100_state, %struct.stb6100_state* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %57, %60
  %62 = load i32, i32* %10, align 4
  %63 = sub nsw i32 9, %62
  %64 = ashr i32 %61, %63
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.stb6100_state*, %struct.stb6100_state** %12, align 8
  %67 = getelementptr inbounds %struct.stb6100_state, %struct.stb6100_state* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %65, %68
  %70 = load i32, i32* %10, align 4
  %71 = shl i32 %69, %70
  %72 = add nsw i32 %64, %71
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  %76 = ashr i32 %73, %75
  %77 = load %struct.stb6100_state*, %struct.stb6100_state** %12, align 8
  %78 = getelementptr inbounds %struct.stb6100_state, %struct.stb6100_state* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32*, i32** %5, align 8
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* @verbose, align 4
  %81 = load i32, i32* @FE_DEBUG, align 4
  %82 = load %struct.stb6100_state*, %struct.stb6100_state** %12, align 8
  %83 = getelementptr inbounds %struct.stb6100_state, %struct.stb6100_state* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.stb6100_state*, %struct.stb6100_state** %12, align 8
  %88 = getelementptr inbounds %struct.stb6100_state, %struct.stb6100_state* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @dprintk(i32 %80, i32 %81, i32 1, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %85, i32 %86, i32 %89, i32 %90, i32 %91, i32 %92)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %94

94:                                               ; preds = %29, %27
  %95 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @stb6100_read_regs(%struct.stb6100_state*, i32*) #2

declare dso_local i32 @dprintk(i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
