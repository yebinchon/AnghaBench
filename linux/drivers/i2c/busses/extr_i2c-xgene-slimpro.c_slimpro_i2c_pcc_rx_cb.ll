; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xgene-slimpro.c_slimpro_i2c_pcc_rx_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xgene-slimpro.c_slimpro_i2c_pcc_rx_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_client = type { i32 }
%struct.slimpro_i2c_dev = type { i32, i32*, %struct.acpi_pcct_shared_memory* }
%struct.acpi_pcct_shared_memory = type { i32 }

@PCC_STS_SCI_DOORBELL = common dso_local global i32 0, align 4
@PCC_STS_CMD_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbox_client*, i8*)* @slimpro_i2c_pcc_rx_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slimpro_i2c_pcc_rx_cb(%struct.mbox_client* %0, i8* %1) #0 {
  %3 = alloca %struct.mbox_client*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.slimpro_i2c_dev*, align 8
  %6 = alloca %struct.acpi_pcct_shared_memory*, align 8
  store %struct.mbox_client* %0, %struct.mbox_client** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.mbox_client*, %struct.mbox_client** %3, align 8
  %8 = call %struct.slimpro_i2c_dev* @to_slimpro_i2c_dev(%struct.mbox_client* %7)
  store %struct.slimpro_i2c_dev* %8, %struct.slimpro_i2c_dev** %5, align 8
  %9 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %5, align 8
  %10 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %9, i32 0, i32 2
  %11 = load %struct.acpi_pcct_shared_memory*, %struct.acpi_pcct_shared_memory** %10, align 8
  store %struct.acpi_pcct_shared_memory* %11, %struct.acpi_pcct_shared_memory** %6, align 8
  %12 = load %struct.acpi_pcct_shared_memory*, %struct.acpi_pcct_shared_memory** %6, align 8
  %13 = getelementptr inbounds %struct.acpi_pcct_shared_memory, %struct.acpi_pcct_shared_memory* %12, i32 0, i32 0
  %14 = load i32, i32* @PCC_STS_SCI_DOORBELL, align 4
  %15 = call i64 @xgene_word_tst_and_clr(i32* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %44

18:                                               ; preds = %2
  %19 = load %struct.acpi_pcct_shared_memory*, %struct.acpi_pcct_shared_memory** %6, align 8
  %20 = getelementptr inbounds %struct.acpi_pcct_shared_memory, %struct.acpi_pcct_shared_memory* %19, i32 0, i32 0
  %21 = load i32, i32* @PCC_STS_CMD_COMPLETE, align 4
  %22 = call i64 @xgene_word_tst_and_clr(i32* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %18
  %25 = load %struct.acpi_pcct_shared_memory*, %struct.acpi_pcct_shared_memory** %6, align 8
  %26 = getelementptr inbounds %struct.acpi_pcct_shared_memory, %struct.acpi_pcct_shared_memory* %25, i64 1
  %27 = bitcast %struct.acpi_pcct_shared_memory* %26 to i8*
  store i8* %27, i8** %4, align 8
  %28 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %5, align 8
  %29 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %24
  %33 = load i8*, i8** %4, align 8
  %34 = bitcast i8* %33 to i32*
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %5, align 8
  %38 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  store i32 %36, i32* %39, align 4
  br label %40

40:                                               ; preds = %32, %24
  %41 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %5, align 8
  %42 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %41, i32 0, i32 0
  %43 = call i32 @complete(i32* %42)
  br label %44

44:                                               ; preds = %17, %40, %18
  ret void
}

declare dso_local %struct.slimpro_i2c_dev* @to_slimpro_i2c_dev(%struct.mbox_client*) #1

declare dso_local i64 @xgene_word_tst_and_clr(i32*, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
