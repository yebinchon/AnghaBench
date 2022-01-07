; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/zip/extr_zip_main.c_zip_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/zip/extr_zip_main.c_zip_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.zip_device = type { i64, i64 }
%union.zip_cmd_ctl = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ZIP_CMD_CTL = common dso_local global i64 0, align 8
@ZIP_NUM_QUEUES = common dso_local global i32 0, align 4
@zip_dev = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @zip_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zip_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.zip_device*, align 8
  %4 = alloca %union.zip_cmd_ctl, align 4
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.zip_device* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.zip_device* %7, %struct.zip_device** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.zip_device*, %struct.zip_device** %3, align 8
  %9 = icmp ne %struct.zip_device* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %56

11:                                               ; preds = %1
  %12 = load %struct.zip_device*, %struct.zip_device** %3, align 8
  %13 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %11
  %17 = bitcast %union.zip_cmd_ctl* %4 to i32*
  store i32 0, i32* %17, align 4
  %18 = bitcast %union.zip_cmd_ctl* %4 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = bitcast %union.zip_cmd_ctl* %4 to i32*
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.zip_device*, %struct.zip_device** %3, align 8
  %23 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ZIP_CMD_CTL, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @zip_reg_write(i32 %21, i64 %26)
  %28 = load %struct.zip_device*, %struct.zip_device** %3, align 8
  %29 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @iounmap(i64 %30)
  br label %32

32:                                               ; preds = %16, %11
  %33 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %34 = call i32 @pci_release_regions(%struct.pci_dev* %33)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %36 = call i32 @pci_disable_device(%struct.pci_dev* %35)
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %45, %32
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @ZIP_NUM_QUEUES, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load %struct.zip_device*, %struct.zip_device** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @zip_cmd_qbuf_free(%struct.zip_device* %42, i32 %43)
  br label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %37

48:                                               ; preds = %37
  %49 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %50 = call i32 @pci_set_drvdata(%struct.pci_dev* %49, i32* null)
  %51 = load i32**, i32*** @zip_dev, align 8
  %52 = load %struct.zip_device*, %struct.zip_device** %3, align 8
  %53 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32*, i32** %51, i64 %54
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %48, %10
  ret void
}

declare dso_local %struct.zip_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @zip_reg_write(i32, i64) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @zip_cmd_qbuf_free(%struct.zip_device*, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
