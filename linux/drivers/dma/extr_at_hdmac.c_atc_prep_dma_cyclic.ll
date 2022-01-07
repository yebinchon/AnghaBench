; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_at_hdmac.c_atc_prep_dma_cyclic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_at_hdmac.c_atc_prep_dma_cyclic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32, i32 }
%struct.dma_chan = type { %struct.at_dma_slave* }
%struct.at_dma_slave = type { i32 }
%struct.at_dma_chan = type { i32, %struct.dma_slave_config }
%struct.dma_slave_config = type { i32, i32 }
%struct.at_desc = type { i64, %struct.dma_async_tx_descriptor, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"prep_dma_cyclic: %s buf@%pad - %d (%d/%d)\0A\00", align 1
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"TO DEVICE\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"FROM DEVICE\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"prep_dma_cyclic: length is zero!\0A\00", align 1
@ATC_IS_CYCLIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"prep_dma_cyclic: channel in use!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"not enough descriptors available\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i32, i64, i64, i32, i64)* @atc_prep_dma_cyclic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @atc_prep_dma_cyclic(%struct.dma_chan* %0, i32 %1, i64 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.at_dma_chan*, align 8
  %15 = alloca %struct.at_dma_slave*, align 8
  %16 = alloca %struct.dma_slave_config*, align 8
  %17 = alloca %struct.at_desc*, align 8
  %18 = alloca %struct.at_desc*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.at_desc*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %24 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %25 = call %struct.at_dma_chan* @to_at_dma_chan(%struct.dma_chan* %24)
  store %struct.at_dma_chan* %25, %struct.at_dma_chan** %14, align 8
  %26 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %27 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %26, i32 0, i32 0
  %28 = load %struct.at_dma_slave*, %struct.at_dma_slave** %27, align 8
  store %struct.at_dma_slave* %28, %struct.at_dma_slave** %15, align 8
  %29 = load %struct.at_dma_chan*, %struct.at_dma_chan** %14, align 8
  %30 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %29, i32 0, i32 1
  store %struct.dma_slave_config* %30, %struct.dma_slave_config** %16, align 8
  store %struct.at_desc* null, %struct.at_desc** %17, align 8
  store %struct.at_desc* null, %struct.at_desc** %18, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* %11, align 8
  %33 = udiv i64 %31, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %21, align 4
  %35 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %36 = call i32 @chan2dev(%struct.dma_chan* %35)
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)
  %42 = load i32, i32* %21, align 4
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %11, align 8
  %45 = call i32 @dev_vdbg(i32 %36, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %41, i32* %9, i32 %42, i64 %43, i64 %44)
  %46 = load %struct.at_dma_slave*, %struct.at_dma_slave** %15, align 8
  %47 = icmp ne %struct.at_dma_slave* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %6
  %49 = load i64, i64* %10, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i64, i64* %11, align 8
  %53 = icmp ne i64 %52, 0
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %51, %48, %6
  %56 = phi i1 [ true, %48 ], [ true, %6 ], [ %54, %51 ]
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %62 = call i32 @chan2dev(%struct.dma_chan* %61)
  %63 = call i32 @dev_dbg(i32 %62, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %163

64:                                               ; preds = %55
  %65 = load i32, i32* @ATC_IS_CYCLIC, align 4
  %66 = load %struct.at_dma_chan*, %struct.at_dma_chan** %14, align 8
  %67 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %66, i32 0, i32 0
  %68 = call i64 @test_and_set_bit(i32 %65, i32* %67)
  store i64 %68, i64* %19, align 8
  %69 = load i64, i64* %19, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %73 = call i32 @chan2dev(%struct.dma_chan* %72)
  %74 = call i32 @dev_dbg(i32 %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %163

75:                                               ; preds = %64
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @is_slave_direction(i32 %76)
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %158

84:                                               ; preds = %75
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load %struct.dma_slave_config*, %struct.dma_slave_config** %16, align 8
  %90 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @convert_buswidth(i32 %91)
  store i32 %92, i32* %20, align 4
  br label %98

93:                                               ; preds = %84
  %94 = load %struct.dma_slave_config*, %struct.dma_slave_config** %16, align 8
  %95 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @convert_buswidth(i32 %96)
  store i32 %97, i32* %20, align 4
  br label %98

98:                                               ; preds = %93, %88
  %99 = load i32, i32* %20, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load i64, i64* %11, align 8
  %102 = call i64 @atc_dma_cyclic_check_values(i32 %99, i32 %100, i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %158

105:                                              ; preds = %98
  store i32 0, i32* %22, align 4
  br label %106

106:                                              ; preds = %130, %105
  %107 = load i32, i32* %22, align 4
  %108 = load i32, i32* %21, align 4
  %109 = icmp ult i32 %107, %108
  br i1 %109, label %110, label %133

110:                                              ; preds = %106
  %111 = load %struct.at_dma_chan*, %struct.at_dma_chan** %14, align 8
  %112 = call %struct.at_desc* @atc_desc_get(%struct.at_dma_chan* %111)
  store %struct.at_desc* %112, %struct.at_desc** %23, align 8
  %113 = load %struct.at_desc*, %struct.at_desc** %23, align 8
  %114 = icmp ne %struct.at_desc* %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %110
  br label %151

116:                                              ; preds = %110
  %117 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %118 = load %struct.at_desc*, %struct.at_desc** %23, align 8
  %119 = load i32, i32* %22, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %20, align 4
  %122 = load i64, i64* %11, align 8
  %123 = load i32, i32* %12, align 4
  %124 = call i64 @atc_dma_cyclic_fill_desc(%struct.dma_chan* %117, %struct.at_desc* %118, i32 %119, i32 %120, i32 %121, i64 %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %116
  br label %151

127:                                              ; preds = %116
  %128 = load %struct.at_desc*, %struct.at_desc** %23, align 8
  %129 = call i32 @atc_desc_chain(%struct.at_desc** %17, %struct.at_desc** %18, %struct.at_desc* %128)
  br label %130

130:                                              ; preds = %127
  %131 = load i32, i32* %22, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %22, align 4
  br label %106

133:                                              ; preds = %106
  %134 = load %struct.at_desc*, %struct.at_desc** %17, align 8
  %135 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.at_desc*, %struct.at_desc** %18, align 8
  %139 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  store i32 %137, i32* %140, align 8
  %141 = load i32, i32* @EBUSY, align 4
  %142 = sub nsw i32 0, %141
  %143 = load %struct.at_desc*, %struct.at_desc** %17, align 8
  %144 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %144, i32 0, i32 0
  store i32 %142, i32* %145, align 8
  %146 = load i64, i64* %10, align 8
  %147 = load %struct.at_desc*, %struct.at_desc** %17, align 8
  %148 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %147, i32 0, i32 0
  store i64 %146, i64* %148, align 8
  %149 = load %struct.at_desc*, %struct.at_desc** %17, align 8
  %150 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %149, i32 0, i32 1
  store %struct.dma_async_tx_descriptor* %150, %struct.dma_async_tx_descriptor** %7, align 8
  br label %163

151:                                              ; preds = %126, %115
  %152 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %153 = call i32 @chan2dev(%struct.dma_chan* %152)
  %154 = call i32 @dev_err(i32 %153, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %155 = load %struct.at_dma_chan*, %struct.at_dma_chan** %14, align 8
  %156 = load %struct.at_desc*, %struct.at_desc** %17, align 8
  %157 = call i32 @atc_desc_put(%struct.at_dma_chan* %155, %struct.at_desc* %156)
  br label %158

158:                                              ; preds = %151, %104, %83
  %159 = load i32, i32* @ATC_IS_CYCLIC, align 4
  %160 = load %struct.at_dma_chan*, %struct.at_dma_chan** %14, align 8
  %161 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %160, i32 0, i32 0
  %162 = call i32 @clear_bit(i32 %159, i32* %161)
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %163

163:                                              ; preds = %158, %133, %71, %60
  %164 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  ret %struct.dma_async_tx_descriptor* %164
}

declare dso_local %struct.at_dma_chan* @to_at_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i8*, i32*, i32, i64, i64) #1

declare dso_local i32 @chan2dev(%struct.dma_chan*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @is_slave_direction(i32) #1

declare dso_local i32 @convert_buswidth(i32) #1

declare dso_local i64 @atc_dma_cyclic_check_values(i32, i32, i64) #1

declare dso_local %struct.at_desc* @atc_desc_get(%struct.at_dma_chan*) #1

declare dso_local i64 @atc_dma_cyclic_fill_desc(%struct.dma_chan*, %struct.at_desc*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @atc_desc_chain(%struct.at_desc**, %struct.at_desc**, %struct.at_desc*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @atc_desc_put(%struct.at_dma_chan*, %struct.at_desc*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
