; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_lib.c_nitrox_cmdq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_lib.c_nitrox_cmdq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_cmdq = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, %struct.nitrox_device* }
%struct.nitrox_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@backlog_qflush_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nitrox_cmdq*, i32)* @nitrox_cmdq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nitrox_cmdq_init(%struct.nitrox_cmdq* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nitrox_cmdq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nitrox_device*, align 8
  store %struct.nitrox_cmdq* %0, %struct.nitrox_cmdq** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %8 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %7, i32 0, i32 15
  %9 = load %struct.nitrox_device*, %struct.nitrox_device** %8, align 8
  store %struct.nitrox_device* %9, %struct.nitrox_device** %6, align 8
  %10 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %11 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %14 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %12, %15
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %16, %17
  %19 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %20 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %22 = call i32 @DEV(%struct.nitrox_device* %21)
  %23 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %24 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %27 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %26, i32 0, i32 11
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i64 @dma_alloc_coherent(i32 %22, i32 %25, i64* %27, i32 %28)
  %30 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %31 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %30, i32 0, i32 13
  store i64 %29, i64* %31, align 8
  %32 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %33 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %32, i32 0, i32 13
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %2
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %87

39:                                               ; preds = %2
  %40 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %41 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %40, i32 0, i32 11
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @PTR_ALIGN(i64 %42, i32 %43)
  %45 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %46 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %45, i32 0, i32 12
  store i64 %44, i64* %46, align 8
  %47 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %48 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %47, i32 0, i32 13
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %51 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %50, i32 0, i32 12
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %54 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %53, i32 0, i32 11
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  %57 = add nsw i64 %49, %56
  %58 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %59 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %58, i32 0, i32 14
  store i64 %57, i64* %59, align 8
  %60 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %61 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %60, i32 0, i32 10
  store i64 0, i64* %61, align 8
  %62 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %63 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %62, i32 0, i32 9
  %64 = call i32 @spin_lock_init(i32* %63)
  %65 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %66 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %65, i32 0, i32 8
  %67 = call i32 @spin_lock_init(i32* %66)
  %68 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %69 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %68, i32 0, i32 7
  %70 = call i32 @spin_lock_init(i32* %69)
  %71 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %72 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %71, i32 0, i32 6
  %73 = call i32 @INIT_LIST_HEAD(i32* %72)
  %74 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %75 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %74, i32 0, i32 5
  %76 = call i32 @INIT_LIST_HEAD(i32* %75)
  %77 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %78 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %77, i32 0, i32 4
  %79 = load i32, i32* @backlog_qflush_work, align 4
  %80 = call i32 @INIT_WORK(i32* %78, i32 %79)
  %81 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %82 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %81, i32 0, i32 3
  %83 = call i32 @atomic_set(i32* %82, i32 0)
  %84 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %85 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %84, i32 0, i32 2
  %86 = call i32 @atomic_set(i32* %85, i32 0)
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %39, %36
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i64 @dma_alloc_coherent(i32, i32, i64*, i32) #1

declare dso_local i32 @DEV(%struct.nitrox_device*) #1

declare dso_local i64 @PTR_ALIGN(i64, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
