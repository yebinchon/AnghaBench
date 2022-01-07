; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_set_sdb_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_set_sdb_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hns_roce_v1_priv = type { %struct.hns_roce_db_table }
%struct.hns_roce_db_table = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@ROCEE_EXT_DB_SQ_WL_EMPTY_REG = common dso_local global i32 0, align 4
@ROCEE_EXT_DB_SQ_WL_REG = common dso_local global i32 0, align 4
@ROCEE_EXT_DB_SQ_REG = common dso_local global i32 0, align 4
@ROCEE_EXT_DB_SQ_H_REG = common dso_local global i32 0, align 4
@ROCEE_EXT_DB_SQ_H_EXT_DB_SQ_SHIFT_M = common dso_local global i32 0, align 4
@ROCEE_EXT_DB_SQ_H_EXT_DB_SQ_SHIFT_S = common dso_local global i32 0, align 4
@ROCEE_EXT_DB_SQ_H_EXT_DB_SQ_BA_H_M = common dso_local global i32 0, align 4
@ROCEE_EXT_DB_SQ_H_EXT_DB_SQ_BA_H_S = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ext SDB depth: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"ext SDB threshold: epmty: 0x%x, ful: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_dev*, i32, i32)* @hns_roce_set_sdb_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_set_sdb_ext(%struct.hns_roce_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hns_roce_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.hns_roce_v1_priv*, align 8
  %9 = alloca %struct.hns_roce_db_table*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %14 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %7, align 8
  %17 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %18 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.hns_roce_v1_priv*
  store %struct.hns_roce_v1_priv* %20, %struct.hns_roce_v1_priv** %8, align 8
  %21 = load %struct.hns_roce_v1_priv*, %struct.hns_roce_v1_priv** %8, align 8
  %22 = getelementptr inbounds %struct.hns_roce_v1_priv, %struct.hns_roce_v1_priv* %21, i32 0, i32 0
  store %struct.hns_roce_db_table* %22, %struct.hns_roce_db_table** %9, align 8
  %23 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %24 = load i32, i32* @ROCEE_EXT_DB_SQ_WL_EMPTY_REG, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @roce_write(%struct.hns_roce_dev* %23, i32 %24, i32 %25)
  %27 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %28 = load i32, i32* @ROCEE_EXT_DB_SQ_WL_REG, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @roce_write(%struct.hns_roce_dev* %27, i32 %28, i32 %29)
  %31 = load %struct.hns_roce_db_table*, %struct.hns_roce_db_table** %9, align 8
  %32 = getelementptr inbounds %struct.hns_roce_db_table, %struct.hns_roce_db_table* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %10, align 4
  %38 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %39 = load i32, i32* @ROCEE_EXT_DB_SQ_REG, align 4
  %40 = load i32, i32* %10, align 4
  %41 = ashr i32 %40, 12
  %42 = call i32 @roce_write(%struct.hns_roce_dev* %38, i32 %39, i32 %41)
  %43 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %44 = load i32, i32* @ROCEE_EXT_DB_SQ_H_REG, align 4
  %45 = call i32 @roce_read(%struct.hns_roce_dev* %43, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @cpu_to_le32(i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @ROCEE_EXT_DB_SQ_H_EXT_DB_SQ_SHIFT_M, align 4
  %50 = load i32, i32* @ROCEE_EXT_DB_SQ_H_EXT_DB_SQ_SHIFT_S, align 4
  %51 = load %struct.hns_roce_db_table*, %struct.hns_roce_db_table** %9, align 8
  %52 = getelementptr inbounds %struct.hns_roce_db_table, %struct.hns_roce_db_table* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @roce_set_field(i32 %48, i32 %49, i32 %50, i32 %55)
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @ROCEE_EXT_DB_SQ_H_EXT_DB_SQ_BA_H_M, align 4
  %59 = load i32, i32* @ROCEE_EXT_DB_SQ_H_EXT_DB_SQ_BA_H_S, align 4
  %60 = load i32, i32* %10, align 4
  %61 = ashr i32 %60, 44
  %62 = call i32 @roce_set_field(i32 %57, i32 %58, i32 %59, i32 %61)
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @le32_to_cpu(i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %66 = load i32, i32* @ROCEE_EXT_DB_SQ_H_REG, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @roce_write(%struct.hns_roce_dev* %65, i32 %66, i32 %67)
  %69 = load %struct.device*, %struct.device** %7, align 8
  %70 = load %struct.hns_roce_db_table*, %struct.hns_roce_db_table** %9, align 8
  %71 = getelementptr inbounds %struct.hns_roce_db_table, %struct.hns_roce_db_table* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load %struct.device*, %struct.device** %7, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %76, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %78)
  ret void
}

declare dso_local i32 @roce_write(%struct.hns_roce_dev*, i32, i32) #1

declare dso_local i32 @roce_read(%struct.hns_roce_dev*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @roce_set_field(i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
