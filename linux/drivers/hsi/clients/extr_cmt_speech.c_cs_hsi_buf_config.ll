; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_buf_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_buf_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_hsi_iface = type { i32, i32, i32, i64, i64, i64, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.cs_buffer_config = type { i32, i64 }

@CS_STATE_CONFIGURED = common dso_local global i32 0, align 4
@CS_STATE_OPENED = common dso_local global i32 0, align 4
@PM_QOS_CPU_DMA_LATENCY = common dso_local global i32 0, align 4
@CS_QOS_LATENCY_FOR_DATA_USEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_hsi_iface*, %struct.cs_buffer_config*)* @cs_hsi_buf_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_hsi_buf_config(%struct.cs_hsi_iface* %0, %struct.cs_buffer_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cs_hsi_iface*, align 8
  %5 = alloca %struct.cs_buffer_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cs_hsi_iface* %0, %struct.cs_hsi_iface** %4, align 8
  store %struct.cs_buffer_config* %1, %struct.cs_buffer_config** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %9 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %12 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %11, i32 0, i32 1
  %13 = call i32 @spin_lock_bh(i32* %12)
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @CS_STATE_CONFIGURED, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @CS_STATE_OPENED, align 4
  %19 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %20 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  br label %21

21:                                               ; preds = %17, %2
  %22 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %23 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %22, i32 0, i32 1
  %24 = call i32 @spin_unlock_bh(i32* %23)
  %25 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %26 = call i32 @cs_hsi_data_sync(%struct.cs_hsi_iface* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %124

31:                                               ; preds = %21
  %32 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %33 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %32, i32 0, i32 9
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @cs_state_xfer_active(i32 %34)
  %36 = call i32 @WARN_ON(i32 %35)
  %37 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %38 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %37, i32 0, i32 1
  %39 = call i32 @spin_lock_bh(i32* %38)
  %40 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %41 = load %struct.cs_buffer_config*, %struct.cs_buffer_config** %5, align 8
  %42 = call i32 @check_buf_params(%struct.cs_hsi_iface* %40, %struct.cs_buffer_config* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %31
  br label %119

46:                                               ; preds = %31
  %47 = load %struct.cs_buffer_config*, %struct.cs_buffer_config** %5, align 8
  %48 = getelementptr inbounds %struct.cs_buffer_config, %struct.cs_buffer_config* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %51 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %50, i32 0, i32 3
  store i64 %49, i64* %51, align 8
  %52 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %53 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %56 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %55, i32 0, i32 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i64 %54, i64* %58, align 8
  %59 = load %struct.cs_buffer_config*, %struct.cs_buffer_config** %5, align 8
  %60 = getelementptr inbounds %struct.cs_buffer_config, %struct.cs_buffer_config* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %63 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %62, i32 0, i32 7
  store i32 %61, i32* %63, align 8
  %64 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %65 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %64, i32 0, i32 6
  store i64 0, i64* %65, align 8
  %66 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %67 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %66, i32 0, i32 5
  store i64 0, i64* %67, align 8
  %68 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %69 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %68, i32 0, i32 4
  store i64 0, i64* %69, align 8
  %70 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %71 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %46
  %75 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %76 = load %struct.cs_buffer_config*, %struct.cs_buffer_config** %5, align 8
  %77 = call i32 @cs_hsi_data_enable(%struct.cs_hsi_iface* %75, %struct.cs_buffer_config* %76)
  br label %82

78:                                               ; preds = %46
  %79 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @cs_hsi_data_disable(%struct.cs_hsi_iface* %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %74
  %83 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %84 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %83, i32 0, i32 1
  %85 = call i32 @spin_unlock_bh(i32* %84)
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %88 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %86, %89
  br i1 %90, label %91, label %117

91:                                               ; preds = %82
  %92 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %93 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @CS_STATE_CONFIGURED, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %91
  %98 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %99 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %98, i32 0, i32 2
  %100 = load i32, i32* @PM_QOS_CPU_DMA_LATENCY, align 4
  %101 = load i32, i32* @CS_QOS_LATENCY_FOR_DATA_USEC, align 4
  %102 = call i32 @pm_qos_add_request(i32* %99, i32 %100, i32 %101)
  %103 = call i32 (...) @local_bh_disable()
  %104 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %105 = call i32 @cs_hsi_read_on_data(%struct.cs_hsi_iface* %104)
  %106 = call i32 (...) @local_bh_enable()
  br label %116

107:                                              ; preds = %91
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @CS_STATE_CONFIGURED, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %113 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %112, i32 0, i32 2
  %114 = call i32 @pm_qos_remove_request(i32* %113)
  br label %115

115:                                              ; preds = %111, %107
  br label %116

116:                                              ; preds = %115, %97
  br label %117

117:                                              ; preds = %116, %82
  %118 = load i32, i32* %6, align 4
  store i32 %118, i32* %3, align 4
  br label %124

119:                                              ; preds = %45
  %120 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %121 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %120, i32 0, i32 1
  %122 = call i32 @spin_unlock_bh(i32* %121)
  %123 = load i32, i32* %6, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %119, %117, %29
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @cs_hsi_data_sync(%struct.cs_hsi_iface*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @cs_state_xfer_active(i32) #1

declare dso_local i32 @check_buf_params(%struct.cs_hsi_iface*, %struct.cs_buffer_config*) #1

declare dso_local i32 @cs_hsi_data_enable(%struct.cs_hsi_iface*, %struct.cs_buffer_config*) #1

declare dso_local i32 @cs_hsi_data_disable(%struct.cs_hsi_iface*, i32) #1

declare dso_local i32 @pm_qos_add_request(i32*, i32, i32) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @cs_hsi_read_on_data(%struct.cs_hsi_iface*) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @pm_qos_remove_request(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
