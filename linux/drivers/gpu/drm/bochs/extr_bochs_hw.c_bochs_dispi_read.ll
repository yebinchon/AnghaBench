; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bochs/extr_bochs_hw.c_bochs_dispi_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bochs/extr_bochs_hw.c_bochs_dispi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bochs_device = type { i64 }

@VBE_DISPI_IOPORT_INDEX = common dso_local global i32 0, align 4
@VBE_DISPI_IOPORT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bochs_device*, i32)* @bochs_dispi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bochs_dispi_read(%struct.bochs_device* %0, i32 %1) #0 {
  %3 = alloca %struct.bochs_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bochs_device* %0, %struct.bochs_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %8 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = shl i32 %12, 1
  %14 = add nsw i32 1280, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %16 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = call i32 @readw(i64 %20)
  store i32 %21, i32* %5, align 4
  br label %28

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @VBE_DISPI_IOPORT_INDEX, align 4
  %25 = call i32 @outw(i32 %23, i32 %24)
  %26 = load i32, i32* @VBE_DISPI_IOPORT_DATA, align 4
  %27 = call i32 @inw(i32 %26)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %22, %11
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @inw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
