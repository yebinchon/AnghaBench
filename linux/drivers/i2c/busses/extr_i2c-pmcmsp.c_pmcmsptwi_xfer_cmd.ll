; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pmcmsp.c_pmcmsptwi_xfer_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pmcmsp.c_pmcmsptwi_xfer_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pmcmsptwi_cmd = type { i32, i64, i32, i32, i32*, i64 }
%struct.pmcmsptwi_data = type { i32, i64 }

@pmcmsptwi_adapter = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [27 x i8] c"Setting address to 0x%04x\0A\00", align 1
@MSP_TWI_ADD_REG_OFFSET = common dso_local global i64 0, align 8
@MSP_TWI_CMD_WRITE = common dso_local global i64 0, align 8
@MSP_TWI_CMD_WRITE_READ = common dso_local global i64 0, align 8
@MSP_MAX_BYTES_PER_RW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Writing 0x%016llx\0A\00", align 1
@MSP_TWI_DAT_0_REG_OFFSET = common dso_local global i64 0, align 8
@MSP_TWI_DAT_1_REG_OFFSET = common dso_local global i64 0, align 8
@MSP_TWI_XFER_OK = common dso_local global i32 0, align 4
@MSP_TWI_CMD_READ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"Read 0x%016llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmcmsptwi_cmd*, %struct.pmcmsptwi_data*)* @pmcmsptwi_xfer_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmcmsptwi_xfer_cmd(%struct.pmcmsptwi_cmd* %0, %struct.pmcmsptwi_data* %1) #0 {
  %3 = alloca %struct.pmcmsptwi_cmd*, align 8
  %4 = alloca %struct.pmcmsptwi_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pmcmsptwi_cmd* %0, %struct.pmcmsptwi_cmd** %3, align 8
  store %struct.pmcmsptwi_data* %1, %struct.pmcmsptwi_data** %4, align 8
  %10 = load %struct.pmcmsptwi_data*, %struct.pmcmsptwi_data** %4, align 8
  %11 = getelementptr inbounds %struct.pmcmsptwi_data, %struct.pmcmsptwi_data* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.pmcmsptwi_cmd*, %struct.pmcmsptwi_cmd** %3, align 8
  %14 = getelementptr inbounds %struct.pmcmsptwi_cmd, %struct.pmcmsptwi_cmd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dev_dbg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pmcmsptwi_adapter, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.pmcmsptwi_cmd*, %struct.pmcmsptwi_cmd** %3, align 8
  %18 = getelementptr inbounds %struct.pmcmsptwi_cmd, %struct.pmcmsptwi_cmd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.pmcmsptwi_data*, %struct.pmcmsptwi_data** %4, align 8
  %21 = getelementptr inbounds %struct.pmcmsptwi_data, %struct.pmcmsptwi_data* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MSP_TWI_ADD_REG_OFFSET, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @pmcmsptwi_writel(i32 %19, i64 %24)
  %26 = load %struct.pmcmsptwi_cmd*, %struct.pmcmsptwi_cmd** %3, align 8
  %27 = getelementptr inbounds %struct.pmcmsptwi_cmd, %struct.pmcmsptwi_cmd* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MSP_TWI_CMD_WRITE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %2
  %32 = load %struct.pmcmsptwi_cmd*, %struct.pmcmsptwi_cmd** %3, align 8
  %33 = getelementptr inbounds %struct.pmcmsptwi_cmd, %struct.pmcmsptwi_cmd* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MSP_TWI_CMD_WRITE_READ, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %77

