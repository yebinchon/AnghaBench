; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xgene-slimpro.c_slimpro_i2c_pcc_tx_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xgene-slimpro.c_slimpro_i2c_pcc_tx_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slimpro_i2c_dev = type { i32, %struct.acpi_pcct_shared_memory* }
%struct.acpi_pcct_shared_memory = type { i32, i32, i32 }

@PCC_SIGNATURE = common dso_local global i32 0, align 4
@PCC_CMD_GENERATE_DB_INT = common dso_local global i32 0, align 4
@PCC_STS_CMD_COMPLETE = common dso_local global i32 0, align 4
@SLIMPRO_IIC_MSG_DWORD_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slimpro_i2c_dev*, i32*)* @slimpro_i2c_pcc_tx_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slimpro_i2c_pcc_tx_prepare(%struct.slimpro_i2c_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.slimpro_i2c_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.acpi_pcct_shared_memory*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.slimpro_i2c_dev* %0, %struct.slimpro_i2c_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %3, align 8
  %10 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %9, i32 0, i32 1
  %11 = load %struct.acpi_pcct_shared_memory*, %struct.acpi_pcct_shared_memory** %10, align 8
  store %struct.acpi_pcct_shared_memory* %11, %struct.acpi_pcct_shared_memory** %5, align 8
  %12 = load %struct.acpi_pcct_shared_memory*, %struct.acpi_pcct_shared_memory** %5, align 8
  %13 = getelementptr inbounds %struct.acpi_pcct_shared_memory, %struct.acpi_pcct_shared_memory* %12, i64 1
  %14 = bitcast %struct.acpi_pcct_shared_memory* %13 to i8*
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %6, align 8
  %16 = load %struct.acpi_pcct_shared_memory*, %struct.acpi_pcct_shared_memory** %5, align 8
  %17 = getelementptr inbounds %struct.acpi_pcct_shared_memory, %struct.acpi_pcct_shared_memory* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PCC_SIGNATURE, align 4
  %20 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %3, align 8
  %21 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %19, %22
  %24 = call i32 @cpu_to_le32(i32 %23)
  %25 = call i32 @WRITE_ONCE(i32 %18, i32 %24)
  %26 = load %struct.acpi_pcct_shared_memory*, %struct.acpi_pcct_shared_memory** %5, align 8
  %27 = getelementptr inbounds %struct.acpi_pcct_shared_memory, %struct.acpi_pcct_shared_memory* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @SLIMPRO_MSG_TYPE(i32 %31)
  %33 = load i32, i32* @PCC_CMD_GENERATE_DB_INT, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @cpu_to_le16(i32 %34)
  %36 = call i32 @WRITE_ONCE(i32 %28, i32 %35)
  %37 = load %struct.acpi_pcct_shared_memory*, %struct.acpi_pcct_shared_memory** %5, align 8
  %38 = getelementptr inbounds %struct.acpi_pcct_shared_memory, %struct.acpi_pcct_shared_memory* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @READ_ONCE(i32 %39)
  %41 = call i32 @le16_to_cpu(i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* @PCC_STS_CMD_COMPLETE, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load %struct.acpi_pcct_shared_memory*, %struct.acpi_pcct_shared_memory** %5, align 8
  %47 = getelementptr inbounds %struct.acpi_pcct_shared_memory, %struct.acpi_pcct_shared_memory* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @cpu_to_le16(i32 %49)
  %51 = call i32 @WRITE_ONCE(i32 %48, i32 %50)
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %69, %2
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @SLIMPRO_IIC_MSG_DWORD_COUNT, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %52
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @cpu_to_le32(i32 %66)
  %68 = call i32 @WRITE_ONCE(i32 %61, i32 %67)
  br label %69

69:                                               ; preds = %56
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %52

72:                                               ; preds = %52
  ret void
}

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @SLIMPRO_MSG_TYPE(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
