; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-aes.c_omap_aes_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-aes.c_omap_aes_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_aes_dev = type { i32, i32, i64 }

@FLAGS_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to get sync: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_aes_dev*)* @omap_aes_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_aes_hw_init(%struct.omap_aes_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_aes_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.omap_aes_dev* %0, %struct.omap_aes_dev** %3, align 8
  %5 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %6 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @FLAGS_INIT, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @FLAGS_INIT, align 4
  %13 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %14 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %18 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  br label %19

19:                                               ; preds = %11, %1
  %20 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %21 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pm_runtime_get_sync(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %28 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %34

33:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %26
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