37:                                               ; preds = %31, %2
  %38 = load %struct.pmcmsptwi_cmd*, %struct.pmcmsptwi_cmd** %3, align 8
  %39 = getelementptr inbounds %struct.pmcmsptwi_cmd, %struct.pmcmsptwi_cmd* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i32*
  %42 = call i32 @be64_to_cpup(i32* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* @MSP_MAX_BYTES_PER_RW, align 4
  %44 = load %struct.pmcmsptwi_cmd*, %struct.pmcmsptwi_cmd** %3, align 8
  %45 = getelementptr inbounds %struct.pmcmsptwi_cmd, %struct.pmcmsptwi_cmd* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %43, %46
  %48 = mul nsw i32 %47, 8
  %49 = load i32, i32* %6, align 4
  %50 = ashr i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @dev_dbg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pmcmsptwi_adapter, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = and i64 %54, 4294967295
  %56 = trunc i64 %55 to i32
  %57 = load %struct.pmcmsptwi_data*, %struct.pmcmsptwi_data** %4, align 8
  %58 = getelementptr inbounds %struct.pmcmsptwi_data, %struct.pmcmsptwi_data* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MSP_TWI_DAT_0_REG_OFFSET, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @pmcmsptwi_writel(i32 %56, i64 %61)
  %63 = load %struct.pmcmsptwi_cmd*, %struct.pmcmsptwi_cmd** %3, align 8
  %64 = getelementptr inbounds %struct.pmcmsptwi_cmd, %struct.pmcmsptwi_cmd* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp sgt i32 %65, 4
  br i1 %66, label %67, label %76

67:                                               ; preds = %37
  %68 = load i32, i32* %6, align 4
  %69 = ashr i32 %68, 32
  %70 = load %struct.pmcmsptwi_data*, %struct.pmcmsptwi_data** %4, align 8
  %71 = getelementptr inbounds %struct.pmcmsptwi_data, %struct.pmcmsptwi_data* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @MSP_TWI_DAT_1_REG_OFFSET, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @pmcmsptwi_writel(i32 %69, i64 %74)
  br label %76

76:                                               ; preds = %67, %37
  br label %77

77:                                               ; preds = %76, %31
  %78 = load %struct.pmcmsptwi_cmd*, %struct.pmcmsptwi_cmd** %3, align 8
  %79 = call i32 @pmcmsptwi_cmd_to_reg(%struct.pmcmsptwi_cmd* %78)
  %80 = load %struct.pmcmsptwi_data*, %struct.pmcmsptwi_data** %4, align 8
  %81 = call i32 @pmcmsptwi_do_xfer(i32 %79, %struct.pmcmsptwi_data* %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @MSP_TWI_XFER_OK, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %156

86:                                               ; preds = %77
  %87 = load %struct.pmcmsptwi_cmd*, %struct.pmcmsptwi_cmd** %3, align 8
  %88 = getelementptr inbounds %struct.pmcmsptwi_cmd, %struct.pmcmsptwi_cmd* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @MSP_TWI_CMD_READ, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %98, label %92

92:                                               ; preds = %86
  %93 = load %struct.pmcmsptwi_cmd*, %struct.pmcmsptwi_cmd** %3, align 8
  %94 = getelementptr inbounds %struct.pmcmsptwi_cmd, %struct.pmcmsptwi_cmd* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @MSP_TWI_CMD_WRITE_READ, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %155

98:                                               ; preds = %92, %86
  %99 = load %struct.pmcmsptwi_cmd*, %struct.pmcmsptwi_cmd** %3, align 8
  %100 = getelementptr inbounds %struct.pmcmsptwi_cmd, %struct.pmcmsptwi_cmd* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %101, 8
  %103 = zext i32 %102 to i64
  %104 = shl i64 -1, %103
  %105 = xor i64 %104, -1
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %8, align 4
  %107 = load %struct.pmcmsptwi_data*, %struct.pmcmsptwi_data** %4, align 8
  %108 = getelementptr inbounds %struct.pmcmsptwi_data, %struct.pmcmsptwi_data* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @MSP_TWI_DAT_0_REG_OFFSET, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i64 @pmcmsptwi_readl(i64 %111)
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %9, align 4
  %114 = load %struct.pmcmsptwi_cmd*, %struct.pmcmsptwi_cmd** %3, align 8
  %115 = getelementptr inbounds %struct.pmcmsptwi_cmd, %struct.pmcmsptwi_cmd* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = icmp sgt i32 %116, 4
  br i1 %117, label %118, label %129

118:                                              ; preds = %98
  %119 = load %struct.pmcmsptwi_data*, %struct.pmcmsptwi_data** %4, align 8
  %120 = getelementptr inbounds %struct.pmcmsptwi_data, %struct.pmcmsptwi_data* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @MSP_TWI_DAT_1_REG_OFFSET, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i64 @pmcmsptwi_readl(i64 %123)
  %125 = trunc i64 %124 to i32
  %126 = shl i32 %125, 32
  %127 = load i32, i32* %9, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %9, align 4
  br label %129

129:                                              ; preds = %118, %98
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %9, align 4
  %132 = and i32 %131, %130
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @dev_dbg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pmcmsptwi_adapter, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %133)
  store i32 0, i32* %7, align 4
  br label %135

135:                                              ; preds = %151, %129
  %136 = load i32, i32* %7, align 4
  %137 = load %struct.pmcmsptwi_cmd*, %struct.pmcmsptwi_cmd** %3, align 8
  %138 = getelementptr inbounds %struct.pmcmsptwi_cmd, %struct.pmcmsptwi_cmd* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %154

141:                                              ; preds = %135
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* %7, align 4
  %144 = ashr i32 %142, %143
  %145 = load %struct.pmcmsptwi_cmd*, %struct.pmcmsptwi_cmd** %3, align 8
  %146 = getelementptr inbounds %struct.pmcmsptwi_cmd, %struct.pmcmsptwi_cmd* %145, i32 0, i32 4
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  store i32 %144, i32* %150, align 4
  br label %151

151:                                              ; preds = %141
  %152 = load i32, i32* %7, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %7, align 4
  br label %135

154:                                              ; preds = %135
  br label %155

155:                                              ; preds = %154, %92
  br label %156

156:                                              ; preds = %155, %85
  %157 = load %struct.pmcmsptwi_data*, %struct.pmcmsptwi_data** %4, align 8
  %158 = getelementptr inbounds %struct.pmcmsptwi_data, %struct.pmcmsptwi_data* %157, i32 0, i32 0
  %159 = call i32 @mutex_unlock(i32* %158)
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @pmcmsptwi_writel(i32, i64) #1

declare dso_local i32 @be64_to_cpup(i32*) #1

declare dso_local i32 @pmcmsptwi_do_xfer(i32, %struct.pmcmsptwi_data*) #1

declare dso_local i32 @pmcmsptwi_cmd_to_reg(%struct.pmcmsptwi_cmd*) #1

declare dso_local i64 @pmcmsptwi_readl(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
