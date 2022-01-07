; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_cfg_scrambler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_cfg_scrambler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl = type { i32 }

@MXL_HYDRA_PLID_CMD_WRITE = common dso_local global i32 0, align 4
@MXL_HYDRA_DEMOD_SCRAMBLE_CODE_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxl*, i32)* @cfg_scrambler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg_scrambler(%struct.mxl* %0, i32 %1) #0 {
  %3 = alloca %struct.mxl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [26 x i32], align 16
  store %struct.mxl* %0, %struct.mxl** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = bitcast [26 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 104, i1 false)
  %8 = getelementptr inbounds [26 x i32], [26 x i32]* %6, i64 0, i64 0
  %9 = load i32, i32* @MXL_HYDRA_PLID_CMD_WRITE, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds i32, i32* %8, i64 1
  store i32 24, i32* %10, align 4
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* @MXL_HYDRA_DEMOD_SCRAMBLE_CODE_CMD, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %12, i64 1
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load %struct.mxl*, %struct.mxl** %3, align 8
  %18 = getelementptr inbounds %struct.mxl, %struct.mxl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %16, align 4
  %20 = getelementptr inbounds i32, i32* %16, i64 1
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 1, i32* %35, align 4
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @gold2root(i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = ashr i32 %41, 24
  %43 = and i32 %42, 255
  %44 = getelementptr inbounds [26 x i32], [26 x i32]* %6, i64 0, i64 25
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %5, align 4
  %46 = ashr i32 %45, 16
  %47 = and i32 %46, 255
  %48 = getelementptr inbounds [26 x i32], [26 x i32]* %6, i64 0, i64 24
  store i32 %47, i32* %48, align 16
  %49 = load i32, i32* %5, align 4
  %50 = ashr i32 %49, 8
  %51 = and i32 %50, 255
  %52 = getelementptr inbounds [26 x i32], [26 x i32]* %6, i64 0, i64 23
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, 255
  %55 = getelementptr inbounds [26 x i32], [26 x i32]* %6, i64 0, i64 22
  store i32 %54, i32* %55, align 8
  %56 = load %struct.mxl*, %struct.mxl** %3, align 8
  %57 = getelementptr inbounds [26 x i32], [26 x i32]* %6, i64 0, i64 0
  %58 = call i32 @send_command(%struct.mxl* %56, i32 104, i32* %57)
  ret i32 %58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @gold2root(i32) #2

declare dso_local i32 @send_command(%struct.mxl*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
