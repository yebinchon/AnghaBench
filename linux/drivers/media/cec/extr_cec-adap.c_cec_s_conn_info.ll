; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-adap.c_cec_s_conn_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-adap.c_cec_s_conn_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i32, i32, %struct.cec_connector_info }
%struct.cec_connector_info = type { i32 }

@CEC_CAP_CONNECTOR_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cec_s_conn_info(%struct.cec_adapter* %0, %struct.cec_connector_info* %1) #0 {
  %3 = alloca %struct.cec_adapter*, align 8
  %4 = alloca %struct.cec_connector_info*, align 8
  store %struct.cec_adapter* %0, %struct.cec_adapter** %3, align 8
  store %struct.cec_connector_info* %1, %struct.cec_connector_info** %4, align 8
  %5 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %6 = call i64 @IS_ERR_OR_NULL(%struct.cec_adapter* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %39

9:                                                ; preds = %2
  %10 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @CEC_CAP_CONNECTOR_INFO, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  br label %39

17:                                               ; preds = %9
  %18 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.cec_connector_info*, %struct.cec_connector_info** %4, align 8
  %22 = icmp ne %struct.cec_connector_info* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %24, i32 0, i32 2
  %26 = load %struct.cec_connector_info*, %struct.cec_connector_info** %4, align 8
  %27 = bitcast %struct.cec_connector_info* %25 to i8*
  %28 = bitcast %struct.cec_connector_info* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  br label %33

29:                                               ; preds = %17
  %30 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %30, i32 0, i32 2
  %32 = call i32 @memset(%struct.cec_connector_info* %31, i32 0, i32 4)
  br label %33

33:                                               ; preds = %29, %23
  %34 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %35 = call i32 @cec_post_state_event(%struct.cec_adapter* %34)
  %36 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  br label %39

39:                                               ; preds = %33, %16, %8
  ret void
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.cec_adapter*) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.cec_connector_info*, i32, i32) #1

declare dso_local i32 @cec_post_state_event(%struct.cec_adapter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
