; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0367.c_stv0367cab_GetSymbolRate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0367.c_stv0367cab_GetSymbolRate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv0367_state = type { i32 }

@R367CAB_SRC_NCO_LL = common dso_local global i32 0, align 4
@R367CAB_SRC_NCO_LH = common dso_local global i32 0, align 4
@R367CAB_SRC_NCO_HL = common dso_local global i32 0, align 4
@R367CAB_SRC_NCO_HH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv0367_state*, i32)* @stv0367cab_GetSymbolRate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0367cab_GetSymbolRate(%struct.stv0367_state* %0, i32 %1) #0 {
  %3 = alloca %struct.stv0367_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stv0367_state* %0, %struct.stv0367_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.stv0367_state*, %struct.stv0367_state** %3, align 8
  %8 = load i32, i32* @R367CAB_SRC_NCO_LL, align 4
  %9 = call i32 @stv0367_readreg(%struct.stv0367_state* %7, i32 %8)
  %10 = load %struct.stv0367_state*, %struct.stv0367_state** %3, align 8
  %11 = load i32, i32* @R367CAB_SRC_NCO_LH, align 4
  %12 = call i32 @stv0367_readreg(%struct.stv0367_state* %10, i32 %11)
  %13 = shl i32 %12, 8
  %14 = add nsw i32 %9, %13
  %15 = load %struct.stv0367_state*, %struct.stv0367_state** %3, align 8
  %16 = load i32, i32* @R367CAB_SRC_NCO_HL, align 4
  %17 = call i32 @stv0367_readreg(%struct.stv0367_state* %15, i32 %16)
  %18 = shl i32 %17, 16
  %19 = add nsw i32 %14, %18
  %20 = load %struct.stv0367_state*, %struct.stv0367_state** %3, align 8
  %21 = load i32, i32* @R367CAB_SRC_NCO_HH, align 4
  %22 = call i32 @stv0367_readreg(%struct.stv0367_state* %20, i32 %21)
  %23 = shl i32 %22, 24
  %24 = add nsw i32 %19, %23
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = ashr i32 %25, 1
  %27 = sdiv i32 %26, 1000
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 134217728
  br i1 %29, label %30, label %44

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  %32 = mul nsw i32 %31, 32
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sdiv i32 %33, 32768
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = mul nsw i32 %35, %36
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = sdiv i32 %38, 128
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = mul nsw i32 %40, 125
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = sdiv i32 %42, 2048
  store i32 %43, i32* %5, align 4
  br label %94

44:                                               ; preds = %2
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 268435456
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = load i32, i32* %5, align 4
  %49 = mul nsw i32 %48, 16
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = sdiv i32 %50, 32768
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %5, align 4
  %54 = mul nsw i32 %52, %53
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = sdiv i32 %55, 128
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = mul nsw i32 %57, 125
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = sdiv i32 %59, 1024
  store i32 %60, i32* %5, align 4
  br label %93

61:                                               ; preds = %44
  %62 = load i32, i32* %5, align 4
  %63 = icmp slt i32 %62, 536870912
  br i1 %63, label %64, label %78

64:                                               ; preds = %61
  %65 = load i32, i32* %5, align 4
  %66 = mul nsw i32 %65, 8
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = sdiv i32 %67, 32768
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %5, align 4
  %71 = mul nsw i32 %69, %70
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = sdiv i32 %72, 128
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = mul nsw i32 %74, 125
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = sdiv i32 %76, 512
  store i32 %77, i32* %5, align 4
  br label %92

78:                                               ; preds = %61
  %79 = load i32, i32* %5, align 4
  %80 = mul nsw i32 %79, 4
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = sdiv i32 %81, 32768
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %5, align 4
  %85 = mul nsw i32 %83, %84
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = sdiv i32 %86, 128
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = mul nsw i32 %88, 125
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = sdiv i32 %90, 256
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %78, %64
  br label %93

93:                                               ; preds = %92, %47
  br label %94

94:                                               ; preds = %93, %30
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @stv0367_readreg(%struct.stv0367_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
