; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_vt.c_rvt_query_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_vt.c_rvt_query_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_attr = type { i32, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.rvt_dev_info = type { %struct.TYPE_2__, %struct.rvt_ibport** }
%struct.TYPE_2__ = type { i32 (%struct.rvt_dev_info.0*, i32, %struct.ib_port_attr.1*)* }
%struct.rvt_dev_info.0 = type opaque
%struct.ib_port_attr.1 = type opaque
%struct.rvt_ibport = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.ib_port_attr*)* @rvt_query_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvt_query_port(%struct.ib_device* %0, i32 %1, %struct.ib_port_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_port_attr*, align 8
  %8 = alloca %struct.rvt_dev_info*, align 8
  %9 = alloca %struct.rvt_ibport*, align 8
  %10 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_port_attr* %2, %struct.ib_port_attr** %7, align 8
  %11 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %12 = call %struct.rvt_dev_info* @ib_to_rvt(%struct.ib_device* %11)
  store %struct.rvt_dev_info* %12, %struct.rvt_dev_info** %8, align 8
  %13 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @ibport_num_to_idx(%struct.ib_device* %13, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %77

21:                                               ; preds = %3
  %22 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %8, align 8
  %23 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %22, i32 0, i32 1
  %24 = load %struct.rvt_ibport**, %struct.rvt_ibport*** %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.rvt_ibport*, %struct.rvt_ibport** %24, i64 %26
  %28 = load %struct.rvt_ibport*, %struct.rvt_ibport** %27, align 8
  store %struct.rvt_ibport* %28, %struct.rvt_ibport** %9, align 8
  %29 = load %struct.rvt_ibport*, %struct.rvt_ibport** %9, align 8
  %30 = getelementptr inbounds %struct.rvt_ibport, %struct.rvt_ibport* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %33 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %32, i32 0, i32 8
  store i32 %31, i32* %33, align 8
  %34 = load %struct.rvt_ibport*, %struct.rvt_ibport** %9, align 8
  %35 = getelementptr inbounds %struct.rvt_ibport, %struct.rvt_ibport* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %38 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %37, i32 0, i32 7
  store i32 %36, i32* %38, align 4
  %39 = load %struct.rvt_ibport*, %struct.rvt_ibport** %9, align 8
  %40 = getelementptr inbounds %struct.rvt_ibport, %struct.rvt_ibport* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %43 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 8
  %44 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %45 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %44, i32 0, i32 0
  store i32 -2147483648, i32* %45, align 8
  %46 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %8, align 8
  %47 = call i32 @rvt_get_npkeys(%struct.rvt_dev_info* %46)
  %48 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %49 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  %50 = load %struct.rvt_ibport*, %struct.rvt_ibport** %9, align 8
  %51 = getelementptr inbounds %struct.rvt_ibport, %struct.rvt_ibport* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %54 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load %struct.rvt_ibport*, %struct.rvt_ibport** %9, align 8
  %56 = getelementptr inbounds %struct.rvt_ibport, %struct.rvt_ibport* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %59 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.rvt_ibport*, %struct.rvt_ibport** %9, align 8
  %61 = getelementptr inbounds %struct.rvt_ibport, %struct.rvt_ibport* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %64 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %66 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %8, align 8
  %68 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32 (%struct.rvt_dev_info.0*, i32, %struct.ib_port_attr.1*)*, i32 (%struct.rvt_dev_info.0*, i32, %struct.ib_port_attr.1*)** %69, align 8
  %71 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %8, align 8
  %72 = bitcast %struct.rvt_dev_info* %71 to %struct.rvt_dev_info.0*
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %75 = bitcast %struct.ib_port_attr* %74 to %struct.ib_port_attr.1*
  %76 = call i32 %70(%struct.rvt_dev_info.0* %72, i32 %73, %struct.ib_port_attr.1* %75)
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %21, %18
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.rvt_dev_info* @ib_to_rvt(%struct.ib_device*) #1

declare dso_local i32 @ibport_num_to_idx(%struct.ib_device*, i32) #1

declare dso_local i32 @rvt_get_npkeys(%struct.rvt_dev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
