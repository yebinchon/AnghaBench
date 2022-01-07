; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_fsi_master_acf_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_fsi_master_acf_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master_acf = type { i64, i64, i32, i32, i32, i64 }

@SRAM_SIZE = common dso_local global i32 0, align 4
@CF_STARTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Coprocessor startup timeout !\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SEND_DLY_REG = common dso_local global i64 0, align 8
@ECHO_DLY_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_master_acf*)* @fsi_master_acf_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_master_acf_setup(%struct.fsi_master_acf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsi_master_acf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.fsi_master_acf* %0, %struct.fsi_master_acf** %3, align 8
  %7 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %8 = call i32 @reset_cf(%struct.fsi_master_acf* %7)
  %9 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %10 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* @SRAM_SIZE, align 4
  %13 = call i32 @memset_io(i64 %11, i32 0, i32 %12)
  %14 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %15 = call i32 @setup_gpios_for_copro(%struct.fsi_master_acf* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %117

20:                                               ; preds = %1
  %21 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %22 = call i32 @load_copro_firmware(%struct.fsi_master_acf* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %117

27:                                               ; preds = %20
  %28 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %29 = call i32 @check_firmware_image(%struct.fsi_master_acf* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %117

34:                                               ; preds = %27
  %35 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %36 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %41 = call i32 @setup_ast2500_cf_maps(%struct.fsi_master_acf* %40)
  %42 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %43 = call i32 @setup_ast2500_fw_config(%struct.fsi_master_acf* %42)
  br label %49

44:                                               ; preds = %34
  %45 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %46 = call i32 @setup_ast2400_cf_maps(%struct.fsi_master_acf* %45)
  %47 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %48 = call i32 @setup_ast2400_fw_config(%struct.fsi_master_acf* %47)
  br label %49

49:                                               ; preds = %44, %39
  %50 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %51 = call i32 @start_cf(%struct.fsi_master_acf* %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %67, %49
  %53 = load i32, i32* %4, align 4
  %54 = icmp slt i32 %53, 10
  br i1 %54, label %55, label %70

55:                                               ; preds = %52
  %56 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %57 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @CF_STARTED, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i64 @ioread8(i64 %60)
  store i64 %61, i64* %6, align 8
  %62 = load i64, i64* %6, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %70

65:                                               ; preds = %55
  %66 = call i32 @msleep(i32 1)
  br label %67

67:                                               ; preds = %65
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %52

70:                                               ; preds = %64, %52
  %71 = load i64, i64* %6, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %70
  %74 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %75 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @dev_err(i32 %76, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %111

80:                                               ; preds = %70
  %81 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %82 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %85 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @SEND_DLY_REG, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @iowrite8(i32 %83, i64 %88)
  %90 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %91 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %94 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @ECHO_DLY_REG, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @iowrite8(i32 %92, i64 %97)
  %99 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %100 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %80
  %104 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %105 = call i32 @copro_enable_sw_irq(%struct.fsi_master_acf* %104)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %111

109:                                              ; preds = %103
  br label %110

110:                                              ; preds = %109, %80
  store i32 0, i32* %2, align 4
  br label %117

111:                                              ; preds = %108, %73
  %112 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %113 = call i32 @reset_cf(%struct.fsi_master_acf* %112)
  %114 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %115 = call i32 @release_copro_gpios(%struct.fsi_master_acf* %114)
  %116 = load i32, i32* %5, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %111, %110, %32, %25, %18
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @reset_cf(%struct.fsi_master_acf*) #1

declare dso_local i32 @memset_io(i64, i32, i32) #1

declare dso_local i32 @setup_gpios_for_copro(%struct.fsi_master_acf*) #1

declare dso_local i32 @load_copro_firmware(%struct.fsi_master_acf*) #1

declare dso_local i32 @check_firmware_image(%struct.fsi_master_acf*) #1

declare dso_local i32 @setup_ast2500_cf_maps(%struct.fsi_master_acf*) #1

declare dso_local i32 @setup_ast2500_fw_config(%struct.fsi_master_acf*) #1

declare dso_local i32 @setup_ast2400_cf_maps(%struct.fsi_master_acf*) #1

declare dso_local i32 @setup_ast2400_fw_config(%struct.fsi_master_acf*) #1

declare dso_local i32 @start_cf(%struct.fsi_master_acf*) #1

declare dso_local i64 @ioread8(i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @iowrite8(i32, i64) #1

declare dso_local i32 @copro_enable_sw_irq(%struct.fsi_master_acf*) #1

declare dso_local i32 @release_copro_gpios(%struct.fsi_master_acf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
