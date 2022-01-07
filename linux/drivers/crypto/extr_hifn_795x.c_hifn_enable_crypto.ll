; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_hifn_795x.c_hifn_enable_crypto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_hifn_795x.c_hifn_enable_crypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i8* }
%struct.hifn_device = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i64, i32 }

@pci2id = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"Unknown card!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@HIFN_1_DMA_CNFG = common dso_local global i32 0, align 4
@HIFN_DMACNFG_UNLOCK = common dso_local global i32 0, align 4
@HIFN_DMACNFG_MSTRESET = common dso_local global i32 0, align 4
@HIFN_DMACNFG_DMARESET = common dso_local global i32 0, align 4
@HIFN_DMACNFG_MODE = common dso_local global i32 0, align 4
@HIFN_1_UNLOCK_SECRET1 = common dso_local global i32 0, align 4
@HIFN_1_UNLOCK_SECRET2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"%s %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hifn_device*)* @hifn_enable_crypto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hifn_enable_crypto(%struct.hifn_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hifn_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.hifn_device* %0, %struct.hifn_device** %3, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %47, %1
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pci2id, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %50

13:                                               ; preds = %8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pci2id, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %21 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %19, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %13
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pci2id, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %34 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %32, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %26
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pci2id, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %6, align 8
  br label %50

46:                                               ; preds = %26, %13
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %8

50:                                               ; preds = %39, %8
  %51 = load i8*, i8** %6, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %61, label %53

53:                                               ; preds = %50
  %54 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %55 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %123

61:                                               ; preds = %50
  %62 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %63 = load i32, i32* @HIFN_1_DMA_CNFG, align 4
  %64 = call i32 @hifn_read_1(%struct.hifn_device* %62, i32 %63)
  store i32 %64, i32* %4, align 4
  %65 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %66 = load i32, i32* @HIFN_1_DMA_CNFG, align 4
  %67 = load i32, i32* @HIFN_DMACNFG_UNLOCK, align 4
  %68 = load i32, i32* @HIFN_DMACNFG_MSTRESET, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @HIFN_DMACNFG_DMARESET, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @HIFN_DMACNFG_MODE, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @hifn_write_1(%struct.hifn_device* %65, i32 %66, i32 %73)
  %75 = call i32 @mdelay(i32 1)
  %76 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %77 = load i32, i32* @HIFN_1_UNLOCK_SECRET1, align 4
  %78 = call i32 @hifn_read_1(%struct.hifn_device* %76, i32 %77)
  store i32 %78, i32* %5, align 4
  %79 = call i32 @mdelay(i32 1)
  %80 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %81 = load i32, i32* @HIFN_1_UNLOCK_SECRET2, align 4
  %82 = call i32 @hifn_write_1(%struct.hifn_device* %80, i32 %81, i32 0)
  %83 = call i32 @mdelay(i32 1)
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %103, %61
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %85, 12
  br i1 %86, label %87, label %106

87:                                               ; preds = %84
  %88 = load i32, i32* %5, align 4
  %89 = load i8*, i8** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = add nsw i32 %94, 257
  %96 = trunc i32 %95 to i8
  %97 = call i32 @hifn_next_signature(i32 %88, i8 signext %96)
  store i32 %97, i32* %5, align 4
  %98 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %99 = load i32, i32* @HIFN_1_UNLOCK_SECRET2, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @hifn_write_1(%struct.hifn_device* %98, i32 %99, i32 %100)
  %102 = call i32 @mdelay(i32 1)
  br label %103

103:                                              ; preds = %87
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %84

106:                                              ; preds = %84
  %107 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %108 = load i32, i32* @HIFN_1_DMA_CNFG, align 4
  %109 = load i32, i32* %4, align 4
  %110 = call i32 @hifn_write_1(%struct.hifn_device* %107, i32 %108, i32 %109)
  %111 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %112 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %111, i32 0, i32 0
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 2
  %115 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %116 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %119 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = call i32 @pci_name(%struct.TYPE_4__* %120)
  %122 = call i32 @dev_dbg(i32* %114, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %117, i32 %121)
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %106, %53
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @hifn_read_1(%struct.hifn_device*, i32) #1

declare dso_local i32 @hifn_write_1(%struct.hifn_device*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @hifn_next_signature(i32, i8 signext) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @pci_name(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
