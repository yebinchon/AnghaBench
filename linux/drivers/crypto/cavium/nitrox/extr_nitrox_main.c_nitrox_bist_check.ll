; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_main.c_nitrox_bist_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_main.c_nitrox_bist_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_device = type { i32 }

@NR_CLUSTERS = common dso_local global i32 0, align 4
@UCD_BIST_STATUS = common dso_local global i32 0, align 4
@NPS_CORE_BIST_REG = common dso_local global i32 0, align 4
@NPS_CORE_NPC_BIST_REG = common dso_local global i32 0, align 4
@NPS_PKT_SLC_BIST_REG = common dso_local global i32 0, align 4
@NPS_PKT_IN_BIST_REG = common dso_local global i32 0, align 4
@POM_BIST_REG = common dso_local global i32 0, align 4
@BMI_BIST_REG = common dso_local global i32 0, align 4
@EFL_TOP_BIST_STAT = common dso_local global i32 0, align 4
@BMO_BIST_REG = common dso_local global i32 0, align 4
@LBC_BIST_STATUS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nitrox_device*)* @nitrox_bist_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nitrox_bist_check(%struct.nitrox_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nitrox_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.nitrox_device* %0, %struct.nitrox_device** %3, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %23, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @NR_CLUSTERS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %26

10:                                               ; preds = %6
  %11 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @EMU_BIST_STATUSX(i32 %12)
  %14 = call i64 @nitrox_read_csr(%struct.nitrox_device* %11, i32 %13)
  %15 = load i64, i64* %4, align 8
  %16 = add nsw i64 %15, %14
  store i64 %16, i64* %4, align 8
  %17 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @EFL_CORE_BIST_REGX(i32 %18)
  %20 = call i64 @nitrox_read_csr(%struct.nitrox_device* %17, i32 %19)
  %21 = load i64, i64* %4, align 8
  %22 = add nsw i64 %21, %20
  store i64 %22, i64* %4, align 8
  br label %23

23:                                               ; preds = %10
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %6

26:                                               ; preds = %6
  %27 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %28 = load i32, i32* @UCD_BIST_STATUS, align 4
  %29 = call i64 @nitrox_read_csr(%struct.nitrox_device* %27, i32 %28)
  %30 = load i64, i64* %4, align 8
  %31 = add nsw i64 %30, %29
  store i64 %31, i64* %4, align 8
  %32 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %33 = load i32, i32* @NPS_CORE_BIST_REG, align 4
  %34 = call i64 @nitrox_read_csr(%struct.nitrox_device* %32, i32 %33)
  %35 = load i64, i64* %4, align 8
  %36 = add nsw i64 %35, %34
  store i64 %36, i64* %4, align 8
  %37 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %38 = load i32, i32* @NPS_CORE_NPC_BIST_REG, align 4
  %39 = call i64 @nitrox_read_csr(%struct.nitrox_device* %37, i32 %38)
  %40 = load i64, i64* %4, align 8
  %41 = add nsw i64 %40, %39
  store i64 %41, i64* %4, align 8
  %42 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %43 = load i32, i32* @NPS_PKT_SLC_BIST_REG, align 4
  %44 = call i64 @nitrox_read_csr(%struct.nitrox_device* %42, i32 %43)
  %45 = load i64, i64* %4, align 8
  %46 = add nsw i64 %45, %44
  store i64 %46, i64* %4, align 8
  %47 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %48 = load i32, i32* @NPS_PKT_IN_BIST_REG, align 4
  %49 = call i64 @nitrox_read_csr(%struct.nitrox_device* %47, i32 %48)
  %50 = load i64, i64* %4, align 8
  %51 = add nsw i64 %50, %49
  store i64 %51, i64* %4, align 8
  %52 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %53 = load i32, i32* @POM_BIST_REG, align 4
  %54 = call i64 @nitrox_read_csr(%struct.nitrox_device* %52, i32 %53)
  %55 = load i64, i64* %4, align 8
  %56 = add nsw i64 %55, %54
  store i64 %56, i64* %4, align 8
  %57 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %58 = load i32, i32* @BMI_BIST_REG, align 4
  %59 = call i64 @nitrox_read_csr(%struct.nitrox_device* %57, i32 %58)
  %60 = load i64, i64* %4, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, i64* %4, align 8
  %62 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %63 = load i32, i32* @EFL_TOP_BIST_STAT, align 4
  %64 = call i64 @nitrox_read_csr(%struct.nitrox_device* %62, i32 %63)
  %65 = load i64, i64* %4, align 8
  %66 = add nsw i64 %65, %64
  store i64 %66, i64* %4, align 8
  %67 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %68 = load i32, i32* @BMO_BIST_REG, align 4
  %69 = call i64 @nitrox_read_csr(%struct.nitrox_device* %67, i32 %68)
  %70 = load i64, i64* %4, align 8
  %71 = add nsw i64 %70, %69
  store i64 %71, i64* %4, align 8
  %72 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %73 = load i32, i32* @LBC_BIST_STATUS, align 4
  %74 = call i64 @nitrox_read_csr(%struct.nitrox_device* %72, i32 %73)
  %75 = load i64, i64* %4, align 8
  %76 = add nsw i64 %75, %74
  store i64 %76, i64* %4, align 8
  %77 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %78 = call i32 @PEM_BIST_STATUSX(i32 0)
  %79 = call i64 @nitrox_read_csr(%struct.nitrox_device* %77, i32 %78)
  %80 = load i64, i64* %4, align 8
  %81 = add nsw i64 %80, %79
  store i64 %81, i64* %4, align 8
  %82 = load i64, i64* %4, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %26
  %85 = load i32, i32* @EIO, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %88

87:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %84
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i64 @nitrox_read_csr(%struct.nitrox_device*, i32) #1

declare dso_local i32 @EMU_BIST_STATUSX(i32) #1

declare dso_local i32 @EFL_CORE_BIST_REGX(i32) #1

declare dso_local i32 @PEM_BIST_STATUSX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
