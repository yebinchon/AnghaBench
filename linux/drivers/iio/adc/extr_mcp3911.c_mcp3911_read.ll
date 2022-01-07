; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mcp3911.c_mcp3911_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mcp3911.c_mcp3911_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcp3911 = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"reading 0x%x from register 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mcp3911*, i32, i32*, i32)* @mcp3911_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp3911_read(%struct.mcp3911* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mcp3911*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mcp3911* %0, %struct.mcp3911** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.mcp3911*, %struct.mcp3911** %6, align 8
  %13 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @MCP3911_REG_READ(i32 %11, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.mcp3911*, %struct.mcp3911** %6, align 8
  %17 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @spi_write_then_read(%struct.TYPE_2__* %18, i32* %7, i32 1, i32* %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %5, align 4
  br label %45

26:                                               ; preds = %4
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @be32_to_cpus(i32* %27)
  %29 = load i32, i32* %9, align 4
  %30 = sub nsw i32 4, %29
  %31 = mul nsw i32 %30, 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, %31
  store i32 %34, i32* %32, align 4
  %35 = load %struct.mcp3911*, %struct.mcp3911** %6, align 8
  %36 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = ashr i32 %41, 1
  %43 = call i32 @dev_dbg(i32* %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %42)
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %26, %24
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @MCP3911_REG_READ(i32, i32) #1

declare dso_local i32 @spi_write_then_read(%struct.TYPE_2__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @be32_to_cpus(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
