; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_xgene-hwmon.c_xgene_hwmon_pcc_rd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_xgene-hwmon.c_xgene_hwmon_pcc_rd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_hwmon_dev = type { i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, %struct.acpi_pcct_shared_memory* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.acpi_pcct_shared_memory = type { i32, i32, i32 }

@PCC_SIGNATURE_MASK = common dso_local global i32 0, align 4
@PCCC_GENERATE_DB_INT = common dso_local global i32 0, align 4
@PCCS_CMD_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Mailbox send error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Mailbox operation timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@MSG_TYPE_ERR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_hwmon_dev*, i32*)* @xgene_hwmon_pcc_rd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_hwmon_pcc_rd(%struct.xgene_hwmon_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.xgene_hwmon_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.acpi_pcct_shared_memory*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xgene_hwmon_dev* %0, %struct.xgene_hwmon_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %3, align 8
  %11 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %10, i32 0, i32 8
  %12 = load %struct.acpi_pcct_shared_memory*, %struct.acpi_pcct_shared_memory** %11, align 8
  store %struct.acpi_pcct_shared_memory* %12, %struct.acpi_pcct_shared_memory** %5, align 8
  %13 = load %struct.acpi_pcct_shared_memory*, %struct.acpi_pcct_shared_memory** %5, align 8
  %14 = getelementptr inbounds %struct.acpi_pcct_shared_memory, %struct.acpi_pcct_shared_memory* %13, i64 1
  %15 = bitcast %struct.acpi_pcct_shared_memory* %14 to i8*
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %6, align 8
  %17 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %3, align 8
  %18 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %17, i32 0, i32 2
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %3, align 8
  %21 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %20, i32 0, i32 7
  %22 = call i32 @init_completion(i32* %21)
  %23 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %3, align 8
  %24 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.acpi_pcct_shared_memory*, %struct.acpi_pcct_shared_memory** %5, align 8
  %26 = getelementptr inbounds %struct.acpi_pcct_shared_memory, %struct.acpi_pcct_shared_memory* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PCC_SIGNATURE_MASK, align 4
  %29 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %3, align 8
  %30 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %28, %31
  %33 = call i32 @cpu_to_le32(i32 %32)
  %34 = call i32 @WRITE_ONCE(i32 %27, i32 %33)
  %35 = load %struct.acpi_pcct_shared_memory*, %struct.acpi_pcct_shared_memory** %5, align 8
  %36 = getelementptr inbounds %struct.acpi_pcct_shared_memory, %struct.acpi_pcct_shared_memory* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @MSG_TYPE(i32 %40)
  %42 = load i32, i32* @PCCC_GENERATE_DB_INT, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @cpu_to_le16(i32 %43)
  %45 = call i32 @WRITE_ONCE(i32 %37, i32 %44)
  %46 = load %struct.acpi_pcct_shared_memory*, %struct.acpi_pcct_shared_memory** %5, align 8
  %47 = getelementptr inbounds %struct.acpi_pcct_shared_memory, %struct.acpi_pcct_shared_memory* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @READ_ONCE(i32 %48)
  %50 = call i32 @le16_to_cpu(i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* @PCCS_CMD_COMPLETE, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %9, align 4
  %55 = load %struct.acpi_pcct_shared_memory*, %struct.acpi_pcct_shared_memory** %5, align 8
  %56 = getelementptr inbounds %struct.acpi_pcct_shared_memory, %struct.acpi_pcct_shared_memory* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @cpu_to_le16(i32 %58)
  %60 = call i32 @WRITE_ONCE(i32 %57, i32 %59)
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %78, %2
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp ult i64 %63, 1
  br i1 %64, label %65, label %81

65:                                               ; preds = %61
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %4, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @cpu_to_le32(i32 %75)
  %77 = call i32 @WRITE_ONCE(i32 %70, i32 %76)
  br label %78

78:                                               ; preds = %65
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %61

81:                                               ; preds = %61
  %82 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %3, align 8
  %83 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @mbox_send_message(i32 %84, i32* %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %81
  %90 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %3, align 8
  %91 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 (i32, i8*, ...) @dev_err(i32 %92, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %93)
  br label %141

95:                                               ; preds = %81
  %96 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %3, align 8
  %97 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %96, i32 0, i32 7
  %98 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %3, align 8
  %99 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @usecs_to_jiffies(i32 %100)
  %102 = call i32 @wait_for_completion_timeout(i32* %97, i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %95
  %105 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %3, align 8
  %106 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i32, i8*, ...) @dev_err(i32 %107, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %109 = load i32, i32* @ETIMEDOUT, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %7, align 4
  br label %141

111:                                              ; preds = %95
  %112 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %3, align 8
  %113 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @MSG_TYPE(i32 %115)
  %117 = load i32, i32* @MSG_TYPE_ERR, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %111
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %7, align 4
  br label %141

122:                                              ; preds = %111
  %123 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %3, align 8
  %124 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32*, i32** %4, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  store i32 %126, i32* %128, align 4
  %129 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %3, align 8
  %130 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %4, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  store i32 %132, i32* %134, align 4
  %135 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %3, align 8
  %136 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i32*, i32** %4, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 2
  store i32 %138, i32* %140, align 4
  br label %141

141:                                              ; preds = %122, %119, %104, %89
  %142 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %3, align 8
  %143 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @mbox_chan_txdone(i32 %144, i32 0)
  %146 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %3, align 8
  %147 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %146, i32 0, i32 0
  store i32 0, i32* %147, align 8
  %148 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %3, align 8
  %149 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %148, i32 0, i32 2
  %150 = call i32 @mutex_unlock(i32* %149)
  %151 = load i32, i32* %7, align 4
  ret i32 %151
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @MSG_TYPE(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @mbox_send_message(i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @usecs_to_jiffies(i32) #1

declare dso_local i32 @mbox_chan_txdone(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
