; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_sham_dev = type { i64, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"failed to get sync: %d\0A\00", align 1
@FLAGS_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_sham_dev*)* @omap_sham_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_sham_hw_init(%struct.omap_sham_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_sham_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.omap_sham_dev* %0, %struct.omap_sham_dev** %3, align 8
  %5 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %3, align 8
  %6 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @pm_runtime_get_sync(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %3, align 8
  %13 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @dev_err(i32 %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %32

18:                                               ; preds = %1
  %19 = load i32, i32* @FLAGS_INIT, align 4
  %20 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %3, align 8
  %21 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %20, i32 0, i32 1
  %22 = call i32 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @FLAGS_INIT, align 4
  %26 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %3, align 8
  %27 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %26, i32 0, i32 1
  %28 = call i32 @set_bit(i32 %25, i32* %27)
  %29 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %3, align 8
  %30 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %24, %18
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %11
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
