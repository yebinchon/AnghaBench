; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_lib.c_nitrox_cmdq_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_lib.c_nitrox_cmdq_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_cmdq = type { i64, i64, i64, i64, i32*, i32*, i32*, i32*, i32, %struct.nitrox_device* }
%struct.nitrox_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nitrox_cmdq*)* @nitrox_cmdq_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nitrox_cmdq_cleanup(%struct.nitrox_cmdq* %0) #0 {
  %2 = alloca %struct.nitrox_cmdq*, align 8
  %3 = alloca %struct.nitrox_device*, align 8
  store %struct.nitrox_cmdq* %0, %struct.nitrox_cmdq** %2, align 8
  %4 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %2, align 8
  %5 = icmp ne %struct.nitrox_cmdq* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %50

7:                                                ; preds = %1
  %8 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %2, align 8
  %9 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %8, i32 0, i32 5
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  br label %50

13:                                               ; preds = %7
  %14 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %2, align 8
  %15 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %14, i32 0, i32 9
  %16 = load %struct.nitrox_device*, %struct.nitrox_device** %15, align 8
  store %struct.nitrox_device* %16, %struct.nitrox_device** %3, align 8
  %17 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %2, align 8
  %18 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %17, i32 0, i32 8
  %19 = call i32 @cancel_work_sync(i32* %18)
  %20 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %21 = call i32 @DEV(%struct.nitrox_device* %20)
  %22 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %2, align 8
  %23 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %2, align 8
  %26 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %25, i32 0, i32 5
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %2, align 8
  %29 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @dma_free_coherent(i32 %21, i64 %24, i32* %27, i64 %30)
  %32 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %2, align 8
  %33 = call i32 @nitrox_cmdq_reset(%struct.nitrox_cmdq* %32)
  %34 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %2, align 8
  %35 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %34, i32 0, i32 7
  store i32* null, i32** %35, align 8
  %36 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %2, align 8
  %37 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %36, i32 0, i32 6
  store i32* null, i32** %37, align 8
  %38 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %2, align 8
  %39 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %38, i32 0, i32 5
  store i32* null, i32** %39, align 8
  %40 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %2, align 8
  %41 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %40, i32 0, i32 4
  store i32* null, i32** %41, align 8
  %42 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %2, align 8
  %43 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %2, align 8
  %45 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %2, align 8
  %47 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %2, align 8
  %49 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %13, %12, %6
  ret void
}

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @dma_free_coherent(i32, i64, i32*, i64) #1

declare dso_local i32 @DEV(%struct.nitrox_device*) #1

declare dso_local i32 @nitrox_cmdq_reset(%struct.nitrox_cmdq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
