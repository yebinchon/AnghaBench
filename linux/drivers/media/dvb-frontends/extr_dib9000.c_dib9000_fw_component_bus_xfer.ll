; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_fw_component_bus_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_fw_component_bus_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32 }
%struct.dib9000_state = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.dib9000_fe_memory_map* }
%struct.dib9000_fe_memory_map = type { i32 }

@DIBX000_I2C_INTERFACE_GPIO_3_4 = common dso_local global i32 0, align 4
@FE_MM_RW_COMPONENT_ACCESS_BUFFER = common dso_local global i64 0, align 8
@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"could not get the lock\0A\00", align 1
@FE_MM_W_COMPONENT_ACCESS = common dso_local global i32 0, align 4
@FE_SYNC_COMPONENT_ACCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @dib9000_fw_component_bus_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib9000_fw_component_bus_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dib9000_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dib9000_fe_memory_map*, align 8
  %13 = alloca [13 x i32], align 16
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %15 = call %struct.dib9000_state* @i2c_get_adapdata(%struct.i2c_adapter* %14)
  store %struct.dib9000_state* %15, %struct.dib9000_state** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* @DIBX000_I2C_INTERFACE_GPIO_3_4, align 4
  store i32 %16, i32* %10, align 4
  %17 = load %struct.dib9000_state*, %struct.dib9000_state** %8, align 8
  %18 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %11, align 4
  %20 = load %struct.dib9000_state*, %struct.dib9000_state** %8, align 8
  %21 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load %struct.dib9000_fe_memory_map*, %struct.dib9000_fe_memory_map** %23, align 8
  %25 = load i64, i64* @FE_MM_RW_COMPONENT_ACCESS_BUFFER, align 8
  %26 = getelementptr inbounds %struct.dib9000_fe_memory_map, %struct.dib9000_fe_memory_map* %24, i64 %25
  store %struct.dib9000_fe_memory_map* %26, %struct.dib9000_fe_memory_map** %12, align 8
  %27 = bitcast [13 x i32]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %27, i8 0, i64 52, i1 false)
  %28 = load i32, i32* %9, align 4
  %29 = getelementptr inbounds [13 x i32], [13 x i32]* %13, i64 0, i64 0
  store i32 %28, i32* %29, align 16
  %30 = load i32, i32* %10, align 4
  %31 = getelementptr inbounds [13 x i32], [13 x i32]* %13, i64 0, i64 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i64 0
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 1
  %37 = getelementptr inbounds [13 x i32], [13 x i32]* %13, i64 0, i64 2
  store i32 %36, i32* %37, align 8
  %38 = load i32, i32* %11, align 4
  %39 = and i32 %38, 255
  %40 = getelementptr inbounds [13 x i32], [13 x i32]* %13, i64 0, i64 3
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %11, align 4
  %42 = ashr i32 %41, 8
  %43 = getelementptr inbounds [13 x i32], [13 x i32]* %13, i64 0, i64 4
  store i32 %42, i32* %43, align 16
  %44 = getelementptr inbounds [13 x i32], [13 x i32]* %13, i64 0, i64 7
  store i32 0, i32* %44, align 4
  %45 = getelementptr inbounds [13 x i32], [13 x i32]* %13, i64 0, i64 8
  store i32 0, i32* %45, align 16
  %46 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %47 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %46, i64 0
  %48 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds [13 x i32], [13 x i32]* %13, i64 0, i64 9
  store i32 %49, i32* %50, align 4
  %51 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %52 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %51, i64 0
  %53 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 8
  %56 = getelementptr inbounds [13 x i32], [13 x i32]* %13, i64 0, i64 10
  store i32 %55, i32* %56, align 8
  %57 = load i32, i32* %7, align 4
  %58 = icmp sgt i32 %57, 1
  br i1 %58, label %59, label %79

59:                                               ; preds = %3
  %60 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %61 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %60, i64 1
  %62 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @I2C_M_RD, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %59
  %68 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %69 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %68, i64 1
  %70 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds [13 x i32], [13 x i32]* %13, i64 0, i64 11
  store i32 %71, i32* %72, align 4
  %73 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %74 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %73, i64 1
  %75 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %76, 8
  %78 = getelementptr inbounds [13 x i32], [13 x i32]* %13, i64 0, i64 12
  store i32 %77, i32* %78, align 16
  br label %82

