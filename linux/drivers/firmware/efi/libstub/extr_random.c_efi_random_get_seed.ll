; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_random.c_efi_random_get_seed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_random.c_efi_random_get_seed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efi_rng_protocol = type { i64 (%struct.efi_rng_protocol*, i32*, i32, i32)* }
%struct.linux_efi_random_seed = type { i32, i32 }

@EFI_RNG_PROTOCOL_GUID = common dso_local global i32 0, align 4
@EFI_RNG_ALGORITHM_RAW = common dso_local global i32 0, align 4
@LINUX_EFI_RANDOM_SEED_TABLE_GUID = common dso_local global i32 0, align 4
@locate_protocol = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i64 0, align 8
@allocate_pool = common dso_local global i32 0, align 4
@EFI_RUNTIME_SERVICES_DATA = common dso_local global i32 0, align 4
@EFI_RANDOM_SEED_SIZE = common dso_local global i32 0, align 4
@EFI_UNSUPPORTED = common dso_local global i64 0, align 8
@install_configuration_table = common dso_local global i32 0, align 4
@free_pool = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @efi_random_get_seed(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.efi_rng_protocol*, align 8
  %8 = alloca %struct.linux_efi_random_seed*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %10 = load i32, i32* @EFI_RNG_PROTOCOL_GUID, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @EFI_RNG_ALGORITHM_RAW, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @LINUX_EFI_RANDOM_SEED_TABLE_GUID, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @locate_protocol, align 4
  %14 = bitcast i32* %4 to %struct.linux_efi_random_seed*
  %15 = bitcast %struct.efi_rng_protocol** %7 to i8**
  %16 = call i64 (i32, %struct.linux_efi_random_seed*, ...) @efi_call_early(i32 %13, %struct.linux_efi_random_seed* %14, i8* null, i8** %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @EFI_SUCCESS, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i64, i64* %9, align 8
  store i64 %21, i64* %2, align 8
  br label %84

22:                                               ; preds = %1
  %23 = load i32, i32* @allocate_pool, align 4
  %24 = load i32, i32* @EFI_RUNTIME_SERVICES_DATA, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to %struct.linux_efi_random_seed*
  %27 = load i32, i32* @EFI_RANDOM_SEED_SIZE, align 4
  %28 = sext i32 %27 to i64
  %29 = add i64 8, %28
  %30 = bitcast %struct.linux_efi_random_seed** %8 to i8**
  %31 = call i64 (i32, %struct.linux_efi_random_seed*, ...) @efi_call_early(i32 %23, %struct.linux_efi_random_seed* %26, i64 %29, i8** %30)
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @EFI_SUCCESS, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %22
  %36 = load i64, i64* %9, align 8
  store i64 %36, i64* %2, align 8
  br label %84

37:                                               ; preds = %22
  %38 = load %struct.efi_rng_protocol*, %struct.efi_rng_protocol** %7, align 8
  %39 = getelementptr inbounds %struct.efi_rng_protocol, %struct.efi_rng_protocol* %38, i32 0, i32 0
  %40 = load i64 (%struct.efi_rng_protocol*, i32*, i32, i32)*, i64 (%struct.efi_rng_protocol*, i32*, i32, i32)** %39, align 8
  %41 = load %struct.efi_rng_protocol*, %struct.efi_rng_protocol** %7, align 8
  %42 = load i32, i32* @EFI_RANDOM_SEED_SIZE, align 4
  %43 = load %struct.linux_efi_random_seed*, %struct.linux_efi_random_seed** %8, align 8
  %44 = getelementptr inbounds %struct.linux_efi_random_seed, %struct.linux_efi_random_seed* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 %40(%struct.efi_rng_protocol* %41, i32* %5, i32 %42, i32 %45)
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* @EFI_UNSUPPORTED, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %37
  %51 = load %struct.efi_rng_protocol*, %struct.efi_rng_protocol** %7, align 8
  %52 = getelementptr inbounds %struct.efi_rng_protocol, %struct.efi_rng_protocol* %51, i32 0, i32 0
  %53 = load i64 (%struct.efi_rng_protocol*, i32*, i32, i32)*, i64 (%struct.efi_rng_protocol*, i32*, i32, i32)** %52, align 8
  %54 = load %struct.efi_rng_protocol*, %struct.efi_rng_protocol** %7, align 8
  %55 = load i32, i32* @EFI_RANDOM_SEED_SIZE, align 4
  %56 = load %struct.linux_efi_random_seed*, %struct.linux_efi_random_seed** %8, align 8
  %57 = getelementptr inbounds %struct.linux_efi_random_seed, %struct.linux_efi_random_seed* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 %53(%struct.efi_rng_protocol* %54, i32* null, i32 %55, i32 %58)
  store i64 %59, i64* %9, align 8
  br label %60

60:                                               ; preds = %50, %37
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* @EFI_SUCCESS, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %79

65:                                               ; preds = %60
  %66 = load i32, i32* @EFI_RANDOM_SEED_SIZE, align 4
  %67 = load %struct.linux_efi_random_seed*, %struct.linux_efi_random_seed** %8, align 8
  %68 = getelementptr inbounds %struct.linux_efi_random_seed, %struct.linux_efi_random_seed* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @install_configuration_table, align 4
  %70 = bitcast i32* %6 to %struct.linux_efi_random_seed*
  %71 = load %struct.linux_efi_random_seed*, %struct.linux_efi_random_seed** %8, align 8
  %72 = call i64 (i32, %struct.linux_efi_random_seed*, ...) @efi_call_early(i32 %69, %struct.linux_efi_random_seed* %70, %struct.linux_efi_random_seed* %71)
  store i64 %72, i64* %9, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* @EFI_SUCCESS, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  br label %79

77:                                               ; preds = %65
  %78 = load i64, i64* @EFI_SUCCESS, align 8
  store i64 %78, i64* %2, align 8
  br label %84

79:                                               ; preds = %76, %64
  %80 = load i32, i32* @free_pool, align 4
  %81 = load %struct.linux_efi_random_seed*, %struct.linux_efi_random_seed** %8, align 8
  %82 = call i64 (i32, %struct.linux_efi_random_seed*, ...) @efi_call_early(i32 %80, %struct.linux_efi_random_seed* %81)
  %83 = load i64, i64* %9, align 8
  store i64 %83, i64* %2, align 8
  br label %84

84:                                               ; preds = %79, %77, %35, %20
  %85 = load i64, i64* %2, align 8
  ret i64 %85
}

declare dso_local i64 @efi_call_early(i32, %struct.linux_efi_random_seed*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
