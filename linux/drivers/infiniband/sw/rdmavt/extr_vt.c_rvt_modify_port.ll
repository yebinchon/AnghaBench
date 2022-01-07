; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_vt.c_rvt_modify_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_vt.c_rvt_modify_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_modify = type { i32, i32 }
%struct.rvt_dev_info = type { %struct.TYPE_2__, %struct.rvt_ibport** }
%struct.TYPE_2__ = type { i32 (%struct.rvt_dev_info.0*, i32)*, i32 (%struct.rvt_dev_info.1*, i32)* }
%struct.rvt_dev_info.0 = type opaque
%struct.rvt_dev_info.1 = type opaque
%struct.rvt_ibport = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IB_PORT_OPA_MASK_CHG = common dso_local global i32 0, align 4
@IB_PORT_SHUTDOWN = common dso_local global i32 0, align 4
@IB_PORT_RESET_QKEY_CNTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, i32, %struct.ib_port_modify*)* @rvt_modify_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvt_modify_port(%struct.ib_device* %0, i32 %1, i32 %2, %struct.ib_port_modify* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_port_modify*, align 8
  %10 = alloca %struct.rvt_dev_info*, align 8
  %11 = alloca %struct.rvt_ibport*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ib_port_modify* %3, %struct.ib_port_modify** %9, align 8
  %14 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %15 = call %struct.rvt_dev_info* @ib_to_rvt(%struct.ib_device* %14)
  store %struct.rvt_dev_info* %15, %struct.rvt_dev_info** %10, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @ibport_num_to_idx(%struct.ib_device* %16, i32 %17)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %111

24:                                               ; preds = %4
  %25 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %10, align 8
  %26 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %25, i32 0, i32 1
  %27 = load %struct.rvt_ibport**, %struct.rvt_ibport*** %26, align 8
  %28 = load i32, i32* %13, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.rvt_ibport*, %struct.rvt_ibport** %27, i64 %29
  %31 = load %struct.rvt_ibport*, %struct.rvt_ibport** %30, align 8
  store %struct.rvt_ibport* %31, %struct.rvt_ibport** %11, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @IB_PORT_OPA_MASK_CHG, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %24
  %37 = load %struct.ib_port_modify*, %struct.ib_port_modify** %9, align 8
  %38 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rvt_ibport*, %struct.rvt_ibport** %11, align 8
  %41 = getelementptr inbounds %struct.rvt_ibport, %struct.rvt_ibport* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.ib_port_modify*, %struct.ib_port_modify** %9, align 8
  %45 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.rvt_ibport*, %struct.rvt_ibport** %11, align 8
  %49 = getelementptr inbounds %struct.rvt_ibport, %struct.rvt_ibport* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %68

52:                                               ; preds = %24
  %53 = load %struct.ib_port_modify*, %struct.ib_port_modify** %9, align 8
  %54 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.rvt_ibport*, %struct.rvt_ibport** %11, align 8
  %57 = getelementptr inbounds %struct.rvt_ibport, %struct.rvt_ibport* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load %struct.ib_port_modify*, %struct.ib_port_modify** %9, align 8
  %61 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.rvt_ibport*, %struct.rvt_ibport** %11, align 8
  %65 = getelementptr inbounds %struct.rvt_ibport, %struct.rvt_ibport* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %52, %36
  %69 = load %struct.ib_port_modify*, %struct.ib_port_modify** %9, align 8
  %70 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load %struct.ib_port_modify*, %struct.ib_port_modify** %9, align 8
  %75 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %73, %68
  %79 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %10, align 8
  %80 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32 (%struct.rvt_dev_info.1*, i32)*, i32 (%struct.rvt_dev_info.1*, i32)** %81, align 8
  %83 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %10, align 8
  %84 = bitcast %struct.rvt_dev_info* %83 to %struct.rvt_dev_info.1*
  %85 = load i32, i32* %7, align 4
  %86 = call i32 %82(%struct.rvt_dev_info.1* %84, i32 %85)
  br label %87

87:                                               ; preds = %78, %73
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @IB_PORT_SHUTDOWN, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %87
  %93 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %10, align 8
  %94 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32 (%struct.rvt_dev_info.0*, i32)*, i32 (%struct.rvt_dev_info.0*, i32)** %95, align 8
  %97 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %10, align 8
  %98 = bitcast %struct.rvt_dev_info* %97 to %struct.rvt_dev_info.0*
  %99 = load i32, i32* %7, align 4
  %100 = call i32 %96(%struct.rvt_dev_info.0* %98, i32 %99)
  store i32 %100, i32* %12, align 4
  br label %101

101:                                              ; preds = %92, %87
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @IB_PORT_RESET_QKEY_CNTR, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load %struct.rvt_ibport*, %struct.rvt_ibport** %11, align 8
  %108 = getelementptr inbounds %struct.rvt_ibport, %struct.rvt_ibport* %107, i32 0, i32 0
  store i64 0, i64* %108, align 8
  br label %109

109:                                              ; preds = %106, %101
  %110 = load i32, i32* %12, align 4
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %109, %21
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local %struct.rvt_dev_info* @ib_to_rvt(%struct.ib_device*) #1

declare dso_local i32 @ibport_num_to_idx(%struct.ib_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