79:                                               ; preds = %59, %3
  %80 = getelementptr inbounds [13 x i32], [13 x i32]* %13, i64 0, i64 11
  store i32 0, i32* %80, align 4
  %81 = getelementptr inbounds [13 x i32], [13 x i32]* %13, i64 0, i64 12
  store i32 0, i32* %81, align 16
  br label %82

82:                                               ; preds = %79, %67
  %83 = load %struct.dib9000_state*, %struct.dib9000_state** %8, align 8
  %84 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = call i64 @mutex_lock_interruptible(i32* %86)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %155

91:                                               ; preds = %82
  %92 = load %struct.dib9000_state*, %struct.dib9000_state** %8, align 8
  %93 = load i32, i32* @FE_MM_W_COMPONENT_ACCESS, align 4
  %94 = getelementptr inbounds [13 x i32], [13 x i32]* %13, i64 0, i64 0
  %95 = call i32 @dib9000_risc_mem_write(%struct.dib9000_state* %92, i32 %93, i32* %94)
  %96 = load %struct.dib9000_state*, %struct.dib9000_state** %8, align 8
  %97 = load %struct.dib9000_fe_memory_map*, %struct.dib9000_fe_memory_map** %12, align 8
  %98 = getelementptr inbounds %struct.dib9000_fe_memory_map, %struct.dib9000_fe_memory_map* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %101 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %100, i64 0
  %102 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @dib9000_risc_mem_setup_cmd(%struct.dib9000_state* %96, i32 %99, i32 %103, i32 0)
  %105 = load %struct.dib9000_state*, %struct.dib9000_state** %8, align 8
  %106 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %107 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %106, i64 0
  %108 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %111 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %110, i64 0
  %112 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @dib9000_risc_mem_write_chunks(%struct.dib9000_state* %105, i32 %109, i32 %113)
  %115 = load %struct.dib9000_state*, %struct.dib9000_state** %8, align 8
  %116 = load i32, i32* @FE_SYNC_COMPONENT_ACCESS, align 4
  %117 = call i64 @dib9000_fw_memmbx_sync(%struct.dib9000_state* %115, i32 %116)
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %91
  %120 = load %struct.dib9000_state*, %struct.dib9000_state** %8, align 8
  %121 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = call i32 @mutex_unlock(i32* %123)
  store i32 0, i32* %4, align 4
  br label %155

125:                                              ; preds = %91
  %126 = load i32, i32* %7, align 4
  %127 = icmp sgt i32 %126, 1
  br i1 %127, label %128, label %148

128:                                              ; preds = %125
  %129 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %130 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %129, i64 1
  %131 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @I2C_M_RD, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %148

136:                                              ; preds = %128
  %137 = load %struct.dib9000_state*, %struct.dib9000_state** %8, align 8
  %138 = load i64, i64* @FE_MM_RW_COMPONENT_ACCESS_BUFFER, align 8
  %139 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %140 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %139, i64 1
  %141 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %144 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %143, i64 1
  %145 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @dib9000_risc_mem_read(%struct.dib9000_state* %137, i64 %138, i32 %142, i32 %146)
  br label %148

148:                                              ; preds = %136, %128, %125
  %149 = load %struct.dib9000_state*, %struct.dib9000_state** %8, align 8
  %150 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = call i32 @mutex_unlock(i32* %152)
  %154 = load i32, i32* %7, align 4
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %148, %119, %89
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local %struct.dib9000_state* @i2c_get_adapdata(%struct.i2c_adapter*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @dib9000_risc_mem_write(%struct.dib9000_state*, i32, i32*) #1

declare dso_local i32 @dib9000_risc_mem_setup_cmd(%struct.dib9000_state*, i32, i32, i32) #1

declare dso_local i32 @dib9000_risc_mem_write_chunks(%struct.dib9000_state*, i32, i32) #1

declare dso_local i64 @dib9000_fw_memmbx_sync(%struct.dib9000_state*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dib9000_risc_mem_read(%struct.dib9000_state*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
