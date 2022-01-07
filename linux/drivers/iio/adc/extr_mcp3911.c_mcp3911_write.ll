; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mcp3911.c_mcp3911_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mcp3911.c_mcp3911_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcp3911 = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"writing 0x%x to register 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mcp3911*, i32, i32, i32)* @mcp3911_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp3911_write(%struct.mcp3911* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mcp3911*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mcp3911* %0, %struct.mcp3911** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.mcp3911*, %struct.mcp3911** %5, align 8
  %10 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @dev_dbg(i32* %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load i32, i32* %8, align 4
  %17 = sub nsw i32 3, %16
  %18 = mul nsw i32 %17, 8
  %19 = load i32, i32* %7, align 4
  %20 = shl i32 %19, %18
  store i32 %20, i32* %7, align 4
  %21 = call i32 @cpu_to_be32s(i32* %7)
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.mcp3911*, %struct.mcp3911** %5, align 8
  %24 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @MCP3911_REG_WRITE(i32 %22, i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load %struct.mcp3911*, %struct.mcp3911** %5, align 8
  %30 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  %34 = call i32 @spi_write(%struct.TYPE_2__* %31, i32* %7, i32 %33)
  ret i32 %34
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @cpu_to_be32s(i32*) #1

declare dso_local i32 @MCP3911_REG_WRITE(i32, i32) #1

declare dso_local i32 @spi_write(%struct.TYPE_2__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
