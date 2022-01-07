; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_dmcu.c_dce_dmcu_setup_psr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_dmcu.c_dce_dmcu_setup_psr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmcu = type { i32 }
%struct.dc_link = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_13__*, i32)*, i32 (%struct.TYPE_13__*, i32)* }
%struct.psr_context = type { i32, %struct.TYPE_12__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.dce_dmcu = type { i32 }
%union.dce_dmcu_psr_config_data_reg1 = type { i64, [32 x i8] }
%union.dce_dmcu_psr_config_data_reg2 = type { i64, [16 x i8] }
%union.dce_dmcu_psr_config_data_reg3 = type { i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@DMCU_INTERRUPT_TO_UC_EN_MASK = common dso_local global i32 0, align 4
@STATIC_SCREEN1_INT_TO_UC_EN = common dso_local global i32 0, align 4
@STATIC_SCREEN2_INT_TO_UC_EN = common dso_local global i32 0, align 4
@STATIC_SCREEN3_INT_TO_UC_EN = common dso_local global i32 0, align 4
@STATIC_SCREEN4_INT_TO_UC_EN = common dso_local global i32 0, align 4
@MASTER_COMM_CNTL_REG = common dso_local global i32 0, align 4
@MASTER_COMM_INTERRUPT = common dso_local global i32 0, align 4
@MASTER_COMM_DATA_REG1 = common dso_local global i32 0, align 4
@MASTER_COMM_DATA_REG2 = common dso_local global i32 0, align 4
@MASTER_COMM_DATA_REG3 = common dso_local global i32 0, align 4
@MASTER_COMM_CMD_REG = common dso_local global i32 0, align 4
@MASTER_COMM_CMD_REG_BYTE0 = common dso_local global i32 0, align 4
@PSR_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmcu*, %struct.dc_link*, %struct.psr_context*)* @dce_dmcu_setup_psr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_dmcu_setup_psr(%struct.dmcu* %0, %struct.dc_link* %1, %struct.psr_context* %2) #0 {
  %4 = alloca %struct.dmcu*, align 8
  %5 = alloca %struct.dc_link*, align 8
  %6 = alloca %struct.psr_context*, align 8
  %7 = alloca %struct.dce_dmcu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.dce_dmcu_psr_config_data_reg1, align 8
  %11 = alloca %union.dce_dmcu_psr_config_data_reg2, align 8
  %12 = alloca %union.dce_dmcu_psr_config_data_reg3, align 8
  store %struct.dmcu* %0, %struct.dmcu** %4, align 8
  store %struct.dc_link* %1, %struct.dc_link** %5, align 8
  store %struct.psr_context* %2, %struct.psr_context** %6, align 8
  %13 = load %struct.dmcu*, %struct.dmcu** %4, align 8
  %14 = call %struct.dce_dmcu* @TO_DCE_DMCU(%struct.dmcu* %13)
  store %struct.dce_dmcu* %14, %struct.dce_dmcu** %7, align 8
  store i32 801, i32* %8, align 4
  store i32 100, i32* %9, align 4
  %15 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %16 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %15, i32 0, i32 0
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32 (%struct.TYPE_13__*, i32)*, i32 (%struct.TYPE_13__*, i32)** %20, align 8
  %22 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %23 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %22, i32 0, i32 0
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %25 = load %struct.psr_context*, %struct.psr_context** %6, align 8
  %26 = getelementptr inbounds %struct.psr_context, %struct.psr_context* %25, i32 0, i32 16
  %27 = load i32, i32* %26, align 4
  %28 = call i32 %21(%struct.TYPE_13__* %24, i32 %27)
  %29 = load i32, i32* @DMCU_INTERRUPT_TO_UC_EN_MASK, align 4
  %30 = load i32, i32* @STATIC_SCREEN1_INT_TO_UC_EN, align 4
  %31 = load i32, i32* @STATIC_SCREEN2_INT_TO_UC_EN, align 4
  %32 = load i32, i32* @STATIC_SCREEN3_INT_TO_UC_EN, align 4
  %33 = load i32, i32* @STATIC_SCREEN4_INT_TO_UC_EN, align 4
  %34 = call i32 @REG_UPDATE_4(i32 %29, i32 %30, i32 0, i32 %31, i32 0, i32 %32, i32 0, i32 %33, i32 0)
  %35 = load %struct.psr_context*, %struct.psr_context** %6, align 8
  %36 = getelementptr inbounds %struct.psr_context, %struct.psr_context* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %56 [
    i32 1, label %38
    i32 2, label %42
    i32 3, label %46
    i32 4, label %50
    i32 5, label %54
    i32 6, label %55
  ]

38:                                               ; preds = %3
  %39 = load i32, i32* @DMCU_INTERRUPT_TO_UC_EN_MASK, align 4
  %40 = load i32, i32* @STATIC_SCREEN1_INT_TO_UC_EN, align 4
  %41 = call i32 @REG_UPDATE(i32 %39, i32 %40, i32 1)
  br label %60

42:                                               ; preds = %3
  %43 = load i32, i32* @DMCU_INTERRUPT_TO_UC_EN_MASK, align 4
  %44 = load i32, i32* @STATIC_SCREEN2_INT_TO_UC_EN, align 4
  %45 = call i32 @REG_UPDATE(i32 %43, i32 %44, i32 1)
  br label %60

46:                                               ; preds = %3
  %47 = load i32, i32* @DMCU_INTERRUPT_TO_UC_EN_MASK, align 4
  %48 = load i32, i32* @STATIC_SCREEN3_INT_TO_UC_EN, align 4
  %49 = call i32 @REG_UPDATE(i32 %47, i32 %48, i32 1)
  br label %60

50:                                               ; preds = %3
  %51 = load i32, i32* @DMCU_INTERRUPT_TO_UC_EN_MASK, align 4
  %52 = load i32, i32* @STATIC_SCREEN4_INT_TO_UC_EN, align 4
  %53 = call i32 @REG_UPDATE(i32 %51, i32 %52, i32 1)
  br label %60

54:                                               ; preds = %3
  br label %60

55:                                               ; preds = %3
  br label %60

56:                                               ; preds = %3
  %57 = load i32, i32* @DMCU_INTERRUPT_TO_UC_EN_MASK, align 4
  %58 = load i32, i32* @STATIC_SCREEN1_INT_TO_UC_EN, align 4
  %59 = call i32 @REG_UPDATE(i32 %57, i32 %58, i32 1)
  br label %60

60:                                               ; preds = %56, %55, %54, %50, %46, %42, %38
  %61 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %62 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %61, i32 0, i32 0
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32 (%struct.TYPE_13__*, i32)*, i32 (%struct.TYPE_13__*, i32)** %66, align 8
  %68 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %69 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %68, i32 0, i32 0
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = load %struct.psr_context*, %struct.psr_context** %6, align 8
  %72 = getelementptr inbounds %struct.psr_context, %struct.psr_context* %71, i32 0, i32 15
  %73 = load i32, i32* %72, align 4
  %74 = call i32 %67(%struct.TYPE_13__* %70, i32 %73)
  %75 = load i32, i32* @MASTER_COMM_CNTL_REG, align 4
  %76 = load i32, i32* @MASTER_COMM_INTERRUPT, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @REG_WAIT(i32 %75, i32 %76, i32 0, i32 %77, i32 %78)
  %80 = bitcast %union.dce_dmcu_psr_config_data_reg1* %10 to i64*
  store i64 0, i64* %80, align 8
  %81 = load %struct.psr_context*, %struct.psr_context** %6, align 8
  %82 = getelementptr inbounds %struct.psr_context, %struct.psr_context* %81, i32 0, i32 14
  %83 = load i32, i32* %82, align 4
  %84 = bitcast %union.dce_dmcu_psr_config_data_reg1* %10 to %struct.TYPE_9__*
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 8
  store i32 %83, i32* %85, align 8
  %86 = load %struct.psr_context*, %struct.psr_context** %6, align 8
  %87 = getelementptr inbounds %struct.psr_context, %struct.psr_context* %86, i32 0, i32 13
  %88 = load i32, i32* %87, align 4
  %89 = bitcast %union.dce_dmcu_psr_config_data_reg1* %10 to %struct.TYPE_9__*
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 7
  store i32 %88, i32* %90, align 4
  %91 = load %struct.psr_context*, %struct.psr_context** %6, align 8
  %92 = getelementptr inbounds %struct.psr_context, %struct.psr_context* %91, i32 0, i32 12
  %93 = load i32, i32* %92, align 4
  %94 = bitcast %union.dce_dmcu_psr_config_data_reg1* %10 to %struct.TYPE_9__*
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 6
  store i32 %93, i32* %95, align 8
  %96 = load %struct.psr_context*, %struct.psr_context** %6, align 8
  %97 = getelementptr inbounds %struct.psr_context, %struct.psr_context* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = bitcast %union.dce_dmcu_psr_config_data_reg1* %10 to %struct.TYPE_9__*
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 5
  store i32 %98, i32* %100, align 4
  %101 = load %struct.psr_context*, %struct.psr_context** %6, align 8
  %102 = getelementptr inbounds %struct.psr_context, %struct.psr_context* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = bitcast %union.dce_dmcu_psr_config_data_reg1* %10 to %struct.TYPE_9__*
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.psr_context*, %struct.psr_context** %6, align 8
  %107 = getelementptr inbounds %struct.psr_context, %struct.psr_context* %106, i32 0, i32 11
  %108 = load i32, i32* %107, align 4
  %109 = bitcast %union.dce_dmcu_psr_config_data_reg1* %10 to %struct.TYPE_9__*
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 8
  %111 = load %struct.psr_context*, %struct.psr_context** %6, align 8
  %112 = getelementptr inbounds %struct.psr_context, %struct.psr_context* %111, i32 0, i32 10
  %113 = load i32, i32* %112, align 4
  %114 = bitcast %union.dce_dmcu_psr_config_data_reg1* %10 to %struct.TYPE_9__*
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  %116 = load %struct.psr_context*, %struct.psr_context** %6, align 8
  %117 = getelementptr inbounds %struct.psr_context, %struct.psr_context* %116, i32 0, i32 9
  %118 = load i32, i32* %117, align 4
  %119 = bitcast %union.dce_dmcu_psr_config_data_reg1* %10 to %struct.TYPE_9__*
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load %struct.psr_context*, %struct.psr_context** %6, align 8
  %122 = getelementptr inbounds %struct.psr_context, %struct.psr_context* %121, i32 0, i32 8
  %123 = load i32, i32* %122, align 4
  %124 = bitcast %union.dce_dmcu_psr_config_data_reg1* %10 to %struct.TYPE_9__*
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load %struct.dmcu*, %struct.dmcu** %4, align 8
  %127 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @MASTER_COMM_DATA_REG1, align 4
  %130 = call i32 @REG(i32 %129)
  %131 = bitcast %union.dce_dmcu_psr_config_data_reg1* %10 to i64*
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @dm_write_reg(i32 %128, i32 %130, i64 %132)
  %134 = bitcast %union.dce_dmcu_psr_config_data_reg2* %11 to i64*
  store i64 0, i64* %134, align 8
  %135 = load %struct.psr_context*, %struct.psr_context** %6, align 8
  %136 = getelementptr inbounds %struct.psr_context, %struct.psr_context* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 4
  %138 = bitcast %union.dce_dmcu_psr_config_data_reg2* %11 to %struct.TYPE_10__*
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 5
  store i32 %137, i32* %139, align 4
  %140 = load %struct.psr_context*, %struct.psr_context** %6, align 8
  %141 = getelementptr inbounds %struct.psr_context, %struct.psr_context* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 4
  %143 = bitcast %union.dce_dmcu_psr_config_data_reg2* %11 to %struct.TYPE_10__*
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 4
  store i32 %142, i32* %144, align 8
  %145 = load %struct.psr_context*, %struct.psr_context** %6, align 8
  %146 = getelementptr inbounds %struct.psr_context, %struct.psr_context* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = bitcast %union.dce_dmcu_psr_config_data_reg2* %11 to %struct.TYPE_10__*
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 3
  store i32 %147, i32* %149, align 4
  %150 = load %struct.psr_context*, %struct.psr_context** %6, align 8
  %151 = getelementptr inbounds %struct.psr_context, %struct.psr_context* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = bitcast %union.dce_dmcu_psr_config_data_reg2* %11 to %struct.TYPE_10__*
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  %155 = load %struct.psr_context*, %struct.psr_context** %6, align 8
  %156 = getelementptr inbounds %struct.psr_context, %struct.psr_context* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = bitcast %union.dce_dmcu_psr_config_data_reg2* %11 to %struct.TYPE_10__*
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  %160 = load %struct.psr_context*, %struct.psr_context** %6, align 8
  %161 = getelementptr inbounds %struct.psr_context, %struct.psr_context* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = bitcast %union.dce_dmcu_psr_config_data_reg2* %11 to %struct.TYPE_10__*
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  %165 = load %struct.dmcu*, %struct.dmcu** %4, align 8
  %166 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @MASTER_COMM_DATA_REG2, align 4
  %169 = call i32 @REG(i32 %168)
  %170 = bitcast %union.dce_dmcu_psr_config_data_reg2* %11 to i64*
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @dm_write_reg(i32 %167, i32 %169, i64 %171)
  %173 = bitcast %union.dce_dmcu_psr_config_data_reg3* %12 to i64*
  store i64 0, i64* %173, align 8
  %174 = load %struct.psr_context*, %struct.psr_context** %6, align 8
  %175 = getelementptr inbounds %struct.psr_context, %struct.psr_context* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = bitcast %union.dce_dmcu_psr_config_data_reg3* %12 to %struct.TYPE_11__*
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 8
  %180 = load %struct.dmcu*, %struct.dmcu** %4, align 8
  %181 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @MASTER_COMM_DATA_REG3, align 4
  %184 = call i32 @REG(i32 %183)
  %185 = bitcast %union.dce_dmcu_psr_config_data_reg3* %12 to i64*
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @dm_write_reg(i32 %182, i32 %184, i64 %186)
  %188 = load i32, i32* @MASTER_COMM_CMD_REG, align 4
  %189 = load i32, i32* @MASTER_COMM_CMD_REG_BYTE0, align 4
  %190 = load i32, i32* @PSR_SET, align 4
  %191 = call i32 @REG_UPDATE(i32 %188, i32 %189, i32 %190)
  %192 = load i32, i32* @MASTER_COMM_CNTL_REG, align 4
  %193 = load i32, i32* @MASTER_COMM_INTERRUPT, align 4
  %194 = call i32 @REG_UPDATE(i32 %192, i32 %193, i32 1)
  ret i32 1
}

declare dso_local %struct.dce_dmcu* @TO_DCE_DMCU(%struct.dmcu*) #1

declare dso_local i32 @REG_UPDATE_4(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_WAIT(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(i32, i32, i64) #1

declare dso_local i32 @REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
