; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/master/extr_dw-i3c-master.c_dw_i3c_master_bus_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/master/extr_dw-i3c-master.c_dw_i3c_master_bus_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_master_controller = type { i32 }
%struct.dw_i3c_master = type { i64, i32 }
%struct.i3c_bus = type { i32 }
%struct.i3c_device_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@QUEUE_THLD_CTRL = common dso_local global i64 0, align 8
@QUEUE_THLD_CTRL_RESP_BUF_MASK = common dso_local global i32 0, align 4
@DATA_BUFFER_THLD_CTRL = common dso_local global i64 0, align 8
@DATA_BUFFER_THLD_CTRL_RX_BUF = common dso_local global i32 0, align 4
@INTR_ALL = common dso_local global i32 0, align 4
@INTR_STATUS = common dso_local global i64 0, align 8
@INTR_MASTER_MASK = common dso_local global i32 0, align 4
@INTR_STATUS_EN = common dso_local global i64 0, align 8
@INTR_SIGNAL_EN = common dso_local global i64 0, align 8
@DEV_ADDR_DYNAMIC_ADDR_VALID = common dso_local global i32 0, align 4
@DEVICE_ADDR = common dso_local global i64 0, align 8
@IBI_REQ_REJECT_ALL = common dso_local global i32 0, align 4
@IBI_SIR_REQ_REJECT = common dso_local global i64 0, align 8
@IBI_MR_REQ_REJECT = common dso_local global i64 0, align 8
@DEVICE_CTRL = common dso_local global i64 0, align 8
@DEV_CTRL_HOT_JOIN_NACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i3c_master_controller*)* @dw_i3c_master_bus_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_i3c_master_bus_init(%struct.i3c_master_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i3c_master_controller*, align 8
  %4 = alloca %struct.dw_i3c_master*, align 8
  %5 = alloca %struct.i3c_bus*, align 8
  %6 = alloca %struct.i3c_device_info, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i3c_master_controller* %0, %struct.i3c_master_controller** %3, align 8
  %9 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %3, align 8
  %10 = call %struct.dw_i3c_master* @to_dw_i3c_master(%struct.i3c_master_controller* %9)
  store %struct.dw_i3c_master* %10, %struct.dw_i3c_master** %4, align 8
  %11 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %3, align 8
  %12 = call %struct.i3c_bus* @i3c_master_get_bus(%struct.i3c_master_controller* %11)
  store %struct.i3c_bus* %12, %struct.i3c_bus** %5, align 8
  %13 = bitcast %struct.i3c_device_info* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 4, i1 false)
  %14 = load %struct.i3c_bus*, %struct.i3c_bus** %5, align 8
  %15 = getelementptr inbounds %struct.i3c_bus, %struct.i3c_bus* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %33 [
    i32 130, label %17
    i32 129, label %17
    i32 128, label %25
  ]

17:                                               ; preds = %1, %1
  %18 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %19 = call i32 @dw_i2c_clk_cfg(%struct.dw_i3c_master* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %2, align 4
  br label %150

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %1, %24
  %26 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %27 = call i32 @dw_i3c_clk_cfg(%struct.dw_i3c_master* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %2, align 4
  br label %150

32:                                               ; preds = %25
  br label %36

33:                                               ; preds = %1
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %150

36:                                               ; preds = %32
  %37 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %38 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @QUEUE_THLD_CTRL, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @readl(i64 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* @QUEUE_THLD_CTRL_RESP_BUF_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %49 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @QUEUE_THLD_CTRL, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 %47, i64 %52)
  %54 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %55 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @DATA_BUFFER_THLD_CTRL, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @readl(i64 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* @DATA_BUFFER_THLD_CTRL_RX_BUF, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %7, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %66 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @DATA_BUFFER_THLD_CTRL, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writel(i32 %64, i64 %69)
  %71 = load i32, i32* @INTR_ALL, align 4
  %72 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %73 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @INTR_STATUS, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writel(i32 %71, i64 %76)
  %78 = load i32, i32* @INTR_MASTER_MASK, align 4
  %79 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %80 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @INTR_STATUS_EN, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @writel(i32 %78, i64 %83)
  %85 = load i32, i32* @INTR_MASTER_MASK, align 4
  %86 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %87 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @INTR_SIGNAL_EN, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @writel(i32 %85, i64 %90)
  %92 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %3, align 8
  %93 = call i32 @i3c_master_get_free_addr(%struct.i3c_master_controller* %92, i32 0)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %36
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %2, align 4
  br label %150

98:                                               ; preds = %36
  %99 = load i32, i32* @DEV_ADDR_DYNAMIC_ADDR_VALID, align 4
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @DEV_ADDR_DYNAMIC(i32 %100)
  %102 = or i32 %99, %101
  %103 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %104 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @DEVICE_ADDR, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @writel(i32 %102, i64 %107)
  %109 = call i32 @memset(%struct.i3c_device_info* %6, i32 0, i32 4)
  %110 = load i32, i32* %8, align 4
  %111 = getelementptr inbounds %struct.i3c_device_info, %struct.i3c_device_info* %6, i32 0, i32 0
  store i32 %110, i32* %111, align 4
  %112 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %113 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %112, i32 0, i32 1
  %114 = call i32 @i3c_master_set_info(i32* %113, %struct.i3c_device_info* %6)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %98
  %118 = load i32, i32* %8, align 4
  store i32 %118, i32* %2, align 4
  br label %150

119:                                              ; preds = %98
  %120 = load i32, i32* @IBI_REQ_REJECT_ALL, align 4
  %121 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %122 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @IBI_SIR_REQ_REJECT, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @writel(i32 %120, i64 %125)
  %127 = load i32, i32* @IBI_REQ_REJECT_ALL, align 4
  %128 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %129 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @IBI_MR_REQ_REJECT, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @writel(i32 %127, i64 %132)
  %134 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %135 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @DEVICE_CTRL, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @readl(i64 %138)
  %140 = load i32, i32* @DEV_CTRL_HOT_JOIN_NACK, align 4
  %141 = or i32 %139, %140
  %142 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %143 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @DEVICE_CTRL, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @writel(i32 %141, i64 %146)
  %148 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %149 = call i32 @dw_i3c_master_enable(%struct.dw_i3c_master* %148)
  store i32 0, i32* %2, align 4
  br label %150

150:                                              ; preds = %119, %117, %96, %33, %30, %22
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local %struct.dw_i3c_master* @to_dw_i3c_master(%struct.i3c_master_controller*) #1

declare dso_local %struct.i3c_bus* @i3c_master_get_bus(%struct.i3c_master_controller*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dw_i2c_clk_cfg(%struct.dw_i3c_master*) #1

declare dso_local i32 @dw_i3c_clk_cfg(%struct.dw_i3c_master*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @i3c_master_get_free_addr(%struct.i3c_master_controller*, i32) #1

declare dso_local i32 @DEV_ADDR_DYNAMIC(i32) #1

declare dso_local i32 @memset(%struct.i3c_device_info*, i32, i32) #1

declare dso_local i32 @i3c_master_set_info(i32*, %struct.i3c_device_info*) #1

declare dso_local i32 @dw_i3c_master_enable(%struct.dw_i3c_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
