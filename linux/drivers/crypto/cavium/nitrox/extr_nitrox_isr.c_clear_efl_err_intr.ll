; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_isr.c_clear_efl_err_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_isr.c_clear_efl_err_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_device = type { i32 }
%union.efl_core_int = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@NR_CLUSTERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ELF_CORE(%d)_INT  0x%016llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nitrox_device*)* @clear_efl_err_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_efl_err_intr(%struct.nitrox_device* %0) #0 {
  %2 = alloca %struct.nitrox_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %union.efl_core_int, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.nitrox_device* %0, %struct.nitrox_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %44, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @NR_CLUSTERS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %47

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = call i8* @EFL_CORE_INTX(i32 %12)
  store i8* %13, i8** %6, align 8
  %14 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i8* @nitrox_read_csr(%struct.nitrox_device* %14, i8* %15)
  %17 = bitcast %union.efl_core_int* %4 to i8**
  store i8* %16, i8** %17, align 8
  %18 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast %union.efl_core_int* %4 to i8**
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @nitrox_write_csr(%struct.nitrox_device* %18, i8* %19, i8* %21)
  %23 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %24 = call i32 @DEV(%struct.nitrox_device* %23)
  %25 = load i32, i32* %3, align 4
  %26 = bitcast %union.efl_core_int* %4 to i8**
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @dev_err_ratelimited(i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %25, i8* %27)
  %29 = bitcast %union.efl_core_int* %4 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %11
  %34 = load i32, i32* %3, align 4
  %35 = call i8* @EFL_CORE_SE_ERR_INTX(i32 %34)
  store i8* %35, i8** %6, align 8
  %36 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i8* @nitrox_read_csr(%struct.nitrox_device* %36, i8* %37)
  store i8* %38, i8** %5, align 8
  %39 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @nitrox_write_csr(%struct.nitrox_device* %39, i8* %40, i8* %41)
  br label %43

43:                                               ; preds = %33, %11
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %7

47:                                               ; preds = %7
  ret void
}

declare dso_local i8* @EFL_CORE_INTX(i32) #1

declare dso_local i8* @nitrox_read_csr(%struct.nitrox_device*, i8*) #1

declare dso_local i32 @nitrox_write_csr(%struct.nitrox_device*, i8*, i8*) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*, i32, i8*) #1

declare dso_local i32 @DEV(%struct.nitrox_device*) #1

declare dso_local i8* @EFL_CORE_SE_ERR_INTX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
