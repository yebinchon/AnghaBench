; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/ssp_sensors/extr_ssp_spi.c_ssp_create_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/ssp_sensors/extr_ssp_spi.c_ssp_create_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssp_msg = type { i32, i32, i8* }
%struct.ssp_msg_header = type { i32, i8*, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SSP_HEADER_SIZE_ALIGNED = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@SSP_HEADER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ssp_msg* (i32, i32, i32, i32)* @ssp_create_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ssp_msg* @ssp_create_msg(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ssp_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ssp_msg_header, align 8
  %11 = alloca %struct.ssp_msg*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @kzalloc(i32 16, i32 %12)
  %14 = bitcast i8* %13 to %struct.ssp_msg*
  store %struct.ssp_msg* %14, %struct.ssp_msg** %11, align 8
  %15 = load %struct.ssp_msg*, %struct.ssp_msg** %11, align 8
  %16 = icmp ne %struct.ssp_msg* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store %struct.ssp_msg* null, %struct.ssp_msg** %5, align 8
  br label %59

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  %20 = getelementptr inbounds %struct.ssp_msg_header, %struct.ssp_msg_header* %10, i32 0, i32 3
  store i32 %19, i32* %20, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i8* @cpu_to_le16(i32 %21)
  %23 = getelementptr inbounds %struct.ssp_msg_header, %struct.ssp_msg_header* %10, i32 0, i32 2
  store i8* %22, i8** %23, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i8* @cpu_to_le16(i32 %24)
  %26 = getelementptr inbounds %struct.ssp_msg_header, %struct.ssp_msg_header* %10, i32 0, i32 1
  store i8* %25, i8** %26, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @cpu_to_le32(i32 %27)
  %29 = getelementptr inbounds %struct.ssp_msg_header, %struct.ssp_msg_header* %10, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* @SSP_HEADER_SIZE_ALIGNED, align 4
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %30, %31
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = load i32, i32* @GFP_DMA, align 4
  %35 = or i32 %33, %34
  %36 = call i8* @kzalloc(i32 %32, i32 %35)
  %37 = load %struct.ssp_msg*, %struct.ssp_msg** %11, align 8
  %38 = getelementptr inbounds %struct.ssp_msg, %struct.ssp_msg* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load %struct.ssp_msg*, %struct.ssp_msg** %11, align 8
  %40 = getelementptr inbounds %struct.ssp_msg, %struct.ssp_msg* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %18
  %44 = load %struct.ssp_msg*, %struct.ssp_msg** %11, align 8
  %45 = call i32 @kfree(%struct.ssp_msg* %44)
  store %struct.ssp_msg* null, %struct.ssp_msg** %5, align 8
  br label %59

46:                                               ; preds = %18
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.ssp_msg*, %struct.ssp_msg** %11, align 8
  %49 = getelementptr inbounds %struct.ssp_msg, %struct.ssp_msg* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.ssp_msg*, %struct.ssp_msg** %11, align 8
  %52 = getelementptr inbounds %struct.ssp_msg, %struct.ssp_msg* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ssp_msg*, %struct.ssp_msg** %11, align 8
  %54 = getelementptr inbounds %struct.ssp_msg, %struct.ssp_msg* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* @SSP_HEADER_SIZE, align 4
  %57 = call i32 @memcpy(i8* %55, %struct.ssp_msg_header* %10, i32 %56)
  %58 = load %struct.ssp_msg*, %struct.ssp_msg** %11, align 8
  store %struct.ssp_msg* %58, %struct.ssp_msg** %5, align 8
  br label %59

59:                                               ; preds = %46, %43, %17
  %60 = load %struct.ssp_msg*, %struct.ssp_msg** %5, align 8
  ret %struct.ssp_msg* %60
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @kfree(%struct.ssp_msg*) #1

declare dso_local i32 @memcpy(i8*, %struct.ssp_msg_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
