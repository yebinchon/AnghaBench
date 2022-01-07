; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-adap.c_cec_config_log_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-adap.c_cec_config_log_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i32, i32*, %struct.TYPE_2__*, i32, %struct.cec_log_addrs }
%struct.TYPE_2__ = type { i32 (%struct.cec_adapter*, i32)* }
%struct.cec_log_addrs = type { i32*, i32 }
%struct.cec_msg = type { i32, i32*, i32 }

@EINTR = common dso_local global i32 0, align 4
@CEC_TX_STATUS_ABORTED = common dso_local global i32 0, align 4
@CEC_TX_STATUS_OK = common dso_local global i32 0, align 4
@CEC_TX_STATUS_NACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, i32, i32)* @cec_config_log_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cec_config_log_addr(%struct.cec_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cec_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cec_log_addrs*, align 8
  %9 = alloca %struct.cec_msg, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cec_adapter* %0, %struct.cec_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.cec_adapter*, %struct.cec_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %13, i32 0, i32 4
  store %struct.cec_log_addrs* %14, %struct.cec_log_addrs** %8, align 8
  %15 = bitcast %struct.cec_msg* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 24, i1 false)
  store i32 2, i32* %10, align 4
  %16 = load %struct.cec_adapter*, %struct.cec_adapter** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @cec_has_log_addr(%struct.cec_adapter* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %115

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %9, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = shl i32 %23, 4
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %24, %25
  %27 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %9, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 %26, i32* %29, align 4
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %72, %21
  %31 = load i32, i32* %11, align 4
  %32 = icmp ult i32 %31, 2
  br i1 %32, label %33, label %75

33:                                               ; preds = %30
  %34 = load %struct.cec_adapter*, %struct.cec_adapter** %5, align 8
  %35 = call i32 @cec_transmit_msg_fh(%struct.cec_adapter* %34, %struct.cec_msg* %9, i32* null, i32 1)
  store i32 %35, i32* %12, align 4
  %36 = load %struct.cec_adapter*, %struct.cec_adapter** %5, align 8
  %37 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @EINTR, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %115

43:                                               ; preds = %33
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %4, align 4
  br label %115

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %9, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @CEC_TX_STATUS_ABORTED, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @EINTR, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %115

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %9, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @CEC_TX_STATUS_OK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %115

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %9, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @CEC_TX_STATUS_NACK, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %75

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %11, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %30

75:                                               ; preds = %70, %30
  %76 = load i32, i32* %11, align 4
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 0, i32* %4, align 4
  br label %115

79:                                               ; preds = %75
  %80 = load %struct.cec_adapter*, %struct.cec_adapter** %5, align 8
  %81 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %80, i32 0, i32 2
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32 (%struct.cec_adapter*, i32)*, i32 (%struct.cec_adapter*, i32)** %83, align 8
  %85 = load %struct.cec_adapter*, %struct.cec_adapter** %5, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 %84(%struct.cec_adapter* %85, i32 %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %79
  %91 = load i32, i32* %12, align 4
  store i32 %91, i32* %4, align 4
  br label %115

92:                                               ; preds = %79
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %8, align 8
  %95 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %93, i32* %99, align 4
  %100 = load i32, i32* %7, align 4
  %101 = shl i32 1, %100
  %102 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %8, align 8
  %103 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load %struct.cec_adapter*, %struct.cec_adapter** %5, align 8
  %107 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.cec_adapter*, %struct.cec_adapter** %5, align 8
  %110 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %108, i32* %114, align 4
  store i32 1, i32* %4, align 4
  br label %115

115:                                              ; preds = %92, %90, %78, %63, %54, %46, %40, %20
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @cec_has_log_addr(%struct.cec_adapter*, i32) #2

declare dso_local i32 @cec_transmit_msg_fh(%struct.cec_adapter*, %struct.cec_msg*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
