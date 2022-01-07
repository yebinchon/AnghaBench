; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mcp3422.c_mcp3422_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mcp3422.c_mcp3422_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcp3422 = type { i32, i32 }

@MCP3422_SRATE_3 = common dso_local global i32 0, align 4
@mcp3422_sign_extend = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mcp3422*, i32*, i32*)* @mcp3422_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp3422_read(%struct.mcp3422* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.mcp3422*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32, align 4
  store %struct.mcp3422* %0, %struct.mcp3422** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.mcp3422*, %struct.mcp3422** %4, align 8
  %12 = getelementptr inbounds %struct.mcp3422, %struct.mcp3422* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @MCP3422_SAMPLE_RATE(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = bitcast [4 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 16, i1 false)
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @MCP3422_SRATE_3, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %3
  %20 = load %struct.mcp3422*, %struct.mcp3422** %4, align 8
  %21 = getelementptr inbounds %struct.mcp3422, %struct.mcp3422* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %24 = call i32 @i2c_master_recv(i32 %22, i32* %23, i32 4)
  store i32 %24, i32* %7, align 4
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %26 = load i32, i32* %25, align 16
  %27 = shl i32 %26, 16
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 8
  %31 = or i32 %27, %30
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %31, %33
  store i32 %34, i32* %10, align 4
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %6, align 8
  store i32 %36, i32* %37, align 4
  br label %53

38:                                               ; preds = %3
  %39 = load %struct.mcp3422*, %struct.mcp3422** %4, align 8
  %40 = getelementptr inbounds %struct.mcp3422, %struct.mcp3422* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %43 = call i32 @i2c_master_recv(i32 %41, i32* %42, i32 3)
  store i32 %43, i32* %7, align 4
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %45 = load i32, i32* %44, align 16
  %46 = shl i32 %45, 8
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %46, %48
  store i32 %49, i32* %10, align 4
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** %6, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %38, %19
  %54 = load i32, i32* %10, align 4
  %55 = load i32*, i32** @mcp3422_sign_extend, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @sign_extend32(i32 %54, i32 %59)
  %61 = load i32*, i32** %5, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local i32 @MCP3422_SAMPLE_RATE(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @i2c_master_recv(i32, i32*, i32) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
