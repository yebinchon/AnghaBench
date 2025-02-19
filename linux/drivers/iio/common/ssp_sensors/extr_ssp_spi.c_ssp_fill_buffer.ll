; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/ssp_sensors/extr_ssp_spi.c_ssp_fill_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/ssp_sensors/extr_ssp_spi.c_ssp_fill_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssp_msg = type { i32* }

@SSP_HEADER_SIZE_ALIGNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssp_msg*, i32, i8*, i32)* @ssp_fill_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssp_fill_buffer(%struct.ssp_msg* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.ssp_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.ssp_msg* %0, %struct.ssp_msg** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.ssp_msg*, %struct.ssp_msg** %5, align 8
  %10 = getelementptr inbounds %struct.ssp_msg, %struct.ssp_msg* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* @SSP_HEADER_SIZE_ALIGNED, align 4
  %13 = load i32, i32* %6, align 4
  %14 = add i32 %12, %13
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %11, i64 %15
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @memcpy(i32* %16, i8* %17, i32 %18)
  ret void
}

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
