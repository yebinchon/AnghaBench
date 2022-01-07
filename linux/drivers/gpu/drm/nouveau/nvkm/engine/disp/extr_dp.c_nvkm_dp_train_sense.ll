; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_dp.c_nvkm_dp_train_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_dp.c_nvkm_dp_train_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lt_state = type { i32*, i32, %struct.nvkm_dp* }
%struct.nvkm_dp = type { i32*, i32, i32 }

@DPCD_RC0E_AUX_RD_INTERVAL = common dso_local global i64 0, align 8
@DPCD_LS02 = common dso_local global i32 0, align 4
@DPCD_LS0C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"status %6ph pc2 %02x\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"status %6ph\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lt_state*, i32, i32)* @nvkm_dp_train_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_dp_train_sense(%struct.lt_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lt_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_dp*, align 8
  %9 = alloca i32, align 4
  store %struct.lt_state* %0, %struct.lt_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.lt_state*, %struct.lt_state** %5, align 8
  %11 = getelementptr inbounds %struct.lt_state, %struct.lt_state* %10, i32 0, i32 2
  %12 = load %struct.nvkm_dp*, %struct.nvkm_dp** %11, align 8
  store %struct.nvkm_dp* %12, %struct.nvkm_dp** %8, align 8
  %13 = load %struct.nvkm_dp*, %struct.nvkm_dp** %8, align 8
  %14 = getelementptr inbounds %struct.nvkm_dp, %struct.nvkm_dp* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @DPCD_RC0E_AUX_RD_INTERVAL, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load %struct.nvkm_dp*, %struct.nvkm_dp** %8, align 8
  %22 = getelementptr inbounds %struct.nvkm_dp, %struct.nvkm_dp* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @DPCD_RC0E_AUX_RD_INTERVAL, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, 4
  %28 = call i32 @mdelay(i32 %27)
  br label %32

29:                                               ; preds = %3
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @udelay(i32 %30)
  br label %32

32:                                               ; preds = %29, %20
  %33 = load %struct.nvkm_dp*, %struct.nvkm_dp** %8, align 8
  %34 = getelementptr inbounds %struct.nvkm_dp, %struct.nvkm_dp* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DPCD_LS02, align 4
  %37 = load %struct.lt_state*, %struct.lt_state** %5, align 8
  %38 = getelementptr inbounds %struct.lt_state, %struct.lt_state* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @nvkm_rdaux(i32 %35, i32 %36, i32* %39, i32 6)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %79

45:                                               ; preds = %32
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %45
  %49 = load %struct.nvkm_dp*, %struct.nvkm_dp** %8, align 8
  %50 = getelementptr inbounds %struct.nvkm_dp, %struct.nvkm_dp* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @DPCD_LS0C, align 4
  %53 = load %struct.lt_state*, %struct.lt_state** %5, align 8
  %54 = getelementptr inbounds %struct.lt_state, %struct.lt_state* %53, i32 0, i32 1
  %55 = call i32 @nvkm_rdaux(i32 %51, i32 %52, i32* %54, i32 1)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %48
  %59 = load %struct.lt_state*, %struct.lt_state** %5, align 8
  %60 = getelementptr inbounds %struct.lt_state, %struct.lt_state* %59, i32 0, i32 1
  store i32 0, i32* %60, align 8
  br label %61

61:                                               ; preds = %58, %48
  %62 = load %struct.nvkm_dp*, %struct.nvkm_dp** %8, align 8
  %63 = getelementptr inbounds %struct.nvkm_dp, %struct.nvkm_dp* %62, i32 0, i32 1
  %64 = load %struct.lt_state*, %struct.lt_state** %5, align 8
  %65 = getelementptr inbounds %struct.lt_state, %struct.lt_state* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.lt_state*, %struct.lt_state** %5, align 8
  %68 = getelementptr inbounds %struct.lt_state, %struct.lt_state* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i32*, i8*, i32*, ...) @OUTP_TRACE(i32* %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %66, i32 %69)
  br label %78

71:                                               ; preds = %45
  %72 = load %struct.nvkm_dp*, %struct.nvkm_dp** %8, align 8
  %73 = getelementptr inbounds %struct.nvkm_dp, %struct.nvkm_dp* %72, i32 0, i32 1
  %74 = load %struct.lt_state*, %struct.lt_state** %5, align 8
  %75 = getelementptr inbounds %struct.lt_state, %struct.lt_state* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 (i32*, i8*, i32*, ...) @OUTP_TRACE(i32* %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %76)
  br label %78

78:                                               ; preds = %71, %61
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %78, %43
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @nvkm_rdaux(i32, i32, i32*, i32) #1

declare dso_local i32 @OUTP_TRACE(i32*, i8*, i32*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
