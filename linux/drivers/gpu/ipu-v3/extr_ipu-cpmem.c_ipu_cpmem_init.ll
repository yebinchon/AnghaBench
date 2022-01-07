; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-cpmem.c_ipu_cpmem_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-cpmem.c_ipu_cpmem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_soc = type { %struct.ipu_cpmem* }
%struct.ipu_cpmem = type { %struct.ipu_soc*, i32, i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SZ_128K = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"CPMEM base: 0x%08lx remapped to %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_cpmem_init(%struct.ipu_soc* %0, %struct.device* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipu_soc*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ipu_cpmem*, align 8
  store %struct.ipu_soc* %0, %struct.ipu_soc** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.device*, %struct.device** %6, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ipu_cpmem* @devm_kzalloc(%struct.device* %9, i32 16, i32 %10)
  store %struct.ipu_cpmem* %11, %struct.ipu_cpmem** %8, align 8
  %12 = load %struct.ipu_cpmem*, %struct.ipu_cpmem** %8, align 8
  %13 = icmp ne %struct.ipu_cpmem* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %47

17:                                               ; preds = %3
  %18 = load %struct.ipu_cpmem*, %struct.ipu_cpmem** %8, align 8
  %19 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %20 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %19, i32 0, i32 0
  store %struct.ipu_cpmem* %18, %struct.ipu_cpmem** %20, align 8
  %21 = load %struct.ipu_cpmem*, %struct.ipu_cpmem** %8, align 8
  %22 = getelementptr inbounds %struct.ipu_cpmem, %struct.ipu_cpmem* %21, i32 0, i32 2
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i32, i32* @SZ_128K, align 4
  %27 = call i32 @devm_ioremap(%struct.device* %24, i64 %25, i32 %26)
  %28 = load %struct.ipu_cpmem*, %struct.ipu_cpmem** %8, align 8
  %29 = getelementptr inbounds %struct.ipu_cpmem, %struct.ipu_cpmem* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.ipu_cpmem*, %struct.ipu_cpmem** %8, align 8
  %31 = getelementptr inbounds %struct.ipu_cpmem, %struct.ipu_cpmem* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %17
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %47

37:                                               ; preds = %17
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.ipu_cpmem*, %struct.ipu_cpmem** %8, align 8
  %41 = getelementptr inbounds %struct.ipu_cpmem, %struct.ipu_cpmem* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dev_dbg(%struct.device* %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %39, i32 %42)
  %44 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %45 = load %struct.ipu_cpmem*, %struct.ipu_cpmem** %8, align 8
  %46 = getelementptr inbounds %struct.ipu_cpmem, %struct.ipu_cpmem* %45, i32 0, i32 0
  store %struct.ipu_soc* %44, %struct.ipu_soc** %46, align 8
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %37, %34, %14
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.ipu_cpmem* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @devm_ioremap(%struct.device*, i64, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
