; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_hsi_char.c_hsc_rx_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_hsi_char.c_hsc_rx_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_client = type { %struct.hsi_config }
%struct.hsi_config = type { i64, i32, i64 }
%struct.hsc_rx_config = type { i64, i32, i64 }

@HSI_MODE_STREAM = common dso_local global i64 0, align 8
@HSI_MODE_FRAME = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@HSC_DEVS = common dso_local global i32 0, align 4
@HSI_FLOW_SYNC = common dso_local global i64 0, align 8
@HSI_FLOW_PIPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hsi_client*, %struct.hsc_rx_config*)* @hsc_rx_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsc_rx_set(%struct.hsi_client* %0, %struct.hsc_rx_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hsi_client*, align 8
  %5 = alloca %struct.hsc_rx_config*, align 8
  %6 = alloca %struct.hsi_config, align 8
  %7 = alloca i32, align 4
  store %struct.hsi_client* %0, %struct.hsi_client** %4, align 8
  store %struct.hsc_rx_config* %1, %struct.hsc_rx_config** %5, align 8
  %8 = load %struct.hsc_rx_config*, %struct.hsc_rx_config** %5, align 8
  %9 = getelementptr inbounds %struct.hsc_rx_config, %struct.hsc_rx_config* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @HSI_MODE_STREAM, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.hsc_rx_config*, %struct.hsc_rx_config** %5, align 8
  %15 = getelementptr inbounds %struct.hsc_rx_config, %struct.hsc_rx_config* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @HSI_MODE_FRAME, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %108

22:                                               ; preds = %13, %2
  %23 = load %struct.hsc_rx_config*, %struct.hsc_rx_config** %5, align 8
  %24 = getelementptr inbounds %struct.hsc_rx_config, %struct.hsc_rx_config* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load %struct.hsc_rx_config*, %struct.hsc_rx_config** %5, align 8
  %29 = getelementptr inbounds %struct.hsc_rx_config, %struct.hsc_rx_config* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @HSC_DEVS, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27, %22
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %108

36:                                               ; preds = %27
  %37 = load %struct.hsc_rx_config*, %struct.hsc_rx_config** %5, align 8
  %38 = getelementptr inbounds %struct.hsc_rx_config, %struct.hsc_rx_config* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.hsc_rx_config*, %struct.hsc_rx_config** %5, align 8
  %41 = getelementptr inbounds %struct.hsc_rx_config, %struct.hsc_rx_config* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %42, 1
  %44 = and i32 %39, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %108

49:                                               ; preds = %36
  %50 = load %struct.hsc_rx_config*, %struct.hsc_rx_config** %5, align 8
  %51 = getelementptr inbounds %struct.hsc_rx_config, %struct.hsc_rx_config* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @HSI_FLOW_SYNC, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %49
  %56 = load %struct.hsc_rx_config*, %struct.hsc_rx_config** %5, align 8
  %57 = getelementptr inbounds %struct.hsc_rx_config, %struct.hsc_rx_config* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @HSI_FLOW_PIPE, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %108

64:                                               ; preds = %55, %49
  %65 = load %struct.hsi_client*, %struct.hsi_client** %4, align 8
  %66 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %65, i32 0, i32 0
  %67 = bitcast %struct.hsi_config* %6 to i8*
  %68 = bitcast %struct.hsi_config* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 %68, i64 24, i1 false)
  %69 = load %struct.hsc_rx_config*, %struct.hsc_rx_config** %5, align 8
  %70 = getelementptr inbounds %struct.hsc_rx_config, %struct.hsc_rx_config* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.hsi_client*, %struct.hsi_client** %4, align 8
  %73 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.hsi_config, %struct.hsi_config* %73, i32 0, i32 0
  store i64 %71, i64* %74, align 8
  %75 = load %struct.hsc_rx_config*, %struct.hsc_rx_config** %5, align 8
  %76 = getelementptr inbounds %struct.hsc_rx_config, %struct.hsc_rx_config* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.hsi_client*, %struct.hsi_client** %4, align 8
  %79 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.hsi_config, %struct.hsi_config* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 8
  %81 = load %struct.hsc_rx_config*, %struct.hsc_rx_config** %5, align 8
  %82 = getelementptr inbounds %struct.hsc_rx_config, %struct.hsc_rx_config* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.hsi_client*, %struct.hsi_client** %4, align 8
  %85 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.hsi_config, %struct.hsi_config* %85, i32 0, i32 2
  store i64 %83, i64* %86, align 8
  %87 = load %struct.hsi_client*, %struct.hsi_client** %4, align 8
  %88 = call i32 @hsi_setup(%struct.hsi_client* %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %64
  %92 = load %struct.hsi_client*, %struct.hsi_client** %4, align 8
  %93 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %92, i32 0, i32 0
  %94 = bitcast %struct.hsi_config* %93 to i8*
  %95 = bitcast %struct.hsi_config* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %94, i8* align 8 %95, i64 24, i1 false)
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %3, align 4
  br label %108

97:                                               ; preds = %64
  %98 = load %struct.hsc_rx_config*, %struct.hsc_rx_config** %5, align 8
  %99 = getelementptr inbounds %struct.hsc_rx_config, %struct.hsc_rx_config* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @HSI_MODE_FRAME, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load %struct.hsi_client*, %struct.hsi_client** %4, align 8
  %105 = call i32 @hsc_break_request(%struct.hsi_client* %104)
  br label %106

106:                                              ; preds = %103, %97
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %106, %91, %61, %46, %33, %19
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @hsi_setup(%struct.hsi_client*) #2

declare dso_local i32 @hsc_break_request(%struct.hsi_client*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
