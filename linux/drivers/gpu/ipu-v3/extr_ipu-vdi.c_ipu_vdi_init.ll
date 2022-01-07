; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-vdi.c_ipu_vdi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-vdi.c_ipu_vdi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_soc = type { %struct.ipu_vdi* }
%struct.ipu_vdi = type { %struct.ipu_soc*, i32, i32, i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"VDI base: 0x%08lx remapped to %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_vdi_init(%struct.ipu_soc* %0, %struct.device* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipu_soc*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ipu_vdi*, align 8
  store %struct.ipu_soc* %0, %struct.ipu_soc** %6, align 8
  store %struct.device* %1, %struct.device** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.device*, %struct.device** %7, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ipu_vdi* @devm_kzalloc(%struct.device* %11, i32 24, i32 %12)
  store %struct.ipu_vdi* %13, %struct.ipu_vdi** %10, align 8
  %14 = load %struct.ipu_vdi*, %struct.ipu_vdi** %10, align 8
  %15 = icmp ne %struct.ipu_vdi* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %52

19:                                               ; preds = %4
  %20 = load %struct.ipu_vdi*, %struct.ipu_vdi** %10, align 8
  %21 = load %struct.ipu_soc*, %struct.ipu_soc** %6, align 8
  %22 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %21, i32 0, i32 0
  store %struct.ipu_vdi* %20, %struct.ipu_vdi** %22, align 8
  %23 = load %struct.ipu_vdi*, %struct.ipu_vdi** %10, align 8
  %24 = getelementptr inbounds %struct.ipu_vdi, %struct.ipu_vdi* %23, i32 0, i32 3
  %25 = call i32 @spin_lock_init(i32* %24)
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.ipu_vdi*, %struct.ipu_vdi** %10, align 8
  %28 = getelementptr inbounds %struct.ipu_vdi, %struct.ipu_vdi* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.device*, %struct.device** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = call i32 @devm_ioremap(%struct.device* %29, i64 %30, i32 %31)
  %33 = load %struct.ipu_vdi*, %struct.ipu_vdi** %10, align 8
  %34 = getelementptr inbounds %struct.ipu_vdi, %struct.ipu_vdi* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.ipu_vdi*, %struct.ipu_vdi** %10, align 8
  %36 = getelementptr inbounds %struct.ipu_vdi, %struct.ipu_vdi* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %19
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %52

42:                                               ; preds = %19
  %43 = load %struct.device*, %struct.device** %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.ipu_vdi*, %struct.ipu_vdi** %10, align 8
  %46 = getelementptr inbounds %struct.ipu_vdi, %struct.ipu_vdi* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dev_dbg(%struct.device* %43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %44, i32 %47)
  %49 = load %struct.ipu_soc*, %struct.ipu_soc** %6, align 8
  %50 = load %struct.ipu_vdi*, %struct.ipu_vdi** %10, align 8
  %51 = getelementptr inbounds %struct.ipu_vdi, %struct.ipu_vdi* %50, i32 0, i32 0
  store %struct.ipu_soc* %49, %struct.ipu_soc** %51, align 8
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %42, %39, %16
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local %struct.ipu_vdi* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @devm_ioremap(%struct.device*, i64, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
